
class EPackageBase 
:ENamedElementImpl, EPackage
{
	private var _nsURI:String? = "";
	var nsURI:String?
	{
	get { 
		return _nsURI;
	}
	set(value) { _nsURI = value; }
	}
	private var _nsPrefix:String? = "";
	var nsPrefix:String?
	{
	get { 
		return _nsPrefix;
	}
	set(value) { _nsPrefix = value; }
	}
	private var _eClassifiers:OrderedSet<EClassifierImpl>? = nil;
	
	var eClassifiers:OrderedSet<EClassifierImpl>?
	{
		get {
			if let x = _eClassifiers{
				_eClassifiers = OrderedSet<EClassifierImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EPACKAGE_ECLASSIFIERS, oppositeFeatureId: EcorePackageImpl.ECLASSIFIER_EPACKAGE);
			}
			return _eClassifiers!;
			
			
		}
	
	}
	private var _eFactoryInstance:EFactory?;
	var eFactoryInstance:EFactory?
	{
		get {
		
			return _eFactoryInstance;
		}
		set(value) {
			if let value_ = value as? EFactoryImpl{
			
				if let container = _eFactoryInstance as? EFactoryImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: EcorePackageImpl.EFACTORY_EPACKAGE, baseClass: Mirror(reflecting:EPackage.self), notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: EcorePackageImpl.EFACTORY_EPACKAGE, baseClass: Mirror(reflecting:EPackage.self), notifications: msgs);
						msgs = basicSetEFactoryInstance(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE , oldValue: value, newValue: value));
			}
			
		}
	}
	private var _eSubpackages:OrderedSet<EPackageImpl>? = nil;
	
	var eSubpackages:OrderedSet<EPackageImpl>?
	{
		get {
			if let x = _eSubpackages{
				_eSubpackages = OrderedSet<EPackageImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EPACKAGE_ESUBPACKAGES, oppositeFeatureId: EcorePackageImpl.EPACKAGE_ESUPERPACKAGE);
			}
			return _eSubpackages!;
			
			
		}
	
	}
	var eSuperPackage:EPackage?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.EPACKAGE_ESUPERPACKAGE) ? eInternalContainer() as? EPackage : nil;
		}
	}
	func getEClassifier(name:String?
	) -> EClassifier?
	{
	    fatalError("not implemented exception");
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EPACKAGE!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EPACKAGE_ECLASSIFIERS?:
				return eClassifiers?.basicAdd(element: otherEnd as! EClassifierImpl, notifications: msgs_);
			case EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE?:
				if let x = _eFactoryInstance as? InternalEObject{
					msgs_ = x.eInverseRemove(otherEnd: self, featureID: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE, baseClass: Mirror(reflecting: EFactory.self), notifications: msgs_);
				}
				return basicSetEFactoryInstance(newobj:otherEnd as? EFactory, msgs: msgs_);
			case EcorePackageImpl.EPACKAGE_ESUBPACKAGES?:
				return eSubpackages?.basicAdd(element: otherEnd as! EPackageImpl, notifications: msgs_);
			case EcorePackageImpl.EPACKAGE_ESUPERPACKAGE?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetESuperPackage(newobj:otherEnd as? EPackage, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EPACKAGE_ECLASSIFIERS?:
				return eClassifiers?.basicRemove(element: otherEnd as! EClassifierImpl, notifications: msgs);
			case EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE?:
				return basicSetEFactoryInstance(newobj: nil, msgs: msgs);
			case EcorePackageImpl.EPACKAGE_ESUBPACKAGES?:
				return eSubpackages?.basicRemove(element: otherEnd as! EPackageImpl, notifications: msgs);
			case EcorePackageImpl.EPACKAGE_ESUPERPACKAGE?:
				return basicSetESuperPackage(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEFactoryInstance(newobj:EFactory?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_:NotificationChain? = msgs;
		
		let oldobj = _eFactoryInstance;
		_eFactoryInstance = newobj;
		if (eNotificationRequired()) {
			var notification = ENotificationImpl(notifier: self, eventType: NotificationImpl.SET, featureID: EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE, oldValue: oldobj, newValue: newobj);
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
	func basicSetESuperPackage(newobj:EPackage?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		if let newobj_ = newobj as? InternalEObject{
			msgs_ = eBasicSetContainer(newContainer:newobj_, newContainerFeatureID:EcorePackageImpl.EANNOTATION_EMODELELEMENT, notifications:msgs);
		}
		else{
			msgs_ = eBasicSetContainer(newContainer:nil, newContainerFeatureID:EcorePackageImpl.EANNOTATION_EMODELELEMENT, notifications:msgs);
		}
		return msgs_;
	}
	
	override func eGet(featureID:Int?, resolve:Bool?, coreType:Bool?) -> Any?{
		switch (featureID) {
			case EcorePackageImpl.EPACKAGE_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EPACKAGE_NAME?:
				return name;
			case EcorePackageImpl.EPACKAGE_NSURI?:
				return nsURI;
			case EcorePackageImpl.EPACKAGE_NSPREFIX?:
				return nsPrefix;
			case EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE?:
				return eFactoryInstance;
			case EcorePackageImpl.EPACKAGE_ECLASSIFIERS?:
				return eClassifiers;
			case EcorePackageImpl.EPACKAGE_ESUBPACKAGES?:
				return eSubpackages;
			case EcorePackageImpl.EPACKAGE_ESUPERPACKAGE?:
				return eSuperPackage;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EPACKAGE_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EPACKAGE_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EPACKAGE_NSURI?:
				if let newValue_ = newValue as? String{
					nsURI = newValue_;
				}
				return;
			case EcorePackageImpl.EPACKAGE_NSPREFIX?:
				if let newValue_ = newValue as? String{
					nsPrefix = newValue_;
				}
				return;
			case EcorePackageImpl.EPACKAGE_EFACTORYINSTANCE?:
				if let newValue_ = newValue as? EFactory{
					eFactoryInstance = newValue_;
				}
				return;
			case EcorePackageImpl.EPACKAGE_ECLASSIFIERS?:
				eClassifiers?.clear();
				if let items = newValue as? OrderedSet<EClassifierImpl>{
					eClassifiers?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EPACKAGE_ESUBPACKAGES?:
				eSubpackages?.clear();
				if let items = newValue as? OrderedSet<EPackageImpl>{
					eSubpackages?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

