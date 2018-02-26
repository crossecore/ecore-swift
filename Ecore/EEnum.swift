
protocol EEnum 
: EDataType
{
	var eLiterals : OrderedSet<EEnumLiteralImpl>? 
	{
		get 
	
	}
	
	func getEEnumLiteral(name : String?) -> EEnumLiteral?;
	func getEEnumLiteral(value : Int?) -> EEnumLiteral?;
	func getEEnumLiteralByLiteral(literal : String?) -> EEnumLiteral?;
}
