# HolisticWareFtCompositeC1.News #

##	Features  ##

*	TitleUrl characters replacement
*	RemoteAPI for News management from clients
		*	WebService
		
##	Installation  ##

1.	Package  
	1.	AutoInstall   
		App_Data\Composite\AutoInstallPackage\Composite.News.zip   
		1.	xcopy App_Data\   Website\   
		2.	restart server  
			Composite C1 Console +/ Tools +/ Restart server   
	2.	Manual Install   
		Composite C1 Console +/ System +/ Packages +/ Install Local package   
2.	filesystem xcopy to WebSite
	1.	Website	  
		1. \App_Code\
		2.	\*.asmx		\  
		3.	\*.cs		\App_Code\  
	2.	Web Application	  
		1. \App_Code\
		2.	\*.asmx		\  
		3.	\*.cs		\
		4.	Include all files in project 


##	Prerequisites  ##

###	Packages ###

Modified official Composite.News.zip package  

	NewsFacade   

	public static string GetUrlFromTitle(string title)
	{
		return Regex					
			.Replace(title, @"[^\w\d ]+", string.Empty)
			.Replace(" ","-")
			//===================================================
			// HolisticWare Croatian characters
			//===================================================
			.Replace("ć", "c")
			.Replace("č", "c")
			.Replace("đ", "d")
			.Replace("š", "s")
			.Replace("ž", "z")
			.Replace("Ć", "c")
			.Replace("Č", "c")
			.Replace("Đ", "d")
			.Replace("Š", "s")
			.Replace("Ž", "z")
			//===================================================
			// HolisticWare Extended latin
			//===================================================
			.Replace("å", "aa")
			.Replace("æ", "ae")
			.Replace("ø", "oe")
			.Replace("ä", "ae")
			.Replace("ö", "oe")
			.Replace("ü", "ue")
			.Replace("ß", "ss")
			.Replace("Å", "Aa")
			.Replace("Æ", "Ae")
			.Replace("Ø", "Oe")
			.Replace("Ä", "Ae")
			.Replace("Ö", "Oe")
			.Replace("Ü", "Ue")
			//===================================================
			// HolisticWare Cyrillic alphabet
			//===================================================
			.Replace("а", "a")
			.Replace("б", "b")
			.Replace("в", "v")
			.Replace("г", "g")
			.Replace("д", "d")
			.Replace("е", "e")
			.Replace("ё", "oh")
			.Replace("ж", "zh")
			.Replace("з", "z")
			.Replace("и", "i")
			.Replace("й", "j")
			.Replace("к", "k")
			.Replace("л", "l")
			.Replace("м", "m")
			.Replace("н", "n")
			.Replace("о", "o")
			.Replace("п", "p")
			.Replace("р", "r")
			.Replace("с", "s")
			.Replace("т", "t")
			.Replace("у", "u" )
			.Replace("ф", "f" )
			.Replace("х", "x" )
			.Replace("ц", "c" )
			.Replace("ч", "ch")
			.Replace("ш", "sh")
			.Replace("щ", "w" )
			.Replace("ъ", "qh")
			.Replace("ы", "y" )
			.Replace("ь", "q" )
			.Replace("э", "eh")
			.Replace("ю", "ju")
			.Replace("я", "ja")
			.Replace("ґ", "g" )
			.Replace("є", "e" )
			.Replace("і", "i" )
			.Replace("ї", "ji")
			.Replace("А", "A" )
			.Replace("Б", "B" )
			.Replace("В", "V" )
			.Replace("Г", "G" )
			.Replace("Д", "D" )
			.Replace("Е", "E" )
			.Replace("Ё", "Oh")
			.Replace("Ж", "Zh")
			.Replace("З", "Z" )
			.Replace("И", "I" )
			.Replace("Й", "J" )
			.Replace("К", "K" )
			.Replace("Л", "L" )
			.Replace("М", "M" )
			.Replace("Н", "N" )
			.Replace("О", "O" )
			.Replace("П", "P" )
			.Replace("Р", "R" )
			.Replace("С", "S" )
			.Replace("Т", "T" )
			.Replace("У", "U" )
			.Replace("Ф", "F" )
			.Replace("Х", "X" )
			.Replace("Ц", "C" )
			.Replace("Ч", "Ch")
			.Replace("Ш", "Sh")
			.Replace("Щ", "W" )
			.Replace("Ъ", "Qh")
			.Replace("Ы", "Y" )
			.Replace("Ь", "Q" )
			.Replace("Э", "Eh")
			.Replace("Ю", "Ju")
			.Replace("Я", "Ja")
			.Replace("Ґ", "G" )
			.Replace("Є", "E" )
			.Replace("І", "I" )
			.Replace("Ї", "Ji")
		;
	}

### Assemblies ###

For compilation only

*	generated after installation of the Official Composite.News.zip package  
	*	Composite.Generated.dll   
	*	Composite.dll   


