
class EFactoryBase 
:EModelElementImpl, EFactory
{
	private var _ePackage:EPackage?;
	var ePackage:EPackage?
	{
		get {
		
			return _ePackage;
		}
		set(value) {
			if let value_ = value as? EPackageImpl{
			
				if let container = _ePackage as? EPackageImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE, baseClass: Mirror(reflecting:EFactory.self), notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE, baseClass: Mirror(reflecting:EFactory.self), notifications: msgs);
						msgs = basicSetEPackage(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.EFACTORY_EPACKAGE , oldValue: value, newValue: value));
			}
			
		}
	}
	func create(eClass:EClass?
	) -> EObject?
	{
	    fatalError("not implemented exception");
	}
	func convertToString(eDataType:EDataType?,
	instanceValue:Any?
	) -> String?
	{
	    fatalError("not implemented exception");
	}
	func createFromString(eDataType:EDataType?,
	literalValue:String?
	) -> Any?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EFACTORY!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EFACTORY_EPACKAGE?:
				if let x = _ePackage as? InternalEObject{
					msgs_ = x.eInverseRemove(otherEnd: self, featureID: EcorePackageImpl.EFACTORY_EPACKAGE, baseClass: Mirror(reflecting: EPackage.self), notifications: msgs_);
				}
				return basicSetEPackage(newobj:otherEnd as? EPackage, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EFACTORY_EPACKAGE?:
				return basicSetEPackage(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEPackage(newobj:EPackage?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _ePackage;
		_ePackage = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EFACTORY_EPACKAGE, oldValue: oldobj, newValue: newobj);
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
			case EcorePackageImpl.EFACTORY_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EFACTORY_EPACKAGE?:
				return ePackage;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EFACTORY_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EFACTORY_EPACKAGE?:
				if let newValue_ = newValue as? EPackage{
					ePackage = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

