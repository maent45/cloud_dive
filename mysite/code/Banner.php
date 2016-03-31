<?php

class Banner extends DataObject {

    private static $db = array (
        'Content' => 'HTMLText'
    );

    private static $has_one = array (
        'HomePage' => 'HomePage',
        'Image' => 'Image'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));
        $fields->addFieldToTab('Root.Main', $banner_img = UploadField::create('Image'));

        // set upload folder for images and files
        $banner_img->setFolderName('banner-images');

        // set validators
        $banner_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}