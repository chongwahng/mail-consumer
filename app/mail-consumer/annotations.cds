using ConsumerService as service from '../../srv/ConsumerService';

annotate service.Requests with {
    ID          @UI.Hidden;
    subject     @title : 'Email Subject';
    fromSender  @title : 'Sender Email Address';
    toRecipient @title : 'Recipient Email Address';
    body        @title : 'Body Text'
                @UI.MultiLineText;
};

annotate service.Requests with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : fromSender,
        },
        {
            $Type : 'UI.DataField',
            Value : toRecipient,
        },
        {
            $Type : 'UI.DataField',
            Value : subject,
        },
        {
            $Type : 'UI.DataField',
            Value : body,
        },
    ] 
);
annotate service.Requests with @(
    UI.HeaderInfo                  : {
        TypeName       : 'Request',
        TypeNamePlural : 'Requests',
        Title          : {Value : subject},
        ImageUrl       : 'sap-icon://paper-plane',
    },    
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : fromSender,
            },
            {
                $Type : 'UI.DataField',
                Value : toRecipient,
            },
            {
                $Type : 'UI.DataField',
                Value : subject,
            },
            {
                $Type : 'UI.DataField',
                Value : body,
            },
        ],
    },
    UI.FieldGroup #Admin           : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {Value : createdBy},
            {Value : createdAt},
            {Value : modifiedBy},
            {Value : modifiedAt}
        ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Admin Information',
            Target : '@UI.FieldGroup#Admin'
        }
    ]
);
