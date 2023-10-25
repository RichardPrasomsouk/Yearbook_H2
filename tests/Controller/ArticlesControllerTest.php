<?php

namespace App\Test\Controller;

use App\Entity\Articles;
use App\Repository\ArticlesRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\KernelBrowser;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ArticlesControllerTest extends WebTestCase
{
    private KernelBrowser $client;
    private ArticlesRepository $repository;
    private string $path = '/articles/';
    private EntityManagerInterface $manager;

    protected function setUp(): void
    {
        $this->client = static::createClient();
        $this->repository = static::getContainer()->get('doctrine')->getRepository(Articles::class);

        foreach ($this->repository->findAll() as $object) {
            $this->manager->remove($object);
        }
    }

    public function testIndex(): void
    {
        $crawler = $this->client->request('GET', $this->path);

        self::assertResponseStatusCodeSame(200);
        self::assertPageTitleContains('Article index');

        // Use the $crawler to perform additional assertions e.g.
        // self::assertSame('Some text on the page', $crawler->filter('.p')->first());
    }

    public function testNew(): void
    {
        $originalNumObjectsInRepository = count($this->repository->findAll());

        $this->markTestIncomplete();
        $this->client->request('GET', sprintf('%snew', $this->path));

        self::assertResponseStatusCodeSame(200);

        $this->client->submitForm('Save', [
            'article[created_at]' => 'Testing',
            'article[updated_at]' => 'Testing',
            'article[reading_estimation_time]' => 'Testing',
            'article[body]' => 'Testing',
            'article[sub_title]' => 'Testing',
            'article[introduction]' => 'Testing',
            'article[title]' => 'Testing',
            'article[media_reader]' => 'Testing',
            'article[pictures]' => 'Testing',
            'article[linked_documents]' => 'Testing',
            'article[category]' => 'Testing',
            'article[tags]' => 'Testing',
            'article[authors]' => 'Testing',
        ]);

        self::assertResponseRedirects('/articles/');

        self::assertSame($originalNumObjectsInRepository + 1, count($this->repository->findAll()));
    }

    public function testShow(): void
    {
        $this->markTestIncomplete();
        $fixture = new Articles();
        $fixture->setCreated_at('My Title');
        $fixture->setUpdated_at('My Title');
        $fixture->setReading_estimation_time('My Title');
        $fixture->setBody('My Title');
        $fixture->setSub_title('My Title');
        $fixture->setIntroduction('My Title');
        $fixture->setTitle('My Title');
        $fixture->setMedia_reader('My Title');
        $fixture->setPictures('My Title');
        $fixture->setLinked_documents('My Title');
        $fixture->setCategory('My Title');
        $fixture->setTags('My Title');
        $fixture->setAuthors('My Title');

        $this->manager->persist($fixture);
        $this->manager->flush();

        $this->client->request('GET', sprintf('%s%s', $this->path, $fixture->getId()));

        self::assertResponseStatusCodeSame(200);
        self::assertPageTitleContains('Article');

        // Use assertions to check that the properties are properly displayed.
    }

    public function testEdit(): void
    {
        $this->markTestIncomplete();
        $fixture = new Articles();
        $fixture->setCreated_at('My Title');
        $fixture->setUpdated_at('My Title');
        $fixture->setReading_estimation_time('My Title');
        $fixture->setBody('My Title');
        $fixture->setSub_title('My Title');
        $fixture->setIntroduction('My Title');
        $fixture->setTitle('My Title');
        $fixture->setMedia_reader('My Title');
        $fixture->setPictures('My Title');
        $fixture->setLinked_documents('My Title');
        $fixture->setCategory('My Title');
        $fixture->setTags('My Title');
        $fixture->setAuthors('My Title');

        $this->manager->persist($fixture);
        $this->manager->flush();

        $this->client->request('GET', sprintf('%s%s/edit', $this->path, $fixture->getId()));

        $this->client->submitForm('Update', [
            'article[created_at]' => 'Something New',
            'article[updated_at]' => 'Something New',
            'article[reading_estimation_time]' => 'Something New',
            'article[body]' => 'Something New',
            'article[sub_title]' => 'Something New',
            'article[introduction]' => 'Something New',
            'article[title]' => 'Something New',
            'article[media_reader]' => 'Something New',
            'article[pictures]' => 'Something New',
            'article[linked_documents]' => 'Something New',
            'article[category]' => 'Something New',
            'article[tags]' => 'Something New',
            'article[authors]' => 'Something New',
        ]);

        self::assertResponseRedirects('/articles/');

        $fixture = $this->repository->findAll();

        self::assertSame('Something New', $fixture[0]->getCreated_at());
        self::assertSame('Something New', $fixture[0]->getUpdated_at());
        self::assertSame('Something New', $fixture[0]->getReading_estimation_time());
        self::assertSame('Something New', $fixture[0]->getBody());
        self::assertSame('Something New', $fixture[0]->getSub_title());
        self::assertSame('Something New', $fixture[0]->getIntroduction());
        self::assertSame('Something New', $fixture[0]->getTitle());
        self::assertSame('Something New', $fixture[0]->getMedia_reader());
        self::assertSame('Something New', $fixture[0]->getPictures());
        self::assertSame('Something New', $fixture[0]->getLinked_documents());
        self::assertSame('Something New', $fixture[0]->getCategory());
        self::assertSame('Something New', $fixture[0]->getTags());
        self::assertSame('Something New', $fixture[0]->getAuthors());
    }

    public function testRemove(): void
    {
        $this->markTestIncomplete();

        $originalNumObjectsInRepository = count($this->repository->findAll());

        $fixture = new Articles();
        $fixture->setCreated_at('My Title');
        $fixture->setUpdated_at('My Title');
        $fixture->setReading_estimation_time('My Title');
        $fixture->setBody('My Title');
        $fixture->setSub_title('My Title');
        $fixture->setIntroduction('My Title');
        $fixture->setTitle('My Title');
        $fixture->setMedia_reader('My Title');
        $fixture->setPictures('My Title');
        $fixture->setLinked_documents('My Title');
        $fixture->setCategory('My Title');
        $fixture->setTags('My Title');
        $fixture->setAuthors('My Title');

        $this->manager->persist($fixture);
        $this->manager->flush();

        self::assertSame($originalNumObjectsInRepository + 1, count($this->repository->findAll()));

        $this->client->request('GET', sprintf('%s%s', $this->path, $fixture->getId()));
        $this->client->submitForm('Delete');

        self::assertSame($originalNumObjectsInRepository, count($this->repository->findAll()));
        self::assertResponseRedirects('/articles/');
    }
}
