package com.ebillity.core.services
{
	import com.ebillity.core.controler.net.async.IPromise;
	import com.ebillity.core.services.base.WebService;
	import com.ebillity.core.services.interfaces.ILoginService;

	import mx.rpc.remoting.RemoteObject;

	public class LoginService extends WebService implements ILoginService
	{
		/**
		 * The name of the remote service destination.
		 */
		public static const REMOTE_DESTINATION:String = "loginService";

		/**
		 * The RemoteObject will be injected in by Robotlegs. This is
		 * configured in MapService.
		 */
		[Inject( name = "LoginService" )]
		public var service:RemoteObject;

		public function loginUser( userName:String, password:String ):IPromise
		{
			return this.callHttpService( "validateuser", { "UserName": userName, "Password": password });
		}
	}
}
