public with sharing class EvilClass {
    public String run(String userInput) {
        String q = 'SELECT Id, Name FROM Account WHERE Name = \'' + userInput + '\'';
        List<sObject> rows = Database.query(q);
        return JSON.serialize(rows);
    }
}
