<?php

class ServicesPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText',
        'Glyphicon' => 'Varchar',
        'Blurb' => 'Text'
    );

    private static $has_one = array (
        'Banner' => 'Image'
    );

    private static $can_be_root = false;

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Glyphicon'), 'Content');
        $fields->addFieldToTab('Root.Main', $service_banner = UploadField::create('Banner'), 'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('Blurb'), 'Content');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        // set upload folder for images and files
        $service_banner->setFolderName('service_banner-images');

        // set validators
        $service_banner->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;

    }

}

class ServicesPage_Controller extends Page_Controller {

}