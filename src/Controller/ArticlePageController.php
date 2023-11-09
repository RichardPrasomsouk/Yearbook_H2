<?php

namespace App\Controller;

use App\Repository\ArticlesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticlePageController extends AbstractController
{

    #[Route('/article/page', name: 'app_article_page')]
    public function index(ArticlesRepository $articlesRepository): Response
    {
        return $this->render('pages/articles_grid_page/article_grid.html.twig', [
            'articles' => $articlesRepository->findAll(),
        ]);
    }
    
    #[Route('/category/2/articles', name: 'app_edito_page')]
public function edito(ArticlesRepository $articlesRepository): Response
{
    $category = 2; 

    $articles = $articlesRepository->findBy(['category' => $category]);

    return $this->render('pages/articles_grid_page/article_grid.html.twig', [
        'articles' => $articles,
    ]);
}

    #[Route('/category/1/articles', name: 'app_interview_page')]
public function interview(ArticlesRepository $articlesRepository): Response
{
    $category = 1; 

    $articles = $articlesRepository->findBy(['category' => $category]);

    return $this->render('pages/articles_grid_page/article_grid.html.twig', [
        'articles' => $articles,
    ]);
}

#[Route('/category/3/articles', name: 'app_journal_page')]
public function journal(ArticlesRepository $articlesRepository): Response
{
    $category = 3; 

    $articles = $articlesRepository->findBy(['category' => $category]);

    return $this->render('pages/articles_grid_page/article_grid.html.twig', [
        'articles' => $articles,
    ]);
}

#[Route('/category/4/articles', name: 'app_temoignage_page')]
public function temoignage(ArticlesRepository $articlesRepository): Response
{
    $category = 4; 

    $articles = $articlesRepository->findBy(['category' => $category]);

    return $this->render('pages/articles_grid_page/article_grid.html.twig', [
        'articles' => $articles,
    ]);
}

#[Route('/category/5/articles', name: 'app_video_page')]
public function video(ArticlesRepository $articlesRepository): Response
{
    $category = 5; 

    $articles = $articlesRepository->findBy(['category' => $category]);

    return $this->render('pages/articles_grid_page/article_grid.html.twig', [
        'articles' => $articles,
    ]);
}

#[Route('/about', name: 'app_about_page')]
    public function about(ArticlesRepository $articlesRepository): Response
    {
        return $this->render('pages/about_page/about.html.twig', [
            'articles' => $articlesRepository->findAll(),
        ]);
    }

}
