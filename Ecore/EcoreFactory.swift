protocol EcoreFactory : EFactory{
	
	func createEAttribute() -> EAttribute;
	func createEAnnotation() -> EAnnotation;
	func createEClass() -> EClass;
	func createEClassifier() -> EClassifier;
	func createEDataType() -> EDataType;
	func createEEnum() -> EEnum;
	func createEEnumLiteral() -> EEnumLiteral;
	func createEFactory() -> EFactory;
	func createEModelElement() -> EModelElement;
	func createENamedElement() -> ENamedElement;
	func createEObject() -> EObject;
	func createEOperation() -> EOperation;
	func createEPackage() -> EPackage;
	func createEParameter() -> EParameter;
	func createEReference() -> EReference;
	func createEStructuralFeature() -> EStructuralFeature;
	func createETypedElement() -> ETypedElement;
	func createEStringToStringMapEntry() -> EStringToStringMapEntry;
	func createEGenericType() -> EGenericType;
	func createETypeParameter() -> ETypeParameter;
}
