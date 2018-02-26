
class EDataTypeBase 
:EClassifierImpl, EDataType
{
	private var _serializable:Bool? = false;
	var serializable:Bool?
	{
	get { 
		return _serializable;
	}
	set(value) { _serializable = value; }
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EDATATYPE!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EDATATYPE_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EDATATYPE_NAME?:
				return name;
			case EcorePackageImpl.EDATATYPE_INSTANCECLASSNAME?:
				return instanceClassName;
			case EcorePackageImpl.EDATATYPE_INSTANCECLASS?:
				return instanceClass;
			case EcorePackageImpl.EDATATYPE_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.EDATATYPE_INSTANCETYPENAME?:
				return instanceTypeName;
			case EcorePackageImpl.EDATATYPE_EPACKAGE?:
				return ePackage;
			case EcorePackageImpl.EDATATYPE_ETYPEPARAMETERS?:
				return eTypeParameters;
			case EcorePackageImpl.EDATATYPE_SERIALIZABLE?:
				return serializable;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EDATATYPE_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EDATATYPE_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EDATATYPE_INSTANCECLASSNAME?:
				if let newValue_ = newValue as? String{
					instanceClassName = newValue_;
				}
				return;
			case EcorePackageImpl.EDATATYPE_INSTANCETYPENAME?:
				if let newValue_ = newValue as? String{
					instanceTypeName = newValue_;
				}
				return;
			case EcorePackageImpl.EDATATYPE_ETYPEPARAMETERS?:
				eTypeParameters?.clear();
				if let items = newValue as? OrderedSet<ETypeParameterImpl>{
					eTypeParameters?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EDATATYPE_SERIALIZABLE?:
				if let newValue_ = newValue as? Bool{
					serializable = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

