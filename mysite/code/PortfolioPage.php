<?php

class PortfolioPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    private static $can_be_root = false;

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        return $fields;
    }

}

class PortfolioPage_Controller extends Page_Controller {

}