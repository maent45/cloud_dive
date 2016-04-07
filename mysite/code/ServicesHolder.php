<?php

class ServicesHolder extends Page {

    private static $db = array (
        'Homepage_display_limit' => 'Varchar'
    );

    private static $has_one = array (
        'Banner' => 'Image'
    );

    private static $allowed_children = array (
        'ServicesPage'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $children_count = $this->Children()->count();

        $fields->addFieldToTab('Root.Main', TextField::create('Homepage_display_limit', 'Homepage Display Limit'), 'Content');
        $fields->addFieldToTab('Root.Main', $banner = UploadField::create('Banner'), 'Content');

        $banner->setFolderName('service-holder-images');

        $banner->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}

class ServicesHolder_Controller extends Page_Controller {

}