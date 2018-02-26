

class Set_<T:Equatable>:AbstractCollection<T>, ISet{
    typealias T = Set_.T;
    
    override init(origin:Array<T>){
        super.init(origin: origin);
    }

}
