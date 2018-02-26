
protocol EEnumLiteral 
: ENamedElement
{
	var value : Int?
	{
		get 
	set
	}
	var instance : EEnumerator?
	{
		get 
	set
	}
	var literal : String?
	{
		get 
	set
	}
	
	var eEnum : EEnum?
	{
		get 
	}
}
