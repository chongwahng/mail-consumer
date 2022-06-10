using ConsumerService as service from '../../srv/ConsumerService';

annotate service.Requests with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'fromSender',
            Value : fromSender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'toRecipient',
            Value : toRecipient,
        },
        {
            $Type : 'UI.DataField',
            Label : 'subject',
            Value : subject,
        },
        {
            $Type : 'UI.DataField',
            Label : 'body',
            Value : body,
        },
    ] 
);
annotate service.Requests with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'fromSender',
                Value : fromSender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'toRecipient',
                Value : toRecipient,
            },
            {
                $Type : 'UI.DataField',
                Label : 'subject',
                Value : subject,
            },
            {
                $Type : 'UI.DataField',
                Label : 'body',
                Value : body,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
