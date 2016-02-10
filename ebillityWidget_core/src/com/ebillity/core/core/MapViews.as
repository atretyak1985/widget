package com.ebillity.core.core
{
	import com.ebillity.core.view.mediator.admin.AdminViewMediator;
	import com.ebillity.core.view.mediator.components.DashboardMediator;
	import com.ebillity.core.view.mediator.components.ExpenseEntryMediator;
	import com.ebillity.core.view.mediator.components.ManageEntriesMediator;
	import com.ebillity.core.view.mediator.components.TimeEntryMediator;
	import com.ebillity.core.view.mediator.employee.EmployeeViewMediator;
	import com.ebillity.core.view.mediator.login.LoginViewMediator;
	import com.ebillity.core.view.mediator.main.MainViewMediator;
	import com.ebillity.core.view.ui.admin.AdminView;
	import com.ebillity.core.view.ui.components.Dashboard;
	import com.ebillity.core.view.ui.components.ExpenseEntry;
	import com.ebillity.core.view.ui.components.ManageEntries;
	import com.ebillity.core.view.ui.components.MyEntries;
	import com.ebillity.core.view.ui.components.Settings;
	import com.ebillity.core.view.ui.components.TimeEntry;
	import com.ebillity.core.view.ui.employee.EmployeeView;
	import com.ebillity.core.view.ui.login.LoginView;
	import com.ebillity.core.view.ui.main.MainView;

	public class MapViews extends MappingCommand
	{
		override public function execute():void
		{
			mapComponents();
			mapContainers();
			mapControls();
			mapRenderers();
		}

		private function mapComponents():void
		{
			mediatorMap.mapView( AdminView, AdminViewMediator );
			mediatorMap.mapView( Dashboard, DashboardMediator );
			mediatorMap.mapView( ExpenseEntry, ExpenseEntryMediator );
			mediatorMap.mapView( ManageEntries, ManageEntriesMediator );
			mediatorMap.mapView( MyEntries, ManageEntriesMediator );
			mediatorMap.mapView( Settings, ManageEntriesMediator );
			mediatorMap.mapView( TimeEntry, TimeEntryMediator );
			mediatorMap.mapView( EmployeeView, EmployeeViewMediator );
			mediatorMap.mapView( LoginView, LoginViewMediator );
			mediatorMap.mapView( MainView, MainViewMediator );
		}


		private function mapContainers():void
		{

		}

		private function mapControls():void
		{

		}

		private function mapRenderers():void
		{

		}
	}
}
