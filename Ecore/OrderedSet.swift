

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

}



