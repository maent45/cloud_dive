<?php

class PortfolioPage extends Page {

    private static $db = array (
        'Content' => 'HTMLText',
        'Blurb' => 'HTMLText',
        // main content
        'Tablet_desc' => 'HTMLText',
        'Desktop_desc' => 'HTMLText',
        'Website_url' => 'Varchar'
    );

    private static $has_one = array (
        'Thumbnail_background' => 'Image',
        'Tablet_view' => 'Image',
        'Desktop_view' => 'Image'
    );

    private static $can_be_root = false;

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', $thumbnail_bkground = UploadField::create('Thumbnail_background', 'Thumbnail Background'));
        $fields->addFieldToTab('Root.Main', $blurb = HtmlEditorField::create('Blurb')->setRows(4));
        // main content areas
        $fields->addFieldToTab('Root.Main', HeaderField::create('Main Content'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Tablet_desc', 'Development Summary')->setRows(5));
        $fields->addFieldToTab('Root.Main', $tablet_img = UploadField::create('Tablet_view', 'Tablet Image'));
        $fields->addFieldToTab('Root.Main', $desktop_img = UploadField::create('Desktop_view', 'Tablet Image'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Desktop_desc', 'Final Product Summary')->setRows(5));
        $fields->addFieldToTab('Root.Main', TextField::create('Website_url', 'Website URL'));

        // set upload folder for images and files
        $thumbnail_bkground->setFolderName('portfolio-thumbnail-images');
        $tablet_img->setFolderName('portfolio-images');
        $desktop_img->setFolderName('portfolio-images');
        // set validators
        $thumbnail_bkground->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));
        $tablet_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));
        $desktop_img->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg','svg'));

        return $fields;
    }

}

class PortfolioPage_Controller extends Page_Controller {

    public function NextSibling() {
        $pages = DataObject::get("SiteTree", "ParentID = {$this->ParentID} AND Sort > {$this->Sort}", "Sort", "", 1);
        if($pages) return $pages->First();
    }

    public function PreviousSibling() {
        $pages = DataObject::get("SiteTree", "ParentID = {$this->ParentID} AND Sort < {$this->Sort}", "Sort DESC", "", 1);
        if($pages) return $pages->First();
    }

}