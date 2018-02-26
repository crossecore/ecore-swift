
class EEnumBase 
:EDataTypeImpl, EEnum
{
	private var _eLiterals:OrderedSet<EEnumLiteralImpl>? = nil;
	
	var eLiterals:OrderedSet<EEnumLiteralImpl>?
	{
		get {
			if let x = _eLiterals{
				_eLiterals = OrderedSet<EEnumLiteralImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EENUM_ELITERALS, oppositeFeatureId: EcorePackageImpl.EENUMLITERAL_EENUM);
			}
			return _eLiterals!;
			
			
		}
	
	}
	func getEEnumLiteral(value:Int?
	) -> EEnumLiteral?
	{
	    fatalError("not implemented exception");
	}
	func getEEnumLiteralByLiteral(literal:String?
	) -> EEnumLiteral?
	{
	    fatalError("not implemented exception");
	}
	func getEEnumLiteral(name:String?
	) -> EEnumLiteral?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EENUM!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EENUM_ELITERALS?:
				return eLiterals?.basicAdd(element: otherEnd as! EEnumLiteralImpl, notifications: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EENUM_ELITERALS?:
				return eLiterals?.basicRemove(element: otherEnd as! EEnumLiteralImpl, notifications: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EENUM_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EENUM_NAME?:
				return name;
			case EcorePackageImpl.EENUM_INSTANCECLASSNAME?:
				return instanceClassName;
			case EcorePackageImpl.EENUM_INSTANCECLASS?:
				return instanceClass;
			case EcorePackageImpl.EENUM_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.EENUM_INSTANCETYPENAME?:
				return instanceTypeName;
			case EcorePackageImpl.EENUM_EPACKAGE?:
				return ePackage;
			case EcorePackageImpl.EENUM_ETYPEPARAMETERS?:
				return eTypeParameters;
			case EcorePackageImpl.EENUM_SERIALIZABLE?:
				return serializable;
			case EcorePackageImpl.EENUM_ELITERALS?:
				return eLiterals;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EENUM_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EENUM_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EENUM_INSTANCECLASSNAME?:
				if let newValue_ = newValue as? String{
					instanceClassName = newValue_;
				}
				return;
			case EcorePackageImpl.EENUM_INSTANCETYPENAME?:
				if let newValue_ = newValue as? String{
					instanceTypeName = newValue_;
				}
				return;
			case EcorePackageImpl.EENUM_ETYPEPARAMETERS?:
				eTypeParameters?.clear();
				if let items = newValue as? OrderedSet<ETypeParameterImpl>{
					eTypeParameters?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EENUM_SERIALIZABLE?:
				if let newValue_ = newValue as? Bool{
					serializable = newValue_;
				}
				return;
			case EcorePackageImpl.EENUM_ELITERALS?:
				eLiterals?.clear();
				if let items = newValue as? OrderedSet<EEnumLiteralImpl>{
					eLiterals?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

