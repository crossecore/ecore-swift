
class ENotificationImpl:NotificationImpl{


    private var notifier:InternalEObject;
    private var featureID:Int = NotificationImpl.NO_FEATURE_ID;
    private var feature:EStructuralFeature?;
    
    convenience init(notifier:InternalEObject, eventType:Int, featureID:Int, oldValue:Any, newValue:Any){
    
        self.init(notifier:notifier, eventType:eventType, featureID:featureID, oldValue:oldValue, newValue:newValue, position: NotificationImpl.NO_INDEX);
    }
    
    init(notifier:InternalEObject, eventType:Int, featureID:Int, oldValue:Any, newValue:Any, position:Int){
        

        self.notifier = notifier;
        self.featureID = featureID;
        self.feature = nil;
        super.init(eventType:eventType, oldValue:oldValue, newValue:newValue, position:position);
        
        
        
        
    }
    
}
