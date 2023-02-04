public with sharing class WithSharingKeywordClass {

    public List<Account> lstAccounts {get; set;}

    public WithSharingKeywordClass(){
        lstAccounts = new List<Account>();
    }
    
    // SOQL query without accessLevel parameter
    public List<Account> getListOfAccounts(){
        lstAccounts = [SELECT Id, Name, Industry FROM Account];
        return lstAccounts;
    }

    // SOQL query with accessLevel = WITH SYSTEM_MODE
    public List<Account> getListOfAccounts_With_SystemMode(){
        lstAccounts = [SELECT Id, Name, Industry FROM Account WITH SYSTEM_MODE];
        return lstAccounts;
    }
    
    // SOQL query with accessLevel = WITH USER_MODE
    public List<Account> getListOfAccounts_With_UserMode(){
        lstAccounts = [SELECT Id, Name, Industry FROM Account WITH USER_MODE];
        return lstAccounts;
    }

    // SOQL query with "WITH SECURITY_ENFORCED" clause
    public List<Account> getListOfAccounts_With_SecurityEnforced(){
        lstAccounts = [SELECT Id, Name, Industry FROM Account WITH SECURITY_ENFORCED];
        return lstAccounts;
    }
    
    // DML Operation - Insert a new Account record with accessLevel mode = System
    public PageReference createAccount_IN_SYSTEM_MODE() {
        Account acct = new Account (Name = 'WithSharingKeywordClass-SYSTEM_MODE', Industry = 'Consulting');
        insert as System acct;

        return null;
    }

    // DML Operation - Insert a new Account record with accessLevel mode = User    
    public PageReference createAccount_IN_USER_MODE() {
        Account acct = new Account (Name = 'WithSharingKeywordClass-USER_MODE', Industry = 'Consulting');
        insert as User acct;

        return null;
    }

    // Database DML Operation - Insert a new Account record with accessLevel mode = System
    public PageReference databaseDML_CreateAccount_IN_SYSTEM_MODE() {
        List<Account> toInsert = new List<Account> {new Account (Name = 'WithSharingKeywordClass-SYSTEM_MODE', Industry = 'Consulting')};
        List<Database.SaveResult> sr = Database.insert(toInsert, AccessLevel.SYSTEM_MODE);

        return null;
    }

    // Database DML Operation - Insert a new Account record with accessLevel mode = User    
    public PageReference databaseDML_CreateAccount_IN_USER_MODE() {
        List<Account> toInsert = new List<Account> {new Account (Name = 'WithSharingKeywordClass-USER_MODE', Industry = 'Consulting')};
        List<Database.SaveResult> sr = Database.insert(toInsert, AccessLevel.USER_MODE);

        return null;
    }
            
}