New Zealand Earthquakes
========================================================
author: Gareth Robins
date:   27th December 2015

Introduction
========================================================

This document serves to support the Shiny app located at XXXXXX.  The app was created as part of the Coursera Data Science Specialisation, and enables the user to gain some insight into XXXXXX

- Getting and Cleaning the Data
- Building Shiny App
- Conclusions

Getting and Cleaning the Data
========================================================

The Data for this project was obtained from geonet.org.nz a collaboration between the New Zealand Earthquake Commission and GNS Science.

I acknowledge the New Zealand GeoNet project and its sponsors EQC, GNS Science and LINZ, for providing data/images used in this study.
 

Geonet data policy - http://info.geonet.org.nz/display/geonet/Data+Policy

The data contains 19,658 records of seismic events.  For this exercise we are only concerned with the 'earthquake' type, of which there are 6,195 events.



```r
quakes_raw <- read.csv("C:/gr/sources/csra-datasci-dataproducts/app/data/quakes_raw.csv")

summary(quakes_raw)
```

```
        publicid                           eventtype    
 2014p973449:    1                              :13177  
 2014p973479:    1   earthquake                 : 6195  
 2014p973487:    1   explosion                  :    1  
 2014p973508:    1   not locatable              :    6  
 2014p973509:    1   outside of network interest:  271  
 2014p973513:    1   quarry blast               :    8  
 (Other)    :19652                                      
                    origintime                    modificationtime
 2014-12-27T04:14:01.675Z:    1   2015-12-13T16:07:26.954Z:    2  
 2014-12-27T04:30:30.457Z:    1   2014-12-27T04:36:49.014Z:    1  
 2014-12-27T04:34:00.767Z:    1   2014-12-27T04:47:13.233Z:    1  
 2014-12-27T04:45:30.408Z:    1   2014-12-27T05:13:43.472Z:    1  
 2014-12-27T04:45:50.603Z:    1   2014-12-27T06:55:27.354Z:    1  
 2014-12-27T04:47:50.061Z:    1   2014-12-27T07:03:15.201Z:    1  
 (Other)                 :19652   (Other)                 :19651  
   longitude         latitude        magnitude            depth        
 Min.   :-180.0   Min.   :-48.04   Min.   :-0.06719   Min.   :  0.625  
 1st Qu.: 174.7   1st Qu.:-40.66   1st Qu.: 1.70737   1st Qu.: 12.734  
 Median : 175.8   Median :-39.48   Median : 2.10733   Median : 25.156  
 Mean   : 172.3   Mean   :-39.82   Mean   : 2.13970   Mean   : 49.875  
 3rd Qu.: 176.7   3rd Qu.:-38.60   3rd Qu.: 2.52829   3rd Qu.: 56.094  
 Max.   : 180.0   Max.   :-32.30   Max.   : 6.23312   Max.   :750.000  
                                                                       
 magnitudetype              depthtype      evaluationmethod
 M     :19647                    :18824   LOCSAT   : 3082  
 ML    :    4   from location    :    5   NonLinLoc:16576  
 MLv   :    6   operator assigned:  829                    
 Mw(mB):    1                                              
                                                           
                                                           
                                                           
  evaluationstatus   evaluationmode     earthmodel    usedphasecount  
          :13271   automatic:13302   iasp91  : 3082   Min.   :  5.00  
 confirmed: 6387   manual   : 6356   iaspei91:   10   1st Qu.: 13.00  
                                     nz3drx  :16566   Median : 17.00  
                                                      Mean   : 23.08  
                                                      3rd Qu.: 27.00  
                                                      Max.   :153.00  
                                                                      
 usedstationcount magnitudestationcount minimumdistance    azimuthalgap   
 Min.   :  4.00   Min.   :  1.00        Min.   :0.00114   Min.   : 19.43  
 1st Qu.: 12.00   1st Qu.:  7.00        1st Qu.:0.09536   1st Qu.: 84.62  
 Median : 16.00   Median : 11.00        Median :0.16152   Median :120.05  
 Mean   : 20.86   Mean   : 13.92        Mean   :0.30470   Mean   :137.38  
 3rd Qu.: 24.00   3rd Qu.: 16.00        3rd Qu.:0.33908   3rd Qu.:179.17  
 Max.   :153.00   Max.   :171.00        Max.   :5.86457   Max.   :351.93  
                                                                          
  originerror      magnitudeuncertainty
 Min.   :0.02285   Min.   :0.000       
 1st Qu.:0.25814   1st Qu.:0.180       
 Median :0.43412   Median :0.195       
 Mean   :0.54351   Mean   :0.237       
 3rd Qu.:0.68009   3rd Qu.:0.314       
 Max.   :6.78248   Max.   :0.452       
                   NA's   :19647       
```

```r
quakes_raw <- subset(quakes_raw, eventtype == 'earthquake')
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](shinyapp-presso-figure/unnamed-chunk-2-1.png) 
