
class EAnnotationBase 
:EModelElementImpl, EAnnotation
{
	private var _source:String? = "";
	var source:String?
	{
	get { 
		return _source;
	}
	set(value) { _source = value; }
	}
	private var _details:OrderedSet<EStringToStringMapEntryImpl>? = nil;
	
	var details:OrderedSet<EStringToStringMapEntryImpl>?
	{
		get {
			if let x = _details{
				_details = OrderedSet<EStringToStringMapEntryImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EANNOTATION_DETAILS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EANNOTATION_DETAILS);
			}
			return _details!;
			
			
		}
	
	}
	private var _references:OrderedSet<EObjectImpl>? = nil;
	
	var references:OrderedSet<EObjectImpl>?
	{
		get {
			if let x = _references{
				_references = OrderedSet<EObjectImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EANNOTATION_REFERENCES, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EANNOTATION_REFERENCES);
			}
			return _references!;
			
			
		}
	
	}
	var eModelElement:EModelElement?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.EANNOTATION_EMODELELEMENT) ? eInternalContainer() as? EModelElement : nil;
		}
		set(value) {
			if let value_ = value as? EModelElementImpl{
			
				if let container = eInternalContainer() as? EModelElementImpl{
			
					if(value_ != container){
						var msgs:NotificationChain? = nil;
						msgs = container.eInverseRemove(otherEnd: self, featureID: EcorePackageImpl.EMODELELEMENT_EANNOTATIONS, baseClass: Mirror(reflecting:EAnnotation.self), notifications: msgs);
						msgs = value_.eInverseAdd(otherEnd: self, featureID: EcorePackageImpl.EMODELELEMENT_EANNOTATIONS, baseClass: Mirror(reflecting:EAnnotation.self), notifications: msgs);
						msgs = basicSetEModelElement(newobj: value, msgs: msgs);
						if let msgs_ = msgs{
							msgs_.dispatch();
						}
					}
				}
			}
			if (eNotificationRequired()){
				eNotify(notification:ENotificationImpl(notifier:self, eventType: NotificationImpl.SET,featureID: EcorePackageImpl.EANNOTATION_EMODELELEMENT , oldValue: value, newValue: value));
			}
			
		}
	}
	private var _contents:OrderedSet<EObjectImpl>? = nil;
	
	var contents:OrderedSet<EObjectImpl>?
	{
		get {
			if let x = _contents{
				_contents = OrderedSet<EObjectImpl>(owner: self as InternalEObject, featureId: EcorePackageImpl.EANNOTATION_CONTENTS, oppositeFeatureId: BasicEObjectImpl.EOPPOSITE_FEATURE_BASE - EcorePackageImpl.EANNOTATION_CONTENTS);
			}
			return _contents!;
			
			
		}
	
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EANNOTATION!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EANNOTATION_EMODELELEMENT?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEModelElement(newobj:otherEnd as? EModelElement, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EANNOTATION_EMODELELEMENT?:
				return basicSetEModelElement(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEModelElement(newobj:EModelElement?, msgs:NotificationChain?) -> NotificationChain?{
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
			case EcorePackageImpl.EANNOTATION_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EANNOTATION_SOURCE?:
				return source;
			case EcorePackageImpl.EANNOTATION_DETAILS?:
				return details;
			case EcorePackageImpl.EANNOTATION_EMODELELEMENT?:
				return eModelElement;
			case EcorePackageImpl.EANNOTATION_CONTENTS?:
				return contents;
			case EcorePackageImpl.EANNOTATION_REFERENCES?:
				return references;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EANNOTATION_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EANNOTATION_SOURCE?:
				if let newValue_ = newValue as? String{
					source = newValue_;
				}
				return;
			case EcorePackageImpl.EANNOTATION_DETAILS?:
				details?.clear();
				if let items = newValue as? OrderedSet<EStringToStringMapEntryImpl>{
					details?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EANNOTATION_EMODELELEMENT?:
				if let newValue_ = newValue as? EModelElement{
					eModelElement = newValue_;
				}
				return;
			case EcorePackageImpl.EANNOTATION_CONTENTS?:
				contents?.clear();
				if let items = newValue as? OrderedSet<EObjectImpl>{
					contents?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EANNOTATION_REFERENCES?:
				references?.clear();
				if let items = newValue as? OrderedSet<EObjectImpl>{
					references?.addAll(items: items);
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

