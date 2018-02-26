	class EcorePackageImpl : EPackageImpl, EcorePackage{
			let eNAME = "ecore";
			
			let eNS_URI = "http://www.eclipse.org/emf/2002/Ecore";
			
			let eNS_PREFIX = "ecore";
			
			static let eINSTANCE = initialize(); //TODO as? EcorePackage
			
			/*
			override init()
			{
				super.init(packageURI: eNS_URI, factory: EcoreFactoryImpl.eINSTANCE);

			}
			*/
			
            static func initialize() -> EcorePackage
            {
                // Obtain or create and register package
                let theEcorePackage = EcorePackageImpl();

                // Create package meta-data objects
                theEcorePackage.createPackageContents();

                // Initialize created meta-data
                theEcorePackage.initializePackageContents();

		        return theEcorePackage;
	        }
	        
	        var isCreated = false;//TODO private
            func createPackageContents()
            {
                if (isCreated){return;}
                isCreated = true;
				EAttributeEClass = createEClass(id: EcorePackageImpl.EATTRIBUTE);
				createEAttribute(owner: EAttributeEClass!, id: EcorePackageImpl.EATTRIBUTE_ID);
				createEReference(owner: EAttributeEClass!, id: EcorePackageImpl.EATTRIBUTE_EATTRIBUTETYPE);
				EAnnotationEClass = createEClass(id: EcorePackageImpl.EANNOTATION);
				createEAttribute(owner: EAnnotationEClass!, id: EcorePackageImpl.EANNOTATION_SOURCE);
				createEReference(owner: EAnnotationEClass!, id: EcorePackageImpl.EANNOTATION_DETAILS);
				createEReference(owner: EAnnotationEClass!, id: EcorePackageImpl.EANNOTATION_EMODELELEMENT);
				createEReference(owner: EAnnotationEClass!, id: EcorePackageImpl.EANNOTATION_CONTENTS);
				createEReference(owner: EAnnotationEClass!, id: EcorePackageImpl.EANNOTATION_REFERENCES);
				EClassEClass = createEClass(id: EcorePackageImpl.ECLASS);
				createEAttribute(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_ABSTRACT);
				createEAttribute(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_INTERFACE);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_ESUPERTYPES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EOPERATIONS);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLATTRIBUTES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLREFERENCES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EREFERENCES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EATTRIBUTES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLCONTAINMENTS);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLOPERATIONS);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLSTRUCTURALFEATURES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLSUPERTYPES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EIDATTRIBUTE);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EGENERICSUPERTYPES);
				createEReference(owner: EClassEClass!, id: EcorePackageImpl.ECLASS_EALLGENERICSUPERTYPES);
				EClassifierEClass = createEClass(id: EcorePackageImpl.ECLASSIFIER);
				createEAttribute(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_INSTANCECLASSNAME);
				createEAttribute(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_INSTANCECLASS);
				createEAttribute(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_DEFAULTVALUE);
				createEAttribute(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_INSTANCETYPENAME);
				createEReference(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_EPACKAGE);
				createEReference(owner: EClassifierEClass!, id: EcorePackageImpl.ECLASSIFIER_ETYPEPARAMETERS);
				EDataTypeEClass = createEClass(id: EcorePackageImpl.EDATATYPE);
				createEAttribute(owner: EDataTypeEClass!, id: EcorePackageImpl.EDATATYPE_SERIALIZABLE);
				EEnumEClass = createEClass(id: EcorePackageImpl.EENUM);
				createEReference(owner: EEnumEClass!, id: EcorePackageImpl.EENUM_ELITERALS);
				EEnumLiteralEClass = createEClass(id: EcorePackageImpl.EENUMLITERAL);
				createEAttribute(owner: EEnumLiteralEClass!, id: EcorePackageImpl.EENUMLITERAL_VALUE);
				createEAttribute(owner: EEnumLiteralEClass!, id: EcorePackageImpl.EENUMLITERAL_INSTANCE);
				createEAttribute(owner: EEnumLiteralEClass!, id: EcorePackageImpl.EENUMLITERAL_LITERAL);
				createEReference(owner: EEnumLiteralEClass!, id: EcorePackageImpl.EENUMLITERAL_EENUM);
				EFactoryEClass = createEClass(id: EcorePackageImpl.EFACTORY);
				createEReference(owner: EFactoryEClass!, id: EcorePackageImpl.EFACTORY_EPACKAGE);
				EModelElementEClass = createEClass(id: EcorePackageImpl.EMODELELEMENT);
				createEReference(owner: EModelElementEClass!, id: EcorePackageImpl.EMODELELEMENT_EANNOTATIONS);
				ENamedElementEClass = createEClass(id: EcorePackageImpl.ENAMEDELEMENT);
				createEAttribute(owner: ENamedElementEClass!, id: EcorePackageImpl.ENAMEDELEMENT_NAME);
				EObjectEClass = createEClass(id: EcorePackageImpl.EOBJECT);
				EOperationEClass = createEClass(id: EcorePackageImpl.EOPERATION);
				createEReference(owner: EOperationEClass!, id: EcorePackageImpl.EOPERATION_ECONTAININGCLASS);
				createEReference(owner: EOperationEClass!, id: EcorePackageImpl.EOPERATION_ETYPEPARAMETERS);
				createEReference(owner: EOperationEClass!, id: EcorePackageImpl.EOPERATION_EPARAMETERS);
				createEReference(owner: EOperationEClass!, id: EcorePackageImpl.EOPERATION_EEXCEPTIONS);
				createEReference(owner: EOperationEClass!, id: EcorePackageImpl.EOPERATION_EGENERICEXCEPTIONS);
				EPackageEClass = createEClass(id: EcorePackageImpl.EPACKAGE);
				createEAttribute(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_NSURI);
				createEAttribute(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_NSPREFIX);
				createEReference(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE);
				createEReference(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_ECLASSIFIERS);
				createEReference(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_ESUBPACKAGES);
				createEReference(owner: EPackageEClass!, id: EcorePackageImpl.EPACKAGE_ESUPERPACKAGE);
				EParameterEClass = createEClass(id: EcorePackageImpl.EPARAMETER);
				createEReference(owner: EParameterEClass!, id: EcorePackageImpl.EPARAMETER_EOPERATION);
				EReferenceEClass = createEClass(id: EcorePackageImpl.EREFERENCE);
				createEAttribute(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_CONTAINMENT);
				createEAttribute(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_CONTAINER);
				createEAttribute(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_RESOLVEPROXIES);
				createEReference(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_EOPPOSITE);
				createEReference(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_EREFERENCETYPE);
				createEReference(owner: EReferenceEClass!, id: EcorePackageImpl.EREFERENCE_EKEYS);
				EStructuralFeatureEClass = createEClass(id: EcorePackageImpl.ESTRUCTURALFEATURE);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_CHANGEABLE);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_VOLATILE);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_TRANSIENT);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_DEFAULTVALUELITERAL);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_DEFAULTVALUE);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_UNSETTABLE);
				createEAttribute(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_DERIVED);
				createEReference(owner: EStructuralFeatureEClass!, id: EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS);
				ETypedElementEClass = createEClass(id: EcorePackageImpl.ETYPEDELEMENT);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_ORDERED);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_UNIQUE);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_LOWERBOUND);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_UPPERBOUND);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_MANY);
				createEAttribute(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_REQUIRED);
				createEReference(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_ETYPE);
				createEReference(owner: ETypedElementEClass!, id: EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE);
				EStringToStringMapEntryEClass = createEClass(id: EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY);
				createEAttribute(owner: EStringToStringMapEntryEClass!, id: EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_KEY);
				createEAttribute(owner: EStringToStringMapEntryEClass!, id: EcorePackageImpl.ESTRINGTOSTRINGMAPENTRY_VALUE);
				EGenericTypeEClass = createEClass(id: EcorePackageImpl.EGENERICTYPE);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_EUPPERBOUND);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_ETYPEARGUMENTS);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_ERAWTYPE);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_ELOWERBOUND);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_ETYPEPARAMETER);
				createEReference(owner: EGenericTypeEClass!, id: EcorePackageImpl.EGENERICTYPE_ECLASSIFIER);
				ETypeParameterEClass = createEClass(id: EcorePackageImpl.ETYPEPARAMETER);
				createEReference(owner: ETypeParameterEClass!, id: EcorePackageImpl.ETYPEPARAMETER_EBOUNDS);
				
	        }
	        
	        private var isInitialized = false;
	        func initializePackageContents()
	        {
                if (isInitialized){return;}
                isInitialized = true;
	            // Initialize package
	            name = eNAME;
	            nsPrefix = eNS_PREFIX;
	            nsURI = eNS_URI;
	
				
				//TODO as! EClassImpl
				EAttributeEClass?.eSuperTypes?.add(element: getEStructuralFeature() as! EClassImpl);
				
				//TODO as! EClassImpl
				EAnnotationEClass?.eSuperTypes?.add(element: getEModelElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EClassEClass?.eSuperTypes?.add(element: getEClassifier() as! EClassImpl);
				
				//TODO as! EClassImpl
				EClassifierEClass?.eSuperTypes?.add(element: getENamedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EDataTypeEClass?.eSuperTypes?.add(element: getEClassifier() as! EClassImpl);
				
				//TODO as! EClassImpl
				EEnumEClass?.eSuperTypes?.add(element: getEDataType() as! EClassImpl);
				
				//TODO as! EClassImpl
				EEnumLiteralEClass?.eSuperTypes?.add(element: getENamedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EFactoryEClass?.eSuperTypes?.add(element: getEModelElement() as! EClassImpl);
				
				
				//TODO as! EClassImpl
				ENamedElementEClass?.eSuperTypes?.add(element: getEModelElement() as! EClassImpl);
				
				
				//TODO as! EClassImpl
				EOperationEClass?.eSuperTypes?.add(element: getETypedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EPackageEClass?.eSuperTypes?.add(element: getENamedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EParameterEClass?.eSuperTypes?.add(element: getETypedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				EReferenceEClass?.eSuperTypes?.add(element: getEStructuralFeature() as! EClassImpl);
				
				//TODO as! EClassImpl
				EStructuralFeatureEClass?.eSuperTypes?.add(element: getETypedElement() as! EClassImpl);
				
				//TODO as! EClassImpl
				ETypedElementEClass?.eSuperTypes?.add(element: getENamedElement() as! EClassImpl);
				
				
				
				//TODO as! EClassImpl
				ETypeParameterEClass?.eSuperTypes?.add(element: getENamedElement() as! EClassImpl);
				
				initEClass(c: EAttributeEClass!, 
				instanceClass: Mirror(reflecting: EAttribute), 
				name:"EAttribute", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEAttribute_ID()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "iD", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEAttribute_EAttributeType()!, 
					type: ecorePackage.getEDataType()!, 
					otherEnd: nil, 
					name: "eAttributeType", 
					defaultValue: nil, 
					lowerBound: 1, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EAnnotationEClass!, 
				instanceClass: Mirror(reflecting: EAnnotation), 
				name:"EAnnotation", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEAnnotation_Source()!, 
					type:ecorePackage.getEString()!, 
					name: "source", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEAnnotation_Details()!, 
					type: ecorePackage.getEStringToStringMapEntry()!, 
					otherEnd: nil, 
					name: "details", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EAnnotation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEAnnotation_EModelElement()!, 
					type: ecorePackage.getEModelElement()!, 
					otherEnd: getEModelElement_EAnnotations(), 
					name: "eModelElement", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAnnotation), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEAnnotation_Contents()!, 
					type: ecorePackage.getEObject()!, 
					otherEnd: nil, 
					name: "contents", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EAnnotation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEAnnotation_References()!, 
					type: ecorePackage.getEObject()!, 
					otherEnd: nil, 
					name: "references", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EAnnotation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EClassEClass!, 
				instanceClass: Mirror(reflecting: EClass), 
				name:"EClass", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEClass_Abstract()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "abstract", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEClass_Interface()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "interface", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEClass_ESuperTypes()!, 
					type: ecorePackage.getEClass()!, 
					otherEnd: nil, 
					name: "eSuperTypes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EOperations()!, 
					type: ecorePackage.getEOperation()!, 
					otherEnd: getEOperation_EContainingClass(), 
					name: "eOperations", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllAttributes()!, 
					type: ecorePackage.getEAttribute()!, 
					otherEnd: nil, 
					name: "eAllAttributes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllReferences()!, 
					type: ecorePackage.getEReference()!, 
					otherEnd: nil, 
					name: "eAllReferences", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EReferences()!, 
					type: ecorePackage.getEReference()!, 
					otherEnd: nil, 
					name: "eReferences", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAttributes()!, 
					type: ecorePackage.getEAttribute()!, 
					otherEnd: nil, 
					name: "eAttributes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllContainments()!, 
					type: ecorePackage.getEReference()!, 
					otherEnd: nil, 
					name: "eAllContainments", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllOperations()!, 
					type: ecorePackage.getEOperation()!, 
					otherEnd: nil, 
					name: "eAllOperations", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllStructuralFeatures()!, 
					type: ecorePackage.getEStructuralFeature()!, 
					otherEnd: nil, 
					name: "eAllStructuralFeatures", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllSuperTypes()!, 
					type: ecorePackage.getEClass()!, 
					otherEnd: nil, 
					name: "eAllSuperTypes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EIDAttribute()!, 
					type: ecorePackage.getEAttribute()!, 
					otherEnd: nil, 
					name: "eIDAttribute", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EStructuralFeatures()!, 
					type: ecorePackage.getEStructuralFeature()!, 
					otherEnd: getEStructuralFeature_EContainingClass(), 
					name: "eStructuralFeatures", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EGenericSuperTypes()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eGenericSuperTypes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClass_EAllGenericSuperTypes()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eAllGenericSuperTypes", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClass), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EClassifierEClass!, 
				instanceClass: Mirror(reflecting: EClassifier), 
				name:"EClassifier", 
				isAbstract: IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEClassifier_InstanceClassName()!, 
					type:ecorePackage.getEString()!, 
					name: "instanceClassName", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEClassifier_InstanceClass()!, 
					type:ecorePackage.getEJavaClass()!, 
					name: "instanceClass", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEClassifier_DefaultValue()!, 
					type:ecorePackage.getEJavaObject()!, 
					name: "defaultValue", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEClassifier_InstanceTypeName()!, 
					type:ecorePackage.getEString()!, 
					name: "instanceTypeName", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEClassifier_EPackage()!, 
					type: ecorePackage.getEPackage()!, 
					otherEnd: getEPackage_EClassifiers(), 
					name: "ePackage", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EClassifier), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEClassifier_ETypeParameters()!, 
					type: ecorePackage.getETypeParameter()!, 
					otherEnd: nil, 
					name: "eTypeParameters", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EClassifier), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EDataTypeEClass!, 
				instanceClass: Mirror(reflecting: EDataType), 
				name:"EDataType", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEDataType_Serializable()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "serializable", 
					defaultValue: "true", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				
				initEClass(c: EEnumEClass!, 
				instanceClass: Mirror(reflecting: EEnum), 
				name:"EEnum", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEEnum_ELiterals()!, 
					type: ecorePackage.getEEnumLiteral()!, 
					otherEnd: getEEnumLiteral_EEnum(), 
					name: "eLiterals", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EEnum), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EEnumLiteralEClass!, 
				instanceClass: Mirror(reflecting: EEnumLiteral), 
				name:"EEnumLiteral", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEEnumLiteral_Value()!, 
					type:ecorePackage.getEInt()!, 
					name: "value", 
					defaultValue: "0", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEEnumLiteral_Instance()!, 
					type:ecorePackage.getEEnumerator()!, 
					name: "instance", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEEnumLiteral_Literal()!, 
					type:ecorePackage.getEString()!, 
					name: "literal", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEEnumLiteral_EEnum()!, 
					type: ecorePackage.getEEnum()!, 
					otherEnd: getEEnum_ELiterals(), 
					name: "eEnum", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EEnumLiteral), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EFactoryEClass!, 
				instanceClass: Mirror(reflecting: EFactory), 
				name:"EFactory", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEFactory_EPackage()!, 
					type: ecorePackage.getEPackage()!, 
					otherEnd: getEPackage_EFactoryInstance(), 
					name: "ePackage", 
					defaultValue: nil, 
					lowerBound: 1, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EFactory), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EModelElementEClass!, 
				instanceClass: Mirror(reflecting: EModelElement), 
				name:"EModelElement", 
				isAbstract: IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEModelElement_EAnnotations()!, 
					type: ecorePackage.getEAnnotation()!, 
					otherEnd: getEAnnotation_EModelElement(), 
					name: "eAnnotations", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EModelElement), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: ENamedElementEClass!, 
				instanceClass: Mirror(reflecting: ENamedElement), 
				name:"ENamedElement", 
				isAbstract: IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getENamedElement_Name()!, 
					type:ecorePackage.getEString()!, 
					name: "name", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				
				initEClass(c: EObjectEClass!, 
				instanceClass: Mirror(reflecting: EObject), 
				name:"EObject", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				
				initEClass(c: EOperationEClass!, 
				instanceClass: Mirror(reflecting: EOperation), 
				name:"EOperation", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEOperation_EContainingClass()!, 
					type: ecorePackage.getEClass()!, 
					otherEnd: getEClass_EOperations(), 
					name: "eContainingClass", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EOperation), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEOperation_ETypeParameters()!, 
					type: ecorePackage.getETypeParameter()!, 
					otherEnd: nil, 
					name: "eTypeParameters", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EOperation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEOperation_EParameters()!, 
					type: ecorePackage.getEParameter()!, 
					otherEnd: getEParameter_EOperation(), 
					name: "eParameters", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EOperation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEOperation_EExceptions()!, 
					type: ecorePackage.getEClassifier()!, 
					otherEnd: nil, 
					name: "eExceptions", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EOperation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEOperation_EGenericExceptions()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eGenericExceptions", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EOperation), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EPackageEClass!, 
				instanceClass: Mirror(reflecting: EPackage), 
				name:"EPackage", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEPackage_NsURI()!, 
					type:ecorePackage.getEString()!, 
					name: "nsURI", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEPackage_NsPrefix()!, 
					type:ecorePackage.getEString()!, 
					name: "nsPrefix", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEPackage_EFactoryInstance()!, 
					type: ecorePackage.getEFactory()!, 
					otherEnd: getEFactory_EPackage(), 
					name: "eFactoryInstance", 
					defaultValue: nil, 
					lowerBound: 1, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EPackage), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEPackage_EClassifiers()!, 
					type: ecorePackage.getEClassifier()!, 
					otherEnd: getEClassifier_EPackage(), 
					name: "eClassifiers", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EPackage), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEPackage_ESubpackages()!, 
					type: ecorePackage.getEPackage()!, 
					otherEnd: getEPackage_ESuperPackage(), 
					name: "eSubpackages", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EPackage), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEPackage_ESuperPackage()!, 
					type: ecorePackage.getEPackage()!, 
					otherEnd: getEPackage_ESubpackages(), 
					name: "eSuperPackage", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EPackage), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EParameterEClass!, 
				instanceClass: Mirror(reflecting: EParameter), 
				name:"EParameter", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEParameter_EOperation()!, 
					type: ecorePackage.getEOperation()!, 
					otherEnd: getEOperation_EParameters(), 
					name: "eOperation", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EParameter), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EReferenceEClass!, 
				instanceClass: Mirror(reflecting: EReference), 
				name:"EReference", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEReference_Containment()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "containment", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEReference_Container()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "container", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEReference_ResolveProxies()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "resolveProxies", 
					defaultValue: "true", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEReference_EOpposite()!, 
					type: ecorePackage.getEReference()!, 
					otherEnd: nil, 
					name: "eOpposite", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EReference), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEReference_EReferenceType()!, 
					type: ecorePackage.getEClass()!, 
					otherEnd: nil, 
					name: "eReferenceType", 
					defaultValue: nil, 
					lowerBound: 1, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EReference), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEReference_EKeys()!, 
					type: ecorePackage.getEAttribute()!, 
					otherEnd: nil, 
					name: "eKeys", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EReference), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EStructuralFeatureEClass!, 
				instanceClass: Mirror(reflecting: EStructuralFeature), 
				name:"EStructuralFeature", 
				isAbstract: IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEStructuralFeature_Changeable()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "changeable", 
					defaultValue: "true", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_Volatile()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "volatile", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_Transient()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "transient", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_DefaultValueLiteral()!, 
					type:ecorePackage.getEString()!, 
					name: "defaultValueLiteral", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_DefaultValue()!, 
					type:ecorePackage.getEJavaObject()!, 
					name: "defaultValue", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_Unsettable()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "unsettable", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStructuralFeature_Derived()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "derived", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getEStructuralFeature_EContainingClass()!, 
					type: ecorePackage.getEClass()!, 
					otherEnd: getEClass_EStructuralFeatures(), 
					name: "eContainingClass", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EStructuralFeature), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: ETypedElementEClass!, 
				instanceClass: Mirror(reflecting: ETypedElement), 
				name:"ETypedElement", 
				isAbstract: IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getETypedElement_Ordered()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "ordered", 
					defaultValue: "true", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getETypedElement_Unique()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "unique", 
					defaultValue: "true", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getETypedElement_LowerBound()!, 
					type:ecorePackage.getEInt()!, 
					name: "lowerBound", 
					defaultValue: "0", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getETypedElement_UpperBound()!, 
					type:ecorePackage.getEInt()!, 
					name: "upperBound", 
					defaultValue: "1", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getETypedElement_Many()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "many", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getETypedElement_Required()!, 
					type:ecorePackage.getEBoolean()!, 
					name: "required", 
					defaultValue: "false", 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEReference(
					r: getETypedElement_EType()!, 
					type: ecorePackage.getEClassifier()!, 
					otherEnd: nil, 
					name: "eType", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: ETypedElement), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getETypedElement_EGenericType()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eGenericType", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: ETypedElement), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: EStringToStringMapEntryEClass!, 
				instanceClass: Mirror(reflecting: EStringToStringMapEntry), 
				name:"EStringToStringMapEntry", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				initEAttribute(a: getEStringToStringMapEntry_Key()!, 
					type:ecorePackage.getEString()!, 
					name: "key", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEAttribute(a: getEStringToStringMapEntry_Value()!, 
					type:ecorePackage.getEString()!, 
					name: "value", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EAttribute), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isUnsettable: !IS_UNSETTABLE, 
					isID: !IS_ID, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				
				initEClass(c: EGenericTypeEClass!, 
				instanceClass: Mirror(reflecting: EGenericType), 
				name:"EGenericType", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getEGenericType_EUpperBound()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eUpperBound", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEGenericType_ETypeArguments()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eTypeArguments", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEGenericType_ERawType()!, 
					type: ecorePackage.getEClassifier()!, 
					otherEnd: nil, 
					name: "eRawType", 
					defaultValue: nil, 
					lowerBound: 1, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: !IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEGenericType_ELowerBound()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eLowerBound", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEGenericType_ETypeParameter()!, 
					type: ecorePackage.getETypeParameter()!, 
					otherEnd: nil, 
					name: "eTypeParameter", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				initEReference(
					r: getEGenericType_EClassifier()!, 
					type: ecorePackage.getEClassifier()!, 
					otherEnd: nil, 
					name: "eClassifier", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: 1, 
					containerClass: Mirror(reflecting: EGenericType), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: !IS_COMPOSITE, 
					isResolveProxies: IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
				initEClass(c: ETypeParameterEClass!, 
				instanceClass: Mirror(reflecting: ETypeParameter), 
				name:"ETypeParameter", 
				isAbstract: !IS_ABSTRACT, 
				isInterface: !IS_INTERFACE, 
				isGenerated: IS_GENERATED_INSTANCE_CLASS);
				
				
				initEReference(
					r: getETypeParameter_EBounds()!, 
					type: ecorePackage.getEGenericType()!, 
					otherEnd: nil, 
					name: "eBounds", 
					defaultValue: nil, 
					lowerBound: 0, 
					upperBound: -1, 
					containerClass: Mirror(reflecting: ETypeParameter), 
					isTransient: !IS_TRANSIENT, 
					isVolatile: !IS_VOLATILE, 
					isChangeable: IS_CHANGEABLE, 
					isContainment: IS_COMPOSITE, 
					isResolveProxies: !IS_RESOLVE_PROXIES, 
					isUnsettable: !IS_UNSETTABLE, 
					isUnique: IS_UNIQUE, 
					isDerived: !IS_DERIVED, 
					isOrdered: IS_ORDERED);
				
	        }
	        
			
			private var EAttributeEClass : EClass? = nil;
			private var EAnnotationEClass : EClass? = nil;
			private var EClassEClass : EClass? = nil;
			private var EClassifierEClass : EClass? = nil;
			private var EDataTypeEClass : EClass? = nil;
			private var EEnumEClass : EClass? = nil;
			private var EEnumLiteralEClass : EClass? = nil;
			private var EFactoryEClass : EClass? = nil;
			private var EModelElementEClass : EClass? = nil;
			private var ENamedElementEClass : EClass? = nil;
			private var EObjectEClass : EClass? = nil;
			private var EOperationEClass : EClass? = nil;
			private var EPackageEClass : EClass? = nil;
			private var EParameterEClass : EClass? = nil;
			private var EReferenceEClass : EClass? = nil;
			private var EStructuralFeatureEClass : EClass? = nil;
			private var ETypedElementEClass : EClass? = nil;
			private var EStringToStringMapEntryEClass : EClass? = nil;
			private var EGenericTypeEClass : EClass? = nil;
			private var ETypeParameterEClass : EClass? = nil;
			
			
			
			private var EBigDecimalEDataType : EDataType? = nil;
			private var EBigIntegerEDataType : EDataType? = nil;
			private var EBooleanEDataType : EDataType? = nil;
			private var EBooleanObjectEDataType : EDataType? = nil;
			private var EByteEDataType : EDataType? = nil;
			private var EByteArrayEDataType : EDataType? = nil;
			private var EByteObjectEDataType : EDataType? = nil;
			private var ECharEDataType : EDataType? = nil;
			private var ECharacterObjectEDataType : EDataType? = nil;
			private var EDateEDataType : EDataType? = nil;
			private var EDiagnosticChainEDataType : EDataType? = nil;
			private var EDoubleEDataType : EDataType? = nil;
			private var EDoubleObjectEDataType : EDataType? = nil;
			private var EEListEDataType : EDataType? = nil;
			private var EEnumeratorEDataType : EDataType? = nil;
			private var EFeatureMapEDataType : EDataType? = nil;
			private var EFeatureMapEntryEDataType : EDataType? = nil;
			private var EFloatEDataType : EDataType? = nil;
			private var EFloatObjectEDataType : EDataType? = nil;
			private var EIntEDataType : EDataType? = nil;
			private var EIntegerObjectEDataType : EDataType? = nil;
			private var EJavaClassEDataType : EDataType? = nil;
			private var EJavaObjectEDataType : EDataType? = nil;
			private var ELongEDataType : EDataType? = nil;
			private var ELongObjectEDataType : EDataType? = nil;
			private var EMapEDataType : EDataType? = nil;
			private var EResourceEDataType : EDataType? = nil;
			private var EResourceSetEDataType : EDataType? = nil;
			private var EShortEDataType : EDataType? = nil;
			private var EShortObjectEDataType : EDataType? = nil;
			private var EStringEDataType : EDataType? = nil;
			private var ETreeIteratorEDataType : EDataType? = nil;
			private var EInvocationTargetExceptionEDataType : EDataType? = nil;
			
			
			static var EOBJECT = 10;
			static var EOBJECT_FEATURE_COUNT = 0;
			static var EOBJECT_OPERATION_COUNT = 15;
			
			static var EMODELELEMENT = 8;
			static var EMODELELEMENT_FEATURE_COUNT = 1;
			static var EMODELELEMENT_OPERATION_COUNT = 1;
			
			static var EMODELELEMENT_EANNOTATIONS = 0;
			static var ESTRINGTOSTRINGMAPENTRY = 48;
			static var ESTRINGTOSTRINGMAPENTRY_FEATURE_COUNT = 2;
			static var ESTRINGTOSTRINGMAPENTRY_OPERATION_COUNT = 0;
			
			static var ESTRINGTOSTRINGMAPENTRY_KEY = 0;
			static var ESTRINGTOSTRINGMAPENTRY_VALUE = 1;
			static var EGENERICTYPE = 50;
			static var EGENERICTYPE_FEATURE_COUNT = 6;
			static var EGENERICTYPE_OPERATION_COUNT = 1;
			
			static var EGENERICTYPE_EUPPERBOUND = 0;
			static var EGENERICTYPE_ETYPEARGUMENTS = 1;
			static var EGENERICTYPE_ERAWTYPE = 2;
			static var EGENERICTYPE_ELOWERBOUND = 3;
			static var EGENERICTYPE_ETYPEPARAMETER = 4;
			static var EGENERICTYPE_ECLASSIFIER = 5;
			static var EANNOTATION = 1;
			static var EANNOTATION_FEATURE_COUNT = EMODELELEMENT_FEATURE_COUNT + 5;
			static var EANNOTATION_OPERATION_COUNT = EMODELELEMENT_OPERATION_COUNT + 0;
			
			static var EANNOTATION_EANNOTATIONS = 0;
			static var EANNOTATION_SOURCE = 1;
			static var EANNOTATION_DETAILS = 2;
			static var EANNOTATION_EMODELELEMENT = 3;
			static var EANNOTATION_CONTENTS = 4;
			static var EANNOTATION_REFERENCES = 5;
			static var EFACTORY = 7;
			static var EFACTORY_FEATURE_COUNT = EMODELELEMENT_FEATURE_COUNT + 1;
			static var EFACTORY_OPERATION_COUNT = EMODELELEMENT_OPERATION_COUNT + 3;
			
			static var EFACTORY_EANNOTATIONS = 0;
			static var EFACTORY_EPACKAGE = 1;
			static var ENAMEDELEMENT = 9;
			static var ENAMEDELEMENT_FEATURE_COUNT = EMODELELEMENT_FEATURE_COUNT + 1;
			static var ENAMEDELEMENT_OPERATION_COUNT = EMODELELEMENT_OPERATION_COUNT + 0;
			
			static var ENAMEDELEMENT_EANNOTATIONS = 0;
			static var ENAMEDELEMENT_NAME = 1;
			static var ECLASSIFIER = 3;
			static var ECLASSIFIER_FEATURE_COUNT = ENAMEDELEMENT_FEATURE_COUNT + 6;
			static var ECLASSIFIER_OPERATION_COUNT = ENAMEDELEMENT_OPERATION_COUNT + 2;
			
			static var ECLASSIFIER_EANNOTATIONS = 0;
			static var ECLASSIFIER_NAME = 1;
			static var ECLASSIFIER_INSTANCECLASSNAME = 2;
			static var ECLASSIFIER_INSTANCECLASS = 3;
			static var ECLASSIFIER_DEFAULTVALUE = 4;
			static var ECLASSIFIER_INSTANCETYPENAME = 5;
			static var ECLASSIFIER_EPACKAGE = 6;
			static var ECLASSIFIER_ETYPEPARAMETERS = 7;
			static var EENUMLITERAL = 6;
			static var EENUMLITERAL_FEATURE_COUNT = ENAMEDELEMENT_FEATURE_COUNT + 4;
			static var EENUMLITERAL_OPERATION_COUNT = ENAMEDELEMENT_OPERATION_COUNT + 0;
			
			static var EENUMLITERAL_EANNOTATIONS = 0;
			static var EENUMLITERAL_NAME = 1;
			static var EENUMLITERAL_VALUE = 2;
			static var EENUMLITERAL_INSTANCE = 3;
			static var EENUMLITERAL_LITERAL = 4;
			static var EENUMLITERAL_EENUM = 5;
			static var EPACKAGE = 12;
			static var EPACKAGE_FEATURE_COUNT = ENAMEDELEMENT_FEATURE_COUNT + 6;
			static var EPACKAGE_OPERATION_COUNT = ENAMEDELEMENT_OPERATION_COUNT + 1;
			
			static var EPACKAGE_EANNOTATIONS = 0;
			static var EPACKAGE_NAME = 1;
			static var EPACKAGE_NSURI = 2;
			static var EPACKAGE_NSPREFIX = 3;
			static var EPACKAGE_EFACTORYINSTANCE = 4;
			static var EPACKAGE_ECLASSIFIERS = 5;
			static var EPACKAGE_ESUBPACKAGES = 6;
			static var EPACKAGE_ESUPERPACKAGE = 7;
			static var ETYPEDELEMENT = 16;
			static var ETYPEDELEMENT_FEATURE_COUNT = ENAMEDELEMENT_FEATURE_COUNT + 8;
			static var ETYPEDELEMENT_OPERATION_COUNT = ENAMEDELEMENT_OPERATION_COUNT + 0;
			
			static var ETYPEDELEMENT_EANNOTATIONS = 0;
			static var ETYPEDELEMENT_NAME = 1;
			static var ETYPEDELEMENT_ORDERED = 2;
			static var ETYPEDELEMENT_UNIQUE = 3;
			static var ETYPEDELEMENT_LOWERBOUND = 4;
			static var ETYPEDELEMENT_UPPERBOUND = 5;
			static var ETYPEDELEMENT_MANY = 6;
			static var ETYPEDELEMENT_REQUIRED = 7;
			static var ETYPEDELEMENT_ETYPE = 8;
			static var ETYPEDELEMENT_EGENERICTYPE = 9;
			static var ETYPEPARAMETER = 51;
			static var ETYPEPARAMETER_FEATURE_COUNT = ENAMEDELEMENT_FEATURE_COUNT + 1;
			static var ETYPEPARAMETER_OPERATION_COUNT = ENAMEDELEMENT_OPERATION_COUNT + 0;
			
			static var ETYPEPARAMETER_EANNOTATIONS = 0;
			static var ETYPEPARAMETER_NAME = 1;
			static var ETYPEPARAMETER_EBOUNDS = 2;
			static var ECLASS = 2;
			static var ECLASS_FEATURE_COUNT = ECLASSIFIER_FEATURE_COUNT + 16;
			static var ECLASS_OPERATION_COUNT = ECLASSIFIER_OPERATION_COUNT + 10;
			
			static var ECLASS_EANNOTATIONS = 0;
			static var ECLASS_NAME = 1;
			static var ECLASS_INSTANCECLASSNAME = 2;
			static var ECLASS_INSTANCECLASS = 3;
			static var ECLASS_DEFAULTVALUE = 4;
			static var ECLASS_INSTANCETYPENAME = 5;
			static var ECLASS_EPACKAGE = 6;
			static var ECLASS_ETYPEPARAMETERS = 7;
			static var ECLASS_ABSTRACT = 8;
			static var ECLASS_INTERFACE = 9;
			static var ECLASS_ESUPERTYPES = 10;
			static var ECLASS_EOPERATIONS = 11;
			static var ECLASS_EALLATTRIBUTES = 12;
			static var ECLASS_EALLREFERENCES = 13;
			static var ECLASS_EREFERENCES = 14;
			static var ECLASS_EATTRIBUTES = 15;
			static var ECLASS_EALLCONTAINMENTS = 16;
			static var ECLASS_EALLOPERATIONS = 17;
			static var ECLASS_EALLSTRUCTURALFEATURES = 18;
			static var ECLASS_EALLSUPERTYPES = 19;
			static var ECLASS_EIDATTRIBUTE = 20;
			static var ECLASS_ESTRUCTURALFEATURES = 21;
			static var ECLASS_EGENERICSUPERTYPES = 22;
			static var ECLASS_EALLGENERICSUPERTYPES = 23;
			static var EDATATYPE = 4;
			static var EDATATYPE_FEATURE_COUNT = ECLASSIFIER_FEATURE_COUNT + 1;
			static var EDATATYPE_OPERATION_COUNT = ECLASSIFIER_OPERATION_COUNT + 0;
			
			static var EDATATYPE_EANNOTATIONS = 0;
			static var EDATATYPE_NAME = 1;
			static var EDATATYPE_INSTANCECLASSNAME = 2;
			static var EDATATYPE_INSTANCECLASS = 3;
			static var EDATATYPE_DEFAULTVALUE = 4;
			static var EDATATYPE_INSTANCETYPENAME = 5;
			static var EDATATYPE_EPACKAGE = 6;
			static var EDATATYPE_ETYPEPARAMETERS = 7;
			static var EDATATYPE_SERIALIZABLE = 8;
			static var EOPERATION = 11;
			static var EOPERATION_FEATURE_COUNT = ETYPEDELEMENT_FEATURE_COUNT + 5;
			static var EOPERATION_OPERATION_COUNT = ETYPEDELEMENT_OPERATION_COUNT + 2;
			
			static var EOPERATION_EANNOTATIONS = 0;
			static var EOPERATION_NAME = 1;
			static var EOPERATION_ORDERED = 2;
			static var EOPERATION_UNIQUE = 3;
			static var EOPERATION_LOWERBOUND = 4;
			static var EOPERATION_UPPERBOUND = 5;
			static var EOPERATION_MANY = 6;
			static var EOPERATION_REQUIRED = 7;
			static var EOPERATION_ETYPE = 8;
			static var EOPERATION_EGENERICTYPE = 9;
			static var EOPERATION_ECONTAININGCLASS = 10;
			static var EOPERATION_ETYPEPARAMETERS = 11;
			static var EOPERATION_EPARAMETERS = 12;
			static var EOPERATION_EEXCEPTIONS = 13;
			static var EOPERATION_EGENERICEXCEPTIONS = 14;
			static var EPARAMETER = 13;
			static var EPARAMETER_FEATURE_COUNT = ETYPEDELEMENT_FEATURE_COUNT + 1;
			static var EPARAMETER_OPERATION_COUNT = ETYPEDELEMENT_OPERATION_COUNT + 0;
			
			static var EPARAMETER_EANNOTATIONS = 0;
			static var EPARAMETER_NAME = 1;
			static var EPARAMETER_ORDERED = 2;
			static var EPARAMETER_UNIQUE = 3;
			static var EPARAMETER_LOWERBOUND = 4;
			static var EPARAMETER_UPPERBOUND = 5;
			static var EPARAMETER_MANY = 6;
			static var EPARAMETER_REQUIRED = 7;
			static var EPARAMETER_ETYPE = 8;
			static var EPARAMETER_EGENERICTYPE = 9;
			static var EPARAMETER_EOPERATION = 10;
			static var ESTRUCTURALFEATURE = 15;
			static var ESTRUCTURALFEATURE_FEATURE_COUNT = ETYPEDELEMENT_FEATURE_COUNT + 8;
			static var ESTRUCTURALFEATURE_OPERATION_COUNT = ETYPEDELEMENT_OPERATION_COUNT + 2;
			
			static var ESTRUCTURALFEATURE_EANNOTATIONS = 0;
			static var ESTRUCTURALFEATURE_NAME = 1;
			static var ESTRUCTURALFEATURE_ORDERED = 2;
			static var ESTRUCTURALFEATURE_UNIQUE = 3;
			static var ESTRUCTURALFEATURE_LOWERBOUND = 4;
			static var ESTRUCTURALFEATURE_UPPERBOUND = 5;
			static var ESTRUCTURALFEATURE_MANY = 6;
			static var ESTRUCTURALFEATURE_REQUIRED = 7;
			static var ESTRUCTURALFEATURE_ETYPE = 8;
			static var ESTRUCTURALFEATURE_EGENERICTYPE = 9;
			static var ESTRUCTURALFEATURE_CHANGEABLE = 10;
			static var ESTRUCTURALFEATURE_VOLATILE = 11;
			static var ESTRUCTURALFEATURE_TRANSIENT = 12;
			static var ESTRUCTURALFEATURE_DEFAULTVALUELITERAL = 13;
			static var ESTRUCTURALFEATURE_DEFAULTVALUE = 14;
			static var ESTRUCTURALFEATURE_UNSETTABLE = 15;
			static var ESTRUCTURALFEATURE_DERIVED = 16;
			static var ESTRUCTURALFEATURE_ECONTAININGCLASS = 17;
			static var EENUM = 5;
			static var EENUM_FEATURE_COUNT = EDATATYPE_FEATURE_COUNT + 1;
			static var EENUM_OPERATION_COUNT = EDATATYPE_OPERATION_COUNT + 3;
			
			static var EENUM_EANNOTATIONS = 0;
			static var EENUM_NAME = 1;
			static var EENUM_INSTANCECLASSNAME = 2;
			static var EENUM_INSTANCECLASS = 3;
			static var EENUM_DEFAULTVALUE = 4;
			static var EENUM_INSTANCETYPENAME = 5;
			static var EENUM_EPACKAGE = 6;
			static var EENUM_ETYPEPARAMETERS = 7;
			static var EENUM_SERIALIZABLE = 8;
			static var EENUM_ELITERALS = 9;
			static var EATTRIBUTE = 0;
			static var EATTRIBUTE_FEATURE_COUNT = ESTRUCTURALFEATURE_FEATURE_COUNT + 2;
			static var EATTRIBUTE_OPERATION_COUNT = ESTRUCTURALFEATURE_OPERATION_COUNT + 0;
			
			static var EATTRIBUTE_EANNOTATIONS = 0;
			static var EATTRIBUTE_NAME = 1;
			static var EATTRIBUTE_ORDERED = 2;
			static var EATTRIBUTE_UNIQUE = 3;
			static var EATTRIBUTE_LOWERBOUND = 4;
			static var EATTRIBUTE_UPPERBOUND = 5;
			static var EATTRIBUTE_MANY = 6;
			static var EATTRIBUTE_REQUIRED = 7;
			static var EATTRIBUTE_ETYPE = 8;
			static var EATTRIBUTE_EGENERICTYPE = 9;
			static var EATTRIBUTE_CHANGEABLE = 10;
			static var EATTRIBUTE_VOLATILE = 11;
			static var EATTRIBUTE_TRANSIENT = 12;
			static var EATTRIBUTE_DEFAULTVALUELITERAL = 13;
			static var EATTRIBUTE_DEFAULTVALUE = 14;
			static var EATTRIBUTE_UNSETTABLE = 15;
			static var EATTRIBUTE_DERIVED = 16;
			static var EATTRIBUTE_ECONTAININGCLASS = 17;
			static var EATTRIBUTE_ID = 18;
			static var EATTRIBUTE_EATTRIBUTETYPE = 19;
			static var EREFERENCE = 14;
			static var EREFERENCE_FEATURE_COUNT = ESTRUCTURALFEATURE_FEATURE_COUNT + 6;
			static var EREFERENCE_OPERATION_COUNT = ESTRUCTURALFEATURE_OPERATION_COUNT + 0;
			
			static var EREFERENCE_EANNOTATIONS = 0;
			static var EREFERENCE_NAME = 1;
			static var EREFERENCE_ORDERED = 2;
			static var EREFERENCE_UNIQUE = 3;
			static var EREFERENCE_LOWERBOUND = 4;
			static var EREFERENCE_UPPERBOUND = 5;
			static var EREFERENCE_MANY = 6;
			static var EREFERENCE_REQUIRED = 7;
			static var EREFERENCE_ETYPE = 8;
			static var EREFERENCE_EGENERICTYPE = 9;
			static var EREFERENCE_CHANGEABLE = 10;
			static var EREFERENCE_VOLATILE = 11;
			static var EREFERENCE_TRANSIENT = 12;
			static var EREFERENCE_DEFAULTVALUELITERAL = 13;
			static var EREFERENCE_DEFAULTVALUE = 14;
			static var EREFERENCE_UNSETTABLE = 15;
			static var EREFERENCE_DERIVED = 16;
			static var EREFERENCE_ECONTAININGCLASS = 17;
			static var EREFERENCE_CONTAINMENT = 18;
			static var EREFERENCE_CONTAINER = 19;
			static var EREFERENCE_RESOLVEPROXIES = 20;
			static var EREFERENCE_EOPPOSITE = 21;
			static var EREFERENCE_EREFERENCETYPE = 22;
			static var EREFERENCE_EKEYS = 23;
			static var EBIGDECIMAL = 17;
			static var EBIGINTEGER = 18;
			static var EBOOLEAN = 19;
			static var EBOOLEANOBJECT = 20;
			static var EBYTE = 21;
			static var EBYTEARRAY = 22;
			static var EBYTEOBJECT = 23;
			static var ECHAR = 24;
			static var ECHARACTEROBJECT = 25;
			static var EDATE = 26;
			static var EDIAGNOSTICCHAIN = 27;
			static var EDOUBLE = 28;
			static var EDOUBLEOBJECT = 29;
			static var EELIST = 30;
			static var EENUMERATOR = 31;
			static var EFEATUREMAP = 32;
			static var EFEATUREMAPENTRY = 33;
			static var EFLOAT = 34;
			static var EFLOATOBJECT = 35;
			static var EINT = 36;
			static var EINTEGEROBJECT = 37;
			static var EJAVACLASS = 38;
			static var EJAVAOBJECT = 39;
			static var ELONG = 40;
			static var ELONGOBJECT = 41;
			static var EMAP = 42;
			static var ERESOURCE = 43;
			static var ERESOURCESET = 44;
			static var ESHORT = 45;
			static var ESHORTOBJECT = 46;
			static var ESTRING = 47;
			static var ETREEITERATOR = 49;
			static var EINVOCATIONTARGETEXCEPTION = 52;
			
			
			func getEObject() -> EClass?{return EObjectEClass;}
			
			func getEModelElement() -> EClass?{return EModelElementEClass;}
			
			func getEModelElement_EAnnotations() -> EReference?{return EModelElementEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEStringToStringMapEntry() -> EClass?{return EStringToStringMapEntryEClass;}
			
			func getEStringToStringMapEntry_Key() -> EAttribute?{return EStringToStringMapEntryEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEStringToStringMapEntry_Value() -> EAttribute?{return EStringToStringMapEntryEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEGenericType() -> EClass?{return EGenericTypeEClass;}
			
			func getEGenericType_EUpperBound() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEGenericType_ETypeArguments() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:1) as! EReference;}
			func getEGenericType_ERawType() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:2) as! EReference;}
			func getEGenericType_ELowerBound() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEGenericType_ETypeParameter() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEGenericType_EClassifier() -> EReference?{return EGenericTypeEClass?.eStructuralFeatures?.at(i:5) as! EReference;}
			func getEAnnotation() -> EClass?{return EAnnotationEClass;}
			
			func getEAnnotation_Source() -> EAttribute?{return EAnnotationEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEAnnotation_Details() -> EReference?{return EAnnotationEClass?.eStructuralFeatures?.at(i:1) as! EReference;}
			func getEAnnotation_EModelElement() -> EReference?{return EAnnotationEClass?.eStructuralFeatures?.at(i:2) as! EReference;}
			func getEAnnotation_Contents() -> EReference?{return EAnnotationEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEAnnotation_References() -> EReference?{return EAnnotationEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEFactory() -> EClass?{return EFactoryEClass;}
			
			func getEFactory_EPackage() -> EReference?{return EFactoryEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getENamedElement() -> EClass?{return ENamedElementEClass;}
			
			func getENamedElement_Name() -> EAttribute?{return ENamedElementEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEClassifier() -> EClass?{return EClassifierEClass;}
			
			func getEClassifier_InstanceClassName() -> EAttribute?{return EClassifierEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEClassifier_InstanceClass() -> EAttribute?{return EClassifierEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEClassifier_DefaultValue() -> EAttribute?{return EClassifierEClass?.eStructuralFeatures?.at(i:2) as! EAttribute;}
			func getEClassifier_InstanceTypeName() -> EAttribute?{return EClassifierEClass?.eStructuralFeatures?.at(i:3) as! EAttribute;}
			func getEClassifier_EPackage() -> EReference?{return EClassifierEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEClassifier_ETypeParameters() -> EReference?{return EClassifierEClass?.eStructuralFeatures?.at(i:5) as! EReference;}
			func getEEnumLiteral() -> EClass?{return EEnumLiteralEClass;}
			
			func getEEnumLiteral_Value() -> EAttribute?{return EEnumLiteralEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEEnumLiteral_Instance() -> EAttribute?{return EEnumLiteralEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEEnumLiteral_Literal() -> EAttribute?{return EEnumLiteralEClass?.eStructuralFeatures?.at(i:2) as! EAttribute;}
			func getEEnumLiteral_EEnum() -> EReference?{return EEnumLiteralEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEPackage() -> EClass?{return EPackageEClass;}
			
			func getEPackage_NsURI() -> EAttribute?{return EPackageEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEPackage_NsPrefix() -> EAttribute?{return EPackageEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEPackage_EFactoryInstance() -> EReference?{return EPackageEClass?.eStructuralFeatures?.at(i:2) as! EReference;}
			func getEPackage_EClassifiers() -> EReference?{return EPackageEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEPackage_ESubpackages() -> EReference?{return EPackageEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEPackage_ESuperPackage() -> EReference?{return EPackageEClass?.eStructuralFeatures?.at(i:5) as! EReference;}
			func getETypedElement() -> EClass?{return ETypedElementEClass;}
			
			func getETypedElement_Ordered() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getETypedElement_Unique() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getETypedElement_LowerBound() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:2) as! EAttribute;}
			func getETypedElement_UpperBound() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:3) as! EAttribute;}
			func getETypedElement_Many() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:4) as! EAttribute;}
			func getETypedElement_Required() -> EAttribute?{return ETypedElementEClass?.eStructuralFeatures?.at(i:5) as! EAttribute;}
			func getETypedElement_EType() -> EReference?{return ETypedElementEClass?.eStructuralFeatures?.at(i:6) as! EReference;}
			func getETypedElement_EGenericType() -> EReference?{return ETypedElementEClass?.eStructuralFeatures?.at(i:7) as! EReference;}
			func getETypeParameter() -> EClass?{return ETypeParameterEClass;}
			
			func getETypeParameter_EBounds() -> EReference?{return ETypeParameterEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEClass() -> EClass?{return EClassEClass;}
			
			func getEClass_Abstract() -> EAttribute?{return EClassEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEClass_Interface() -> EAttribute?{return EClassEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEClass_ESuperTypes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:2) as! EReference;}
			func getEClass_EOperations() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEClass_EAllAttributes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEClass_EAllReferences() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:5) as! EReference;}
			func getEClass_EReferences() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:6) as! EReference;}
			func getEClass_EAttributes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:7) as! EReference;}
			func getEClass_EAllContainments() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:8) as! EReference;}
			func getEClass_EAllOperations() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:9) as! EReference;}
			func getEClass_EAllStructuralFeatures() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:10) as! EReference;}
			func getEClass_EAllSuperTypes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:11) as! EReference;}
			func getEClass_EIDAttribute() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:12) as! EReference;}
			func getEClass_EStructuralFeatures() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:13) as! EReference;}
			func getEClass_EGenericSuperTypes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:14) as! EReference;}
			func getEClass_EAllGenericSuperTypes() -> EReference?{return EClassEClass?.eStructuralFeatures?.at(i:15) as! EReference;}
			func getEDataType() -> EClass?{return EDataTypeEClass;}
			
			func getEDataType_Serializable() -> EAttribute?{return EDataTypeEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEOperation() -> EClass?{return EOperationEClass;}
			
			func getEOperation_EContainingClass() -> EReference?{return EOperationEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEOperation_ETypeParameters() -> EReference?{return EOperationEClass?.eStructuralFeatures?.at(i:1) as! EReference;}
			func getEOperation_EParameters() -> EReference?{return EOperationEClass?.eStructuralFeatures?.at(i:2) as! EReference;}
			func getEOperation_EExceptions() -> EReference?{return EOperationEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEOperation_EGenericExceptions() -> EReference?{return EOperationEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEParameter() -> EClass?{return EParameterEClass;}
			
			func getEParameter_EOperation() -> EReference?{return EParameterEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEStructuralFeature() -> EClass?{return EStructuralFeatureEClass;}
			
			func getEStructuralFeature_Changeable() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEStructuralFeature_Volatile() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEStructuralFeature_Transient() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:2) as! EAttribute;}
			func getEStructuralFeature_DefaultValueLiteral() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:3) as! EAttribute;}
			func getEStructuralFeature_DefaultValue() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:4) as! EAttribute;}
			func getEStructuralFeature_Unsettable() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:5) as! EAttribute;}
			func getEStructuralFeature_Derived() -> EAttribute?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:6) as! EAttribute;}
			func getEStructuralFeature_EContainingClass() -> EReference?{return EStructuralFeatureEClass?.eStructuralFeatures?.at(i:7) as! EReference;}
			func getEEnum() -> EClass?{return EEnumEClass;}
			
			func getEEnum_ELiterals() -> EReference?{return EEnumEClass?.eStructuralFeatures?.at(i:0) as! EReference;}
			func getEAttribute() -> EClass?{return EAttributeEClass;}
			
			func getEAttribute_ID() -> EAttribute?{return EAttributeEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEAttribute_EAttributeType() -> EReference?{return EAttributeEClass?.eStructuralFeatures?.at(i:1) as! EReference;}
			func getEReference() -> EClass?{return EReferenceEClass;}
			
			func getEReference_Containment() -> EAttribute?{return EReferenceEClass?.eStructuralFeatures?.at(i:0) as! EAttribute;}
			func getEReference_Container() -> EAttribute?{return EReferenceEClass?.eStructuralFeatures?.at(i:1) as! EAttribute;}
			func getEReference_ResolveProxies() -> EAttribute?{return EReferenceEClass?.eStructuralFeatures?.at(i:2) as! EAttribute;}
			func getEReference_EOpposite() -> EReference?{return EReferenceEClass?.eStructuralFeatures?.at(i:3) as! EReference;}
			func getEReference_EReferenceType() -> EReference?{return EReferenceEClass?.eStructuralFeatures?.at(i:4) as! EReference;}
			func getEReference_EKeys() -> EReference?{return EReferenceEClass?.eStructuralFeatures?.at(i:5) as! EReference;}
			func getEBigDecimal() -> EDataType?{return EBigDecimalEDataType;}
			func getEBigInteger() -> EDataType?{return EBigIntegerEDataType;}
			func getEBoolean() -> EDataType?{return EBooleanEDataType;}
			func getEBooleanObject() -> EDataType?{return EBooleanObjectEDataType;}
			func getEByte() -> EDataType?{return EByteEDataType;}
			func getEByteArray() -> EDataType?{return EByteArrayEDataType;}
			func getEByteObject() -> EDataType?{return EByteObjectEDataType;}
			func getEChar() -> EDataType?{return ECharEDataType;}
			func getECharacterObject() -> EDataType?{return ECharacterObjectEDataType;}
			func getEDate() -> EDataType?{return EDateEDataType;}
			func getEDiagnosticChain() -> EDataType?{return EDiagnosticChainEDataType;}
			func getEDouble() -> EDataType?{return EDoubleEDataType;}
			func getEDoubleObject() -> EDataType?{return EDoubleObjectEDataType;}
			func getEEList() -> EDataType?{return EEListEDataType;}
			func getEEnumerator() -> EDataType?{return EEnumeratorEDataType;}
			func getEFeatureMap() -> EDataType?{return EFeatureMapEDataType;}
			func getEFeatureMapEntry() -> EDataType?{return EFeatureMapEntryEDataType;}
			func getEFloat() -> EDataType?{return EFloatEDataType;}
			func getEFloatObject() -> EDataType?{return EFloatObjectEDataType;}
			func getEInt() -> EDataType?{return EIntEDataType;}
			func getEIntegerObject() -> EDataType?{return EIntegerObjectEDataType;}
			func getEJavaClass() -> EDataType?{return EJavaClassEDataType;}
			func getEJavaObject() -> EDataType?{return EJavaObjectEDataType;}
			func getELong() -> EDataType?{return ELongEDataType;}
			func getELongObject() -> EDataType?{return ELongObjectEDataType;}
			func getEMap() -> EDataType?{return EMapEDataType;}
			func getEResource() -> EDataType?{return EResourceEDataType;}
			func getEResourceSet() -> EDataType?{return EResourceSetEDataType;}
			func getEShort() -> EDataType?{return EShortEDataType;}
			func getEShortObject() -> EDataType?{return EShortObjectEDataType;}
			func getEString() -> EDataType?{return EStringEDataType;}
			func getETreeIterator() -> EDataType?{return ETreeIteratorEDataType;}
			func getEInvocationTargetException() -> EDataType?{return EInvocationTargetExceptionEDataType;}
			
			class Literals{
				
				static let EOBJECT = EcorePackageImpl.eINSTANCE.getEObject();//TODO as? EClass casting required?
				
				
				
				static let EMODELELEMENT = EcorePackageImpl.eINSTANCE.getEModelElement();//TODO as? EClass casting required?
				
				static let EMODELELEMENT_EANNOTATIONS = EcorePackageImpl.eINSTANCE.getEModelElement_EAnnotations();
				
				
				static let ESTRINGTOSTRINGMAPENTRY = EcorePackageImpl.eINSTANCE.getEStringToStringMapEntry();//TODO as? EClass casting required?
				
				
				static let ESTRINGTOSTRINGMAPENTRY_KEY = EcorePackageImpl.eINSTANCE.getEStringToStringMapEntry_Key() as? EAttribute;
				static let ESTRINGTOSTRINGMAPENTRY_VALUE = EcorePackageImpl.eINSTANCE.getEStringToStringMapEntry_Value() as? EAttribute;
				
				static let EGENERICTYPE = EcorePackageImpl.eINSTANCE.getEGenericType();//TODO as? EClass casting required?
				
				static let EGENERICTYPE_EUPPERBOUND = EcorePackageImpl.eINSTANCE.getEGenericType_EUpperBound();
				static let EGENERICTYPE_ETYPEARGUMENTS = EcorePackageImpl.eINSTANCE.getEGenericType_ETypeArguments();
				static let EGENERICTYPE_ERAWTYPE = EcorePackageImpl.eINSTANCE.getEGenericType_ERawType();
				static let EGENERICTYPE_ELOWERBOUND = EcorePackageImpl.eINSTANCE.getEGenericType_ELowerBound();
				static let EGENERICTYPE_ETYPEPARAMETER = EcorePackageImpl.eINSTANCE.getEGenericType_ETypeParameter();
				static let EGENERICTYPE_ECLASSIFIER = EcorePackageImpl.eINSTANCE.getEGenericType_EClassifier();
				
				
				static let EANNOTATION = EcorePackageImpl.eINSTANCE.getEAnnotation();//TODO as? EClass casting required?
				
				static let EANNOTATION_DETAILS = EcorePackageImpl.eINSTANCE.getEAnnotation_Details();
				static let EANNOTATION_EMODELELEMENT = EcorePackageImpl.eINSTANCE.getEAnnotation_EModelElement();
				static let EANNOTATION_CONTENTS = EcorePackageImpl.eINSTANCE.getEAnnotation_Contents();
				static let EANNOTATION_REFERENCES = EcorePackageImpl.eINSTANCE.getEAnnotation_References();
				
				static let EANNOTATION_SOURCE = EcorePackageImpl.eINSTANCE.getEAnnotation_Source() as? EAttribute;
				
				static let EFACTORY = EcorePackageImpl.eINSTANCE.getEFactory();//TODO as? EClass casting required?
				
				static let EFACTORY_EPACKAGE = EcorePackageImpl.eINSTANCE.getEFactory_EPackage();
				
				
				static let ENAMEDELEMENT = EcorePackageImpl.eINSTANCE.getENamedElement();//TODO as? EClass casting required?
				
				
				static let ENAMEDELEMENT_NAME = EcorePackageImpl.eINSTANCE.getENamedElement_Name() as? EAttribute;
				
				static let ECLASSIFIER = EcorePackageImpl.eINSTANCE.getEClassifier();//TODO as? EClass casting required?
				
				static let ECLASSIFIER_EPACKAGE = EcorePackageImpl.eINSTANCE.getEClassifier_EPackage();
				static let ECLASSIFIER_ETYPEPARAMETERS = EcorePackageImpl.eINSTANCE.getEClassifier_ETypeParameters();
				
				static let ECLASSIFIER_INSTANCECLASSNAME = EcorePackageImpl.eINSTANCE.getEClassifier_InstanceClassName() as? EAttribute;
				static let ECLASSIFIER_INSTANCECLASS = EcorePackageImpl.eINSTANCE.getEClassifier_InstanceClass() as? EAttribute;
				static let ECLASSIFIER_DEFAULTVALUE = EcorePackageImpl.eINSTANCE.getEClassifier_DefaultValue() as? EAttribute;
				static let ECLASSIFIER_INSTANCETYPENAME = EcorePackageImpl.eINSTANCE.getEClassifier_InstanceTypeName() as? EAttribute;
				
				static let EENUMLITERAL = EcorePackageImpl.eINSTANCE.getEEnumLiteral();//TODO as? EClass casting required?
				
				static let EENUMLITERAL_EENUM = EcorePackageImpl.eINSTANCE.getEEnumLiteral_EEnum();
				
				static let EENUMLITERAL_VALUE = EcorePackageImpl.eINSTANCE.getEEnumLiteral_Value() as? EAttribute;
				static let EENUMLITERAL_INSTANCE = EcorePackageImpl.eINSTANCE.getEEnumLiteral_Instance() as? EAttribute;
				static let EENUMLITERAL_LITERAL = EcorePackageImpl.eINSTANCE.getEEnumLiteral_Literal() as? EAttribute;
				
				static let EPACKAGE = EcorePackageImpl.eINSTANCE.getEPackage();//TODO as? EClass casting required?
				
				static let EPACKAGE_EFACTORYINSTANCE = EcorePackageImpl.eINSTANCE.getEPackage_EFactoryInstance();
				static let EPACKAGE_ECLASSIFIERS = EcorePackageImpl.eINSTANCE.getEPackage_EClassifiers();
				static let EPACKAGE_ESUBPACKAGES = EcorePackageImpl.eINSTANCE.getEPackage_ESubpackages();
				static let EPACKAGE_ESUPERPACKAGE = EcorePackageImpl.eINSTANCE.getEPackage_ESuperPackage();
				
				static let EPACKAGE_NSURI = EcorePackageImpl.eINSTANCE.getEPackage_NsURI() as? EAttribute;
				static let EPACKAGE_NSPREFIX = EcorePackageImpl.eINSTANCE.getEPackage_NsPrefix() as? EAttribute;
				
				static let ETYPEDELEMENT = EcorePackageImpl.eINSTANCE.getETypedElement();//TODO as? EClass casting required?
				
				static let ETYPEDELEMENT_ETYPE = EcorePackageImpl.eINSTANCE.getETypedElement_EType();
				static let ETYPEDELEMENT_EGENERICTYPE = EcorePackageImpl.eINSTANCE.getETypedElement_EGenericType();
				
				static let ETYPEDELEMENT_ORDERED = EcorePackageImpl.eINSTANCE.getETypedElement_Ordered() as? EAttribute;
				static let ETYPEDELEMENT_UNIQUE = EcorePackageImpl.eINSTANCE.getETypedElement_Unique() as? EAttribute;
				static let ETYPEDELEMENT_LOWERBOUND = EcorePackageImpl.eINSTANCE.getETypedElement_LowerBound() as? EAttribute;
				static let ETYPEDELEMENT_UPPERBOUND = EcorePackageImpl.eINSTANCE.getETypedElement_UpperBound() as? EAttribute;
				static let ETYPEDELEMENT_MANY = EcorePackageImpl.eINSTANCE.getETypedElement_Many() as? EAttribute;
				static let ETYPEDELEMENT_REQUIRED = EcorePackageImpl.eINSTANCE.getETypedElement_Required() as? EAttribute;
				
				static let ETYPEPARAMETER = EcorePackageImpl.eINSTANCE.getETypeParameter();//TODO as? EClass casting required?
				
				static let ETYPEPARAMETER_EBOUNDS = EcorePackageImpl.eINSTANCE.getETypeParameter_EBounds();
				
				
				static let ECLASS = EcorePackageImpl.eINSTANCE.getEClass();//TODO as? EClass casting required?
				
				static let ECLASS_ESUPERTYPES = EcorePackageImpl.eINSTANCE.getEClass_ESuperTypes();
				static let ECLASS_EOPERATIONS = EcorePackageImpl.eINSTANCE.getEClass_EOperations();
				static let ECLASS_EALLATTRIBUTES = EcorePackageImpl.eINSTANCE.getEClass_EAllAttributes();
				static let ECLASS_EALLREFERENCES = EcorePackageImpl.eINSTANCE.getEClass_EAllReferences();
				static let ECLASS_EREFERENCES = EcorePackageImpl.eINSTANCE.getEClass_EReferences();
				static let ECLASS_EATTRIBUTES = EcorePackageImpl.eINSTANCE.getEClass_EAttributes();
				static let ECLASS_EALLCONTAINMENTS = EcorePackageImpl.eINSTANCE.getEClass_EAllContainments();
				static let ECLASS_EALLOPERATIONS = EcorePackageImpl.eINSTANCE.getEClass_EAllOperations();
				static let ECLASS_EALLSTRUCTURALFEATURES = EcorePackageImpl.eINSTANCE.getEClass_EAllStructuralFeatures();
				static let ECLASS_EALLSUPERTYPES = EcorePackageImpl.eINSTANCE.getEClass_EAllSuperTypes();
				static let ECLASS_EIDATTRIBUTE = EcorePackageImpl.eINSTANCE.getEClass_EIDAttribute();
				static let ECLASS_ESTRUCTURALFEATURES = EcorePackageImpl.eINSTANCE.getEClass_EStructuralFeatures();
				static let ECLASS_EGENERICSUPERTYPES = EcorePackageImpl.eINSTANCE.getEClass_EGenericSuperTypes();
				static let ECLASS_EALLGENERICSUPERTYPES = EcorePackageImpl.eINSTANCE.getEClass_EAllGenericSuperTypes();
				
				static let ECLASS_ABSTRACT = EcorePackageImpl.eINSTANCE.getEClass_Abstract() as? EAttribute;
				static let ECLASS_INTERFACE = EcorePackageImpl.eINSTANCE.getEClass_Interface() as? EAttribute;
				
				static let EDATATYPE = EcorePackageImpl.eINSTANCE.getEDataType();//TODO as? EClass casting required?
				
				
				static let EDATATYPE_SERIALIZABLE = EcorePackageImpl.eINSTANCE.getEDataType_Serializable() as? EAttribute;
				
				static let EOPERATION = EcorePackageImpl.eINSTANCE.getEOperation();//TODO as? EClass casting required?
				
				static let EOPERATION_ECONTAININGCLASS = EcorePackageImpl.eINSTANCE.getEOperation_EContainingClass();
				static let EOPERATION_ETYPEPARAMETERS = EcorePackageImpl.eINSTANCE.getEOperation_ETypeParameters();
				static let EOPERATION_EPARAMETERS = EcorePackageImpl.eINSTANCE.getEOperation_EParameters();
				static let EOPERATION_EEXCEPTIONS = EcorePackageImpl.eINSTANCE.getEOperation_EExceptions();
				static let EOPERATION_EGENERICEXCEPTIONS = EcorePackageImpl.eINSTANCE.getEOperation_EGenericExceptions();
				
				
				static let EPARAMETER = EcorePackageImpl.eINSTANCE.getEParameter();//TODO as? EClass casting required?
				
				static let EPARAMETER_EOPERATION = EcorePackageImpl.eINSTANCE.getEParameter_EOperation();
				
				
				static let ESTRUCTURALFEATURE = EcorePackageImpl.eINSTANCE.getEStructuralFeature();//TODO as? EClass casting required?
				
				static let ESTRUCTURALFEATURE_ECONTAININGCLASS = EcorePackageImpl.eINSTANCE.getEStructuralFeature_EContainingClass();
				
				static let ESTRUCTURALFEATURE_CHANGEABLE = EcorePackageImpl.eINSTANCE.getEStructuralFeature_Changeable() as? EAttribute;
				static let ESTRUCTURALFEATURE_VOLATILE = EcorePackageImpl.eINSTANCE.getEStructuralFeature_Volatile() as? EAttribute;
				static let ESTRUCTURALFEATURE_TRANSIENT = EcorePackageImpl.eINSTANCE.getEStructuralFeature_Transient() as? EAttribute;
				static let ESTRUCTURALFEATURE_DEFAULTVALUELITERAL = EcorePackageImpl.eINSTANCE.getEStructuralFeature_DefaultValueLiteral() as? EAttribute;
				static let ESTRUCTURALFEATURE_DEFAULTVALUE = EcorePackageImpl.eINSTANCE.getEStructuralFeature_DefaultValue() as? EAttribute;
				static let ESTRUCTURALFEATURE_UNSETTABLE = EcorePackageImpl.eINSTANCE.getEStructuralFeature_Unsettable() as? EAttribute;
				static let ESTRUCTURALFEATURE_DERIVED = EcorePackageImpl.eINSTANCE.getEStructuralFeature_Derived() as? EAttribute;
				
				static let EENUM = EcorePackageImpl.eINSTANCE.getEEnum();//TODO as? EClass casting required?
				
				static let EENUM_ELITERALS = EcorePackageImpl.eINSTANCE.getEEnum_ELiterals();
				
				
				static let EATTRIBUTE = EcorePackageImpl.eINSTANCE.getEAttribute();//TODO as? EClass casting required?
				
				static let EATTRIBUTE_EATTRIBUTETYPE = EcorePackageImpl.eINSTANCE.getEAttribute_EAttributeType();
				
				static let EATTRIBUTE_ID = EcorePackageImpl.eINSTANCE.getEAttribute_ID() as? EAttribute;
				
				static let EREFERENCE = EcorePackageImpl.eINSTANCE.getEReference();//TODO as? EClass casting required?
				
				static let EREFERENCE_EOPPOSITE = EcorePackageImpl.eINSTANCE.getEReference_EOpposite();
				static let EREFERENCE_EREFERENCETYPE = EcorePackageImpl.eINSTANCE.getEReference_EReferenceType();
				static let EREFERENCE_EKEYS = EcorePackageImpl.eINSTANCE.getEReference_EKeys();
				
				static let EREFERENCE_CONTAINMENT = EcorePackageImpl.eINSTANCE.getEReference_Containment() as? EAttribute;
				static let EREFERENCE_CONTAINER = EcorePackageImpl.eINSTANCE.getEReference_Container() as? EAttribute;
				static let EREFERENCE_RESOLVEPROXIES = EcorePackageImpl.eINSTANCE.getEReference_ResolveProxies() as? EAttribute;
				static let EBIGDECIMAL = EcorePackageImpl.eINSTANCE.getEBigDecimal();
				static let EBIGINTEGER = EcorePackageImpl.eINSTANCE.getEBigInteger();
				static let EBOOLEAN = EcorePackageImpl.eINSTANCE.getEBoolean();
				static let EBOOLEANOBJECT = EcorePackageImpl.eINSTANCE.getEBooleanObject();
				static let EBYTE = EcorePackageImpl.eINSTANCE.getEByte();
				static let EBYTEARRAY = EcorePackageImpl.eINSTANCE.getEByteArray();
				static let EBYTEOBJECT = EcorePackageImpl.eINSTANCE.getEByteObject();
				static let ECHAR = EcorePackageImpl.eINSTANCE.getEChar();
				static let ECHARACTEROBJECT = EcorePackageImpl.eINSTANCE.getECharacterObject();
				static let EDATE = EcorePackageImpl.eINSTANCE.getEDate();
				static let EDIAGNOSTICCHAIN = EcorePackageImpl.eINSTANCE.getEDiagnosticChain();
				static let EDOUBLE = EcorePackageImpl.eINSTANCE.getEDouble();
				static let EDOUBLEOBJECT = EcorePackageImpl.eINSTANCE.getEDoubleObject();
				static let EELIST = EcorePackageImpl.eINSTANCE.getEEList();
				static let EENUMERATOR = EcorePackageImpl.eINSTANCE.getEEnumerator();
				static let EFEATUREMAP = EcorePackageImpl.eINSTANCE.getEFeatureMap();
				static let EFEATUREMAPENTRY = EcorePackageImpl.eINSTANCE.getEFeatureMapEntry();
				static let EFLOAT = EcorePackageImpl.eINSTANCE.getEFloat();
				static let EFLOATOBJECT = EcorePackageImpl.eINSTANCE.getEFloatObject();
				static let EINT = EcorePackageImpl.eINSTANCE.getEInt();
				static let EINTEGEROBJECT = EcorePackageImpl.eINSTANCE.getEIntegerObject();
				static let EJAVACLASS = EcorePackageImpl.eINSTANCE.getEJavaClass();
				static let EJAVAOBJECT = EcorePackageImpl.eINSTANCE.getEJavaObject();
				static let ELONG = EcorePackageImpl.eINSTANCE.getELong();
				static let ELONGOBJECT = EcorePackageImpl.eINSTANCE.getELongObject();
				static let EMAP = EcorePackageImpl.eINSTANCE.getEMap();
				static let ERESOURCE = EcorePackageImpl.eINSTANCE.getEResource();
				static let ERESOURCESET = EcorePackageImpl.eINSTANCE.getEResourceSet();
				static let ESHORT = EcorePackageImpl.eINSTANCE.getEShort();
				static let ESHORTOBJECT = EcorePackageImpl.eINSTANCE.getEShortObject();
				static let ESTRING = EcorePackageImpl.eINSTANCE.getEString();
				static let ETREEITERATOR = EcorePackageImpl.eINSTANCE.getETreeIterator();
				static let EINVOCATIONTARGETEXCEPTION = EcorePackageImpl.eINSTANCE.getEInvocationTargetException();
			}
	 
}
