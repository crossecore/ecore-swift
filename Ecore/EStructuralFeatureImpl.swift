class EStructuralFeatureImpl 
: EStructuralFeatureBase
{
    
    public var featureID:Int = -1;
    
    func setFeatureID(id:Int)
    {
        featureID = id;
    }
    
    override func getFeatureID() -> Int {
        return featureID;
    }
    
    private var containerClass_:Mirror?;
    
    var containerClass: Mirror? {
        set { containerClass_ = newValue; }
        get { return containerClass_; }
    }
    
}
