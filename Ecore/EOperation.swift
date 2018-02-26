
protocol EOperation 
: ETypedElement
{
	
	var eContainingClass : EClass?
	{
		get 
	}
	var eTypeParameters : OrderedSet<ETypeParameterImpl>? 
	{
		get 
	
	}
	
	var eParameters : OrderedSet<EParameterImpl>? 
	{
		get 
	
	}
	
	var eExceptions : OrderedSet<EClassifierImpl>? 
	{
		get 
	
	}
	
	var eGenericExceptions : OrderedSet<EGenericTypeImpl>? 
	{
		get 
	
	}
	
	func getOperationID() -> Int?;
	func isOverrideOf(someOperation : EOperation?) -> Bool?;
}
