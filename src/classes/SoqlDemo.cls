public with sharing class SoqlDemo {
    /**
     * A simple CRUD Example
     */
    public static void CrudExample()
    {
        Contact contactNew = new Contact(LastName = 'Jay', EMail = 'abc@abc.com');
        insert contactNew;

        System.debug(contactNew.Id);

        List<Contact> contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        for (Contact c : contacts)
        {
            System.debug(c.Email); c.Email = 'new@new.com';
        }
        update contacts;

        contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        for (Contact c : contacts)
        {
            System.debug(c.Email);
        }
        delete contacts;

        contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        if (contacts.isEmpty())
        {
            System.debug('Delete Worked');
        }
    }

    public static void OneVsListDemo()
    {
        List<Contact> contacts = [SELECT Id, Email FROM Contact];

        Contact contact = [SELECT Id, Email FROM Contact LIMIT 1];
    }

    public static void VariableScope(Integer x)
    {
        if(x==5) {
            List<Contact> objectList;
            objectList = [SELECT Id FROM Contact];
        } else {
            Contact objectList;
            objectList = [SELECT Id FROM Contact];
        }
    }
}