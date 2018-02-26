protocol Notification
{
	func getNotifier() -> AnyObject?;
	func getEventType() -> Int;

	func getNewValue() -> Any?;
}
