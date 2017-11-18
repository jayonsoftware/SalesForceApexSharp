public class Soql
{
    /**
     * A simple CRUD Example
     */
    public static void CrudExample()
    {
        Contact contactNew = new Contact(LastName = 'Jay', Email = 'abc@abc.com');
        insert contactNew;

        System.Debug(contactNew.Id);

        List<Contact> contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        for (Contact c : contacts)
        {
            System.Debug(c.Email);
            c.Email = 'new@new.com';
        }
        update contacts;

        contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        for (Contact c : contacts)
        {
            System.Debug(c.Email);
        }
        delete contacts;

        contacts = [SELECT Id, Email FROM Contact WHERE Id = :contactNew.Id];
        if (contacts.IsEmpty())
        {
            System.Debug('Delete Worked');
        }
    }

    public static void OneVsListDemo()
    {
        List<Contact> contacts = [SELECT Id, Email FROM Contact];

        List<Contact> contact = [SELECT Id, Email FROM Contact LIMIT 1];
    }
}