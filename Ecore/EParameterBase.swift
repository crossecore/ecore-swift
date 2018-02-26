
class EParameterBase 
:ETypedElementImpl, EParameter
{
	var eOperation:EOperation?
	{
		get {
		
			return (eContainerFeatureID() == EcorePackageImpl.EPARAMETER_EOPERATION) ? eInternalContainer() as? EOperation : nil;
		}
	}

	override init(){
		super.init();
	}
	
	override func eStaticClass() -> EClass{
		return EcorePackageImpl.Literals.EPARAMETER!;
	}
	
	override func eInverseAdd(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		var msgs_ = msgs;
		switch featureID {
			case EcorePackageImpl.EPARAMETER_EOPERATION?:
				if let eInternalContainer_ = eInternalContainer() {
					msgs_ = eBasicRemoveFromContainer(notifications:msgs_);
				}
				return basicSetEOperation(newobj:otherEnd as? EOperation, msgs: msgs_);
			default:
				return super.eInverseAdd(otherEnd: otherEnd, featureID: featureID, msgs: msgs_);
		}
		
	}
	
	override func eInverseRemove(otherEnd:InternalEObject?, featureID:Int?, msgs:NotificationChain?) -> NotificationChain?{
		switch featureID {
			case EcorePackageImpl.EPARAMETER_EOPERATION?:
				return basicSetEOperation(newobj: nil, msgs: msgs);
			default:
				return super.eInverseRemove(otherEnd: otherEnd, featureID: featureID, msgs: msgs);
		}
	}
	
	func basicSetEOperation(newobj:EOperation?, msgs:NotificationChain?) -> NotificationChain?{
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
			case EcorePackageImpl.EPARAMETER_EANNOTATIONS?:
				return eAnnotations;
			case EcorePackageImpl.EPARAMETER_NAME?:
				return name;
			case EcorePackageImpl.EPARAMETER_ORDERED?:
				return ordered;
			case EcorePackageImpl.EPARAMETER_UNIQUE?:
				return unique;
			case EcorePackageImpl.EPARAMETER_LOWERBOUND?:
				return lowerBound;
			case EcorePackageImpl.EPARAMETER_UPPERBOUND?:
				return upperBound;
			case EcorePackageImpl.EPARAMETER_MANY?:
				return many;
			case EcorePackageImpl.EPARAMETER_REQUIRED?:
				return required;
			case EcorePackageImpl.EPARAMETER_ETYPE?:
				return eType;
			case EcorePackageImpl.EPARAMETER_EGENERICTYPE?:
				return eGenericType;
			case EcorePackageImpl.EPARAMETER_EOPERATION?:
				return eOperation;
			default:
				return super.eGet(featureID: featureID, resolve: resolve, coreType: coreType);
		}
	}
	
	
	override func eSet(featureID:Int?, newValue:Any?) {
		switch featureID {
			case EcorePackageImpl.EPARAMETER_EANNOTATIONS?:
				eAnnotations?.clear();
				if let items = newValue as? OrderedSet<EAnnotationImpl>{
					eAnnotations?.addAll(items: items);
				}
				return;
			case EcorePackageImpl.EPARAMETER_NAME?:
				if let newValue_ = newValue as? String{
					name = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_ORDERED?:
				if let newValue_ = newValue as? Bool{
					ordered = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_UNIQUE?:
				if let newValue_ = newValue as? Bool{
					unique = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_LOWERBOUND?:
				if let newValue_ = newValue as? Int{
					lowerBound = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_UPPERBOUND?:
				if let newValue_ = newValue as? Int{
					upperBound = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_ETYPE?:
				if let newValue_ = newValue as? EClassifier{
					eType = newValue_;
				}
				return;
			case EcorePackageImpl.EPARAMETER_EGENERICTYPE?:
				if let newValue_ = newValue as? EGenericType{
					eGenericType = newValue_;
				}
				return;
			default:
				super.eSet(featureID: featureID, newValue: newValue);
		}
	}
}

