<?php

namespace App\Entity;

use App\Repository\AuthorsRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AuthorsRepository::class)]
class Authors
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $author_first_name = null;

    #[ORM\Column(length: 255)]
    private ?string $author_last_name = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $biography = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $website_url = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $github_url = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $linkedin_url = null;

    #[ORM\Column(length: 255)]
    private ?string $author_status = null;

    #[ORM\ManyToMany(targetEntity: Articles::class, inversedBy: 'authors')]
    private Collection $written_articles;

    public function __construct()
    {
        $this->written_articles = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAuthorFirstName(): ?string
    {
        return $this->author_first_name;
    }

    public function setAuthorFirstName(string $author_first_name): static
    {
        $this->author_first_name = $author_first_name;

        return $this;
    }

    public function getAuthorLastName(): ?string
    {
        return $this->author_last_name;
    }

    public function setAuthorLastName(string $author_last_name): static
    {
        $this->author_last_name = $author_last_name;

        return $this;
    }

    public function getBiography(): ?string
    {
        return $this->biography;
    }

    public function setBiography(string $biography): static
    {
        $this->biography = $biography;

        return $this;
    }

    public function getWebsiteUrl(): ?string
    {
        return $this->website_url;
    }

    public function setWebsiteUrl(?string $website_url): static
    {
        $this->website_url = $website_url;

        return $this;
    }

    public function getGithubUrl(): ?string
    {
        return $this->github_url;
    }

    public function setGithubUrl(?string $github_url): static
    {
        $this->github_url = $github_url;

        return $this;
    }

    public function getLinkedinUrl(): ?string
    {
        return $this->linkedin_url;
    }

    public function setLinkedinUrl(?string $linkedin_url): static
    {
        $this->linkedin_url = $linkedin_url;

        return $this;
    }

    public function getAuthorStatus(): ?string
    {
        return $this->author_status;
    }

    public function setAuthorStatus(string $author_status): static
    {
        $this->author_status = $author_status;

        return $this;
    }

    /**
     * @return Collection<int, Articles>
     */
    public function getWrittenArticles(): Collection
    {
        return $this->written_articles;
    }

    public function addWrittenArticle(Articles $writtenArticle): static
    {
        if (!$this->written_articles->contains($writtenArticle)) {
            $this->written_articles->add($writtenArticle);
        }

        return $this;
    }

    public function removeWrittenArticle(Articles $writtenArticle): static
    {
        $this->written_articles->removeElement($writtenArticle);

        return $this;
    }
}
