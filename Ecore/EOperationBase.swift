
class EOperationBase 
:ETypedElementImpl, EOperation
{
	var eContainingClass:EClass?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.EOPERATION_ECONTAININGCLASS) ? eInternalContainer() as? EClass : nil;
		}
	}
	private var _eTypeParameters:OrderedSet<ETypeParameterImpl>? = nil;
	
	var eTypeParameters:OrderedSet<ETypeParameterImpl>?
	{
		get {
			if let x = _eTypeParameters{
				_eTypeParameters = OrderedSet<ETypeParameterImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EOPERATION_ETYPEPARAMETERS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EOPERATION_ETYPEPARAMETERS);
			}
			return _eTypeParameters!;
			
			
		}
	
	}
	private var _eExceptions:OrderedSet<EClassifierImpl>? = nil;
	
	var eExceptions:OrderedSet<EClassifierImpl>?
	{
		get {
			if let x = _eExceptions{
				_eExceptions = OrderedSet<EClassifierImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EOPERATION_EEXCEPTIONS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EOPERATION_EEXCEPTIONS);
			}
			return _eExceptions!;
			
			
		}
	
	}
	private var _eParameters:OrderedSet<EParameterImpl>? = nil;
	
	var eParameters:OrderedSet<EParameterImpl>?
	{
		get {
			if let x = _eParameters{
				_eParameters = OrderedSet<EParameterImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EOPERATION_EPARAMETERS, oppositeFeatureId: EcorePackageImpl.EPARAMETER_EOPERATION);
			}
			return _eParameters!;
			
			
		}
	
	}
	private var _eGenericExceptions:OrderedSet<EGenericTypeImpl>? = nil;
	
	var eGenericExceptions:OrderedSet<EGenericTypeImpl>?
	{
		get {
			if let x = _eGenericExceptions{
				_eGenericExceptions = OrderedSet<EGenericTypeImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EOPERATION_EGENERICEXCEPTIONS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EOPERATION_EGENERICEXCEPTIONS);
			}
			return _eGenericExceptions!;
			
			
		}
	
	}
	func getOperationID() -> Int?
	{
	    fatalError("not implemented exception");
	}
	func isOverrideOf(someOperation:EOperation?
	) -> Bool?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EOPERATION!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EOPERATION_ECONTAININGCLASS?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEContainingClass(newobj:otherEnd as? EClass, msgs: msgs_);
			case EcorePackageImpl.EOPERATION_EPARAMETERS?:
				return eParameters?.basicAdd(element: otherEnd as! EParameterImpl, notifications: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EOPERATION_ECONTAININGCLASS?:
				return basicSetEContainingClass(newobj: nil, msgs: msgs);
			case EcorePackageImpl.EOPERATION_EPARAMETERS?:
				return eParameters?.basicRemove(element: otherEnd as! EParameterImpl, notifications: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEContainingClass(newobj:EClass?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		if let newobj_ = newobj as? InternalEObject{
			msgs_ = eBasicSetContainer(newContainer:newobj_, newContainerFeatureID:EcorePackageImpl.EANNOTATION_EMODELELEMENT, notifications:msgs);
		}
		else{
			msgs_ = eBasicSetContainer(newContainer:nil, newContainerFeatureID:EcorePackageImpl.EANNOTATION_EMODELELEMENT, notifications:msgs);
		}
		return msgs_;
	}
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EOPERATION_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EOPERATION_NAME?:
				return name;
			case EcorePackageImpl.EOPERATION_ORDERED?:
				return ordered;
			case EcorePackageImpl.EOPERATION_UNIQUE?:
				return unique;
			case EcorePackageImpl.EOPERATION_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.EOPERATION_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.EOPERATION_MANY?:
				return many;
			case EcorePackageImpl.EOPERATION_REQUIRED?:
				return required;
			case EcorePackageImpl.EOPERATION_ETYPE?:
				return eType;
			case EcorePackageImpl.EOPERATION_EGENERICTYPE?:
				return eGenericType;
			case EcorePackageImpl.EOPERATION_ECONTAININGCLASS?:
				return eContainingClass;
			case EcorePackageImpl.EOPERATION_ETYPEPARAMETERS?:
				return eTypeParameters;
			case EcorePackageImpl.EOPERATION_EPARAMETERS?:
				return eParameters;
			case EcorePackageImpl.EOPERATION_EEXCEPTIONS?:
				return eExceptions;
			case EcorePackageImpl.EOPERATION_EGENERICEXCEPTIONS?:
				return eGenericExceptions;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EOPERATION_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EOPERATION_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			case EcorePackageImpl.EOPERATION_ETYPEPARAMETERS?:
				eTypeParameters?.clear();
				if let items = newValue as? OrderedSet<ETypeParameterImpl>{
					eTypeParameters?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EOPERATION_EPARAMETERS?:
				eParameters?.clear();
				if let items = newValue as? OrderedSet<EParameterImpl>{
					eParameters?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EOPERATION_EEXCEPTIONS?:
				eExceptions?.clear();
				if let items = newValue as? OrderedSet<EClassifierImpl>{
					eExceptions?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EOPERATION_EGENERICEXCEPTIONS?:
				eGenericExceptions?.clear();
				if let items = newValue as? OrderedSet<EGenericTypeImpl>{
					eGenericExceptions?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

