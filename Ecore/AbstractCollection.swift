

//class AbstractCollection<T : Sequence & IteratorProtocol>: EcoreEList, Collection where T.Iterator.Element: Equatable{
class AbstractCollection<T:Equatable>:EcoreEList, Collection, Sequence, IteratorProtocol{
    //typealias T = E;
    
    private let NO_FEATURE:Int = Int.min;
    
    private var owner:InternalEObject?;
    private var featureId:Int;
    private var oppositeFeatureId:Int;
    internal var array:Array<T>;
    
    private var count:Int = 0;
    
    func next() -> T? {
        if count == array.count {
            return nil
        } else {
            defer { count += 1; }
            return array[count];
        }
    }
    
    init(origin:Array<T>){
        array = Array<T>(origin);
        self.owner = nil;
        self.featureId = Int.min;
        self.oppositeFeatureId = Int.min;
    }
    
    convenience init(owner:InternalEObject?, featureId:Int){
        self.init(owner:owner, featureId:featureId, oppositeFeatureId:Int.min);
    }
    
    convenience init(){
        self.init(owner: nil, featureId: Int.min);
    }
    
    init(owner:InternalEObject?, featureId:Int, oppositeFeatureId:Int){
        self.owner = owner;
        self.featureId = featureId;
        self.oppositeFeatureId = oppositeFeatureId;
        self.array = Array<T>();
    }
    


    
    func clear(){
        array.removeAll();
    }
    
    func addAll(items:AbstractCollection<T>){
    
        for item in items{
        
            add(element: item);
        }
    }
    
    func add(element:T)->Bool{
        
        
        if(isUnique() && array.contains(element)){
            return false;
        }
        else{
            addUnique(element:element);
            return true;
        }
        
    }
    
    func remove(element:T)->Bool{
        if(array.contains(element)){
            remove_(element: element);
            return true;
        }
        else{
            return false;
        }
    }
    
    
    
    func remove_(element:T)->T
    {
        if (isNotificationRequired())
        {
            var notifications:NotificationChain?;
            //bool oldIsSet = isSet();
            let oldIsSet:Bool = !array.isEmpty;
            /*
             if (hasShadow())
             {
                notifications = shadowRemove(basicGet(index), null);
             }
             */
        

            //TODO remove element
            if let index = array.index(of:element){
                
                array.remove(at:index);
                let oldObject:T = element;
                
                
                //NotificationImpl notification = createNotification(NotificationImpl.REMOVE, oldObject, null, index, oldIsSet);
                let notification:NotificationImpl = NotificationImpl(eventType: NotificationImpl.REMOVE, oldValue: oldObject as AnyObject, newValue: nil, position: index, wasSet: oldIsSet);
                
                if (hasInverse() /*&& oldObject!=nil*/)
                {
                    
                    notifications = inverseRemove(element: oldObject, notifications: notifications);
                    if let notifications_ = notifications{
                        notifications_.add(notification: notification);
                        notifications_.dispatch();
                    }
                    else{
                        dispatchNotification(notification: notification);
                    }
                    
                    

                }
                else
                {
                    
                    if let notifications_ = notifications{
                        notifications_.add(notification: notification);
                        notifications_.dispatch();
                    }
                    else{
                        dispatchNotification(notification: notification);
                    }
                    
                }
                return oldObject;
            }

        }
        else
        {

            if let index = array.index(of:element){
                array.remove(at: index);
                
                let oldObject:T = element;
                if (hasInverse() /*&& oldObject != null*/)
                {
                    let notifications:NotificationChain? = inverseRemove(element: oldObject, notifications: nil);
                    notifications?.dispatch();
                }
                return oldObject;
            }

        }
        return element;
    }
    
    func isNotificationRequired() -> Bool{
        
        return (owner?.eNotificationRequired())!;
        

        
    }
    
    func isUnique() -> Bool{
        //TODO abstract
        return false;
    }
    
    func hasInverse() -> Bool{
        return oppositeFeatureId != NO_FEATURE;
    }
    
