
protocol EClassifier 
: ENamedElement
{
	var instanceClassName : String?
	{
		get 
	set
	}
	var instanceClass : Mirror??
	{
		get 
	}
	var defaultValue : Any?
	{
		get 
	}
	var instanceTypeName : String?
	{
		get 
	set
	}
	
	var ePackage : EPackage?
	{
		get 
	}
	var eTypeParameters : OrderedSet<ETypeParameterImpl>? 
	{
		get 
	
	}
	
	func isInstance(object : Any?) -> Bool?;
	func getClassifierID() -> Int?;
}
