

class Sequence_<T:Equatable>:AbstractCollection<T>, ISequence{
    
    typealias T = Sequence_.T;
    
    override init(origin:Array<T>){
        super.init(origin: origin);
    }
}
