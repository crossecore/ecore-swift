
class ETypeParameterBase 
:ENamedElementImpl, ETypeParameter
{
	private var _eBounds:OrderedSet<EGenericTypeImpl>? = nil;
	
	var eBounds:OrderedSet<EGenericTypeImpl>?
	{
		get {
			if let x = _eBounds{
				_eBounds = OrderedSet<EGenericTypeImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ETYPEPARAMETER_EBOUNDS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ETYPEPARAMETER_EBOUNDS);
			}
			return _eBounds!;
			
			
		}
	
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ETYPEPARAMETER!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.ETYPEPARAMETER_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ETYPEPARAMETER_NAME?:
				return name;
			case EcorePackageImpl.ETYPEPARAMETER_EBOUNDS?:
				return eBounds;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ETYPEPARAMETER_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ETYPEPARAMETER_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEPARAMETER_EBOUNDS?:
				eBounds?.clear();
				if let items = newValue as? OrderedSet<EGenericTypeImpl>{
					eBounds?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

