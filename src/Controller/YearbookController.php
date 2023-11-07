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
        return $this->render('pages/landing_page/landing_page.html.twig', [
            'controller_name' => 'YearbookController',
        ]);
        
    }

    // #[Route('/articlesgrid', name: 'articles_grid')]
    // public function index(): Response
    // {
    //     return $this->render('pages/landing_page/articles_grid.html.twig', [
    //         'controller_name' => 'YearbookController',
    //     ]);
    // }
}
