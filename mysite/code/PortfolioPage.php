<?php

class PortfolioPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        return $fields;
    }

}

class PortfolioPage_Controller extends Page_Controller {

}