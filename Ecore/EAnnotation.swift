
protocol EAnnotation 
: EModelElement
{
	var source : String?
	{
		get 
	set
	}
	var details : OrderedSet<EStringToStringMapEntryImpl>? 
	{
		get 
	
	}
	
	
	var eModelElement : EModelElement?
	{
		get 
		set
	}
	var contents : OrderedSet<EObjectImpl>? 
	{
		get 
	
	}
	
	var references : OrderedSet<EObjectImpl>? 
	{
		get 
	
	}
	
}
