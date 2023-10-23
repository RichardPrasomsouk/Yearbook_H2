<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231023120616 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE blocks ADD picture LONGTEXT DEFAULT NULL, DROP picture_full_width, CHANGE body body LONGTEXT DEFAULT NULL, CHANGE quote quote LONGTEXT DEFAULT NULL, CHANGE media_reader media_reader LONGTEXT DEFAULT NULL, CHANGE slider slider LONGTEXT DEFAULT NULL, CHANGE author_bio author_bio LONGTEXT DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE blocks ADD picture_full_width LONGTEXT NOT NULL, DROP picture, CHANGE body body LONGTEXT NOT NULL, CHANGE quote quote LONGTEXT NOT NULL, CHANGE media_reader media_reader LONGTEXT NOT NULL, CHANGE slider slider LONGTEXT NOT NULL, CHANGE author_bio author_bio LONGTEXT NOT NULL');
    }
}
