
class EModelElementBase 
:BasicEObjectImpl, EModelElement
{
	private var _eAnnotations:OrderedSet<EAnnotationImpl>? = nil;
	
	var eAnnotations:OrderedSet<EAnnotationImpl>?
	{
		get {
			if let x = _eAnnotations{
				_eAnnotations = OrderedSet<EAnnotationImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EMODELELEMENT_EANNOTATIONS, oppositeFeatureId: EcorePackageImpl.EANNOTATION_EMODELELEMENT);
			}
			return _eAnnotations!;
			
			
		}
	
	}
	func getEAnnotation(source:String?
	) -> EAnnotation?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EMODELELEMENT!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EMODELELEMENT_EANNOTATIONS?:
				return eAnnotations?.basicAdd(element: otherEnd as! EAnnotationImpl, notifications: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EMODELELEMENT_EANNOTATIONS?:
				return eAnnotations?.basicRemove(element: otherEnd as! EAnnotationImpl, notifications: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EMODELELEMENT_EANNOTATIONS?:
				return eAnnotations;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EMODELELEMENT_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

