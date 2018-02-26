protocol Notifier
{

	//func eAdapters() -> [Adapter];
    var eAdapters :[Adapter]{get}

	func eNotify(notification:Notification);

}
