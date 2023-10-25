<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231025102120 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE external_links (id INT AUTO_INCREMENT NOT NULL, article_id INT DEFAULT NULL, url VARCHAR(255) NOT NULL, block_order INT NOT NULL, INDEX IDX_E3CFD29B7294869C (article_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE image_edge (id INT AUTO_INCREMENT NOT NULL, article_id INT DEFAULT NULL, picture VARCHAR(255) NOT NULL, block_order INT NOT NULL, INDEX IDX_873C39F87294869C (article_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE image_side (id INT AUTO_INCREMENT NOT NULL, article_id INT DEFAULT NULL, pictures VARCHAR(255) NOT NULL, block_order INT NOT NULL, INDEX IDX_D1BBF12B7294869C (article_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE paragraph (id INT AUTO_INCREMENT NOT NULL, article_id INT DEFAULT NULL, text LONGTEXT NOT NULL, block_order INT NOT NULL, INDEX IDX_7DD398627294869C (article_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE slider (id INT AUTO_INCREMENT NOT NULL, pictures VARCHAR(255) NOT NULL, block_order INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE external_links ADD CONSTRAINT FK_E3CFD29B7294869C FOREIGN KEY (article_id) REFERENCES articles (id)');
        $this->addSql('ALTER TABLE image_edge ADD CONSTRAINT FK_873C39F87294869C FOREIGN KEY (article_id) REFERENCES articles (id)');
        $this->addSql('ALTER TABLE image_side ADD CONSTRAINT FK_D1BBF12B7294869C FOREIGN KEY (article_id) REFERENCES articles (id)');
        $this->addSql('ALTER TABLE paragraph ADD CONSTRAINT FK_7DD398627294869C FOREIGN KEY (article_id) REFERENCES articles (id)');
        $this->addSql('ALTER TABLE linked_documents ADD block_order INT NOT NULL');
        $this->addSql('ALTER TABLE quote ADD article_id INT DEFAULT NULL, ADD block_order INT NOT NULL');
        $this->addSql('ALTER TABLE quote ADD CONSTRAINT FK_6B71CBF47294869C FOREIGN KEY (article_id) REFERENCES articles (id)');
        $this->addSql('CREATE INDEX IDX_6B71CBF47294869C ON quote (article_id)');
        $this->addSql('ALTER TABLE tags ADD block_order INT NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE external_links DROP FOREIGN KEY FK_E3CFD29B7294869C');
        $this->addSql('ALTER TABLE image_edge DROP FOREIGN KEY FK_873C39F87294869C');
        $this->addSql('ALTER TABLE image_side DROP FOREIGN KEY FK_D1BBF12B7294869C');
        $this->addSql('ALTER TABLE paragraph DROP FOREIGN KEY FK_7DD398627294869C');
        $this->addSql('DROP TABLE external_links');
        $this->addSql('DROP TABLE image_edge');
        $this->addSql('DROP TABLE image_side');
        $this->addSql('DROP TABLE paragraph');
        $this->addSql('DROP TABLE slider');
        $this->addSql('ALTER TABLE linked_documents DROP block_order');
        $this->addSql('ALTER TABLE quote DROP FOREIGN KEY FK_6B71CBF47294869C');
        $this->addSql('DROP INDEX IDX_6B71CBF47294869C ON quote');
        $this->addSql('ALTER TABLE quote DROP article_id, DROP block_order');
        $this->addSql('ALTER TABLE tags DROP block_order');
    }
}
