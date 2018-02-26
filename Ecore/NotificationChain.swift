protocol NotificationChain
{
    func add(notification:Notification)-> Bool;

    func dispatch();
}