    func getEStructuralFeature() -> EStructuralFeature? {
        return owner?.eClass()?.getEStructuralFeature(featureID: featureId);
    }
    
    func getInverseFeatureClass() -> Mirror? {
        return nil;
    }
    
    func dispatchNotification(notification:Notification){
        owner?.eNotify(notification: notification);
    }
    
    func hasNavigableInverse() -> Bool {
        return oppositeFeatureId>=0;
    }
    
    func hasInstanceClass() -> Bool {
        return true;
    }
    
    func getInverseEReference() -> EReference? {
        return (getEStructuralFeature() as? EReference)?.eOpposite;
    }
    
    func inverseAdd(element:T, notifications:NotificationChain?)->NotificationChain?
    {
        if let internalEObject = element as? InternalEObject{
            if (hasNavigableInverse())
            {
                if (!hasInstanceClass())
                {
                    return internalEObject.eInverseAdd(otherEnd: owner, featureID: internalEObject.eClass()?.getFeatureID(feature: getInverseEReference()!), baseClass: nil, notifications: notifications);
                }
                else
                {
                    return internalEObject.eInverseAdd(otherEnd: owner,featureID: self.oppositeFeatureId, baseClass: getInverseFeatureClass(),notifications: notifications);
                }
            }
            else
            {
                return internalEObject.eInverseAdd(otherEnd: owner, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - featureId,baseClass: nil, notifications: notifications);
            }
        }
        return nil;
    
    }
    
    func inverseRemove(element:T, notifications:NotificationChain?)->NotificationChain?
    {
        //var internalEObject = element as? InternalEObject
        if let internalEObject = element as? InternalEObject{
            if (hasNavigableInverse())
            {
                if (!hasInstanceClass())
                {
                    return internalEObject.eInverseRemove(otherEnd: owner, featureID: internalEObject.eClass()?.getFeatureID(feature: getInverseEReference()!), baseClass: nil, notifications: notifications);
                }
                else
                {
                    return internalEObject.eInverseRemove(otherEnd: owner, featureID: oppositeFeatureId, baseClass: getInverseFeatureClass(),notifications: notifications);
                }
            }
            else
            {
                return internalEObject.eInverseRemove(otherEnd: owner, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - featureId, baseClass: nil, notifications: notifications);
            }
        }
        return nil;

    }
    
    
    func addUnique(element:T)
    {
        if (isNotificationRequired())
        {

            let index:Int = array.count-1;
    
            //boolean oldIsSet = isSet();
            let oldIsSet:Bool = !array.isEmpty;
    
            //doAddUnique(object);
            array.append(element);
            //NotificationImpl notification = createNotification(NotificationImpl.ADD, null, element, index, oldIsSet);
    
            let notification:NotificationImpl = NotificationImpl(eventType: NotificationImpl.ADD, oldValue: nil, newValue: element as AnyObject, position: index, wasSet: oldIsSet);
    
            if (hasInverse())
            {
                if let notifications = inverseAdd(element: element, notifications: nil){
                    
                    notifications.add(notification: notification);
                    notifications.dispatch();
                    
                }
                else{
                    dispatchNotification(notification: notification);
                }
                /*
                 if (hasShadow())
                 {
                    notifications = shadowAdd(object, notifications);
                 }
                */
    
            }
            else
            {
                dispatchNotification(notification: notification);
            }
        }
        else
        {
            //doAddUnique(object);
            array.append(element);
    
            if (hasInverse())
            {
                
                let notifications:NotificationChain? = inverseAdd(element: element, notifications: nil);
                notifications?.dispatch();
   
            }
        }
    }
    
