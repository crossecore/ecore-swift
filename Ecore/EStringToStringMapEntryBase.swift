
class EStringToStringMapEntryBase 
:BasicEObjectImpl, EStringToStringMapEntry
{
	private var _value:String? = "";
	var value:String?
	{
	get { 
		return _value;
	}
	set(value) { _value = value; }
	}
	private var _key:String? = "";
	var key:String?
	{
	get { 
		return _key;
	}
	set(value) { _key = value; }
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ESTRINGTOSTRINGMAPENTRY!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_KEY?:
				return key;
			case EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_VALUE?:
				return value;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_KEY?:
				if let newValue_ = newValue as? String{
					key = newValue_;
				}
				return;
			case EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_VALUE?:
				if let newValue_ = newValue as? String{
					value = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

