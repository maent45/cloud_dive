<?php

class HomePage extends Page {

    public function Services() {
        return ServicesHolder::get();
    }

}

class HomePage_Controller extends Page_Controller {

}