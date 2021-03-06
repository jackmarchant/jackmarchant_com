<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Control\Email\Email;

class HirePageController extends PageController 
{
    private static $allowed_actions = ['Form'];

    public function Form() 
    { 
        $fields = new FieldList(
            TextField::create('name', 'Name'),
            EmailField::create('email', 'Email'),
            TextField::create('link', 'Link to existing website (optional)'),
            TextareaField::create('description', 'Describe your website requirements')
        ); 
        $actions = new FieldList( 
            FormAction::create('submit', 'Send') 
        );
        $required = new RequiredFields([
            'Name', 'Email', 'description',
        ]);
        return new Form($this, 'Form', $fields, $actions, $required); 
    }

    public function submit($data, $form)
    { 
        $messageBody = " 
            <p><strong>Name:</strong> {$data['name']}</p> 
            <p><strong>Email:</strong> {$data['email']}</p> 
            <p><strong>Website:</strong> {$data['link']}</p>
            <p><strong>Description:</strong> {$data['description']}</p>
        "; 

        $from = new SendGrid\Email(null, $data['email']);
        $subject = "Hire request from {$data["name"]}";
        $to = new SendGrid\Email(null, getenv('ADMIN_EMAIL'));
        $content = new SendGrid\Content('text/html', $messageBody);
        $mail = new SendGrid\Mail($from, $subject, $to, $content);

        $apiKey = getenv('SENDGRID_API_KEY');
        $sg = new \SendGrid($apiKey);

        $response = $sg->client->mail()->send()->post($mail);
        
        if ($response) {
            return [
                'Content' => 'Thank you for getting in touch. I will get back to you as soon as possible.',
                'Form' => ''
            ];
        }

        return [
            'Form' => $form,
        ];
    }
}