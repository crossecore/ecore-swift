protocol NotifyingList{
	
	associatedtype T
	
	func isNotificationRequired() -> Bool;
	
	func hasInverse();
	
	func dispatchNotification(notification:Notification);
	
	func basicAdd(item:T, notifications:NotificationChain);
	
	func basicRemove(item:T, notifications:NotificationChain);
	
	func inverseAdd(item:T, notifications:NotificationChain);
	
	func inverseRemove(item:T, notifications:NotificationChain);
	
}