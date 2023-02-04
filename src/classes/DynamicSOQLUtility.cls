public with sharing class DynamicSOQLUtility {
/*
Test.testSandboxPostCopyScript(script, organizationId, sandboxId, sandboxName, RunAsAutoProcUser);

// Execute test script with RunAsAutoProcUser set to true
Test.testSandboxPostCopyScript (
    new PrepareMySandbox(), UserInfo.getOrganizationId(), UserInfo.getOrganizationId(), UserInfo.getOrganizationName(), true);

    
Schema.sObjectField field = Account.Industry;
Schema.DescribeFieldResult fieldDescribe = field.getDescribe();

// New getSObjectType() method to get the SObjectType of a Schema.DescribeFieldResult object
Schema.sObjectType sourceType = fieldDescribe.getSObjectType();

Assert.areEqual(Account.sObjectType, sourceType);
    
    System.Debug('>>Field SObject Type<<'+sourceType);
//System.Debug('>>Field SObject Type<<'+ Assert.areEqual(Account.sObjectType, sourceType));

*/

/*
// There’s a minimum delay of 5 minutes before the job is executed.
Integer delayInMinutes = 5;

ID jobID = System.enqueueJob(new MyQueueableClass(), delayInMinutes);
*/  
    
/*
// Sample code to bind directly with Object field 
MyCustomObject__c myVariable = new MyCustomObject__c(field1__c ='TestField');
List<sObject> sobjList = Database.query('SELECT Id FROM MyCustomObject__c WHERE field1__c = :myVariable.field1__c');

ERROR: Variable does not exist

// You can instead resolve the Variable field into a String and use the String in your Dynamic SOQL query
String resolvedField1 = myVariable.field1__c;
List<sObject> sobjList = Database.query('SELECT Id FROM MyCustomObject__c WHERE field1__c =  :resolvedField1');
*/
  
/*
Map<String, Object> mapAccountBinds = new Map<String, Object>{
                                                    'acctName1' => 'Acme Corporation',
                                                    'acctName2' => 'Universal Containers'};

List<Account> lstAccounts = Database.queryWithBinds('SELECT Id, Name, Industry FROM Account WHERE Name = :acctName1',
                            mapAccountBinds, 
                            AccessLevel.USER_MODE);

System.Debug('>>List of Accounts - queryWithBinds<<'+lstAccounts);

Map<String, Object> mapAccountBinds = new Map<String, Object>{
                                                    'acctName1' => 'Acme Corporation',
                                                    'acctName2' => 'Universal Containers'};

public Database.QueryLocator start(Database.BatchableContext BC){
    return Database.getQueryLocatorWithBinds('SELECT Id, Name, Industry FROM Account WHERE Name = :acctName1', 
                                             mapAccountBinds, 
                                             AccessLevel.USER_MODE);
}

    
Map<String, Object> mapAccountBinds = new Map<String, Object>{
                                                    'acctName1' => 'Acme Corporation',
                                                    'acctName2' => 'Universal Containers'};

Integer acctCount = Database.countQueryWithBinds('SELECT count() FROM Account WHERE Name = :acctName1',
                                 mapAccountBinds, 
                                 AccessLevel.USER_MODE);
*/    
}