    func basicAdd(element:T, notifications:NotificationChain?)->NotificationChain?{
        var notifications__ = notifications;
        if(isNotificationRequired()){
            let index = array.count;
            let oldIsSet = array.count>0;
            array.append(element);
            let notification = NotificationImpl(eventType: NotificationImpl.ADD, oldValue: nil, newValue: element, position: index, wasSet: oldIsSet);
            if let notifications_ = notifications{
                
                notifications_.add(notification: notification);
                notifications__ = notifications_;
            }
            else{
                notifications__ = notification;
            }
        }
        else{
            array.append(element);
        }
        return notifications__;
    }
    
    func basicRemove(element:T, notifications:NotificationChain?)->NotificationChain?{
        
        var notifications_ = notifications;
        if(array.contains(element)){
        
            if(isNotificationRequired()){
                var oldIsSet = array.count>0;
                var oldObject = element;
                //TODO get actual index
                var index = 1000;
                array.remove(object:element);
                var notification = NotificationImpl(eventType: NotificationImpl.REMOVE, oldValue: nil, newValue: element, position: index, wasSet: oldIsSet);
                if let notifications_ = notifications{
                    
                    notifications_.add(notification: notification);
                }
                else{
                    notifications_ = notification;
                }
                
            }
            else{
                array.remove(object:element);
            }
        }
        return notifications_;
    }
    

    func equals(c:AbstractCollection) -> Bool{
        
        //TODO implement
        return false;
    }
    func notEquals(c:AbstractCollection) -> Bool{
        return !equals(c: c);
    }
    
    func size()->Int{
        return array.count;
    }
    
    func includes(element:T)->Bool{
    
        return array.contains(element);
    }
    
    
    func excludes(element:T)->Bool{
    
        return !includes(element: element);
    }
    func count(element:T)->Int{
        //TODO implement
        return 0;
    }
    func includesAll(c2:AbstractCollection)->Bool{
        
        for item in c2.array {
            if(!array.contains(item)){
                return false;
            }
        }
        return true;
    }
    
    func excludesAll(c2:AbstractCollection)->Bool{
        for item in c2.array {
            if(array.contains(item)){
                return false;
            }
        }
        return true;
    }
    func isEmpty()->Bool{
        return array.count==0;
    }
    func notEmpty()->Bool{
        return !isEmpty();
    }
    
    func max()->T{
        //TODO this hack is just to please compiler
        return array.first!;
    }
    func min()->T{
        //TODO this hack is just to please compiler
        return array.first!;
    }
    func sum()->T{
        //TODO this hack is just to please compiler
        return array.first!;
    }
    func asSet()->Set_<T>{
        return Set_<T>(origin: array);
    }
    func asOrderedSet() -> OrderedSet<T>{
        return OrderedSet<T>(origin: array);
    }
    func asSequence() -> Sequence_<T>{
        return Sequence_<T>(origin: array);
    }
    func asBag() -> Bag<T>{
        return Bag<T>(origin: array);
    }
    
    func any(lambda:((T)->Bool)) -> T?{
        for item in array{
        
            if(lambda(item)){
                return item;
            }
        }
        return nil;
    }
    func exists(lambda:((T)->Bool))->Bool{
        for item in array{
            
            if(lambda(item)){
                return true;
            }
        }
        return false;
    }
    func forAll(lambda:((T)->Bool))->Bool{
        for item in array{
            
            if(!lambda(item)){
                return false;
            }
        }
        return true;
    }
    
    func isUnique<T2:Equatable>(lambda:((T)->T2))->Bool{
        
        //TODO optimize this naive implementation
        
        var array2 = Array<T2>();
        
        for item in array{
            
            array2.append(lambda(item));

        }
        
        var i = 0;
        var j = 0;
        
        while i < array2.count{
            
            j=i+1;
            
            while j < array2.count{
                
                if(array2[i]==array2[j]){
                    return false;
                }
                
                j += 1;
            }
            
            i += 1;
        }
        
        return true;
        
    }
    func one(lambda:((T)->Bool))->Bool{
        
        var count = 0;
        for item in array{
            
            if(lambda(item)){
                count += 1;
            }
        }

        return count==1;
    }
 
    
}

extension Array where Element: Equatable {
    
    // Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }
}



