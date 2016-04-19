<?php

class Banner extends DataObject {

    private static $has_one = array (
        'HomePage' => 'HomePage',
        'Mobile_img' => 'Image',
        'Tablet_img' => 'Image',
        'Desktop_img' => 'Image'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', $mob_img = UploadField::create('Mobile_img', 'Mobile Image'));
        $fields->addFieldToTab('Root.Main', $tab_img = UploadField::create('Tablet_img', 'Tablet Image'));
        $fields->addFieldToTab('Root.Main', $desk_img = UploadField::create('Desktop_img', 'Desktop Image'));

        // set upload folder for images and files
        $mob_img->setFolderName('banner-images');
        $tab_img->setFolderName('banner-images');
        $desk_img->setFolderName('banner-images');

        // set validators
        $mob_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));
        $tab_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));
        $desk_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}