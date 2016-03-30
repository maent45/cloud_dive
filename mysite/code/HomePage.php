<?php

class HomePage extends Page {

    // get ServicesHolder contents
    public function Services() {
        return ServicesHolder::get();
    }

    // get UserDefinedForm contents http://www.silverstripe.org/community/forums/all-other-modules/show/111503
    public function showForm() {
        $record = DataObject::get_one("UserDefinedForm");
        $results = new UserDefinedForm_Controller($record);

        return $results;
    }

}

class HomePage_Controller extends Page_Controller {

}