class EcoreFactoryImpl : EFactoryImpl, EcoreFactory {
	
	static let eINSTANCE:EcoreFactory = EcoreFactoryImpl.init_();
	static func init_() -> EcoreFactory
	{
		return EcoreFactoryImpl();
	}
	func createEAttribute() -> EAttribute{
		let theEAttribute = EAttributeImpl();
		return theEAttribute;
	}
	func createEAnnotation() -> EAnnotation{
		let theEAnnotation = EAnnotationImpl();
		return theEAnnotation;
	}
	func createEClass() -> EClass{
		let theEClass = EClassImpl();
		return theEClass;
	}
	func createEClassifier() -> EClassifier{
		let theEClassifier = EClassifierImpl();
		return theEClassifier;
	}
	func createEDataType() -> EDataType{
		let theEDataType = EDataTypeImpl();
		return theEDataType;
	}
	func createEEnum() -> EEnum{
		let theEEnum = EEnumImpl();
		return theEEnum;
	}
	func createEEnumLiteral() -> EEnumLiteral{
		let theEEnumLiteral = EEnumLiteralImpl();
		return theEEnumLiteral;
	}
	func createEFactory() -> EFactory{
		let theEFactory = EFactoryImpl();
		return theEFactory;
	}
	func createEModelElement() -> EModelElement{
		let theEModelElement = EModelElementImpl();
		return theEModelElement;
	}
	func createENamedElement() -> ENamedElement{
		let theENamedElement = ENamedElementImpl();
		return theENamedElement;
	}
	func createEObject() -> EObject{
		let theEObject = EObjectImpl();
		return theEObject;
	}
	func createEOperation() -> EOperation{
		let theEOperation = EOperationImpl();
		return theEOperation;
	}
	func createEPackage() -> EPackage{
		let theEPackage = EPackageImpl();
		return theEPackage;
	}
	func createEParameter() -> EParameter{
		let theEParameter = EParameterImpl();
		return theEParameter;
	}
	func createEReference() -> EReference{
		let theEReference = EReferenceImpl();
		return theEReference;
	}
	func createEStructuralFeature() -> EStructuralFeature{
		let theEStructuralFeature = EStructuralFeatureImpl();
		return theEStructuralFeature;
	}
	func createETypedElement() -> ETypedElement{
		let theETypedElement = ETypedElementImpl();
		return theETypedElement;
	}
	func createEStringToStringMapEntry() -> EStringToStringMapEntry{
		let theEStringToStringMapEntry = EStringToStringMapEntryImpl();
		return theEStringToStringMapEntry;
	}
	func createEGenericType() -> EGenericType{
		let theEGenericType = EGenericTypeImpl();
		return theEGenericType;
	}
	func createETypeParameter() -> ETypeParameter{
		let theETypeParameter = ETypeParameterImpl();
		return theETypeParameter;
	}
}
