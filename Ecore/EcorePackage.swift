protocol EcorePackage : EPackage {
		
	func getEObject()->EClass?;
	
	func getEModelElement()->EClass?;
	func getEModelElement_EAnnotations()->EReference?;
	
	func getEStringToStringMapEntry()->EClass?;
	
	func getEStringToStringMapEntry_Key()->EAttribute?;
	func getEStringToStringMapEntry_Value()->EAttribute?;
	func getEGenericType()->EClass?;
	func getEGenericType_EUpperBound()->EReference?;
	func getEGenericType_ETypeArguments()->EReference?;
	func getEGenericType_ERawType()->EReference?;
	func getEGenericType_ELowerBound()->EReference?;
	func getEGenericType_ETypeParameter()->EReference?;
	func getEGenericType_EClassifier()->EReference?;
	
	func getEAnnotation()->EClass?;
	func getEAnnotation_Details()->EReference?;
	func getEAnnotation_EModelElement()->EReference?;
	func getEAnnotation_Contents()->EReference?;
	func getEAnnotation_References()->EReference?;
	
	func getEAnnotation_Source()->EAttribute?;
	func getEFactory()->EClass?;
	func getEFactory_EPackage()->EReference?;
	
	func getENamedElement()->EClass?;
	
	func getENamedElement_Name()->EAttribute?;
	func getEClassifier()->EClass?;
	func getEClassifier_EPackage()->EReference?;
	func getEClassifier_ETypeParameters()->EReference?;
	
	func getEClassifier_InstanceClassName()->EAttribute?;
	func getEClassifier_InstanceClass()->EAttribute?;
	func getEClassifier_DefaultValue()->EAttribute?;
	func getEClassifier_InstanceTypeName()->EAttribute?;
	func getEEnumLiteral()->EClass?;
	func getEEnumLiteral_EEnum()->EReference?;
	
	func getEEnumLiteral_Value()->EAttribute?;
	func getEEnumLiteral_Instance()->EAttribute?;
	func getEEnumLiteral_Literal()->EAttribute?;
	func getEPackage()->EClass?;
	func getEPackage_EFactoryInstance()->EReference?;
	func getEPackage_EClassifiers()->EReference?;
	func getEPackage_ESubpackages()->EReference?;
	func getEPackage_ESuperPackage()->EReference?;
	
	func getEPackage_NsURI()->EAttribute?;
	func getEPackage_NsPrefix()->EAttribute?;
	func getETypedElement()->EClass?;
	func getETypedElement_EType()->EReference?;
	func getETypedElement_EGenericType()->EReference?;
	
	func getETypedElement_Ordered()->EAttribute?;
	func getETypedElement_Unique()->EAttribute?;
	func getETypedElement_LowerBound()->EAttribute?;
	func getETypedElement_UpperBound()->EAttribute?;
	func getETypedElement_Many()->EAttribute?;
	func getETypedElement_Required()->EAttribute?;
	func getETypeParameter()->EClass?;
	func getETypeParameter_EBounds()->EReference?;
	
	func getEClass()->EClass?;
	func getEClass_ESuperTypes()->EReference?;
	func getEClass_EOperations()->EReference?;
	func getEClass_EAllAttributes()->EReference?;
	func getEClass_EAllReferences()->EReference?;
	func getEClass_EReferences()->EReference?;
	func getEClass_EAttributes()->EReference?;
	func getEClass_EAllContainments()->EReference?;
	func getEClass_EAllOperations()->EReference?;
	func getEClass_EAllStructuralFeatures()->EReference?;
	func getEClass_EAllSuperTypes()->EReference?;
	func getEClass_EIDAttribute()->EReference?;
	func getEClass_EStructuralFeatures()->EReference?;
	func getEClass_EGenericSuperTypes()->EReference?;
	func getEClass_EAllGenericSuperTypes()->EReference?;
	
	func getEClass_Abstract()->EAttribute?;
	func getEClass_Interface()->EAttribute?;
	func getEDataType()->EClass?;
	
	func getEDataType_Serializable()->EAttribute?;
	func getEOperation()->EClass?;
	func getEOperation_EContainingClass()->EReference?;
	func getEOperation_ETypeParameters()->EReference?;
	func getEOperation_EParameters()->EReference?;
	func getEOperation_EExceptions()->EReference?;
	func getEOperation_EGenericExceptions()->EReference?;
	
	func getEParameter()->EClass?;
	func getEParameter_EOperation()->EReference?;
	
	func getEStructuralFeature()->EClass?;
	func getEStructuralFeature_EContainingClass()->EReference?;
	
	func getEStructuralFeature_Changeable()->EAttribute?;
	func getEStructuralFeature_Volatile()->EAttribute?;
	func getEStructuralFeature_Transient()->EAttribute?;
	func getEStructuralFeature_DefaultValueLiteral()->EAttribute?;
	func getEStructuralFeature_DefaultValue()->EAttribute?;
	func getEStructuralFeature_Unsettable()->EAttribute?;
	func getEStructuralFeature_Derived()->EAttribute?;
	func getEEnum()->EClass?;
	func getEEnum_ELiterals()->EReference?;
	
	func getEAttribute()->EClass?;
	func getEAttribute_EAttributeType()->EReference?;
	
	func getEAttribute_ID()->EAttribute?;
	func getEReference()->EClass?;
	func getEReference_EOpposite()->EReference?;
	func getEReference_EReferenceType()->EReference?;
	func getEReference_EKeys()->EReference?;
	
	func getEReference_Containment()->EAttribute?;
	func getEReference_Container()->EAttribute?;
	func getEReference_ResolveProxies()->EAttribute?;
	func getEBigDecimal()->EDataType?;
	func getEBigInteger()->EDataType?;
	func getEBoolean()->EDataType?;
	func getEBooleanObject()->EDataType?;
	func getEByte()->EDataType?;
	func getEByteArray()->EDataType?;
	func getEByteObject()->EDataType?;
	func getEChar()->EDataType?;
	func getECharacterObject()->EDataType?;
	func getEDate()->EDataType?;
	func getEDiagnosticChain()->EDataType?;
	func getEDouble()->EDataType?;
	func getEDoubleObject()->EDataType?;
	func getEEList()->EDataType?;
	func getEEnumerator()->EDataType?;
	func getEFeatureMap()->EDataType?;
	func getEFeatureMapEntry()->EDataType?;
	func getEFloat()->EDataType?;
	func getEFloatObject()->EDataType?;
	func getEInt()->EDataType?;
	func getEIntegerObject()->EDataType?;
	func getEJavaClass()->EDataType?;
	func getEJavaObject()->EDataType?;
	func getELong()->EDataType?;
	func getELongObject()->EDataType?;
	func getEMap()->EDataType?;
	func getEResource()->EDataType?;
	func getEResourceSet()->EDataType?;
	func getEShort()->EDataType?;
	func getEShortObject()->EDataType?;
	func getEString()->EDataType?;
	func getETreeIterator()->EDataType?;
	func getEInvocationTargetException()->EDataType?;
		
 
}
