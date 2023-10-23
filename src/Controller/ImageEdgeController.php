<?php

namespace App\Controller;

use App\Entity\ImageEdge;
use App\Form\ImageEdgeType;
use App\Repository\ImageEdgeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/image/edge')]
class ImageEdgeController extends AbstractController
{
    #[Route('/', name: 'app_image_edge_index', methods: ['GET'])]
    public function index(ImageEdgeRepository $imageEdgeRepository): Response
    {
        return $this->render('image_edge/index.html.twig', [
            'image_edges' => $imageEdgeRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_image_edge_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $imageEdge = new ImageEdge();
        $form = $this->createForm(ImageEdgeType::class, $imageEdge);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($imageEdge);
            $entityManager->flush();

            return $this->redirectToRoute('app_image_edge_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('image_edge/new.html.twig', [
            'image_edge' => $imageEdge,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_image_edge_show', methods: ['GET'])]
    public function show(ImageEdge $imageEdge): Response
    {
        return $this->render('image_edge/show.html.twig', [
            'image_edge' => $imageEdge,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_image_edge_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, ImageEdge $imageEdge, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ImageEdgeType::class, $imageEdge);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_image_edge_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('image_edge/edit.html.twig', [
            'image_edge' => $imageEdge,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_image_edge_delete', methods: ['POST'])]
    public function delete(Request $request, ImageEdge $imageEdge, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$imageEdge->getId(), $request->request->get('_token'))) {
            $entityManager->remove($imageEdge);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_image_edge_index', [], Response::HTTP_SEE_OTHER);
    }
}
