AutoInstallPackage XMLSiteBackup

1. Batch install
	PrintCommand OK  
	VerboseLogging OK  
	XmlSiteBackup Bang  
	
2. Problem   
	After Install of XmlSiteBackup   
	Invalid SOAP resp   
	Log file:   
	
	20130217 13:11:09.6698 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Installing package: D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\App_Data\Composite\AutoInstallPackages\Composite.Tools.XmlBasedSiteBackup.zip
	20130217 13:11:10.2218 6 18 Verbose PackageManager  Installing package: Composite.Tools.XmlBasedSiteBackup, Id = 058add2e-35fa-466b-9b33-a3f72d4aa7a5
	20130217 13:11:10.2518 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Writer Lock Acquired (Managed Thread ID: 18, Source: PackageInstaller.Install)
	20130217 13:11:10.2738 6 18 Verbose ApplicationOnlineHandlerFacade  Turning off the application (Hard)
	20130217 13:11:10.3288 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~\App_Data\Composite\TreeDefinitions\Composite.Tools.XmlBasedSiteBackup.xml' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\App_Data\Composite\TreeDefinitions\Composite.Tools.XmlBasedSiteBackup.xml'
	20130217 13:11:10.4258 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/bottom.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/bottom.png'
	20130217 13:11:10.5308 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/bottomleft.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/bottomleft.png'
	20130217 13:11:10.6148 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/bottomright.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/bottomright.png'
	20130217 13:11:10.6968 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/CompositeC1.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/CompositeC1.png'
	20130217 13:11:10.7848 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/left.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/left.png'
	20130217 13:11:10.8688 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/right.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/right.png'
	20130217 13:11:10.9588 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/top.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/top.png'
	20130217 13:11:11.0538 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/topleft.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/topleft.png'
	20130217 13:11:11.1948 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Images/topright.png' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Images/topright.png'
	20130217 13:11:11.3198 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/Styles.css' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\Styles.css'
	20130217 13:11:11.4408 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/XmlBasedSiteBackup.aspx' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\XmlBasedSiteBackup.aspx'
	20130217 13:11:11.5658 6 18 Verbose FilePackageFragmentInstaller  Installing the file '~/Composite/InstalledPackages/content/views/Composite.Tools.XmlBasedSiteBackup/XmlBasedSiteBackup.aspx.cs' to the target filename 'D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Composite\InstalledPackages\content\views\Composite.Tools.XmlBasedSiteBackup\XmlBasedSiteBackup.aspx.cs'
	20130217 13:11:11.7348 6 18 Verbose ApplicationOnlineHandlerFacade  Turning on the application
	20130217 13:11:11.7568 6 18 Verbose CodeGenerationManager  New assembly already compiled by this application domain (6)
	20130217 13:11:11.7888 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Writer Lock Releasing (Managed Thread ID: 18, Source: PackageInstaller.Install)
	20130217 13:11:11.8568 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Finished: Auto installing packages (7800 ms)
	20130217 13:11:11.8788 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Starting: Loading element providers
	20130217 13:11:12.1218 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Finished: Loading element providers (250 ms)
	20130217 13:11:12.1468 6 18 Critical GlobalInitializerFacade  ConfigurationChange
	20130217 13:11:12.1958 6 18 Critical GlobalInitializerFacade  System.Configuration.ConfigurationErrorsException: The configuration file has been changed by another program. (D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\App_Data\Composite\Composite.config)
	at System.Configuration.BaseConfigurationRecord.EvaluateOne(String[] keys, SectionInput input, Boolean isTrusted, FactoryRecord factoryRecord, SectionRecord sectionRecord, Object parentResult)
	at System.Configuration.BaseConfigurationRecord.Evaluate(FactoryRecord factoryRecord, SectionRecord sectionRecord, Object parentResult, Boolean getLkg, Boolean getRuntimeObject, Object& result, Object& resultRuntimeObject)
	at System.Configuration.BaseConfigurationRecord.GetSectionRecursive(String configKey, Boolean getLkg, Boolean checkPermission, Boolean getRuntimeObject, Boolean requestIsHere, Object& result, Object& resultRuntimeObject)
	at System.Configuration.BaseConfigurationRecord.GetSection(String configKey, Boolean getLkg, Boolean checkPermission)
	at System.Configuration.BaseConfigurationRecord.GetSection(String configKey)
	at System.Configuration.Configuration.GetSection(String sectionName)
	at Composite.Core.Configuration.FileConfigurationSourceImplementation.GetSection(String sectionName) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Configuration\FileConfigurationSourceImplementation.cs:line 70
	at Composite.Core.Configuration.FileConfigurationSource.GetSection(String sectionName) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Configuration\FileConfigurationSource.cs:line 66
	at Composite.C1Console.Elements.Foundation.ElementProviderRegistry.Resources.Initialize(Resources resources) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderRegistry.cs:line 133
	at Composite.Core.Collections.Generic.ResourceLocker`1.Initialize() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Collections\Generic\ResourceLocker.cs:line 111
	at Composite.Core.Collections.Generic.ResourceLocker`1.get_Resources() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Collections\Generic\ResourceLocker.cs:line 66
	at Composite.C1Console.Elements.Foundation.ElementProviderRegistry.get_RootElementProviderName() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderRegistry.cs:line 47
	at Composite.C1Console.Elements.Foundation.ElementProviderLoader.LoadAllElementProviders() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderLoader.cs:line 36
	at Composite.C1Console.Elements.Foundation.ElementProviderLoader.LoadAllProviders() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderLoader.cs:line 29
	at Composite.GlobalInitializerFacade.DoInitialize() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 279
	at Composite.GlobalInitializerFacade.InitializeTheSystem() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 144
	
	20130217 13:11:24.4558 6 18 Verbose GlobalInitializerFacade RGB(194, 252, 131) Writer Lock Releasing (Managed Thread ID: 18, Source: GlobalInitializerFacade.InitializeTheSystem)
	20130217 13:11:24.7508 6 18 Error Application Error  Failed to process 'GET' request to url '/Composite/skins/system/throbber/throbber_deactivate.gif'
	20130217 13:11:24.7788 6 18 Error Application Error  System.Configuration.ConfigurationErrorsException: The configuration file has been changed by another program. (D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\App_Data\Composite\Composite.config)
	at System.Configuration.BaseConfigurationRecord.EvaluateOne(String[] keys, SectionInput input, Boolean isTrusted, FactoryRecord factoryRecord, SectionRecord sectionRecord, Object parentResult)
	at System.Configuration.BaseConfigurationRecord.Evaluate(FactoryRecord factoryRecord, SectionRecord sectionRecord, Object parentResult, Boolean getLkg, Boolean getRuntimeObject, Object& result, Object& resultRuntimeObject)
	at System.Configuration.BaseConfigurationRecord.GetSectionRecursive(String configKey, Boolean getLkg, Boolean checkPermission, Boolean getRuntimeObject, Boolean requestIsHere, Object& result, Object& resultRuntimeObject)
	at System.Configuration.BaseConfigurationRecord.GetSection(String configKey, Boolean getLkg, Boolean checkPermission)
	at System.Configuration.BaseConfigurationRecord.GetSection(String configKey)
	at System.Configuration.Configuration.GetSection(String sectionName)
	at Composite.Core.Configuration.FileConfigurationSourceImplementation.GetSection(String sectionName) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Configuration\FileConfigurationSourceImplementation.cs:line 70
	at Composite.Core.Configuration.FileConfigurationSource.GetSection(String sectionName) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Configuration\FileConfigurationSource.cs:line 66
	at Composite.C1Console.Elements.Foundation.ElementProviderRegistry.Resources.Initialize(Resources resources) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderRegistry.cs:line 133
	at Composite.Core.Collections.Generic.ResourceLocker`1.Initialize() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Collections\Generic\ResourceLocker.cs:line 111
	at Composite.Core.Collections.Generic.ResourceLocker`1.get_Resources() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Collections\Generic\ResourceLocker.cs:line 66
	at Composite.C1Console.Elements.Foundation.ElementProviderRegistry.get_RootElementProviderName() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderRegistry.cs:line 47
	at Composite.C1Console.Elements.Foundation.ElementProviderLoader.LoadAllElementProviders() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderLoader.cs:line 36
	at Composite.C1Console.Elements.Foundation.ElementProviderLoader.LoadAllProviders() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\C1Console\Elements\Foundation\ElementProviderLoader.cs:line 29
	at Composite.GlobalInitializerFacade.DoInitialize() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 279
	at Composite.GlobalInitializerFacade.InitializeTheSystem() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 155
	at Composite.GlobalInitializerFacade.get_CoreIsInitializedScope() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 627
	at Composite.Data.Foundation.DataProviderRegistry.get_AllInterfaces() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\Foundation\DataProviderRegistry.cs:line 65
	at Composite.Data.DataFacadeImpl.GetData[T](Boolean useCaching, IEnumerable`1 providerNames) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\DataFacadeImpl.cs:line 64
	at Composite.Data.DataFacade.GetData[T](Boolean useCaching, IEnumerable`1 providerNames) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\DataFacade.cs:line 193
	at Composite.Data.DataFacade.GetData[T]() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\DataFacade.cs:line 209
	at Composite.Core.Routing.HostnameBindingsFacade.Initialize() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\Routing\HostnameBindingsFacade.cs:line 71
	at Composite.Core.WebClient.ApplicationLevelEventHandlers.ApplicationStartInitialize(Boolean displayDebugInfo) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\WebClient\ApplicationLevelEventHandlers.cs:line 282
	at Composite.Core.WebClient.ApplicationLevelEventHandlers.Application_Start(Object sender, EventArgs e) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\WebClient\ApplicationLevelEventHandlers.cs:line 91
	at ASP.global_asax.Application_Start(Object sender, EventArgs e) in d:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\Global.asax:line 13
	20130217 13:11:25.3768 6 21 Critical GlobalInitializerFacade  Exception recorded:00:00:12.9890000 ago
	20130217 13:12:30.3868 6 21 Error Application Error  Failed to process 'POST' request to url '/Composite/services/ConsoleMessageQueue/ConsoleMessageQueueServices.asmx'
	20130217 13:12:30.4578 6 28 Verbose WorkflowFacade RGB(194, 252, 131) ----------========== Initializing Workflows (Delayed: 86362) ==========----------
	20130217 13:12:30.5648 6 21 Error Application Error  System.Configuration.ConfigurationErrorsException: The configuration file has been changed by another program. (D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Website\App_Data\Composite\Composite.config)
	at Composite.GlobalInitializerFacade.InitializeTheSystem() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 121
	at Composite.GlobalInitializerFacade.get_CoreIsInitializedScope() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\GlobalInitializerFacade.cs:line 627
	at Composite.Data.Foundation.DataProviderRegistry.get_AllInterfaces() in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\Foundation\DataProviderRegistry.cs:line 65
	at Composite.Data.DataFacadeImpl.GetData[T](Boolean useCaching, IEnumerable`1 providerNames) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\DataFacadeImpl.cs:line 64
	at Composite.Data.DataFacade.GetData[T](Boolean useCaching) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Data\DataFacade.cs:line 200
	at Composite.Core.WebClient.Renderings.RequestInterceptorHttpModule.CheckForHostnameAliasRedirect(HttpContext httpContext) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\WebClient\Renderings\RequestInterceptorHttpModule.cs:line 181
	at Composite.Core.WebClient.Renderings.RequestInterceptorHttpModule.context_BeginRequest(Object sender, EventArgs e) in D:\SRC\HolisticWare\HolisticWare_Web_CMS_C1\4.2.beta.2\Composite\Core\WebClient\Renderings\RequestInterceptorHttpModule.cs:line 51
	at System.Web.HttpApplication.SyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
	at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
	20130217 13:12:30.9558 6 19 Information ApplicationEventHandler RGB(205, 92, 92) AppDomain 6 ended at 13:12:30:95 in process 10832
	20130217 13:12:31.0118 6 19 Verbose CodeGenerationManager  New assembly already compiled by this application domain (6)
	20130217 13:12:31.0508 6 19 Verbose ASP.NET Shut Down RGB(250,50,50) _shutDownMessage=
	Change in App_Offline.htm
	
	HostingEnvironment initiated shutdown
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	Change in App_Offline.htm
	
	HostingEnvironment caused shutdown
	
	_shutDownStack=
	at System.Environment.GetStackTrace(Exception e, Boolean needFileInfo)
	at System.Environment.get_StackTrace()
	at System.Web.Hosting.HostingEnvironment.InitiateShutdownInternal()
	at System.Web.Hosting.HostingEnvironment.InitiateShutdownWithoutDemand()
	at System.Web.HttpRuntime.ShutdownAppDomain(String stackTrace)
	at System.Web.HttpRuntime.ShutdownAppDomainWithStackTrace(ApplicationShutdownReason reason, String message, String stackTrace)
	at System.Web.HttpRuntime.ShutdownAppDomain(ApplicationShutdownReason reason, String message)
	at System.Web.HttpRuntime.OnAppOfflineFileChange(Object sender, FileChangeEvent e)
	at System.Web.DirectoryMonitor.FireNotifications()
	at System.Web.Util.WorkItem.CallCallbackWithAssert(WorkItemCallback callback)
	at System.Web.Util.WorkItem.OnQueueUserWorkItemCompletion(Object state)
	at System.Threading.QueueUserWorkItemCallback.WaitCallback_Context(Object state)
	at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state, Boolean ignoreSyncCtx)
	at System.Threading.QueueUserWorkItemCallback.System.Threading.IThreadPoolWorkItem.ExecuteWorkItem()
	at System.Threading.ThreadPoolWorkQueue.Dispatch()
	at System.Threading._ThreadPoolWaitCallback.PerformWaitCallback()
	20130217 13:12:31.0748 6 19 Verbose GlobalInitializerFacade RGB(194, 252, 131) Writer Lock Acquired (Managed Thread ID: 19, Source: GlobalInitializerFacade.UninitializeTheSystem)
	20130217 13:12:31.0748

3.	Solution: restarting Composite C1 in VS
