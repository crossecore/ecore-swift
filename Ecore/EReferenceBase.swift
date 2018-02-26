
class EReferenceBase 
:EStructuralFeatureImpl, EReference
{
	private var _containment:Bool? = false;
	var containment:Bool?
	{
	get { 
		return _containment;
	}
	set(value) { _containment = value; }
	}
	private var _resolveProxies:Bool? = false;
	var resolveProxies:Bool?
	{
	get { 
		return _resolveProxies;
	}
	set(value) { _resolveProxies = value; }
	}
	var container:Bool?
	{
	get { 
		//TODO implement derivation
		return nil;//Bool();
	}
	}
	private var _eKeys:OrderedSet<EAttributeImpl>? = nil;
	
	var eKeys:OrderedSet<EAttributeImpl>?
	{
		get {
			if let x = _eKeys{
				_eKeys = OrderedSet<EAttributeImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EREFERENCE_EKEYS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EREFERENCE_EKEYS);
			}
			return _eKeys!;
			
			
		}
	
	}
	private var _eOpposite:EReference?;
	var eOpposite:EReference?
	{
		get {
		
			return _eOpposite;
		}
		set(value) {
			var oldvalue = _eOpposite;
			_eOpposite = value;
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EREFERENCE_EOPPOSITE , oldValue: oldvalue, newValue: value));
			}
		}
	}
	var eReferenceType:EClass?
	{
		get {
		
			//TODO implement derivation
			return nil;//EClassImpl();
		}
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EREFERENCE!;
	}
	
	
	func basicSetEOpposite(newobj:EReference?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eOpposite;
		_eOpposite = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EREFERENCE_EOPPOSITE, oldValue: oldobj, newValue: newobj);
			if let msgs__=msgs_{
			    msgs__.add(notification: notification);
			    msgs_ = msgs__;
			}
			else{
			    msgs_ = notification;
			}
		}
		return msgs_;
	}
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EREFERENCE_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EREFERENCE_NAME?:
				return name;
			case EcorePackageImpl.EREFERENCE_ORDERED?:
				return ordered;
			case EcorePackageImpl.EREFERENCE_UNIQUE?:
				return unique;
			case EcorePackageImpl.EREFERENCE_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.EREFERENCE_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.EREFERENCE_MANY?:
				return many;
			case EcorePackageImpl.EREFERENCE_REQUIRED?:
				return required;
			case EcorePackageImpl.EREFERENCE_ETYPE?:
				return eType;
			case EcorePackageImpl.EREFERENCE_EGENERICTYPE?:
				return eGenericType;
			case EcorePackageImpl.EREFERENCE_CHANGEABLE?:
				return changeable;
			case EcorePackageImpl.EREFERENCE_VOLATILE?:
				return volatile;
			case EcorePackageImpl.EREFERENCE_TRANSIENT?:
				return transient;
			case EcorePackageImpl.EREFERENCE_DEFAULTVALUELITERAL?:
				return defaultValueLiteral;
			case EcorePackageImpl.EREFERENCE_DEFAULTVALUE?:
				return defaultValue;
			case EcorePackageImpl.EREFERENCE_UNSETTABLE?:
				return unsettable;
			case EcorePackageImpl.EREFERENCE_DERIVED?:
				return derived;
			case EcorePackageImpl.EREFERENCE_ECONTAININGCLASS?:
				return eContainingClass;
			case EcorePackageImpl.EREFERENCE_CONTAINMENT?:
				return containment;
			case EcorePackageImpl.EREFERENCE_CONTAINER?:
				return container;
			case EcorePackageImpl.EREFERENCE_RESOLVEPROXIES?:
				return resolveProxies;
			case EcorePackageImpl.EREFERENCE_EOPPOSITE?:
				return eOpposite;
			case EcorePackageImpl.EREFERENCE_EREFERENCETYPE?:
				return eReferenceType;
			case EcorePackageImpl.EREFERENCE_EKEYS?:
				return eKeys;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EREFERENCE_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EREFERENCE_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_CHANGEABLE?:
				if let newValue_ = newValue as? Bool{
					changeable = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_VOLATILE?:
				if let newValue_ = newValue as? Bool{
					volatile = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_TRANSIENT?:
				if let newValue_ = newValue as? Bool{
					transient = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_DEFAULTVALUELITERAL?:
				if let newValue_ = newValue as? String{
					defaultValueLiteral = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_UNSETTABLE?:
				if let newValue_ = newValue as? Bool{
					unsettable = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_DERIVED?:
				if let newValue_ = newValue as? Bool{
					derived = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_CONTAINMENT?:
				if let newValue_ = newValue as? Bool{
					containment = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_RESOLVEPROXIES?:
				if let newValue_ = newValue as? Bool{
					resolveProxies = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_EOPPOSITE?:
				if let newValue_ = newValue as? EReference{
					eOpposite = newValue_;
				}
				return;
			case EcorePackageImpl.EREFERENCE_EKEYS?:
				eKeys?.clear();
				if let items = newValue as? OrderedSet<EAttributeImpl>{
					eKeys?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

