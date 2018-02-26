class EClassifierImpl 
: EClassifierBase
{
    public var metaObjectID:Int = -1;
    public func setClassifierID(id:Int)
    {
        metaObjectID = id;
    }
    
    //public var generatedInstanceClassName:String;
    
    func setGeneratedInstanceClass(isGenerated:Bool)
    {
        /*
        if (isGenerated)
        {
            if let x = generatedInstanceClassName
            {
                generatedInstanceClassName = x;
                instanceClassName = nil;
            }
        }
        else if (generatedInstanceClassName != null)
        {
            instanceClassName = generatedInstanceClassName;
            generatedInstanceClassName = null;
        }
        */
    }
    
    //TODO implement
    public func setInstanceClass(value:Mirror)
    {

    }
    
    public func basicSetInstanceTypeName(newInstanceTypeName:String)
    {
        var oldInstanceTypeName = instanceTypeName;
        instanceTypeName = newInstanceTypeName;
    
    /*
     if (eNotificationRequired())
     {
     eNotify
     (new ENotificationImpl(this, Notification.SET, EcorePackage.ECLASSIFIER__INSTANCE_TYPE_NAME, oldInstanceTypeName, newInstanceTypeName));
     }
     */
    }
}
