<?php

namespace controller;

require_once dirname(__FILE__) . '/../view/FrontPage.php';
require_once dirname(__FILE__) . '/../view/Navigation.php';
require_once dirname(__FILE__) . '/../model/Session.php';
require_once dirname(__FILE__) . '/../model/UserFactory.php';
require_once dirname(__FILE__) . '/../model/User.php';

class AuthenticationHandler {

    private $frontPage;
    private $navigation;
    private $session;

    public function __construct() {
        $this -> frontPage = new \view\FrontPage();
        $this -> navigation = new \view\Navigation();
        $this -> session = new \model\Session();
    }

    public function doLogin() {
        if ($this -> frontPage -> isPostback() && !$this -> session -> isUserAuthenticated()) {
            $inputs = $this -> frontPage -> getInputs();

            try {
                $user = \model\UserFactory::recreateUser($inputs[\view\FrontPage::$nameUsername], $inputs[\view\FrontPage::$namePassword]);
                $this -> session -> loginUser($user);
            } catch (\Exception $e) {
                if ($e->getCode() != -1) {
                    $this -> frontPage -> createErrorMessage($e->getCode());
                } else {
                    //TODO: show a custom error page here
                    var_dump($e);
                    die();
                }
            }
        }
        $this -> navigation -> redirectToFrontPage();
    }

    public function doLogout() {
        if ($this -> session -> isUserAuthenticated()) {
            $this -> session -> logoutUser();
        }
        $this -> navigation -> redirectToFrontPage();
    }

    public function createFrontPage() {
        if ($this -> frontPage -> isPostback()) {
            $this -> navigation -> redirectToFrontPage();
        } else {
            if ($this -> session -> isUserAuthenticated()) {
                $user = $this -> session -> getValue(\model\Session::$keyUser);
                $this -> frontPage -> echoFrontPage($user);
            } else {
                $this -> frontPage -> echoLoginPage();
            }
        }
    }
}