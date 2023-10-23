<?php

namespace App\Controller;

use App\Entity\ExternalLinks;
use App\Form\ExternalLinksType;
use App\Repository\ExternalLinksRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/external/links')]
class ExternalLinksController extends AbstractController
{
    #[Route('/', name: 'app_external_links_index', methods: ['GET'])]
    public function index(ExternalLinksRepository $externalLinksRepository): Response
    {
        return $this->render('external_links/index.html.twig', [
            'external_links' => $externalLinksRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_external_links_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $externalLink = new ExternalLinks();
        $form = $this->createForm(ExternalLinksType::class, $externalLink);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($externalLink);
            $entityManager->flush();

            return $this->redirectToRoute('app_external_links_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('external_links/new.html.twig', [
            'external_link' => $externalLink,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_external_links_show', methods: ['GET'])]
    public function show(ExternalLinks $externalLink): Response
    {
        return $this->render('external_links/show.html.twig', [
            'external_link' => $externalLink,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_external_links_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, ExternalLinks $externalLink, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ExternalLinksType::class, $externalLink);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_external_links_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('external_links/edit.html.twig', [
            'external_link' => $externalLink,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_external_links_delete', methods: ['POST'])]
    public function delete(Request $request, ExternalLinks $externalLink, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$externalLink->getId(), $request->request->get('_token'))) {
            $entityManager->remove($externalLink);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_external_links_index', [], Response::HTTP_SEE_OTHER);
    }
}
