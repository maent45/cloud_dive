<?php

class ServicesPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    private static $can_be_root = false;

    public function getmCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        return $fields;

    }

}

class ServicesPage_Controller extends Page_Controller {

}