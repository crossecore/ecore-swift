
class EClassBase 
:EClassifierImpl, EClass
{
	private var _interface:Bool? = false;
	var interface:Bool?
	{
	get { 
		return _interface;
	}
	set(value) { _interface = value; }
	}
	private var _abstract:Bool? = false;
	var abstract:Bool?
	{
	get { 
		return _abstract;
	}
	set(value) { _abstract = value; }
	}
	private var _eSuperTypes:OrderedSet<EClassImpl>? = nil;
	
	var eSuperTypes:OrderedSet<EClassImpl>?
	{
		get {
			if let x = _eSuperTypes{
				_eSuperTypes = OrderedSet<EClassImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ECLASS_ESUPERTYPES, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ECLASS_ESUPERTYPES);
			}
			return _eSuperTypes!;
			
			
		}
	
	}
	private var _eOperations:OrderedSet<EOperationImpl>? = nil;
	
	var eOperations:OrderedSet<EOperationImpl>?
	{
		get {
			if let x = _eOperations{
				_eOperations = OrderedSet<EOperationImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ECLASS_EOPERATIONS, oppositeFeatureId: EcorePackageImpl.EOPERATION_ECONTAININGCLASS);
			}
			return _eOperations!;
			
			
		}
	
	}
	
	var eAllReferences:OrderedSet<EReferenceImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EReferenceImpl>();
		}
	
	}
	
	var eAllGenericSuperTypes:OrderedSet<EGenericTypeImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EGenericTypeImpl>();
		}
	
	}
	
	var eAllAttributes:OrderedSet<EAttributeImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EAttributeImpl>();
		}
	
	}
	private var _eStructuralFeatures:OrderedSet<EStructuralFeatureImpl>? = nil;
	
	var eStructuralFeatures:OrderedSet<EStructuralFeatureImpl>?
	{
		get {
			if let x = _eStructuralFeatures{
				_eStructuralFeatures = OrderedSet<EStructuralFeatureImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES, oppositeFeatureId: EcorePackageImpl.ESTRUCTURALFEATURE_ECONTAININGCLASS);
			}
			return _eStructuralFeatures!;
			
			
		}
	
	}
	
	var eAttributes:OrderedSet<EAttributeImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EAttributeImpl>();
		}
	
	}
	
	var eReferences:OrderedSet<EReferenceImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EReferenceImpl>();
		}
	
	}
	
	var eAllContainments:OrderedSet<EReferenceImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EReferenceImpl>();
		}
	
	}
	
	var eAllOperations:OrderedSet<EOperationImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EOperationImpl>();
		}
	
	}
	private var _eGenericSuperTypes:OrderedSet<EGenericTypeImpl>? = nil;
	
	var eGenericSuperTypes:OrderedSet<EGenericTypeImpl>?
	{
		get {
			if let x = _eGenericSuperTypes{
				_eGenericSuperTypes = OrderedSet<EGenericTypeImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.ECLASS_EGENERICSUPERTYPES, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ECLASS_EGENERICSUPERTYPES);
			}
			return _eGenericSuperTypes!;
			
			
		}
	
	}
	
	var eAllStructuralFeatures:OrderedSet<EStructuralFeatureImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EStructuralFeatureImpl>();
		}
	
	}
	var eIDAttribute:EAttribute?
	{
		get {
		
			//TODO implement derivation
			return nil;//EAttributeImpl();
		}
	}
	
	var eAllSuperTypes:OrderedSet<EClassImpl>?
	{
		get {
			//TODO implement derivation
			return OrderedSet<EClassImpl>();
		}
	
	}
	func getOperationCount() -> Int?
	{
	    fatalError("not implemented exception");
	}
	func getOverride(operation:EOperation?
	) -> EOperation?
	{
	    fatalError("not implemented exception");
	}
	func isSuperTypeOf(someClass:EClass?
	) -> Bool?
	{
	    fatalError("not implemented exception");
	}
	func getEOperation(operationID:Int?
	) -> EOperation?
	{
	    fatalError("not implemented exception");
	}
	func getFeatureID(feature:EStructuralFeature?
	) -> Int?
	{
	    fatalError("not implemented exception");
	}
	func getFeatureCount() -> Int?
	{
	    fatalError("not implemented exception");
	}
	func getOperationID(operation:EOperation?
	) -> Int?
	{
	    fatalError("not implemented exception");
	}
	func getFeatureType(feature:EStructuralFeature?
	) -> EGenericType?
	{
	    fatalError("not implemented exception");
	}
	func getEStructuralFeature(featureName:String?
	) -> EStructuralFeature?
	{
	    fatalError("not implemented exception");
	}
	func getEStructuralFeature(featureID:Int?
	) -> EStructuralFeature?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ECLASS!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES?:
				return eStructuralFeatures?.basicAdd(element: otherEnd as! EStructuralFeatureImpl, notifications: msgs_);
			case EcorePackageImpl.ECLASS_EOPERATIONS?:
				return eOperations?.basicAdd(element: otherEnd as! EOperationImpl, notifications: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES?:
				return eStructuralFeatures?.basicRemove(element: otherEnd as! EStructuralFeatureImpl, notifications: msgs);
			case EcorePackageImpl.ECLASS_EOPERATIONS?:
				return eOperations?.basicRemove(element: otherEnd as! EOperationImpl, notifications: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.ECLASS_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ECLASS_NAME?:
				return name;
			case EcorePackageImpl.ECLASS_INSTANCECLASSNAME?:
				return instanceClassName;
			case EcorePackageImpl.ECLASS_INSTANCECLASS?:
				return instanceClass;
			case EcorePackageImpl.ECLASS_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.ECLASS_INSTANCETYPENAME?:
				return instanceTypeName;
			case EcorePackageImpl.ECLASS_EPACKAGE?:
				return ePackage;
			case EcorePackageImpl.ECLASS_ETYPEPARAMETERS?:
				return eTypeParameters;
			case EcorePackageImpl.ECLASS_ABSTRACT?:
				return abstract;
			case EcorePackageImpl.ECLASS_INTERFACE?:
				return interface;
			case EcorePackageImpl.ECLASS_ESUPERTYPES?:
				return eSuperTypes;
			case EcorePackageImpl.ECLASS_EOPERATIONS?:
				return eOperations;
			case EcorePackageImpl.ECLASS_EALLATTRIBUTES?:
				return eAllAttributes;
			case EcorePackageImpl.ECLASS_EALLREFERENCES?:
				return eAllReferences;
			case EcorePackageImpl.ECLASS_EREFERENCES?:
				return eReferences;
			case EcorePackageImpl.ECLASS_EATTRIBUTES?:
				return eAttributes;
			case EcorePackageImpl.ECLASS_EALLCONTAINMENTS?:
				return eAllContainments;
			case EcorePackageImpl.ECLASS_EALLOPERATIONS?:
				return eAllOperations;
			case EcorePackageImpl.ECLASS_EALLSTRUCTURALFEATURES?:
				return eAllStructuralFeatures;
			case EcorePackageImpl.ECLASS_EALLSUPERTYPES?:
				return eAllSuperTypes;
			case EcorePackageImpl.ECLASS_EIDATTRIBUTE?:
				return eIDAttribute;
			case EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES?:
				return eStructuralFeatures;
			case EcorePackageImpl.ECLASS_EGENERICSUPERTYPES?:
				return eGenericSuperTypes;
			case EcorePackageImpl.ECLASS_EALLGENERICSUPERTYPES?:
				return eAllGenericSuperTypes;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ECLASS_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASS_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASS_INSTANCECLASSNAME?:
				if let newValue_ = newValue as? String{
					instanceClassName = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASS_INSTANCETYPENAME?:
				if let newValue_ = newValue as? String{
					instanceTypeName = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASS_ETYPEPARAMETERS?:
				eTypeParameters?.clear();
				if let items = newValue as? OrderedSet<ETypeParameterImpl>{
					eTypeParameters?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASS_ABSTRACT?:
				if let newValue_ = newValue as? Bool{
					abstract = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASS_INTERFACE?:
				if let newValue_ = newValue as? Bool{
					interface = newValue_;
				}
				return;
			case EcorePackageImpl.ECLASS_ESUPERTYPES?:
				eSuperTypes?.clear();
				if let items = newValue as? OrderedSet<EClassImpl>{
					eSuperTypes?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASS_EOPERATIONS?:
				eOperations?.clear();
				if let items = newValue as? OrderedSet<EOperationImpl>{
					eOperations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASS_ESTRUCTURALFEATURES?:
				eStructuralFeatures?.clear();
				if let items = newValue as? OrderedSet<EStructuralFeatureImpl>{
					eStructuralFeatures?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ECLASS_EGENERICSUPERTYPES?:
				eGenericSuperTypes?.clear();
				if let items = newValue as? OrderedSet<EGenericTypeImpl>{
					eGenericSuperTypes?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

