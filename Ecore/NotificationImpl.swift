
class NotificationImpl:NotificationChain, Notification
{
    
    static let SET = 1;
    static let UNSET = 2;
    static let ADD = 2;
    static let REMOVE = 3;
    
    static let ADD_MANY = 5;
    static let REMOVE_MANY = 6;
    static let MOVE = 7;
    
    static let NO_INDEX = -1;
    static let IS_SET_CHANGE_INDEX = NO_INDEX - 1;
    
    static let NO_FEATURE_ID = -1;
    
    static let PRIMITIVE_TYPE_OBJECT = -1;
    
    internal var next:NotificationChain?;
    
    internal var eventType:Int;
    internal var oldValue:Any?;
    internal var newValue:Any?;
    internal var position:Int;
    internal var primitiveType:Int;
    
    /*
     public NotificationImpl(int eventType, object oldValue, object newValue): this(eventType, oldValue, newValue, NO_INDEX)
     {
     
     }
     
     public NotificationImpl(int eventType, object oldValue, object newValue, bool isSetChange): this(eventType, oldValue, newValue, isSetChange ? IS_SET_CHANGE_INDEX : NO_INDEX)
     {
     
     }
     */
    
    init(eventType:Int, oldValue:Any?, newValue:Any?, position:Int, wasSet:Bool)
    {
        self.eventType = eventType;
        self.oldValue = oldValue;
        self.newValue = newValue;
        self.position = position;
        self.primitiveType = NotificationImpl.PRIMITIVE_TYPE_OBJECT;
        if (!wasSet)
        {
            self.position = NotificationImpl.IS_SET_CHANGE_INDEX - position - 1;
        }
    }
    
    init(eventType:Int, oldValue:Any?, newValue:Any?, position:Int)
    {
    
        self.eventType = eventType;
        self.oldValue = oldValue;
        self.newValue = newValue;
        self.position = position;
        self.primitiveType = NotificationImpl.PRIMITIVE_TYPE_OBJECT;
    
    }
    
    func add(notification:Notification)->Bool
    {
        
        if let next_ = next{
            return next_.add(notification: notification);
        }
        else{
            return false;
        }
    }
    
    func dispatch()
    {
    
        //var notifier:AnyObject = getNotifier();
        
        if let notifier = getNotifier(){
            if(getEventType() != -1){
                (notifier as? Notifier)?.eNotify(notification: self)
            }
        }
        
        
        next?.dispatch();
        
 
    
    }
    
    func getNotifier()->AnyObject?
    {
        return nil;
    
    }
    
    
    func getEventType()->Int
    {
        return eventType;
    }
    
    func getNewValue()->Any?
    {
        return newValue;
    }

}
