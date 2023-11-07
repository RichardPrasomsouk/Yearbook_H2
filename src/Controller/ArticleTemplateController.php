<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticleTemplateController extends AbstractController
{
    #[Route('/article/template', name: 'app_article_template')]
    public function index(): Response
    {
        return $this->render('article_template/index.html.twig', [
            'controller_name' => 'ArticleTemplateController',
        ]);
    }
}
