
class ENamedElementBase 
:EModelElementImpl, ENamedElement
{
	private var _name:String? = "";
	var name:String?
	{
	get { 
		return _name;
	}
	set(value) { _name = value; }
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ENAMEDELEMENT!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.ENAMEDELEMENT_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ENAMEDELEMENT_NAME?:
				return name;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ENAMEDELEMENT_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ENAMEDELEMENT_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

