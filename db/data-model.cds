using {
    cuid,
    managed
} from '@sap/cds/common';

namespace db;

entity Requests : cuid, managed {
    fromSender  : String;
    toRecipient : String;
    subject     : String;
    body        : String;
}
