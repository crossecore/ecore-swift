
protocol EFactory 
: EModelElement
{
	
	var ePackage : EPackage?
	{
		get 
		set
	}
	func create(eClass : EClass?) -> EObject?;
	func createFromString(eDataType : EDataType?,literalValue : String?) -> Any?;
	func convertToString(eDataType : EDataType?,instanceValue : Any?) -> String?;
}
