protocol EcoreList{
	
	associatedtype T
	
	func addUnique(o:T);
	
	func hasNavigableInverse() -> Bool
	
	func hasInstanceClass() -> Bool
	
	func getEStructuralFeature() -> EStructuralFeature?;
	
	func getInverseEReference() -> EReference;
	
	func getInverseFeatureClass() -> Mirror;
}
