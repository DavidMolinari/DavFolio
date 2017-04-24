<?php

namespace DavBundle\Controller;

use DavBundle\Entity\Competence;
use DavBundle\Entity\Contact;
use DavBundle\Entity\David;
use DavBundle\Form\ContactType;
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
    public function indexAction(Request $request)
    {
        $repositoryCompetence = $this->getDoctrine()->getRepository('DavBundle:Competence');
        $competences = $repositoryCompetence->findAll();

        $repositoryEtude = $this->getDoctrine()->getRepository('DavBundle:Etude');
        $etudes = $repositoryEtude->findAll();

        $repositoryExperience = $this->getDoctrine()->getRepository('DavBundle:Experience');
        $experiences = $repositoryExperience->findAll();

        $davRepo = $this->getDoctrine()->getRepository('DavBundle:David');
        $dav = $davRepo->find(1);

        $repositoryInteret= $this->getDoctrine()->getRepository('DavBundle:Interet');
        $interets = $repositoryInteret->findAll();


        $repositoryProjets = $this->getDoctrine()->getRepository('DavBundle:Projet');
        $projets = $repositoryProjets->findAll();

        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact, array('action' => $this->generateUrl('home'), 'method' => 'POST'));


        if ($request->isMethod('POST')) {
            // Refill the fields in case the form is not valid.
            $form->handleRequest($request);

            if($form->isValid()){
                // Send mail
                if($this->sendEmail($form->getData())){


                    return $this->redirectToRoute('home');
                }else{
                    var_dump("Errooooor :(");
                }
            }
        }

        return $this->render('@Dav/index.html.twig', array('competences' => $competences,
                                                            'etudes' => $etudes,
                                                            'experiences' => $experiences,
                                                            'dav' => $dav,
                                                            'projets' => $projets,
                                                            'interets' => $interets,
                                                            'form' => $form->createView()));
    }

    /**
     * @param Contact $data
     * @return int
     */
    private function sendEmail(Contact $data){
        $myappContactMail = '';
        $myappContactPassword = '';


        $transport = \Swift_SmtpTransport::newInstance('smtp.gmail.com', 587,'tls')
            ->setUsername($myappContactMail)
            ->setPassword($myappContactPassword);

        $mailer = \Swift_Mailer::newInstance($transport);

        $message = \Swift_Message::newInstance($data->getSubject())
            ->setFrom(array($myappContactMail => $data->getEmail()))
            ->setTo(array(
                $myappContactMail => $myappContactMail
            ))
            ->setBody($data->getMessage());

        return $mailer->send($message);
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


    /**
     * @Route("/knossos", name="knossos")
     */
    public function knossosAction(Request $request)
    {

        $repositoryCompetence = $this->getDoctrine()->getRepository('DavBundle:Competence');
        $competences = $repositoryCompetence->findAll();

        $repositoryProjets = $this->getDoctrine()->getRepository('DavBundle:Projet');
        $projets = $repositoryProjets->findAll();

        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact, array('action' => $this->generateUrl('home'), 'method' => 'POST'));


        if ($request->isMethod('POST')) {
            // Refill the fields in case the form is not valid.
            $form->handleRequest($request);

            if($form->isValid()){
                // Send mail
                if($this->sendEmail($form->getData())){


                    return $this->redirectToRoute('home');
                }else{
                    var_dump("Errooooor :(");
                }
            }
        }

        return $this->render('@Dav/Pages/knossos.html.twig', array('competences' => $competences,'projets' =>$projets, 'form' => $form->createView()));
    }




}
