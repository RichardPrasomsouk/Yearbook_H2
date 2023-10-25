<?php

namespace App\Controller;

use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\LoginFormType;
use App\Form\RegisterFormType;


class SecurityController extends AbstractController
{
     #[Route("/login", name: "app_login")]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();
        $form = $this->createForm(LoginFormType::class);

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error,
            'form' => $form
        ]);
    }

    /**
 * @Route("/logout", name="app_logout")
 */
    public function logout()
    {
    // Cette méthode ne sera jamais exécutée,
    // car la déconnexion est gérée par le pare-feu de sécurité.
    }

    /**
 * @Route("/register", name="app_register")
 */
    public function register(Request $request, UserPasswordHasherInterface $passwordEncoder, EntityManagerInterface $entityManager): Response
    {
        // Créer une instance du formulaire d'inscription
        $form = $this->createForm(RegisterFormType::class);

        // Gérer la soumission du formulaire
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $formData = $form->getData();

            // Créer un nouvel utilisateur
            $user = new User();
            $user->setUsername($formData['username']);

            // Encodez et définissez le mot de passe
            $hashedPassword = $passwordEncoder->hashPassword($user, $formData['password']);
            $user->setPassword($hashedPassword);

            // Enregistrez l'utilisateur en base de données
            $entityManager->persist($user);
            $entityManager->flush();

            // Redirigez vers une autre page (par exemple, la page de connexion)
            return $this->redirectToRoute('app_login');
        }

        return $this->render('security/register.html.twig', [
            'form' => $form
        ]);
    
}
}
