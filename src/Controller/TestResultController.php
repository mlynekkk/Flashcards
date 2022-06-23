<?php

namespace App\Controller;

use App\Repository\ResultsRepository;
use App\Entity\Results;
use \Datetime;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Annotation\Route;

class TestResultController extends AbstractController
{
    public $pos;
    public $neg;
    private $resultRepostory;
    public function __construct(ResultsRepository $resultRepostory)
    {
        $this->resultRepostory = $resultRepostory;
    }

    #[Route('/testResult', name: 'app_test_result')]
    public function index(): Response
    {
        return $this->render('test_result.html.twig', [
            'controller_name' => 'TestResultController',
            'pos' => $_GET['pos'],
            'neg' => $_GET['neg']
        ]);
        

    }

    #[Route('/testResult/add', name: 'app_test_result_add')]
    public function add(): Response
    {
        $data = new DateTime();
        $result = new Results();
        $result->setDate($data);
        $result->setPositive($_POST['pos']);
        $result->setNegative($_POST['neg']);
        $result->setType($_POST['type']);
        $this->resultRepostory->add($result, true);
        return new RedirectResponse('/testResult?pos='.$_POST['pos'].'&neg='.$_POST['neg'].'');
    }
}
