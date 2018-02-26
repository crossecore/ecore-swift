

class Bag<T:Equatable>:AbstractCollection<T>, IBag{
    typealias T = Bag.T;
    
    override init(origin:Array<T>){
        super.init(origin: origin);
    }
}
