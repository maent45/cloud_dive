<?php

class ServicesPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText',
        'Glyphicon' => 'Varchar',
        'Services_offered' => 'HTMLText',
        'Blurb' => 'HTMLText'
    );

    private static $has_one = array (
        'Banner' => 'Image'
    );

    private static $can_be_root = false;

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Glyphicon'), 'Content');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Services_offered', 'Services Included')->setRows(4), 'Content');
        $fields->addFieldToTab('Root.Main', $service_banner = UploadField::create('Banner'), 'Content');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Blurb')->setRows(4), 'Content');
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