protocol Collection
{
    associatedtype T:Equatable;
	
	
    func add(element:T)->Bool;
    func remove(element:T)-> Bool;
    func equals(c:Self) -> Bool;
    func notEquals(c:Self) -> Bool;
    func size()->Int;
    func includes(element:T)->Bool;
    func excludes(element:T)->Bool;
    func count(element:T)->Int;
    func includesAll(c2:Self)->Bool;
    func excludesAll(c2:Self)->Bool;
    func isEmpty()->Bool;
    func notEmpty()->Bool;
    func max()->T;
    func min()->T;
    func sum()->T;
    func asSet()->Set_<T>;
    func asOrderedSet() -> OrderedSet<T>;
    func asSequence() -> Sequence_<T>;
    func asBag() -> Bag<T>;
	//Collection<T2> flatten<T2>();
	func any(lambda:((T)->Bool)) -> T?;
	
	//Collection<T2> closure<T2>(Func<T, T2> lambda);

	//Collection<T2> collect<T2>(Func<T, T2> lambda);
	//Collection<T2> collect<T2>(Func<T, Collection<T2>> lambda);

	//Collection<T> including(T element);
	//Collection<T> excluding(T element);
	//Collection<T2> collect<T2>(Func<T, T2> lambda);
	//Collection<T2> collect<T2>(Func<T, Collection<T2>> lambda);
	func exists(lambda:((T)->Bool))->Bool;
	func forAll(lambda:((T)->Bool))->Bool;
    func isUnique<T2:Equatable>(lambda:((T)->T2))->Bool;
	func one(lambda:((T)->Bool))->Bool;
	//Collection<T> reject(Func<T, bool> lambda);

	//TODO if result set has only one element, this element should be returned directly
	//Collection<T> select(Func<T, bool> lambda);
	//Collection<T> sortedBy<T2>(Func<T, T2> lambda);
}
