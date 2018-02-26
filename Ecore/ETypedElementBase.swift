
class ETypedElementBase 
:ENamedElementImpl, ETypedElement
{
	private var _unique:Bool? = false;
	var unique:Bool?
	{
	get { 
		return _unique;
	}
	set(value) { _unique = value; }
	}
	var many:Bool?
	{
	get { 
		//TODO implement derivation
		return nil;//Bool();
	}
	}
	private var _ordered:Bool? = false;
	var ordered:Bool?
	{
	get { 
		return _ordered;
	}
	set(value) { _ordered = value; }
	}
	private var _upperBound:Int? = 0;
	var upperBound:Int?
	{
	get { 
		return _upperBound;
	}
	set(value) { _upperBound = value; }
	}
	private var _lowerBound:Int? = 0;
	var lowerBound:Int?
	{
	get { 
		return _lowerBound;
	}
	set(value) { _lowerBound = value; }
	}
	var required:Bool?
	{
	get { 
		//TODO implement derivation
		return nil;//Bool();
	}
	}
	private var _eGenericType:EGenericType?;
	var eGenericType:EGenericType?
	{
		get {
		
			return _eGenericType;
		}
		set(value) {
			if let value_ = value as? EGenericTypeImpl{
			
				if let container = _eGenericType as? EGenericTypeImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE, baseClass: nil, notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE, baseClass: nil, notifications: msgs);
						msgs = basicSetEGenericType(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE , oldValue: value, newValue: value));
			}
			
		}
	}
	private var _eType:EClassifier?;
	var eType:EClassifier?
	{
		get {
		
			return _eType;
		}
		set(value) {
			var oldvalue = _eType;
			_eType = value;
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.ETYPEDELEMENT_ETYPE , oldValue: oldvalue, newValue: value));
			}
		}
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.ETYPEDELEMENT!;
	}
	
	
	func basicSetEGenericType(newobj:EGenericType?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eGenericType;
		_eGenericType = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE, oldValue: oldobj, newValue: newobj);
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
	func basicSetEType(newobj:EClassifier?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eType;
		_eType = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.ETYPEDELEMENT_ETYPE, oldValue: oldobj, newValue: newobj);
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
			case EcorePackageImpl.ETYPEDELEMENT_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.ETYPEDELEMENT_NAME?:
				return name;
			case EcorePackageImpl.ETYPEDELEMENT_ORDERED?:
				return ordered;
			case EcorePackageImpl.ETYPEDELEMENT_UNIQUE?:
				return unique;
			case EcorePackageImpl.ETYPEDELEMENT_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.ETYPEDELEMENT_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.ETYPEDELEMENT_MANY?:
				return many;
			case EcorePackageImpl.ETYPEDELEMENT_REQUIRED?:
				return required;
			case EcorePackageImpl.ETYPEDELEMENT_ETYPE?:
				return eType;
			case EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE?:
				return eGenericType;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.ETYPEDELEMENT_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.ETYPEDELEMENT_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

