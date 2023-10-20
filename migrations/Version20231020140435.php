<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231020140435 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE authors (id INT AUTO_INCREMENT NOT NULL, author_first_name VARCHAR(255) NOT NULL, author_last_name VARCHAR(255) NOT NULL, biography LONGTEXT NOT NULL, website_url VARCHAR(255) DEFAULT NULL, github_url VARCHAR(255) DEFAULT NULL, linkedin_url VARCHAR(255) DEFAULT NULL, author_status VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE authors_articles (authors_id INT NOT NULL, articles_id INT NOT NULL, INDEX IDX_7F98407F6DE2013A (authors_id), INDEX IDX_7F98407F1EBAF6CC (articles_id), PRIMARY KEY(authors_id, articles_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE linked_documents (id INT AUTO_INCREMENT NOT NULL, link_id INT DEFAULT NULL, INDEX IDX_B4B2BD83ADA40271 (link_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE authors_articles ADD CONSTRAINT FK_7F98407F6DE2013A FOREIGN KEY (authors_id) REFERENCES authors (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE authors_articles ADD CONSTRAINT FK_7F98407F1EBAF6CC FOREIGN KEY (articles_id) REFERENCES articles (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE linked_documents ADD CONSTRAINT FK_B4B2BD83ADA40271 FOREIGN KEY (link_id) REFERENCES articles (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE authors_articles DROP FOREIGN KEY FK_7F98407F6DE2013A');
        $this->addSql('ALTER TABLE authors_articles DROP FOREIGN KEY FK_7F98407F1EBAF6CC');
        $this->addSql('ALTER TABLE linked_documents DROP FOREIGN KEY FK_B4B2BD83ADA40271');
        $this->addSql('DROP TABLE authors');
        $this->addSql('DROP TABLE authors_articles');
        $this->addSql('DROP TABLE linked_documents');
    }
}
