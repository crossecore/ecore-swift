
protocol EPackage 
: ENamedElement
{
	var nsURI : String?
	{
		get 
	set
	}
	var nsPrefix : String?
	{
		get 
	set
	}
	
	var eFactoryInstance : EFactory?
	{
		get 
		set
	}
	var eClassifiers : OrderedSet<EClassifierImpl>? 
	{
		get 
	
	}
	
	var eSubpackages : OrderedSet<EPackageImpl>? 
	{
		get 
	
	}
	
	
	var eSuperPackage : EPackage?
	{
		get 
	}
	func getEClassifier(name : String?) -> EClassifier?;
}
