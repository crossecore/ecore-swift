
class EAttributeBase 
:EStructuralFeatureImpl, EAttribute
{
	private var _iD:Bool? = false;
	var iD:Bool?
	{
	get { 
		return _iD;
	}
	set(value) { _iD = value; }
	}
	var eAttributeType:EDataType?
	{
		get {
		
			//TODO implement derivation
			return nil;//EDataTypeImpl();
		}
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
        return EcorePackageImpl.Literals.EATTRIBUTE!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EATTRIBUTE_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EATTRIBUTE_NAME?:
				return name;
			case EcorePackageImpl.EATTRIBUTE_ORDERED?:
				return ordered;
			case EcorePackageImpl.EATTRIBUTE_UNIQUE?:
				return unique;
			case EcorePackageImpl.EATTRIBUTE_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.EATTRIBUTE_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.EATTRIBUTE_MANY?:
				return many;
			case EcorePackageImpl.EATTRIBUTE_REQUIRED?:
				return required;
			case EcorePackageImpl.EATTRIBUTE_ETYPE?:
				return eType;
			case EcorePackageImpl.EATTRIBUTE_EGENERICTYPE?:
				return eGenericType;
			case EcorePackageImpl.EATTRIBUTE_CHANGEABLE?:
				return changeable;
			case EcorePackageImpl.EATTRIBUTE_VOLATILE?:
				return volatile;
			case EcorePackageImpl.EATTRIBUTE_TRANSIENT?:
				return transient;
			case EcorePackageImpl.EATTRIBUTE_DEFAULTVALUELITERAL?:
				return defaultValueLiteral;
			case EcorePackageImpl.EATTRIBUTE_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.EATTRIBUTE_UNSETTABLE?:
				return unsettable;
			case EcorePackageImpl.EATTRIBUTE_DERIVED?:
				return derived;
			case EcorePackageImpl.EATTRIBUTE_ECONTAININGCLASS?:
				return eContainingClass;
			case EcorePackageImpl.EATTRIBUTE_ID?:
				return iD;
			case EcorePackageImpl.EATTRIBUTE_EATTRIBUTETYPE?:
				return eAttributeType;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EATTRIBUTE_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_CHANGEABLE?:
				if let newValue_ = newValue as? Bool{
					changeable = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_VOLATILE?:
				if let newValue_ = newValue as? Bool{
					volatile = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_TRANSIENT?:
				if let newValue_ = newValue as? Bool{
					transient = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_DEFAULTVALUELITERAL?:
				if let newValue_ = newValue as? String{
					defaultValueLiteral = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_UNSETTABLE?:
				if let newValue_ = newValue as? Bool{
					unsettable = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_DERIVED?:
				if let newValue_ = newValue as? Bool{
					derived = newValue_;
				}
				return;
			case EcorePackageImpl.EATTRIBUTE_ID?:
				if let newValue_ = newValue as? Bool{
					iD = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

