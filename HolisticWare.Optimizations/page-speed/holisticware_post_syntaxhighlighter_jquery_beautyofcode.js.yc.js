jQuery.beautyOfCode={settings:{autoLoad:true,baseUrl:"/HolisticWare/SyntaxHighlighter/syntaxhighlighter_3.0.83/",scripts:"scripts/",styles:"styles/",theme:"Default",brushes:["Xml","JScript","CSharp","Plain"],config:{},defaults:{},ready:function(){jQuery.beautyOfCode.beautifyAll()}},init:function(a){a=jQuery.extend({},jQuery.beautyOfCode.settings,a);if(!a.config.clipboardSwf){a.config.clipboardSwf=a.baseUrl+a.scripts+"clipboard.swf"}jQuery(document).ready(function(){if(!a.autoLoad){a.ready()}else{jQuery.beautyOfCode.utils.loadCss(a.baseUrl+a.styles+"shCore.css");jQuery.beautyOfCode.utils.loadCss(a.baseUrl+a.styles+"shTheme"+a.theme+".css","shTheme");var b=new Array();b.push(a.baseUrl+a.scripts+"shCore.js");jQuery.each(a.brushes,function(c,d){b.push(a.baseUrl+a.scripts+"shBrush"+d+".js")});jQuery.beautyOfCode.utils.loadAllScripts(b,function(){if(a&&a.config){jQuery.extend(SyntaxHighlighter.config,a.config)}if(a&&a.defaults){jQuery.extend(SyntaxHighlighter.defaults,a.defaults)}a.ready()})}})},beautifyAll:function(){jQuery("pre.code:has(code[class]),code.code").beautifyCode()},utils:{loadScript:function(b,a){jQuery.ajax({url:b,complete:function(){a()},type:"GET",dataType:"script",cache:true})},loadAllScripts:function(b,a){if(!b||b.length==0){a();return}var c=b[0];jQuery.beautyOfCode.utils.loadScript(c,function(){jQuery.beautyOfCode.utils.loadAllScripts(b.slice(1,b.length),a)})},loadCss:function(a,d){var b=jQuery("head")[0];if(a&&b){var c=document.createElement("link");c.setAttribute("rel","stylesheet");c.setAttribute("href",a);if(d){c.id=d}b.appendChild(c)}},addCss:function(a,d){var b=jQuery("head")[0];if(a&&b){var c=document.createElement("style");c.setAttribute("type","text/css");if(d){c.id=d}if(c.styleSheet){c.styleSheet.cssText=a}else{jQuery(c).text(a)}b.appendChild(c)}},addCssForBrush:function(a,b){if(a.isCssInitialized){return}jQuery.beautyOfCode.utils.addCss(b.Style);a.isCssInitialized=true},parseParams:function(g){var d=jQuery.map(g,jQuery.trim);var f={};var a=function(h,m){var k=new RegExp("^"+h+"\\[([^\\]]+)\\]$","gi");var l=null;for(var j=0;j<m.length;j++){if((l=k.exec(m[j]))!=null){return l[1]}}return null};var c=function(h){var i=a("boc-"+h,d);if(i){f[h]=i}};c("class-name");c("first-line");c("tab-size");var b=a("boc-highlight",d);if(b){f.highlight=jQuery.map(b.split(","),jQuery.trim)}var e=function(h){if(jQuery.inArray("boc-"+h,d)!=-1){f[h]=true}else{if(jQuery.inArray("boc-no-"+h,d)!=-1){f[h]=false}}};e("smart-tabs");e("ruler");e("gutter");e("toolbar");e("collapse");e("auto-links");e("light");e("wrap-lines");e("html-script");return f}}};jQuery.fn.beautifyCode=function(b,d){var c=b;var a=d;this.each(function(h,l){var k=jQuery(l);var n=k.is("code")?k:k.children("code");var f=n[0];var m=f.className.replace(/.+?(brush:|language-)/,"$1").replace("language-","").split(" ");var j=c?c:m[0];var e=jQuery.beautyOfCode.utils.parseParams(m);var g=jQuery.extend({},SyntaxHighlighter.defaults,a,e);if(g["html-script"]=="true"){highlighter=new SyntaxHighlighter.HtmlScript(j)}else{var j=SyntaxHighlighter.utils.findBrush(j);if(j){highlighter=new j()}else{return}}jQuery.beautyOfCode.utils.addCssForBrush(j,highlighter);if(k.is("pre")&&(n=k.children("code"))){k.text(n.text())}highlighter.highlight(k.html(),g);highlighter.source=l;k.replaceWith(highlighter.div)})};