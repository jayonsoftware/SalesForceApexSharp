global class ClassGlobal
{
    public virtual void VirtualMethod(){
    }
    @future
    public static void FutureMethod()
    {
    }
    @future(callOut=true)
    public static void FutureMethodWithCallOut()
    {
    }
}