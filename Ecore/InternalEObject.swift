    protocol InternalEObject : EObject
    {


        func eNotificationRequired()->Bool


        func eURIFragmentSegment( eFeature:EStructuralFeature?,  eObject:EObject?)->String?;

        func eObjectForURIFragmentSegment( uriFragmentSegment:String?)->EObject?;

        func eSetClass( eClass:EClass?);

        func eBaseStructuralFeatureID( derivedFeatureID:Int?, baseClass:Mirror?) -> Int?;


        func eContainerFeatureID()->Int?;

  
        func eDerivedStructuralFeatureID( baseFeatureID:Int?, baseClass:Mirror?)->Int?;


        func eDerivedOperationID( baseOperationID:Int?,  baseClass:Mirror?)->Int?


        func eInverseAdd( otherEnd:InternalEObject?, featureID:Int?, baseClass:Mirror?,  notifications:NotificationChain?)->NotificationChain?;

        func eInverseRemove( otherEnd:InternalEObject?, featureID:Int?, baseClass:Mirror?,  notifications:NotificationChain?)->NotificationChain?;


        func eBasicSetContainer( newContainer:InternalEObject?,  newContainerFeatureID:Int?,  notifications:NotificationChain?)->NotificationChain?;

		
        func eBasicRemoveFromContainer( notifications:NotificationChain?)->NotificationChain?;


        func eResolveProxy(proxy:InternalEObject?)->EObject?;


        func  eInternalContainer()->InternalEObject?;



        func eGet( feature:EStructuralFeature?, resolve:Bool?,  coreType:Bool?)->Any?;

        func eGet( featureID:Int?, resolve:Bool?, coreType:Bool?)->Any?;

        func eSet( featureID:Int?, newValue:Any?);


        func eUnset(featureID:Int?);

		
        func eIsSet( featureID:Int?)->Bool?;

    }
