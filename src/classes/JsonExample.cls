public with sharing class JsonExample
{
    public void JsonExample()
    {
        String name = 'Jay';

        String JSONString = JSON.Serialize(name);

      //  name = JSON.Deserialize(JSONString, String.class);
    }
}