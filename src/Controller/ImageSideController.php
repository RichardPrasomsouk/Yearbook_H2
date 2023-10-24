<?php

namespace App\Controller;

use App\Entity\ImageSide;
use App\Form\ImageSideType;
use App\Repository\ImageSideRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/image/side')]
class ImageSideController extends AbstractController
{
    #[Route('/', name: 'app_image_side_index', methods: ['GET'])]
    public function index(ImageSideRepository $imageSideRepository): Response
    {
        return $this->render('image_side/index.html.twig', [
            'image_sides' => $imageSideRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_image_side_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $imageSide = new ImageSide();
        $form = $this->createForm(ImageSideType::class, $imageSide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($imageSide);
            $entityManager->flush();

            return $this->redirectToRoute('app_image_side_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('image_side/new.html.twig', [
            'image_side' => $imageSide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_image_side_show', methods: ['GET'])]
    public function show(ImageSide $imageSide): Response
    {
        return $this->render('image_side/show.html.twig', [
            'image_side' => $imageSide,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_image_side_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, ImageSide $imageSide, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ImageSideType::class, $imageSide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_image_side_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('image_side/edit.html.twig', [
            'image_side' => $imageSide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_image_side_delete', methods: ['POST'])]
    public function delete(Request $request, ImageSide $imageSide, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$imageSide->getId(), $request->request->get('_token'))) {
            $entityManager->remove($imageSide);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_image_side_index', [], Response::HTTP_SEE_OTHER);
    }
}
