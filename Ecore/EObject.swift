
protocol EObject 
: Notifier
{
	func eClass() -> EClass?;
	func eIsProxy() -> Bool?;
	func eResource() -> Resource?;
	func eContainer() -> EObject?;
	func eContainingFeature() -> EStructuralFeature?;
	func eContainmentFeature() -> EReference?;
	func eContents() -> Array<EObject>?;
	func eAllContents() -> TreeIterator<EObject>?;
	func eCrossReferences() -> Array<EObject>?;
	func eGet(feature : EStructuralFeature?) -> Any?;
	func eGet(feature : EStructuralFeature?,resolve : Bool?) -> Any?;
	func eSet(feature : EStructuralFeature?,newValue : Any?);
	func eIsSet(feature : EStructuralFeature?) -> Bool?;
	func eUnset(feature : EStructuralFeature?);
	func eInvoke(operation : EOperation?,arguments : Array<Any>?) -> Any?;
}
