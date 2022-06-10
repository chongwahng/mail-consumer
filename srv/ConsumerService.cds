using db from '../db/data-model';

service ConsumerService @(path : '/mail') {
    @Capabilities.InsertRestrictions.Insertable : true
    @Capabilities.UpdateRestrictions.Updatable  : true
    @Capabilities.DeleteRestrictions.Deletable  : true
    entity Requests as projection on db.Requests;

    action create_sendtask();
}

annotate ConsumerService.Requests with @odata.draft.enabled;
