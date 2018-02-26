class EcoreSwitch<T> : Switch<T> {

	//TODO access control protected?
	var modelPackage:EcorePackage?;
	
	override func isSwitchFor(ePackage : EPackage?) -> Bool
	{
		return ePackage as? EPackageImpl == modelPackage as? EPackageImpl;
	}

	override init()
	{
		//if (modelPackage == nil)
		//{
			modelPackage = EcorePackageImpl.eINSTANCE;
		//}
	}
	
	override func doSwitch(classifierID : Int, theEObject : EObject) -> T?{
		switch (classifierID) {
			case EcorePackageImpl.EATTRIBUTE: 
				var eattribute:EAttribute = theEObject as! EAttribute ;
				var result = caseEAttribute(theEObject: eattribute);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EANNOTATION: 
				var eannotation:EAnnotation = theEObject as! EAnnotation ;
				var result = caseEAnnotation(theEObject: eannotation);
				
				if let result_ = result{ 
					result = caseEModelElement(theEObject: eannotation);
				}
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ECLASS: 
				var eclass:EClass = theEObject as! EClass ;
				var result = caseEClass(theEObject: eclass);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ECLASSIFIER: 
				var eclassifier:EClassifier = theEObject as! EClassifier ;
				var result = caseEClassifier(theEObject: eclassifier);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EDATATYPE: 
				var edatatype:EDataType = theEObject as! EDataType ;
				var result = caseEDataType(theEObject: edatatype);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EENUM: 
				var eenum:EEnum = theEObject as! EEnum ;
				var result = caseEEnum(theEObject: eenum);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EENUMLITERAL: 
				var eenumliteral:EEnumLiteral = theEObject as! EEnumLiteral ;
				var result = caseEEnumLiteral(theEObject: eenumliteral);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EFACTORY: 
				var efactory:EFactory = theEObject as! EFactory ;
				var result = caseEFactory(theEObject: efactory);
				
				if let result_ = result{ 
					result = caseEModelElement(theEObject: efactory);
				}
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EMODELELEMENT: 
				var emodelelement:EModelElement = theEObject as! EModelElement ;
				var result = caseEModelElement(theEObject: emodelelement);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ENAMEDELEMENT: 
				var enamedelement:ENamedElement = theEObject as! ENamedElement ;
				var result = caseENamedElement(theEObject: enamedelement);
				
				if let result_ = result{ 
					result = caseEModelElement(theEObject: enamedelement);
				}
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EOBJECT: 
				var eobject:EObject = theEObject as! EObject ;
				var result = caseEObject(theEObject: eobject);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EOPERATION: 
				var eoperation:EOperation = theEObject as! EOperation ;
				var result = caseEOperation(theEObject: eoperation);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EPACKAGE: 
				var epackage:EPackage = theEObject as! EPackage ;
				var result = caseEPackage(theEObject: epackage);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EPARAMETER: 
				var eparameter:EParameter = theEObject as! EParameter ;
				var result = caseEParameter(theEObject: eparameter);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EREFERENCE: 
				var ereference:EReference = theEObject as! EReference ;
				var result = caseEReference(theEObject: ereference);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ESTRUCTURALFEATURE: 
				var estructuralfeature:EStructuralFeature = theEObject as! EStructuralFeature ;
				var result = caseEStructuralFeature(theEObject: estructuralfeature);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ETYPEDELEMENT: 
				var etypedelement:ETypedElement = theEObject as! ETypedElement ;
				var result = caseETypedElement(theEObject: etypedelement);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY: 
				var estringtostringmapentry:EStringToStringMapEntry = theEObject as! EStringToStringMapEntry ;
				var result = caseEStringToStringMapEntry(theEObject: estringtostringmapentry);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.EGENERICTYPE: 
				var egenerictype:EGenericType = theEObject as! EGenericType ;
				var result = caseEGenericType(theEObject: egenerictype);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			case EcorePackageImpl.ETYPEPARAMETER: 
				var etypeparameter:ETypeParameter = theEObject as! ETypeParameter ;
				var result = caseETypeParameter(theEObject: etypeparameter);
				
				
				if let result_ = result{
					result = defaultCase(eObject: theEObject);
				}
				return result;
			
			default: return defaultCase(eObject: theEObject);
		}
	}
	
	
	func caseEAttribute(theEObject : EAttribute) -> T?{
		return nil;
	}
	func caseEAnnotation(theEObject : EAnnotation) -> T?{
		return nil;
	}
	func caseEClass(theEObject : EClass) -> T?{
		return nil;
	}
	func caseEClassifier(theEObject : EClassifier) -> T?{
		return nil;
	}
	func caseEDataType(theEObject : EDataType) -> T?{
		return nil;
	}
	func caseEEnum(theEObject : EEnum) -> T?{
		return nil;
	}
	func caseEEnumLiteral(theEObject : EEnumLiteral) -> T?{
		return nil;
	}
	func caseEFactory(theEObject : EFactory) -> T?{
		return nil;
	}
	func caseEModelElement(theEObject : EModelElement) -> T?{
		return nil;
	}
	func caseENamedElement(theEObject : ENamedElement) -> T?{
		return nil;
	}
	func caseEObject(theEObject : EObject) -> T?{
		return nil;
	}
	func caseEOperation(theEObject : EOperation) -> T?{
		return nil;
	}
	func caseEPackage(theEObject : EPackage) -> T?{
		return nil;
	}
	func caseEParameter(theEObject : EParameter) -> T?{
		return nil;
	}
	func caseEReference(theEObject : EReference) -> T?{
		return nil;
	}
	func caseEStructuralFeature(theEObject : EStructuralFeature) -> T?{
		return nil;
	}
	func caseETypedElement(theEObject : ETypedElement) -> T?{
		return nil;
	}
	func caseEStringToStringMapEntry(theEObject : EStringToStringMapEntry) -> T?{
		return nil;
	}
	func caseEGenericType(theEObject : EGenericType) -> T?{
		return nil;
	}
	func caseETypeParameter(theEObject : ETypeParameter) -> T?{
		return nil;
	}
	
}
