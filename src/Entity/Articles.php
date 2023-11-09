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
    private ?Category $category = null;

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

    #[ORM\ManyToMany(targetEntity: Authors::class, inversedBy: 'written_articles')]
    private Collection $authors;

    #[ORM\OneToMany(mappedBy: 'article', targetEntity: Quote::class)]
    private Collection $quotes;

    #[ORM\OneToMany(mappedBy: 'article', targetEntity: Paragraph::class)]
    private Collection $paragraphs;

    #[ORM\OneToMany(mappedBy: 'article', targetEntity: ImageSide::class)]
    private Collection $imageSides;

    #[ORM\OneToMany(mappedBy: 'article', targetEntity: ImageEdge::class)]
    private Collection $imageEdges;

    #[ORM\OneToMany(mappedBy: 'article', targetEntity: ExternalLinks::class)]
    private Collection $externalLinks;

    public function __construct()
    {
        $this->tags = new ArrayCollection();
        $this->linkedDocuments = new ArrayCollection();
        $this->authors = new ArrayCollection();
        $this->quotes = new ArrayCollection();
        $this->paragraphs = new ArrayCollection();
        $this->imageSides = new ArrayCollection();
        $this->imageEdges = new ArrayCollection();
        $this->externalLinks = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): static
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

    /**
     * @return Collection<int, Quote>
     */
    public function getQuotes(): Collection
    {
        return $this->quotes;
    }

    public function addQuote(Quote $quote): static
    {
        if (!$this->quotes->contains($quote)) {
            $this->quotes->add($quote);
            $quote->setArticle($this);
        }

        return $this;
    }

    public function removeQuote(Quote $quote): static
    {
        if ($this->quotes->removeElement($quote)) {
            // set the owning side to null (unless already changed)
            if ($quote->getArticle() === $this) {
                $quote->setArticle(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Paragraph>
     */
    public function getParagraphs(): Collection
    {
        return $this->paragraphs;
    }

    /**
     * @return Collection<int, ImageSide>
     */
    public function getImageSides(): Collection
    {
        return $this->imageSides;
    }

    public function addImageSide(ImageSide $imageSide): static
    {
        if (!$this->imageSides->contains($imageSide)) {
            $this->imageSides->add($imageSide);
            $imageSide->setArticle($this);
        }

        return $this;
    }

    public function removeImageSide(ImageSide $imageSide): static
    {
        if ($this->imageSides->removeElement($imageSide)) {
            // set the owning side to null (unless already changed)
            if ($imageSide->getArticle() === $this) {
                $imageSide->setArticle(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, ImageEdge>
     */
    public function getImageEdges(): Collection
    {
        return $this->imageEdges;
    }

    public function addImageEdge(ImageEdge $imageEdge): static
    {
        if (!$this->imageEdges->contains($imageEdge)) {
            $this->imageEdges->add($imageEdge);
            $imageEdge->setArticle($this);
        }

        return $this;
    }

    public function removeImageEdge(ImageEdge $imageEdge): static
    {
        if ($this->imageEdges->removeElement($imageEdge)) {
            // set the owning side to null (unless already changed)
            if ($imageEdge->getArticle() === $this) {
                $imageEdge->setArticle(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, ExternalLinks>
     */
    public function getExternalLinks(): Collection
    {
        return $this->externalLinks;
    }

    public function addExternalLink(ExternalLinks $externalLink): static
    {
        if (!$this->externalLinks->contains($externalLink)) {
            $this->externalLinks->add($externalLink);
            $externalLink->setArticle($this);
        }

        return $this;
    }

    public function removeExternalLink(ExternalLinks $externalLink): static
    {
        if ($this->externalLinks->removeElement($externalLink)) {
            // set the owning side to null (unless already changed)
            if ($externalLink->getArticle() === $this) {
                $externalLink->setArticle(null);
            }
        }

        return $this;
    }

    
}
