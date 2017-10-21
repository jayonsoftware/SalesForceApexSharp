public with sharing class MethodComplex {
    public static void MethodOne() {

        for (Account a : [SELECT Id FROM Account]) {
            System.debug(a.Id);
        }

        for (Integer i=0;i<10;i++) {

        }
    }
}
