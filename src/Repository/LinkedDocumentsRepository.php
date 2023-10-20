<?php

namespace App\Repository;

use App\Entity\LinkedDocuments;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<LinkedDocuments>
 *
 * @method LinkedDocuments|null find($id, $lockMode = null, $lockVersion = null)
 * @method LinkedDocuments|null findOneBy(array $criteria, array $orderBy = null)
 * @method LinkedDocuments[]    findAll()
 * @method LinkedDocuments[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LinkedDocumentsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, LinkedDocuments::class);
    }

//    /**
//     * @return LinkedDocuments[] Returns an array of LinkedDocuments objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('l.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?LinkedDocuments
//    {
//        return $this->createQueryBuilder('l')
//            ->andWhere('l.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
