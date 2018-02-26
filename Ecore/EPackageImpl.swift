class EPackageImpl
: EPackageBase
{
    
    var ecoreFactory:EcoreFactory;
    var ecorePackage:EcorePackage;
    
    public let IS_ABSTRACT:Bool = true;
    public let IS_INTERFACE:Bool = true;
    public let IS_GENERATED_INSTANCE_CLASS:Bool = true;
    
    override init(){
        ecoreFactory = EcoreFactoryImpl.eINSTANCE;
        ecorePackage = EcorePackageImpl.eINSTANCE;
    }
    
    /*
    init(packageURI:String, factory:EFactory){
        super.init();
        if(factory as! EcoreFactoryImpl == EcoreFactoryImpl.eINSTANCE as! EcoreFactoryImpl){
            self.ecorePackage = self as! EcorePackage;
            self.ecoreFactory = factory as! EcoreFactoryImpl;
        }
        else{
            self.ecoreFactory = EcoreFactoryImpl.eINSTANCE;
            self.ecorePackage = EcorePackageImpl.eINSTANCE;
        }
    }
    */
    
    func createEClass(id:Int)->EClass
    {
        let c = ecoreFactory.createEClass() as! EClassImpl;
        c.setClassifierID(id: id);
        eClassifiers?.add(element: c);
        return c;
    }
    
    func createEEnum(id:Int)->EEnum
    {
        let e = ecoreFactory.createEEnum() as! EEnumImpl;
        e.setClassifierID(id: id);
        eClassifiers?.add(element: e);
        return e;
    }
    
    func createEDataType(id:Int)->EDataType
    {
        let d = ecoreFactory.createEDataType() as! EDataTypeImpl;
        d.setClassifierID(id: id);
        eClassifiers?.add(element: d);
        return d;
    }
    
    func createEAttribute(owner:EClass, id:Int)
    {
        var a = ecoreFactory.createEAttribute() as! EAttributeImpl;
        a.setFeatureID(id: id);
        owner.eStructuralFeatures?.add(element: a);
    }
    
    func createEReference(owner:EClass, id:Int)
    {
        var r = ecoreFactory.createEReference() as! EReferenceImpl;
        r.setFeatureID(id: id);
        owner.eStructuralFeatures?.add(element: r);
    }
    
    func createEOperation(owner:EClass, id:Int)
    {
        var o = ecoreFactory.createEOperation() as! EOperationImpl;
        o.setOperationID(id: id);
        owner.eOperations?.add(element: o);
    }
    
    
    func initEClass(c:EClass, instanceClass:Mirror, name:String, isAbstract:Bool, isInterface:Bool, isGenerated:Bool)->EClass
    {
        
        var c_ = c;
        initEClassifier(o: c_, metaObject: ecorePackage.getEClass()!, instanceClass: instanceClass, name: name, isGenerated: isGenerated);
        c_.abstract = isAbstract;
        c_.interface = isInterface;
        return c_;
    }
    
    func initEClass(c:EClass, instanceClass:Mirror, name:String, isAbstract:Bool, isInterface:Bool, isGenerated:Bool, instanceTypeName:String?)->EClass
    {
        
        initEClass(c: c, instanceClass: instanceClass, name: name, isAbstract: isAbstract, isInterface: isInterface, isGenerated: isGenerated);
        if let instanceTypeName_ = instanceTypeName
        {
            setInstanceTypeName(eClassifier: c, instanceTypeName: instanceTypeName_);
        }
        return c;
    }
    
    func initEEnum(e:EEnum, instanceClass:Mirror, name:String)->EEnum
    {
        initEClassifier(o: e, metaObject: ecorePackage.getEEnum()!, instanceClass: instanceClass, name: name, isGenerated: true);
        return e;
    }
    
    public static let IS_SERIALIZABLE:Bool = true;
    
    func initEDataType(d:EDataType, instanceClass:Mirror, name:String, isSerializable:Bool)->EDataType
    {
        var d_ = d;
        initEClassifier(o: d_, metaObject: ecorePackage.getEDataType()!, instanceClass: instanceClass, name: name, isGenerated: false);
        d_.serializable = isSerializable;
        return d_;
    }
    
    func initEDataType(d:EDataType, instanceClass:Mirror, name:String, isSerializable:Bool, isGenerated:Bool)->EDataType
    {
        var d_ = d;
        initEClassifier(o: d_, metaObject: ecorePackage.getEDataType()!, instanceClass: instanceClass, name: name, isGenerated: isGenerated);
        d_.serializable = isSerializable;
        return d_;
    }
    
    func initEDataType
        ( d:EDataType, instanceClass:Mirror, name:String, isSerializable:Bool, isGenerated:Bool, instanceTypeName:String?)->EDataType
    {
        var d_ = d;
        initEDataType(d: d_, instanceClass: instanceClass, name: name, isSerializable: isSerializable, isGenerated: isGenerated);
        if let instanceTypeName_ = instanceTypeName
        {
            setInstanceTypeName(eClassifier: d_, instanceTypeName: instanceTypeName_);
        }
        return d_;
    }
    
    private func initEClassifier( o:EClassifier, metaObject:EClass, instanceClass:Mirror?, name:String)
    {
        var o_ = o;
        o_.name = name;
        if let instanceClass_ = instanceClass
        {
            //hack: Originally setInstanceClass was defined manually in the EClassifier interface. Manual changes to the interface are not allowed anymore.
            (o as! EClassifierImpl).setInstanceClass(value: instanceClass_);
        }
    }
    
    private func initEClassifier(o:EClassifier, metaObject:EClass, instanceClass:Mirror?, name:String, isGenerated:Bool)
    {
        var o_ = o;
        o_.name = name;
        if let instanceClass_ = instanceClass
        {
        //hack: Originally setInstanceClass was defined manually in the EClassifier interface. Manual changes to the interface are not allowed anymore.
            (o as! EClassifierImpl).setInstanceClass(value: instanceClass_);
        }
        if (isGenerated)
        {
            setGeneratedClassName(eClassifier: o_);
        }
    }
    
    public func setInstanceClass(value:Mirror?)
{
    /*
     if (value == null)
     {
     setInstanceClassNameGen(null);
     basicSetInstanceTypeName(null);
     }
     else if (value.isArray())
     {
     String indices = "[]";
     for (Class <?> component = value.getComponentType(); ; component = component.getComponentType())
     {
     if (!component.isArray())
     {
     String name = (component.getName() + indices).intern();
     setInstanceClassNameGen(name);
     basicSetInstanceTypeName(name);
     break;
     }
     indices += "[]";
     }
     }
     else
     {
     String name = value.getName().intern();
     setInstanceClassNameGen(name);
     basicSetInstanceTypeName(name);
     }
     
     setInstanceClassGen(value);
     */
    }
    
    func setGeneratedClassName( eClassifier:EClassifier)
    {
        //eClassifier.setGeneratedInstanceClass(true);
        
    }
    
    func setInstanceTypeName(eClassifier:EClassifier, instanceTypeName:String)
    {
        //eClassifier.basicSetInstanceTypeName(instanceTypeName);
    }
    
    
    
    public let IS_DERIVED = true;
    public let IS_TRANSIENT = true;
    public let IS_VOLATILE = true;
    public let IS_CHANGEABLE = true;
    public let IS_UNSETTABLE = true;
    public let IS_UNIQUE = true;
    public let IS_ID = true;
    public let IS_ORDERED = true;
    
    func initEAttribute
        (a:EAttribute,
         type:EClassifier,
          name:String,
          defaultValue:String?,
          lowerBound:Int,
          upperBound:Int,
          isTransient:Bool,
          isVolatile:Bool,
          isChangeable:Bool,
          isUnsettable:Bool,
          isID:Bool,
          isUnique:Bool,
          isDerived:Bool)->EAttribute
    {
    return initEAttribute(a:a,
         type:type,
         name:name,
         defaultValue:defaultValue,
         lowerBound:lowerBound,
         upperBound:upperBound,
         isTransient:isTransient,
         isVolatile:isVolatile,
         isChangeable:isChangeable,
        isUnsettable:isUnsettable,
        isID:isID,
        isUnique:isUnique,
        isDerived:isDerived,
        isOrdered:true);
        
    }
    
    func initEAttribute
        ( a:EAttribute,
      type:EClassifier,
     name:String,
     defaultValue:String?,
     lowerBound:Int,
     upperBound:Int,
     isTransient:Bool,
     isVolatile:Bool,
     isChangeable:Bool,
     isUnsettable:Bool,
     isID:Bool,
     isUnique:Bool,
     isDerived:Bool,
     isOrdered:Bool)->EAttribute
    {
    initEAttribute(a:a,
         type:type,
         name:name,
         defaultValue:defaultValue,
         lowerBound:lowerBound,
         upperBound:upperBound,
         containerClass:(a.eContainer() as! EClassifier).instanceClass as! Mirror,
    isTransient:isTransient,
    isVolatile:isVolatile,
    isChangeable:isChangeable,
    isUnsettable:isUnsettable,
    isID:isID,
    isUnique:isUnique,
    isDerived:isDerived,
    isOrdered:isOrdered);
    return a;
    }
    
    func initEAttribute
        ( a:EAttribute,
      type:EClassifier,
     name:String,
     defaultValue:String?,
     lowerBound:Int,
     upperBound:Int,
     containerClass:Mirror,
     isTransient:Bool,
     isVolatile:Bool,
     isChangeable:Bool,
     isUnsettable:Bool,
     isID:Bool,
     isUnique:Bool,
     isDerived:Bool,
     isOrdered:Bool)->EAttribute
    {
    initEStructuralFeature(s:a,
         type:type,
         name:name,
         defaultValue:defaultValue,
         lowerBound:lowerBound,
         upperBound:upperBound,
         containerClass:containerClass,
         isTransient:isTransient,
         isVolatile:isVolatile,
         isChangeable:isChangeable,
         isUnsettable:isUnsettable,
         isUnique:isUnique,
         isDerived:isDerived,
         isOrdered:isOrdered);
        var a_ = a;
        a_.iD = isID;
        return a_;
    }
    
    func initEAttribute
        ( a:EAttribute,
          type:EGenericType,
          name:String,
          defaultValue:String?,
          lowerBound:Int,
          upperBound:Int,
          containerClass:Mirror,
          isTransient:Bool,
          isVolatile:Bool,
          isChangeable:Bool,
          isUnsettable:Bool,
          isID:Bool,
          isUnique:Bool,
          isDerived:Bool,
          isOrdered:Bool)->EAttribute
    {
    initEStructuralFeature(s:a,
         type:type,
         name:name,
         defaultValue:defaultValue,
         lowerBound:lowerBound,
         upperBound:upperBound,
         containerClass:containerClass,
         isTransient:isTransient,
         isVolatile:isVolatile,
         isChangeable:isChangeable,
         isUnsettable:isUnsettable,
         isUnique:isUnique,
         isDerived:isDerived,
         isOrdered:isOrdered);
        var a_ = a;
        
        a_.iD = isID;
    return a_;
    }
    
    
    private func initEStructuralFeature
        ( s:EStructuralFeature,
          type:EClassifier,
          name:String,
          defaultValue:String?,
          lowerBound:Int,
          upperBound:Int,
          containerClass:Mirror,
          isTransient:Bool,
          isVolatile:Bool,
          isChangeable:Bool,
          isUnsettable:Bool,
          isUnique:Bool,
          isDerived:Bool,
     isOrdered:Bool)
    {
        
        let s_ = s as! EStructuralFeatureImpl;
        s_.name = name;
        s_.containerClass = containerClass;
        s_.transient = isTransient;
        s_.volatile = isVolatile;
        s_.changeable = isChangeable;
        s_.unsettable = isUnsettable;
        s_.unique = isUnique;
        s_.derived = isDerived;
        s_.ordered = isOrdered;
        s_.lowerBound = lowerBound;
        s_.upperBound = upperBound;
        s_.eType = type;
        if let defaultValue_ = defaultValue
        {
            s_.defaultValueLiteral = defaultValue_;
        }
    }
    
    private func initEStructuralFeature
    ( s:EStructuralFeature,
      type:EGenericType,
      name:String,
      defaultValue:String?,
      lowerBound:Int,
      upperBound:Int,
      containerClass:Mirror,
      isTransient:Bool,
      isVolatile:Bool,
      isChangeable:Bool,
      isUnsettable:Bool,
      isUnique:Bool,
      isDerived:Bool,
      isOrdered:Bool)
    {
        var s_ = s as! EStructuralFeatureImpl;
        s_.name = name;
        s_.containerClass = containerClass;
        s_.transient = isTransient;
        s_.volatile = isVolatile;
        s_.changeable = isChangeable;
        s_.unsettable = isUnsettable;
        s_.unique = isUnique;
        s_.derived = isDerived;
        s_.ordered = isOrdered;
        s_.lowerBound = lowerBound;
        s_.upperBound = upperBound;
        s_.eGenericType = type;
        if let defaultValue_ = defaultValue
        {
            s_.defaultValueLiteral = defaultValue_;
        }
    }
    
    
    public let IS_COMPOSITE = true;
    public let IS_RESOLVE_PROXIES = true;
    public let IS_RESOLVABLE = true;
    
    func initEReference
        (r:EReference,
         type:EClassifier,
         otherEnd:EReference?,
         name:String ,
         defaultValue:String?,
         lowerBound:Int,
         upperBound:Int,
         containerClass:Mirror,
         isTransient:Bool,
         isVolatile:Bool,
         isChangeable:Bool,
         isContainment:Bool,
         isResolveProxies:Bool,
         isUnsettable:Bool,
         isUnique:Bool,
         isDerived:Bool,
         isOrdered:Bool)->EReference
    {
        initEStructuralFeature(s:r,
                               type:type,
                               name:name,
                               defaultValue:defaultValue,
                               lowerBound:lowerBound,
                               upperBound:upperBound,
                               containerClass:containerClass,
                               isTransient:isTransient,
                               isVolatile:isVolatile,
                               isChangeable:isChangeable,
                               isUnsettable:isUnsettable,
                               isUnique:isUnique,
                               isDerived:isDerived,
                               isOrdered:isOrdered);
        var r_ = r;
        r_.containment = isContainment;
        if let otherEnd_ = otherEnd
        {
            r_.eOpposite = otherEnd_;
        }
        r_.resolveProxies = isResolveProxies;
        return r_;
    }
    
    func initEReference
    (r:EReference,
     type:EGenericType,
     otherEnd:EReference?,
      name:String,
      defaultValue:String?,
      lowerBound:Int,
      upperBound:Int,
      containerClass:Mirror,
      isTransient:Bool,
      isVolatile:Bool,
      isChangeable:Bool,
      isContainment:Bool,
      isResolveProxies:Bool,
      isUnsettable:Bool,
      isUnique:Bool,
      isDerived:Bool,
      isOrdered:Bool)->EReference
    {
        initEStructuralFeature(s:r,
                               type:type,
                               name:name,
                               defaultValue:defaultValue,
                               lowerBound:lowerBound,
                               upperBound:upperBound,
                               containerClass:containerClass,
                               isTransient:isTransient,
                               isVolatile:isVolatile,
                               isChangeable:isChangeable,
                               isUnsettable:isUnsettable,
                               isUnique:isUnique,
                               isDerived:isDerived,
                               isOrdered:isOrdered);
        var r_ = r;
        r_.containment = isContainment;
    if let otherEnd_ = otherEnd
    {
        r_.eOpposite = otherEnd_;
    }
    r_.resolveProxies = isResolveProxies;
    return r_;
    }
    
}




