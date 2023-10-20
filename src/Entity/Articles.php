<?php

namespace App\Entity;

use App\Repository\ArticlesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ArticlesRepository::class)]
class Articles
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\ManyToOne(inversedBy: 'articles')]
    #[ORM\JoinColumn(nullable: false)]
    private ?category $category = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $created_at = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $updated_at = null;

    #[ORM\Column]
    private ?int $reading_estimation_time = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $body = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $sub_title = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $introduction = null;

    #[ORM\Column(length: 255)]
    private ?string $title = null;

    #[ORM\ManyToMany(targetEntity: Tags::class, inversedBy: 'articles')]
    private Collection $tags;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $media_reader = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $pictures = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $linked_documents = null;

    #[ORM\OneToMany(mappedBy: 'link', targetEntity: LinkedDocuments::class)]
    private Collection $linkedDocuments;

    #[ORM\ManyToMany(targetEntity: Authors::class, mappedBy: 'written_articles')]
    private Collection $authors;

    public function __construct()
    {
        $this->tags = new ArrayCollection();
        $this->linkedDocuments = new ArrayCollection();
        $this->authors = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategory(): ?category
    {
        return $this->category;
    }

    public function setCategory(?category $category): static
    {
        $this->category = $category;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->created_at;
    }

    public function setCreatedAt(\DateTimeInterface $created_at): static
    {
        $this->created_at = $created_at;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updated_at;
    }

    public function setUpdatedAt(?\DateTimeInterface $updated_at): static
    {
        $this->updated_at = $updated_at;

        return $this;
    }

    public function getReadingEstimationTime(): ?int
    {
        return $this->reading_estimation_time;
    }

    public function setReadingEstimationTime(int $reading_estimation_time): static
    {
        $this->reading_estimation_time = $reading_estimation_time;

        return $this;
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

    public function getSubTitle(): ?string
    {
        return $this->sub_title;
    }

    public function setSubTitle(?string $sub_title): static
    {
        $this->sub_title = $sub_title;

        return $this;
    }

    public function getIntroduction(): ?string
    {
        return $this->introduction;
    }

    public function setIntroduction(?string $introduction): static
    {
        $this->introduction = $introduction;

        return $this;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

        return $this;
    }

    /**
     * @return Collection<int, Tags>
     */
    public function getTags(): Collection
    {
        return $this->tags;
    }

    public function addTag(Tags $tag): static
    {
        if (!$this->tags->contains($tag)) {
            $this->tags->add($tag);
        }

        return $this;
    }

    public function removeTag(Tags $tag): static
    {
        $this->tags->removeElement($tag);

        return $this;
    }

    public function getMediaReader(): ?string
    {
        return $this->media_reader;
    }

    public function setMediaReader(?string $media_reader): static
    {
        $this->media_reader = $media_reader;

        return $this;
    }

    public function getPictures(): ?string
    {
        return $this->pictures;
    }

    public function setPictures(?string $pictures): static
    {
        $this->pictures = $pictures;

        return $this;
    }

    public function getLinkedDocuments(): ?string
    {
        return $this->linked_documents;
    }

    public function setLinkedDocuments(?string $linked_documents): static
    {
        $this->linked_documents = $linked_documents;

        return $this;
    }

    public function addLinkedDocument(LinkedDocuments $linkedDocument): static
    {
        if (!$this->linkedDocuments->contains($linkedDocument)) {
            $this->linkedDocuments->add($linkedDocument);
            $linkedDocument->setLinks($this);
        }

        return $this;
    }

    public function removeLinkedDocument(LinkedDocuments $linkedDocument): static
    {
        if ($this->linkedDocuments->removeElement($linkedDocument)) {
            // set the owning side to null (unless already changed)
            if ($linkedDocument->getLinks() === $this) {
                $linkedDocument->setLinks(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Authors>
     */
    public function getAuthors(): Collection
    {
        return $this->authors;
    }

    public function addAuthor(Authors $author): static
    {
        if (!$this->authors->contains($author)) {
            $this->authors->add($author);
            $author->addWrittenArticle($this);
        }

        return $this;
    }

    public function removeAuthor(Authors $author): static
    {
        if ($this->authors->removeElement($author)) {
            $author->removeWrittenArticle($this);
        }

        return $this;
    }

    
}
