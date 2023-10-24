<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class YearbookController extends AbstractController
{
    #[Route('/', name: 'app_yearbook')]
    public function index(): Response
    {
        return $this->render('pages/landing_page/side_by_side_img.html.twig', [
            'controller_name' => 'YearbookController',
        ]);
    }
}
