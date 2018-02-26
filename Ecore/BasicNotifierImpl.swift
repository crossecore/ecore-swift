

class BasicNotifierImpl : Notifier
{

	init(){

	}

    var eAdapters = [Adapter]();



    func eNotify(notification:Notification)
	{

		for adapter in eAdapters{

			adapter.notifyChanged(notification: notification);
		}

	}

	func eNotificationRequired() -> Bool
	{
		return eAdapters.count > 0;
	}
}
