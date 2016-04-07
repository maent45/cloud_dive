<?php

class ServicesPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText',
        'Glyphicon' => 'Varchar'
    );

    private static $can_be_root = false;

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Glyphicon'), 'Content');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        return $fields;

    }

}

class ServicesPage_Controller extends Page_Controller {

}