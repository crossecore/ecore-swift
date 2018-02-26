
class EEnumLiteralBase 
:ENamedElementImpl, EEnumLiteral
{
	private var _literal:String? = "";
	var literal:String?
	{
	get { 
		return _literal;
	}
	set(value) { _literal = value; }
	}
	private var _value:Int? = 0;
	var value:Int?
	{
	get { 
		return _value;
	}
	set(value) { _value = value; }
	}
	private var _instance:EEnumerator? = nil;
	var instance:EEnumerator?
	{
	get { 
		return _instance;
	}
	set(value) { _instance = value; }
	}
	var eEnum:EEnum?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.EENUMLITERAL_EENUM) ? eInternalContainer() as? EEnum : nil;
		}
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EENUMLITERAL!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EENUMLITERAL_EENUM?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEEnum(newobj:otherEnd as? EEnum, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EENUMLITERAL_EENUM?:
				return basicSetEEnum(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEEnum(newobj:EEnum?, msgs:NotificationChain?) -> NotificationChain?{
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
			case EcorePackageImpl.EENUMLITERAL_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EENUMLITERAL_NAME?:
				return name;
			case EcorePackageImpl.EENUMLITERAL_VALUE?:
				return value;
			case EcorePackageImpl.EENUMLITERAL_INSTANCE?:
				return instance;
			case EcorePackageImpl.EENUMLITERAL_LITERAL?:
				return literal;
			case EcorePackageImpl.EENUMLITERAL_EENUM?:
				return eEnum;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EENUMLITERAL_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EENUMLITERAL_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EENUMLITERAL_VALUE?:
				if let newValue_ = newValue as? Int{
					value = newValue_;
				}
				return;
			case EcorePackageImpl.EENUMLITERAL_INSTANCE?:
				if let newValue_ = newValue as? EEnumerator{
					instance = newValue_;
				}
				return;
			case EcorePackageImpl.EENUMLITERAL_LITERAL?:
				if let newValue_ = newValue as? String{
					literal = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

