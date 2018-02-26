
class EStructuralFeatureBase 
:ETypedElementImpl, EStructuralFeature
{
	private var _defaultValueLiteral:String? = "";
	var defaultValueLiteral:String?
	{
	get { 
		return _defaultValueLiteral;
	}
	set(value) { _defaultValueLiteral = value; }
	}
	var defaultValue:Any?
	{
	get { 
		//TODO implement derivation
		return nil;//Any();
	}
	}
	private var _derived:Bool? = false;
	var derived:Bool?
	{
	get { 
		return _derived;
	}
	set(value) { _derived = value; }
	}
	private var _volatile:Bool? = false;
	var volatile:Bool?
	{
	get { 
		return _volatile;
	}
	set(value) { _volatile = value; }
	}
	private var _changeable:Bool? = false;
	var changeable:Bool?
	{
	get { 
		return _changeable;
	}
	set(value) { _changeable = value; }
	}
	private var _transient:Bool? = false;
	var transient:Bool?
	{
	get { 
		return _transient;
	}
	set(value) { _transient = value; }
	}
	private var _unsettable:Bool? = false;
	var unsettable:Bool?
	{
	get { 
		return _unsettable;
	}
	set(value) { _unsettable = value; }
	}
	var eContainingClass:EClass?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS) ? eInternalContainer() as? EClass : nil;
		}
	}
	func getContainerClass() -> Mirror??
	{
	    fatalError("not implemented exception");
	}
	func getFeatureID() -> Int?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ESTRUCTURALFEATURE!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEContainingClass(newobj:otherEnd as? EClass, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS?:
				return basicSetEContainingClass(newobj: nil, msgs: msgs);
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
			case EcorePackageImpl.ESTRUCTURALFEATURE_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ESTRUCTURALFEATURE_NAME?:
				return name;
			case EcorePackageImpl.ESTRUCTURALFEATURE_ORDERED?:
				return ordered;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UNIQUE?:
				return unique;
			case EcorePackageImpl.ESTRUCTURALFEATURE_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.ESTRUCTURALFEATURE_MANY?:
				return many;
			case EcorePackageImpl.ESTRUCTURALFEATURE_REQUIRED?:
				return required;
			case EcorePackageImpl.ESTRUCTURALFEATURE_ETYPE?:
				return eType;
			case EcorePackageImpl.ESTRUCTURALFEATURE_EGENERICTYPE?:
				return eGenericType;
			case EcorePackageImpl.ESTRUCTURALFEATURE_CHANGEABLE?:
				return changeable;
			case EcorePackageImpl.ESTRUCTURALFEATURE_VOLATILE?:
				return volatile;
			case EcorePackageImpl.ESTRUCTURALFEATURE_TRANSIENT?:
				return transient;
			case EcorePackageImpl.ESTRUCTURALFEATURE_DEFAULTVALUELITERAL?:
				return defaultValueLiteral;
			case EcorePackageImpl.ESTRUCTURALFEATURE_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UNSETTABLE?:
				return unsettable;
			case EcorePackageImpl.ESTRUCTURALFEATURE_DERIVED?:
				return derived;
			case EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS?:
				return eContainingClass;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ESTRUCTURALFEATURE_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_CHANGEABLE?:
				if let newValue_ = newValue as? Bool{
					changeable = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_VOLATILE?:
				if let newValue_ = newValue as? Bool{
					volatile = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_TRANSIENT?:
				if let newValue_ = newValue as? Bool{
					transient = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_DEFAULTVALUELITERAL?:
				if let newValue_ = newValue as? String{
					defaultValueLiteral = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_UNSETTABLE?:
				if let newValue_ = newValue as? Bool{
					unsettable = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRUCTURALFEATURE_DERIVED?:
				if let newValue_ = newValue as? Bool{
					derived = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

