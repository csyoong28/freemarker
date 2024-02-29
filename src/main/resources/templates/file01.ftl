<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FreeMarker</title>
</head>
<body>
<h2>数据类型</h2>
<h5>boolean</h5>
model.addAttribute("aBoolean",true);   //from here<br>
S{aBoolean?c} ----> ${aBoolean?c}<br>
S{aBoolean?string} ----> ${aBoolean?string}<br>
S{aBoolean?string('yes','no')} ----> ${aBoolean?string('yes','no')}<br>
S{aBoolean?string('i like','i hate')} ----> ${aBoolean?string('i like','i hate')}<br>
<hr>
<h5>Date</h5>
model.addAttribute("aDate",new Date());  //from here<br>
S{aDate?c} ----> ${aDate?date}<br>
S{aDate?time} ----> ${aDate?time}<br>
S{aDate?datetime} ----> ${aDate?datetime}<br>
S{aDate?string("yyyy年MM月dd日 HH:mm:ss")} ----> ${aDate?string("yyyy年MM月dd日 HH:mm:ss")}<br>
<hr>
<h5>number</h5>
model.addAttribute("aNumber1",1000000);<br>
model.addAttribute("aNumber2",123.456);<br>
S{aNumber1} ----> ${aNumber1}<br>
S{aNumber1?c} ----> ${aNumber1?c}<br>
S{aNumber1?string.currency} ----> ${aNumber1?string.currency}<br>
S{aNumber1?string.percent} ----> ${aNumber1?string.percent}<br>
S{aNumber2?string["0.##"]} ----> ${aNumber2?string["0.##"]}<br>


<hr>
<h5>String</h5>
model.addAttribute("aString", "aStringValue");   <br>
S{aString?substring(0,2)} ----> ${aString?substring(0,2)}<br>
S{aString?upper_case} ----> ${aString?upper_case}<br>
S{aString?length} ----> ${aString?length}<br>
S{aString?starts_with("a")?string} ----> ${aString?starts_with("a")?string}<br>
S{aString?replace("a","o")} ----> ${aString?replace("a","o")}<br>
<br>


<hr>
<h5>null handling</h5>
S{sthNull!} ----> ${sthNull!}  -->default empty string<br>
S{sthNull!"defaultString"} ----> ${sthNull!"defaultString"}  -->can set default string<br>
S{(sthNull??)?c} ----> ${(sthNull??)?c}  --> true or false(false if not exist or null)<br>

<hr>
<h5>sequence</h5>
will work for arrays, list, set
String[] aStringArray = new String[]{"aa", "bb", "cc", "dd"};<br>
model.addAttribute("aStringArray", aStringArray);<br>
< #list aStringArray as str><br>
S{str?index}:S{str}<br>
< /#list><br>
will become<br>
<#list aStringArray as str>
    ${str?index}: ${str}<br>
</#list>

S{aStringArray?size}  --->${aStringArray?size}<br>
S{aStringArray?first}  --->${aStringArray?first}<br>


</body>
</html>