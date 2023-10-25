<?php

namespace App\Entity;

use App\Repository\ImageSideRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ImageSideRepository::class)]
class ImageSide
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $pictures = null;

    #[ORM\Column]
    private ?int $blockOrder = null;

    #[ORM\ManyToOne(inversedBy: 'imageSides')]
    private ?Articles $article = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getPictures(): ?string
    {
        return $this->pictures;
    }

    public function setPictures(string $pictures): static
    {
        $this->pictures = $pictures;

        return $this;
    }

    public function getBlockOrder(): ?int
    {
        return $this->blockOrder;
    }

    public function setBlockOrder(int $blockOrder): static
    {
        $this->blockOrder = $blockOrder;

        return $this;
    }

    public function getArticle(): ?Articles
    {
        return $this->article;
    }

    public function setArticle(?Articles $article): static
    {
        $this->article = $article;

        return $this;
    }
}
