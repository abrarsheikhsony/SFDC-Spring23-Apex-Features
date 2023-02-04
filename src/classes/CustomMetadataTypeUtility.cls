public with sharing class CustomMetadataTypeUtility {

    public Map<String, Country__mdt> mapCMT {get; set;}
    public List<Country__mdt> lstCMT {get; set;}

    public CustomMetadataTypeUtility(){
        mapCMT = new Map<String, Country__mdt>();
        lstCMT = new List<Country__mdt>();
    }

    // Returns a Map of all the records for a custom metadata type
    public Map<String, Country__mdt> getMapOfCountries(){
        mapCMT = Country__mdt.getAll();
        System.Debug('>>mapCMT<<' + mapCMT);
        
        // Here make sure you pass the DeveloperName of the custom metadata type record without spaces
        System.Debug('>>mapCMT - America<<' + mapCMT.get('America'));
        System.Debug('>>mapCMT - Great Britain<<' + mapCMT.get('Great_Britain'));
        
        return mapCMT;
    }

    // Returns a List of all the records for a custom metadata type
    public List<Country__mdt> getListOfCountries(){
        lstCMT = Country__mdt.getAll().values();
        System.Debug('>>lstCMT<<' + lstCMT);
        
        for(Country__mdt country : lstCMT){
            System.Debug('>>Country<<'+country.Label);
            System.Debug('>>Country Currency<<'+country.Country_Currency__c);
        }

        return lstCMT;
    }
    
    public Country__mdt getCountry(String cmtID){
        Country__mdt countryCMT = new Country__mdt();
        
        // Returns a single custom metadata type record sObject for a specified record ID
        countryCMT = Country__mdt.getInstance(cmtID);
        System.Debug('>>countryCMT<<' + countryCMT);

        // Returns a single custom metadata type record sObject for a specified developerName field
        countryCMT = Country__mdt.getInstance(cmtID);
        System.Debug('>>countryCMT<<' + countryCMT);

        // Returns a single custom metadata type record sObject for a qualified API name
        countryCMT = Country__mdt.getInstance(cmtID);
        System.Debug('>>countryCMT<<' + countryCMT);

        return countryCMT;
    }

}

/*
CustomMetadataTypeUtility cmtUtil = new CustomMetadataTypeUtility();

System.Debug('>>MapOfCountries<<'+cmtUtil.getMapOfCountries());

System.Debug('>>ListOfCountries<<'+cmtUtil.getListOfCountries());

System.Debug('>>Single Country<<'+cmtUtil.getCountry('America'));
*/