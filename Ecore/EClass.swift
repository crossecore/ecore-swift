
protocol EClass 
: EClassifier
{
	var abstract : Bool?
	{
		get 
	set
	}
	var interface : Bool?
	{
		get 
	set
	}
	var eSuperTypes : OrderedSet<EClassImpl>? 
	{
		get 
	
	}
	
	var eOperations : OrderedSet<EOperationImpl>? 
	{
		get 
	
	}
	
	var eAllAttributes : OrderedSet<EAttributeImpl>? 
	{
		get 
	
	}
	
	var eAllReferences : OrderedSet<EReferenceImpl>? 
	{
		get 
	
	}
	
	var eReferences : OrderedSet<EReferenceImpl>? 
	{
		get 
	
	}
	
	var eAttributes : OrderedSet<EAttributeImpl>? 
	{
		get 
	
	}
	
	var eAllContainments : OrderedSet<EReferenceImpl>? 
	{
		get 
	
	}
	
	var eAllOperations : OrderedSet<EOperationImpl>? 
	{
		get 
	
	}
	
	var eAllStructuralFeatures : OrderedSet<EStructuralFeatureImpl>? 
	{
		get 
	
	}
	
	var eAllSuperTypes : OrderedSet<EClassImpl>? 
	{
		get 
	
	}
	
	
	var eIDAttribute : EAttribute?
	{
		get 
	}
	var eStructuralFeatures : OrderedSet<EStructuralFeatureImpl>? 
	{
		get 
	
	}
	
	var eGenericSuperTypes : OrderedSet<EGenericTypeImpl>? 
	{
		get 
	
	}
	
	var eAllGenericSuperTypes : OrderedSet<EGenericTypeImpl>? 
	{
		get 
	
	}
	
	func isSuperTypeOf(someClass : EClass?) -> Bool?;
	func getFeatureCount() -> Int?;
	func getEStructuralFeature(featureID : Int?) -> EStructuralFeature?;
	func getFeatureID(feature : EStructuralFeature?) -> Int?;
	func getEStructuralFeature(featureName : String?) -> EStructuralFeature?;
	func getOperationCount() -> Int?;
	func getEOperation(operationID : Int?) -> EOperation?;
	func getOperationID(operation : EOperation?) -> Int?;
	func getOverride(operation : EOperation?) -> EOperation?;
	func getFeatureType(feature : EStructuralFeature?) -> EGenericType?;
}
