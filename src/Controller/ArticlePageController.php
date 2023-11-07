<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticlePageController extends AbstractController
{
    #[Route('/article/page', name: 'app_article_page')]
    public function index(): Response
    {
        return $this->render('pages/articles_grid_page/article_grid.html.twig', [
            'controller_name' => 'ArticlePageController',
        ]);
    }
}
