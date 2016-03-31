<?php

class PortfolioPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    private static $has_one = array (
        'Thumbnail_background' => 'Image'
    );

    private static $can_be_root = false;

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', $thumbnail_bkground = UploadField::create('Thumbnail_background', 'Thumbnail Background'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));

        // set upload folder for images and files
        $thumbnail_bkground->setFolderName('portfolio-thumbnail-images');

        // set validators
        $thumbnail_bkground->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}

class PortfolioPage_Controller extends Page_Controller {

}