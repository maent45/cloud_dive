<?php

class HomePage extends Page {

    private static $db = array (
        'Banner_caption' => 'HTMLText',
        'Services_display_limit' => 'Varchar'
    );

    private static $has_many = array (
        'Banners' => 'Banner'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Services_display_limit', 'Services Display Limit'));
        $fields->addFieldToTab('Root.Banners', HtmlEditorField::create('Banner_caption', 'Banner Caption'));
        $fields->addFieldToTab('Root.Banners', GridField::create(
            'Banners',
            'Banners',
            $this->Banners(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }

    // get ServicesHolder contents
    public function Services() {
        return ServicesHolder::get();
    }

    // get UserDefinedForm contents http://www.silverstripe.org/community/forums/all-other-modules/show/111503
    public function showForm() {
        $record = DataObject::get_one("UserDefinedForm");
        $results = new UserDefinedForm_Controller($record);

        return $results;
    }

}

class HomePage_Controller extends Page_Controller {

}