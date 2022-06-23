<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CapitalController extends AbstractController
{
    #[Route('/capitalGame', name: 'app_capital')]
    public function index(): Response
    {
        $arr = $this->getCountry();
        return $this->render('capital.html.twig', [
            'country' => $arr,
            'pos' => 0,
            'neg' => 0
        ]);
    }



    #[Route('/capitalGame/nextQuestion', name: 'nextQuestionCapital')]
    public  function nextQuestionCapital()
    {
        $arr = $this->getCountry();
        return $this->render('capital.html.twig', [
            'country' => $arr,
            'pos' => $_POST['pos'],
            'neg' => $_POST['neg']

        ]);
    }

    public  function get5Countries()
    {
        $countries = $this->getParameter('countries');
        $array_merged = array();
        for ($i = 0; $i < 5; $i++) {
            array_push($array_merged, $countries[rand(0, 14)]);
        }
        return $array_merged;
    }

    public  function getCountry()
    {
        $countries = $this->getParameter('countries');

        $arr = $countries[rand(0, 14)];
        return $arr;
    }
}
