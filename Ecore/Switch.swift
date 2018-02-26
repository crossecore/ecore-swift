    class Switch<T>
    {


        func defaultCase(eObject:EObject) -> T
        {
            preconditionFailure("Error: calling an abstract function.");
        }



        func doSwitch( eClass:EClass?,  theEObject:EObject?) -> T?
        {
            if (isSwitchFor(ePackage: eClass?.ePackage))
            {
                return doSwitch(classifierID:(eClass?.getClassifierID())!, theEObject:theEObject!);
            }
            else
            {
               //var eSuperTypes = eClass.eSuperTypes;
               //return eSuperTypes.isEmpty() ? defaultCase(eObject: theEObject) : doSwitch(eSuperTypes.at(0), theEObject);
                return nil;
            }
        }



        func doSwitch(eObject:EObject) -> T?
        {
            return doSwitch(eClass:eObject.eClass(), theEObject:eObject);
        }



        func doSwitch(classifierID:Int, theEObject:EObject)->T?
        {
            preconditionFailure("Error: calling an abstract function.");
        }



        func isSwitchFor(ePackage:EPackage?)->Bool{
            preconditionFailure("Error: calling an abstract function.");
		}
    }
