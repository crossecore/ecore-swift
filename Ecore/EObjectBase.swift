
class EObjectBase 
:BasicEObjectImpl
{
	override func eCrossReferences() -> Array<EObject>?
	{
	    fatalError("not implemented exception");
	}
	override func eContainmentFeature() -> EReference?
	{
	    fatalError("not implemented exception");
	}
	override func eResource() -> Resource?
	{
	    fatalError("not implemented exception");
	}
	override func eGet(feature:EStructuralFeature?,
	resolve:Bool?
	) -> Any?
	{
	    fatalError("not implemented exception");
	}
	override func eUnset(feature:EStructuralFeature?
	) 
	{
	    fatalError("not implemented exception");
	}
	override func eIsProxy() -> Bool?
	{
	    fatalError("not implemented exception");
	}
	override func eContainingFeature() -> EStructuralFeature?
	{
	    fatalError("not implemented exception");
	}
	override func eGet(feature:EStructuralFeature?
	) -> Any?
	{
	    fatalError("not implemented exception");
	}
	override func eInvoke(operation:EOperation?,
	arguments:Array<Any>?
	) -> Any?
	{
	    fatalError("not implemented exception");
	}
	override func eContents() -> Array<EObject>?
	{
	    fatalError("not implemented exception");
	}
	override func eContainer() -> EObject?
	{
	    fatalError("not implemented exception");
	}
	override func eIsSet(feature:EStructuralFeature?
	) -> Bool?
	{
	    fatalError("not implemented exception");
	}
	override func eAllContents() -> TreeIterator<EObject>?
	{
	    fatalError("not implemented exception");
	}
	override func eClass() -> EClass?
	{
	    fatalError("not implemented exception");
	}
	override func eSet(feature:EStructuralFeature?,
	newValue:Any?
	) 
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EOBJECT!;
	}
	
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

