
protocol EModelElement 
: EObject
{
	var eAnnotations : OrderedSet<EAnnotationImpl>? 
	{
		get 
	
	}
	
	func getEAnnotation(source : String?) -> EAnnotation?;
}
