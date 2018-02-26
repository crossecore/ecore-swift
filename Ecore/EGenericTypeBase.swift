
class EGenericTypeBase 
:BasicEObjectImpl, EGenericType
{
	private var _eTypeArguments:OrderedSet<EGenericTypeImpl>? = nil;
	
	var eTypeArguments:OrderedSet<EGenericTypeImpl>?
	{
		get {
			if let x = _eTypeArguments{
				_eTypeArguments = OrderedSet<EGenericTypeImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EGENERICTYPE_ETYPEARGUMENTS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EGENERICTYPE_ETYPEARGUMENTS);
			}
			return _eTypeArguments!;
			
			
		}
	
	}
	private var _eTypeParameter:ETypeParameter?;
	var eTypeParameter:ETypeParameter?
	{
		get {
		
			return _eTypeParameter;
		}
		set(value) {
			var oldvalue = _eTypeParameter;
			_eTypeParameter = value;
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_ETYPEPARAMETER , oldValue: oldvalue, newValue: value));
			}
		}
	}
	private var _eUpperBound:EGenericType?;
	var eUpperBound:EGenericType?
	{
		get {
		
			return _eUpperBound;
		}
		set(value) {
			if let value_ = value as? EGenericTypeImpl{
			
				if let container = _eUpperBound as? EGenericTypeImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EGENERICTYPE_EUPPERBOUND, baseClass: nil, notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EGENERICTYPE_EUPPERBOUND, baseClass: nil, notifications: msgs);
						msgs = basicSetEUpperBound(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.EGENERICTYPE_EUPPERBOUND , oldValue: value, newValue: value));
			}
			
		}
	}
	private var _eLowerBound:EGenericType?;
	var eLowerBound:EGenericType?
	{
		get {
		
			return _eLowerBound;
		}
		set(value) {
			if let value_ = value as? EGenericTypeImpl{
			
				if let container = _eLowerBound as? EGenericTypeImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EGENERICTYPE_ELOWERBOUND, baseClass: nil, notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EGENERICTYPE_ELOWERBOUND, baseClass: nil, notifications: msgs);
						msgs = basicSetELowerBound(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.EGENERICTYPE_ELOWERBOUND , oldValue: value, newValue: value));
			}
			
		}
	}
	var eRawType:EClassifier?
	{
		get {
		
			//TODO implement derivation
			return nil;//EClassifierImpl();
		}
	}
	private var _eClassifier:EClassifier?;
	var eClassifier:EClassifier?
	{
		get {
		
			return _eClassifier;
		}
		set(value) {
			var oldvalue = _eClassifier;
			_eClassifier = value;
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_ECLASSIFIER , oldValue: oldvalue, newValue: value));
			}
		}
	}
	func isInstance(object:Any?
	) -> Bool?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EGENERICTYPE!;
	}
	
	
	func basicSetETypeParameter(newobj:ETypeParameter?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eTypeParameter;
		_eTypeParameter = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_ETYPEPARAMETER, oldValue: oldobj, newValue: newobj);
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
	func basicSetEUpperBound(newobj:EGenericType?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eUpperBound;
		_eUpperBound = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_EUPPERBOUND, oldValue: oldobj, newValue: newobj);
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
	func basicSetELowerBound(newobj:EGenericType?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eLowerBound;
		_eLowerBound = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_ELOWERBOUND, oldValue: oldobj, newValue: newobj);
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
	func basicSetEClassifier(newobj:EClassifier?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eClassifier;
		_eClassifier = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EGENERICTYPE_ECLASSIFIER, oldValue: oldobj, newValue: newobj);
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
			case EcorePackageImpl.EGENERICTYPE_EUPPERBOUND?:
				return eUpperBound;
			case EcorePackageImpl.EGENERICTYPE_ETYPEARGUMENTS?:
				return eTypeArguments;
			case EcorePackageImpl.EGENERICTYPE_ERAWTYPE?:
				return eRawType;
			case EcorePackageImpl.EGENERICTYPE_ELOWERBOUND?:
				return eLowerBound;
			case EcorePackageImpl.EGENERICTYPE_ETYPEPARAMETER?:
				return eTypeParameter;
			case EcorePackageImpl.EGENERICTYPE_ECLASSIFIER?:
				return eClassifier;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EGENERICTYPE_EUPPERBOUND?:
				if let newValue_ = newValue as? EGenericType{
					eUpperBound = newValue_;
				}
				return;
			case EcorePackageImpl.EGENERICTYPE_ETYPEARGUMENTS?:
				eTypeArguments?.clear();
				if let items = newValue as? OrderedSet<EGenericTypeImpl>{
					eTypeArguments?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EGENERICTYPE_ELOWERBOUND?:
				if let newValue_ = newValue as? EGenericType{
					eLowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.EGENERICTYPE_ETYPEPARAMETER?:
				if let newValue_ = newValue as? ETypeParameter{
					eTypeParameter = newValue_;
				}
				return;
			case EcorePackageImpl.EGENERICTYPE_ECLASSIFIER?:
				if let newValue_ = newValue as? EClassifier{
					eClassifier = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

