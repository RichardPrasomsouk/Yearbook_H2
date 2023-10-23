<?php

namespace App\Repository;

use App\Entity\ExternalLinks;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<ExternalLinks>
 *
 * @method ExternalLinks|null find($id, $lockMode = null, $lockVersion = null)
 * @method ExternalLinks|null findOneBy(array $criteria, array $orderBy = null)
 * @method ExternalLinks[]    findAll()
 * @method ExternalLinks[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ExternalLinksRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ExternalLinks::class);
    }

//    /**
//     * @return ExternalLinks[] Returns an array of ExternalLinks objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('e')
//            ->andWhere('e.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('e.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?ExternalLinks
//    {
//        return $this->createQueryBuilder('e')
//            ->andWhere('e.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
