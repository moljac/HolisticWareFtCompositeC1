echo off

:: Optimize images
:: Overview
:: Properly formatting and compressing images can save many bytes of data.
:: Details
:: Images saved from programs like Fireworks can contain kilobytes of extra 
:: comments, and use too many colors, even though a reduction in the color palette 
:: may not perceptibly reduce image quality. Improperly optimized images can take 
:: up more space than they need to; for users on slow connections, it is especially
:: important to keep image sizes to a minimum.
:: You should perform both basic and advanced optimization on all images. Basic 
:: optimization includes cropping unnecessary space, reducing color depth to the 
:: lowest acceptable level, removing image comments, and saving the image to an 
:: appropriate format. You can perform basic optimization with any image 
:: editing program, such as GIMP.  
:: Advanced optimization involves further (lossless) compression of JPEG and 
:: PNG files. You should see a benefit for any image file that can be reduced by 
:: 25 bytes or more (less than this will not result in any appreciable performance 
:: gain).
:: Recommendations
:: Choose an appropriate image file format.
:: The type of an image can have a drastic impact on the file size. 
:: Use these guidelines:
:: PNGs are almost always superior to GIFs and are usually the best choice. 
:: IE 4.0b1+, Mac IE 5.0+, Opera 3.51+ and Netscape 4.04+ as well as all versions 
:: of Safari and Firefox fully support PNG, including transparency. IE versions 
:: 4 to 6 don't support alpha channel transparency (partial transparency) but they 
:: support 256-color-or-less PNGs with 1-bit transparency (the same that is 
:: supported for GIFs). IE 7 and 8 support alpha transparent PNGs except when an 
:: alpha opacity filter is applied to the element. You can generate or convert 
:: suitable PNGs with GIMP by using "Indexed" rather than "RGB" mode. If you must 
:: maintain compatibility with 3.x-level browsers, serve an alternate GIF to those 
:: browsers.
:: Use GIFs for very small or simple graphics (e.g. less than 10x10 pixels, or a 
:: color palette of less than 3 colors) and for images which contain animation. 
:: If you think an image might compress better as a GIF, try it as a PNG and a GIF 
:: and pick the smaller.
:: Use JPGs for all photographic-style images.
:: Do not use BMPs or TIFFs.
:: Use an image compressor.
:: Several tools are available that perform further, lossless compression on JPEG 
:: and PNG files, with no effect on image quality. For JPEG, we recommend jpegtran 
:: or jpegoptim (available on Linux only; run with the --strip-all option). For 
:: PNG, we recommend OptiPNG or PNGOUT.
:: Tip: When you run Page Speed against a page referencing JPEG and PNG files, it 
:: automatically compresses the files and saves the output to a configurable 
:: directory.

:: C:\Program Files\ImageMagick-6.7.0-Q16
echo ==========================================================================
echo PNG optimization:
set OPTIPNG=.\optipng-0.6.5-exe\optipng

set SRC_IMAGES=^
	..\..\Images\background.png ^
	..\..\Images\arrow.png ^
	..\..\Images\headerlogo.png ^
	..\..\Images\header.jpg ^
	
::=============================================================
:: TIMESTAMP
set DATE_USED=%DATE%
set TIME_USED=%TIME%
set STAMP_USED=%DATE_USED%%TIME_USED%
::------------------------------------------------------
:: stripping chars : .
set STAMP_USED=%STAMP_USED:.=%
set STAMP_USED=%STAMP_USED::=%
set STAMP_USED=%STAMP_USED: =%
::------------------------------------------------------
set BACKUP=backup_%STAMP_USED%

set TIMESTAMP=%STAMP_USED%

echo TIMESTAMP = %TIMESTAMP%

:: TIMESTAMP
::=============================================================
mkdir ..\..\Images\%TIMESTAMP%
for %%f in (%SRC_IMAGES%) DO (
	xcopy %%f ..\..\Images\%TIMESTAMP%\original\
	%OPTIPNG% ^
		-o7 ^
		-keep ^
		%%f
		
::		-out=..\..\Images\%TIMESTAMP%\optimized\%%f 
echo --------------------------
)
echo ==========================================================================


pause

