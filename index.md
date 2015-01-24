---
title       : Internet Services Market Share
subtitle    : Find out what combo plans would give you the highest utility!
author      : Valeria Fonseca Diaz
job         : Statistician. Bogota, Colombia
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}

--- 

## What is a conjoint simulator?
<div class='build'>
<p>This is a market reseach tool that provides a 'utility estimate measure' for different potential products or services that are to be offered. In this particular application, the seller is a communications company (Internet services) and utilities for 3 potencial services at a time will be obtained. </p>


<img class='center' src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6UHbBGMZaVmTiTzbZc-1bxNEBWebmMbGWHqyfAXhAiN5np-JZ4w' height=250px width=250px/>

<p> A conjoint simulator is mainly thought of as a room with a number of consumers (100,500, 1000, etc) who vote for the products or services that are offered. Finally, there will be a percentage for each product or service which represents the predicted proportion of consumers that would buy it. Here consumers are segmented so filters are available. </p>
</div>

---
## What does the seller need to do here?

The services that will be assessed consist of combinations of different attributes each with different options. For example:

- Combo plan 1: T-mobile, Up to $30, 2MB, No Wi-Fi
- Combo plan 2: Verizon, $30 - $50, 5MB, Customized Wi-Fi service

are two different services that a company may offer. The simulator asks the seller to enter 3 combo plans. The attributes are carrier company, price, velocity and extra Wi-Fi service.

<img class='center' src='http://images.sciencedaily.com/2014/02/140227115516-large.jpg' height=250px width=350px/>

--- .class #id bg:#C5CACE

## What is inside a conjoint simulator?
Here is a little simulated example of what is done. Two services will be assessed. The utility matrix has utilities for each level of each attribute and intercept, for each of 5 consumers.

```r
set.seed(21432345)
utilities=data.frame(matrix(rnorm(5*5,5,3),5,5))# must be previously obtained
names(utilities)=c("b0", "at1_op1", "at1_op2", "at2_op1", "at2_op2") 
ser1<-c("b0","at1_op1","at2_op2");         ser2<-c("b0","at2_op1","at2_op2")
ser1_id<-which(names(utilities)%in%ser1); ser2_id<-which(names(utilities)%in%ser2)
servs_sum<-data.frame(s1=apply(utilities[,ser1_id],1,sum),
                      s2=apply(utilities[,ser2_id],1,sum))
services_perc<-apply(apply(exp(servs_sum),1,function(x)x/sum(x)),1,mean)
data.frame(Combos=c("Combo plan 1", "Combo plan 2"), 
           Share=paste(round(services_perc*100,2),"%"))
```

```
##         Combos  Share
## 1 Combo plan 1 31.6 %
## 2 Combo plan 2 68.4 %
```


---
## Make decisions on what you get from the simulator
<div class='build'>
<q> Well, there should be no doubt about what service to sell, should it? </q>
</div>
<!-- ColumnChart generated in R 3.1.2 by googleVis 0.5.7 package -->
<!-- Fri Jan 23 22:16:47 2015 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataColumnChartID2093cf95b18 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Combo plan 1",
31.6 
],
[
 "Combo plan 2",
68.4 
] 
];
data.addColumn('string','Services');
data.addColumn('number','Share');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartColumnChartID2093cf95b18() {
var data = gvisDataColumnChartID2093cf95b18();
var options = {};
options["allowHtml"] = true;
options["colors"] = ['purple'];
options["width"] =    800;
options["height"] =    400;

    var chart = new google.visualization.ColumnChart(
    document.getElementById('ColumnChartID2093cf95b18')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartColumnChartID2093cf95b18);
})();
function displayChartColumnChartID2093cf95b18() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartColumnChartID2093cf95b18"></script>
 
<!-- divChart -->
  
<div id="ColumnChartID2093cf95b18" 
  style="width: 800; height: 400;">
</div>

