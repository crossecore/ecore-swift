
class BasicEObjectImpl:BasicNotifierImpl, EObject, InternalEObject, Equatable, Hashable{

    


    

    static let EOPPOSITE_FEATURE_BASE:Int = -1;
    
    
    static func == (lhs: BasicEObjectImpl, rhs: BasicEObjectImpl) -> Bool {
        //to be overriden by subclasses
        return false;
    }
    
    var hashValue: Int {
        //to be overriden by subclasses
        return 0;
    }
    
    internal var eContainerFeatureID_:Int? = -1;
    internal var eContainer_:InternalEObject? = nil;
    
    
    func eBasicSetContainer(newContainer:InternalEObject?, newContainerFeautreID:Int?){
    
        eContainerFeatureID_ = newContainerFeautreID;
        eContainer_ = newContainer;
    }
    
    func eBasicSetContainer(newContainer:InternalEObject?, newContainerFeatureID:Int?, notifications:NotificationChain?) ->NotificationChain?{
        //TODO implement this
        eBasicSetContainer(newContainer: newContainer, newContainerFeautreID: newContainerFeatureID);
        
        return notifications;
    }
    
    func eObjectForURIFragmentSegment( uriFragmentSegment:String?)->EObject?{
        fatalError("not implemented exception");
    }
    
    func eSetClass( eClass:EClass?){
        fatalError("not implemented exception");
    }
    
    func eBaseStructuralFeatureID( derivedFeatureID:Int?, baseClass:Mirror?) -> Int?{
        fatalError("not implemented exception");
    }
    
    func eDerivedStructuralFeatureID(eStructuralFeature:EStructuralFeature?)->Int?{
        //var containerClass = nil;
        
        return eDerivedStructuralFeatureID(baseFeatureID: eStructuralFeature?.getFeatureID(), baseClass: nil);
    }
    
    func eDerivedStructuralFeatureID( baseFeatureID:Int?, baseClass:Mirror?)->Int?{
        return baseFeatureID;
    }
    
    func eResolveProxy(proxy:InternalEObject?)->EObject?{
        fatalError("not implemented exception");
    }
    
    func eContainerFeatureID()->Int?{
        return eContainerFeatureID_;
    }
    
    func eInternalContainer() ->InternalEObject?{
        return eContainer_;
    }
    
    func eBasicRemoveFromContainer(notifications:NotificationChain?)->NotificationChain?{
        //TODO implement me
        return notifications;
    }
    
    func eStaticClass()->EClass?{
        return EcorePackageImpl.eINSTANCE.getEObject();
    }
    
    func eClass() -> EClass? {
        return eStaticClass();
    }
    
    func eIsProxy() -> Bool? {
        fatalError("not implemented exception");
    }

    func eResource() -> Resource?{
        fatalError("not implemented exception");
    }
    
    func eDerivedOperationID( baseOperationID:Int?,  baseClass:Mirror?)->Int?{
        fatalError("not implemented exception");
    }
    
    
    func eContainer() -> EObject?{
        //TODO
        return eInternalContainer()!;
    }
    
    func eContainingFeature() -> EStructuralFeature?{
        fatalError("not implemented exception");
    }
    func eContainmentFeature() -> EReference?{
        fatalError("not implemented exception");
    }
    func eContents() -> Array<EObject>?{
        fatalError("not implemented exception");
        
    }
    func eAllContents() -> TreeIterator<EObject>?{
        fatalError("not implemented exception");
    }
    func eCrossReferences() -> Array<EObject>?{
        fatalError("not implemented exception");
    }

    
    
    

    
    func eGet(feature:EStructuralFeature?)->Any?{
        return self.eGet(feature: feature, resolve: true);
    }
    
    func eGet(feature:EStructuralFeature?, resolve:Bool?)->Any?{
        return self.eGet(feature: feature, resolve:resolve, coreType:true);
    }
    
    func eGet(feature:EStructuralFeature?, resolve:Bool?, coreType:Bool?)->Any?{
        if let featureID = eDerivedStructuralFeatureID(eStructuralFeature: feature){
            return self.eGet(featureID: featureID, resolve: resolve, coreType:coreType);
        }
        return nil;
        
        
    }
    
    func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?)->Any?{
        
        if let eclass = eClass(){
            var eFeature = eclass.getEStructuralFeature(featureID:featureID);
            return eFeature;
        }
        return nil;
        

    }
    
    func eSet(feature:EStructuralFeature?, newValue:Any?){
        
        self.eSet(featureID: feature?.getFeatureID(), newValue:newValue);
    }
    
    func eSet(featureID:Int?, newValue:Any?){
        fatalError("not implemented exception");
    }
    
    func eIsSet(feature : EStructuralFeature?) -> Bool?{
        fatalError("not implemented exception");
    }
    
    func eIsSet(featureID:Int?)->Bool?{
        fatalError("not implemented exception");
    }
    
    func eUnset(feature : EStructuralFeature?){
        fatalError("not implemented exception");
    }
    
    func eUnset(featureID:Int?){
        fatalError("not implemented exception");
    }
    
    func eInvoke(operation : EOperation?,arguments : Array<Any>?) -> Any?{
        fatalError("not implemented exception");
    }
    
    
    func eInverseAdd(otherEnd:InternalEObject?,featureID:Int?, baseClass:Mirror?, notifications:NotificationChain?) -> NotificationChain?{
    
        var msgs_ = notifications;
        if(featureID!>=0){
            return eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: notifications);
        }
        else{
            if let container = eInternalContainer(){
                msgs_ = eBasicRemoveFromContainer(notifications: msgs_);
            }
            return eBasicSetContainer(newContainer: otherEnd, newContainerFeatureID: featureID, notifications: msgs_);
        }
    }
    
    func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?)->NotificationChain?{
        //call generated function
        return msgs;
    }
    
    func eInverseRemove(otherEnd:InternalEObject?,featureID:Int?, baseClass:Mirror?, notifications:NotificationChain?) -> NotificationChain?{
        

        if(featureID!>=0){
            return eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: notifications);
        }
        else{
            return eBasicSetContainer(newContainer: nil, newContainerFeatureID: featureID, notifications: notifications);
        }
    }
    
    func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?)->NotificationChain?{
        //call generated function
        return msgs;
    }
    
    func eURIFragmentSegment(eFeature: EStructuralFeature?, eObject: EObject?) -> String? {
        fatalError("not implemented exception");
    }
    
}
