
protocol ETypedElement 
: ENamedElement
{
	var ordered : Bool?
	{
		get 
	set
	}
	var unique : Bool?
	{
		get 
	set
	}
	var lowerBound : Int?
	{
		get 
	set
	}
	var upperBound : Int?
	{
		get 
	set
	}
	var many : Bool?
	{
		get 
	}
	var required : Bool?
	{
		get 
	}
	
	var eType : EClassifier?
	{
		get 
		set
	}
	
	var eGenericType : EGenericType?
	{
		get 
		set
	}
}
