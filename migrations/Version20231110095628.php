<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231110095628 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE pictures (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE title (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('DROP INDEX `primary` ON articles_authors');
        $this->addSql('ALTER TABLE articles_authors ADD PRIMARY KEY (articles_id, authors_id)');
        $this->addSql('ALTER TABLE articles_authors RENAME INDEX idx_7f98407f1ebaf6cc TO IDX_CB694EF01EBAF6CC');
        $this->addSql('ALTER TABLE articles_authors RENAME INDEX idx_7f98407f6de2013a TO IDX_CB694EF06DE2013A');
        $this->addSql('ALTER TABLE tags CHANGE block_order block_order INT DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE pictures');
        $this->addSql('DROP TABLE title');
        $this->addSql('DROP INDEX `PRIMARY` ON articles_authors');
        $this->addSql('ALTER TABLE articles_authors ADD PRIMARY KEY (authors_id, articles_id)');
        $this->addSql('ALTER TABLE articles_authors RENAME INDEX idx_cb694ef06de2013a TO IDX_7F98407F6DE2013A');
        $this->addSql('ALTER TABLE articles_authors RENAME INDEX idx_cb694ef01ebaf6cc TO IDX_7F98407F1EBAF6CC');
        $this->addSql('ALTER TABLE tags CHANGE block_order block_order INT NOT NULL');
    }
}
