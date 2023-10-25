<?php

namespace App\Controller;

use App\Entity\Paragraph;
use App\Form\ParagraphType;
use App\Repository\ParagraphRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/paragraph')]
class ParagraphController extends AbstractController
{
    #[Route('/', name: 'app_paragraph_index', methods: ['GET'])]
    public function index(ParagraphRepository $paragraphRepository): Response
    {
        return $this->render('paragraph/index.html.twig', [
            'paragraphs' => $paragraphRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_paragraph_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $paragraph = new Paragraph();
        $form = $this->createForm(ParagraphType::class, $paragraph);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($paragraph);
            $entityManager->flush();

            return $this->redirectToRoute('app_paragraph_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('paragraph/new.html.twig', [
            'paragraph' => $paragraph,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_paragraph_show', methods: ['GET'])]
    public function show(Paragraph $paragraph): Response
    {
        return $this->render('paragraph/show.html.twig', [
            'paragraph' => $paragraph,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_paragraph_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Paragraph $paragraph, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ParagraphType::class, $paragraph);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_paragraph_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('paragraph/edit.html.twig', [
            'paragraph' => $paragraph,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_paragraph_delete', methods: ['POST'])]
    public function delete(Request $request, Paragraph $paragraph, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$paragraph->getId(), $request->request->get('_token'))) {
            $entityManager->remove($paragraph);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_paragraph_index', [], Response::HTTP_SEE_OTHER);
    }
}
