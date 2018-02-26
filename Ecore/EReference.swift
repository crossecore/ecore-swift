
protocol EReference 
: EStructuralFeature
{
	var containment : Bool?
	{
		get 
	set
	}
	var container : Bool?
	{
		get 
	}
	var resolveProxies : Bool?
	{
		get 
	set
	}
	
	var eOpposite : EReference?
	{
		get 
		set
	}
	
	var eReferenceType : EClass?
	{
		get 
	}
	var eKeys : OrderedSet<EAttributeImpl>? 
	{
		get 
	
	}
	
}
