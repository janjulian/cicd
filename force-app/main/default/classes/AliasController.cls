public with sharing class AliasController 
{
    @AuraEnabled
    public static List<Alias__c> getAliases(Id accountId)
    {
        return [select Id, Name, Sort_Order__c from Alias__c where Account__c = :accountId order by Sort_Order__c asc];
    }
}