
class EClassifierBase 
:ENamedElementImpl, EClassifier
{
	private var _instanceClassName:String? = "";
	var instanceClassName:String?
	{
	get { 
		return _instanceClassName;
	}
	set(value) { _instanceClassName = value; }
	}
	var defaultValue:Any?
	{
	get { 
		//TODO implement derivation
		return nil;//Any();
	}
	}
	private var _instanceTypeName:String? = "";
	var instanceTypeName:String?
	{
	get { 
		return _instanceTypeName;
	}
	set(value) { _instanceTypeName = value; }
	}
	var instanceClass:Mirror??
	{
	get { 
		//TODO implement derivation
		return nil;//Mirror?();
	}
	}
	var ePackage:EPackage?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.ECLASSIFIER_EPACKAGE) ? eInternalContainer() as? EPackage : nil;
		}
	}
	private var _eTypeParameters:OrderedSet<ETypeParameterImpl>? = nil;
	
	var eTypeParameters:OrderedSet<ETypeParameterImpl>?
	{
		get {
			if let x = _eTypeParameters{
				_eTypeParameters = OrderedSet<ETypeParameterImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ECLASSIFIER_ETYPEPARAMETERS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ECLASSIFIER_ETYPEPARAMETERS);
			}
			return _eTypeParameters!;
			
			
		}
	
	}
	func isInstance(object:Any?
	) -> Bool?
	{
	    fatalError("not implemented exception");
	}
	func getClassifierID() -> Int?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ECLASSIFIER!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.ECLASSIFIER_EPACKAGE?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEPackage(newobj:otherEnd as? EPackage, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.ECLASSIFIER_EPACKAGE?:
				return basicSetEPackage(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEPackage(newobj:EPackage?, msgs:NotificationChain?) -> NotificationChain?{
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
			case EcorePackageImpl.ECLASSIFIER_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ECLASSIFIER_NAME?:
				return name;
			case EcorePackageImpl.ECLASSIFIER_INSTANCECLASSNAME?:
				return instanceClassName;
			case EcorePackageImpl.ECLASSIFIER_INSTANCECLASS?:
				return instanceClass;
			case EcorePackageImpl.ECLASSIFIER_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.ECLASSIFIER_INSTANCETYPENAME?:
				return instanceTypeName;
			case EcorePackageImpl.ECLASSIFIER_EPACKAGE?:
				return ePackage;
			case EcorePackageImpl.ECLASSIFIER_ETYPEPARAMETERS?:
				return eTypeParameters;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ECLASSIFIER_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASSIFIER_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASSIFIER_INSTANCECLASSNAME?:
				if let newValue_ = newValue as? String{
					instanceClassName = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASSIFIER_INSTANCETYPENAME?:
				if let newValue_ = newValue as? String{
					instanceTypeName = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASSIFIER_ETYPEPARAMETERS?:
				eTypeParameters?.clear();
				if let items = newValue as? OrderedSet<ETypeParameterImpl>{
					eTypeParameters?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

