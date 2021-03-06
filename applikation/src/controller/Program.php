<?php

namespace controller;

require_once dirname(__FILE__) . '/../view/Page.php';
require_once dirname(__FILE__) . '/../view/Action.php';
require_once dirname(__FILE__) . '/../controller/AuthenticationHandler.php';
require_once dirname(__FILE__) . '/../controller/CourseHandler.php';
require_once dirname(__FILE__) . '/../controller/QuizHandler.php';
require_once dirname(__FILE__) . '/../controller/StatisticsHandler.php';

/**
 * Master controller for the application
 */
class Program {
    public function run() {
        $page = new \view\Page();

        switch ($page->getAction()) {
            case '' :
                $handler = new AuthenticationHandler();
                $handler -> createFrontPage();
                break;
            case \view\Action::LOGIN :
                $handler = new AuthenticationHandler();
                $handler -> doLogin();
                break;
            case \view\Action::LOGOUT :
                $handler = new AuthenticationHandler();
                $handler -> doLogout();
                break;
            case \view\Action::SHOW_COURSE :
                $handler = new CourseHandler(\view\Action::SHOW_COURSE);
                $handler -> showCourse();
                break;
            case \view\Action::SHOW_COURSES :
                $handler = new CourseHandler(\view\Action::SHOW_COURSES);
                $handler -> showCourses();
                break;
            case \view\Action::EDIT_COURSE :
                $handler = new CourseHandler(\view\Action::EDIT_COURSE);
                $handler -> editCourse();
                break;
            case \view\Action::DO_QUIZ :
                $handler = new QuizHandler();
                $handler -> doQuiz();
                break;
            case \view\Action::ANSWER_QUIZ :
                $handler = new QuizHandler();
                $handler -> answerQuiz();
                break;
            case \view\Action::SHOW_QUIZ_RESULT :
                $handler = new QuizHandler();
                $handler -> presentQuizResult();
                break;
            case \view\Action::STATISTICS :
                $handler = new StatisticsHandler();
                $handler -> presentStatistics();
                break;
            default :
                //TODO: Custom error page here (404)
                echo "Fel URL, ingen action matchas";
        }
    }
}