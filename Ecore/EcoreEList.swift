
protocol EcoreEList{
    
    associatedtype T:Equatable;
    
    func addUnique(element:T);
    
    func hasNavigableInverse()->Bool;
    func hasInstanceClass()->Bool;
    func getEStructuralFeature() -> EStructuralFeature?;
    func getInverseEReference() -> EReference?;
    func getInverseFeatureClass() -> Mirror?;
    
    
}
