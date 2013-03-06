Autoinstall package creator 
			
			
			
			
Â 	2013-02-15 13:26:23.38	
System.TypeLoadException: Could not load type 'Composite.Data.Types.IPageTemplate' from assembly 'Composite, Version=4.0.4794.23787, Culture=neutral, PublicKeyToken=null'.
   at Composite.Tools.PackageCreator.Types.PCPageTemplate.<Create>d__0.MoveNext()
   at Composite.Tools.PackageCreator.PackageCreatorActionFacade.<GetPackageCreatorItems>d__4.MoveNext()
   at Composite.Tools.PackageCreator.PackageCreatorElementActionProvider.<GetActions>d__3.MoveNext()
   at Composite.C1Console.Elements.Element.AddAction(IEnumerable`1 elementActions) in \Composite\C1Console\Elements\Element.cs:line 226
   at Composite.C1Console.Elements.Foundation.ElementActionProviderFacade.AddActions(IEnumerable`1 elements, String providerName) in \Composite\C1Console\Elements\Foundation\ElementActionProviderFacade.cs:line 341
ElementActionProviderFacade	Critical
Â 	2013-02-15 13:26:23.37	
Failed to add actions from the element action provider named 'Composite.Tools.PackageCreator'
ElementActionProviderFacade	Critical
			