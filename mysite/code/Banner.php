<?php

class Banner extends DataObject {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    private static $has_one = array (
        'HomePage' => 'HomePage'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        return $fields;
    }

}