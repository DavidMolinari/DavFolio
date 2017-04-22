<?php

namespace DavBundle\Controller;

use DavBundle\Entity\Competence;
use DavBundle\Entity\David;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;



class DefaultController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function indexAction()
    {
        $repositoryCompetence = $this->getDoctrine()->getRepository('DavBundle:Competence');
        $competences = $repositoryCompetence->findAll();

        $repositoryEtude = $this->getDoctrine()->getRepository('DavBundle:Etude');
        $etudes = $repositoryEtude->findAll();

        $repositoryExperience = $this->getDoctrine()->getRepository('DavBundle:Experience');
        $experiences = $repositoryExperience->findAll();

        $davRepo = $this->getDoctrine()->getRepository('DavBundle:David');
        $dav = $davRepo->find(1);

        $repositoryProjets = $this->getDoctrine()->getRepository('DavBundle:Projet');
        $projets = $repositoryProjets->findAll();
        return $this->render('@Dav/index.html.twig', array('competences' => $competences,
                                                            'etudes' => $etudes,
                                                            'experiences' => $experiences,
                                                            'dav' => $dav,
                                                            'projets' => $projets));
    }



    /**
     * @Route("/generationcompetences")
     */
    public function generationCompetences(Request $request)
    {

        $comp = new Competence();

        $form = $this->createFormBuilder($comp)
            ->add('libelle', TextType::class, array('label' => 'Libelle comp :'))
            ->add('value', IntegerType::class, array('label' => 'value :'))
            ->add('save', SubmitType::class)
            ->getForm();

        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($comp);
            $em->flush();
            return $this->render('@Dav/index.html.twig');
        }
        return $this->render('@Dav/Default/form.html.twig', array('form' => $form->createView()));

    }


    public function listeProjetsAction()
    {
        return $this->render('@Dav/Pages/projets.html.twig', array());
    }




}
