public with sharing class AliasController 
{
    @AuraEnabled
    public static List<Alias__c> getAliases(Id accountId)
    {
        return [select Id, Name from Alias__c where Account__c = :accountId];
    }
}