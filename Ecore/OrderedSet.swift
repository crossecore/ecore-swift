

class OrderedSet<T:Equatable>:AbstractCollection<T>, IOrderedSet{
    typealias T = OrderedSet.T;

    override init(origin:Array<T>){
        super.init(origin: origin);
    }
    
    override init(owner:InternalEObject?, featureId:Int, oppositeFeatureId:Int){

        super.init(owner: owner, featureId: featureId, oppositeFeatureId: oppositeFeatureId);
    }
    
    func at(i:Int)->T{
        
        return self.array[i];
    }
    
    func collect<T2>(lambda:((T)->T2))->OrderedSet<T2>{
        let result = OrderedSet<T2>();
        
        
        for item in self.array{
            result.add(element:lambda(item));
        }
        
        return result;
        
    }
    
    func collect<T2>(lambda:((T)->AbstractCollection<T2>))->OrderedSet<T2>{
        let result = OrderedSet<T2>();
        
        
        for item in self.array{
            
            let e = lambda(item);
            
            for ee in e{
                result.add(element:ee);
            }
            
        }
        
        return result;
    }

}



