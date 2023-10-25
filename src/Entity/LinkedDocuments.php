<?php

namespace App\Entity;

use App\Repository\LinkedDocumentsRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: LinkedDocumentsRepository::class)]
class LinkedDocuments
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'linkedDocuments')]
    private ?Articles $link = null;

    #[ORM\Column]
    private ?int $blockOrder = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLink(): ?Articles
    {
        return $this->link;
    }

    public function setLink(?Articles $link): static
    {
        $this->link = $link;

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
}
