<?php

namespace App\Controller;

use App\Repository\ResultsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ResultsController extends AbstractController
{
    private $resultRepostory;
    public function __construct(ResultsRepository $resultRepostory)
    {
        $this->resultRepostory = $resultRepostory;
    }


    #[Route('/results', name: 'app_results')]
    public function index(): Response
    {
        $results = $this->resultRepostory->findAll();
        return $this->render('results.html.twig', [
            'results' => $results
        ]);
    }

    #[Route('/results/filtr', name: 'app_results_with_filtr')]
    public function filtrByData(): Response
    {

        $from = date('Y-m-d H:i:s', strtotime($_POST['from']));
        $to = date('Y-m-d H:i:s', strtotime($_POST['to']) + 86399);
        $results = $this->resultRepostory->findBetweenDates($from, $to);
        return $this->render('results.html.twig', [
            'results' => $results,
            'from' => $_POST['from'],
            'to' => $_POST['to']
        ]);
    }
}
