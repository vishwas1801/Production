trigger AccountPartnerProspectConverted on Account (before insert, before update) {

    for (Account a : Trigger.New) {
    
        if (a.Type == 'Partner Prospect') {
        
            //set generated by when a single account is created
            if (Trigger.isInsert && Trigger.new.size() == 1) {
                a.Generated_By__c = UserInfo.getUserId();
            }
            
            //set converted by when closed
            if (Trigger.isUpdate 
            && a.Partner_Prospect_Status__c == 'Closed - Converted' 
            && Trigger.oldMap.get(a.Id).Partner_Prospect_Status__c != 'Closed - Converted') {
                a.Qualified_By__c = UserInfo.getUserId();
            }
        
        }
        
    }

}