<?php

namespace App\Entity;

use App\Repository\BlocksRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: BlocksRepository::class)]
class Blocks
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $body = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $quote = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $media_reader = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $picture = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $slider = null;

    #[ORM\Column(length: 255)]
    private ?string $picture_side_by_side_top_right = null;

    #[ORM\Column(length: 255)]
    private ?string $picture_side_by_side_top_left = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $author_bio = null;

    #[ORM\Column(length: 255)]
    private ?string $external_link = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBody(): ?string
    {
        return $this->body;
    }

    public function setBody(string $body): static
    {
        $this->body = $body;

        return $this;
    }

    public function getQuote(): ?string
    {
        return $this->quote;
    }

    public function setQuote(string $quote): static
    {
        $this->quote = $quote;

        return $this;
    }

    public function getMediaReader(): ?string
    {
        return $this->media_reader;
    }

    public function setMediaReader(string $media_reader): static
    {
        $this->media_reader = $media_reader;

        return $this;
    }

    public function getPicture(): ?string
    {
        return $this->picture;
    }

    public function setPicture(string $picture): static
    {
        $this->picture = $picture;

        return $this;
    }

    public function getSlider(): ?string
    {
        return $this->slider;
    }

    public function setSlider(string $slider): static
    {
        $this->slider = $slider;

        return $this;
    }

    public function getPictureSideBySideTopRight(): ?string
    {
        return $this->picture_side_by_side_top_right;
    }

    public function setPictureSideBySideTopRight(string $picture_side_by_side_top_right): static
    {
        $this->picture_side_by_side_top_right = $picture_side_by_side_top_right;

        return $this;
    }

    public function getPictureSideBySideTopLeft(): ?string
    {
        return $this->picture_side_by_side_top_left;
    }

    public function setPictureSideBySideTopLeft(string $picture_side_by_side_top_left): static
    {
        $this->picture_side_by_side_top_left = $picture_side_by_side_top_left;

        return $this;
    }

    public function getAuthorBio(): ?string
    {
        return $this->author_bio;
    }

    public function setAuthorBio(string $author_bio): static
    {
        $this->author_bio = $author_bio;

        return $this;
    }

    public function getExternalLink(): ?string
    {
        return $this->external_link;
    }

    public function setExternalLink(string $external_link): static
    {
        $this->external_link = $external_link;

        return $this;
    }
}
