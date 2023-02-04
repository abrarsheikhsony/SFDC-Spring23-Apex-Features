public with sharing class ObjectCreator {

    public static sObject createAndSet(Schema.sObjectField field, object fieldValue) {
        Schema.DescribeFieldResult fieldDescribe = field.getDescribe();
        System.Debug('>>fieldDescribe<<'+fieldDescribe);
        System.Debug('>>fieldDescribe getSObjectType<<'+fieldDescribe.getSObjectType());
        
        Schema.sObjectType sourceType = fieldDescribe.getSObjectType();  
        System.Debug('>>sourceType<<'+sourceType);

        sObject newObj = sourceType.newSObject(null, true);
        System.Debug('>>newObj<<'+newObj);

        newObj.put(field, fieldValue);
        System.Debug('>>newObj<<'+newObj);

        return newObj;
    }
}