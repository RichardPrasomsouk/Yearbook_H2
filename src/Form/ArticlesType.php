<?php

namespace App\Form;

use App\Entity\Articles;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticlesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('created_at')
            ->add('updated_at')
            ->add('reading_estimation_time')
            ->add('body')
            ->add('sub_title')
            ->add('introduction')
            ->add('title')
            ->add('media_reader')
            ->add('pictures')
            ->add('linked_documents')
            ->add('category')
            ->add('tags')
            ->add('authors')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Articles::class,
        ]);
    }
}
