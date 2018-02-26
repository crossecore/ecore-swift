
protocol EGenericType 
: EObject
{
	
	var eUpperBound : EGenericType?
	{
		get 
		set
	}
	var eTypeArguments : OrderedSet<EGenericTypeImpl>? 
	{
		get 
	
	}
	
	
	var eRawType : EClassifier?
	{
		get 
	}
	
	var eLowerBound : EGenericType?
	{
		get 
		set
	}
	
	var eTypeParameter : ETypeParameter?
	{
		get 
		set
	}
	
	var eClassifier : EClassifier?
	{
		get 
		set
	}
	func isInstance(object : Any?) -> Bool?;
}
