
protocol EStructuralFeature 
: ETypedElement
{
	var changeable : Bool?
	{
		get 
	set
	}
	var volatile : Bool?
	{
		get 
	set
	}
	var transient : Bool?
	{
		get 
	set
	}
	var defaultValueLiteral : String?
	{
		get 
	set
	}
	var defaultValue : Any?
	{
		get 
	}
	var unsettable : Bool?
	{
		get 
	set
	}
	var derived : Bool?
	{
		get 
	set
	}
	
	var eContainingClass : EClass?
	{
		get 
	}
	func getFeatureID() -> Int?;
	func getContainerClass() -> Mirror??;
}
