-- Comments in SQL Start with dash-dash --
************************************************************************************************Part 4*****************************************************************************************


1. playstore=# SELECT app_name FROM analytics WHERE id=1880;
        app_name
-------------------------
 Web Browser for Android
(1 row)

2. SELECT id, app_name, last_updated FROM analytics WHERE last_updated='2018-08-01';

sample of chart for # 2 problem. There were too many to add here, but there were 275 rows. Also, it should be noted that I was having difficulty moving out of the chart provided.
 4796 | Manga Net – Best Online Manga Reader                                              | 2018-08-01
 4853 | Navigation Plus                                                                   | 2018-08-01
 4936 | Myanmar 2D/3D                                                                     | 2018-08-01
 5083 | RUN JUMP RUN-fun games for free                                                   | 2018-08-01
 5116 | Truck Transport Raw Material                                                      | 2018-08-01
 5179 | AX Video Player                                                                   | 2018-08-01
 5260 | Android P Rotation                                                                | 2018-08-01
 5263 | Alt-C                                                                             | 2018-08-01
 5264 | Je Parle ANGLAIS - Apprendre l’anglais Audio cours                                | 2018-08-01
 5293 | Digital Clock AW-7                                                                | 2018-08-01
 5370 | English for Everyone                                                              | 2018-08-01
 5382 | Hashtags For Likes.co                                                             | 2018-08-01
 5388 | The EO Bar                                                                        | 2018-08-01
 5474 | Gangster City Auto Theft                                                          | 2018-08-01
 5485 | Barcelona Live 2018—Goals & News for Barca FC Fans                                | 2018-08-01
 5494 | BI Mobile                                                                         | 2018-08-01
 5521 | bm offers                                                                         | 2018-08-01
 5583 | Cyprus CU Mobile Banking                                                          | 2018-08-01
 5781 | HTC Sense Input - BG                                                              | 2018-08-01
 5921 | MultiMessage for FB Messenger                                                     | 2018-08-01
 5945 | FD Community FCU Mobile                                                           | 2018-08-01
 5985 | AG Drive 3D                                                                       | 2018-08-01
 5998 | GATE CS Engineering 2019 Exam Prep App                                            | 2018-08-01
 6030 | Music Collector Inventory Organizer UPC Discogs                                   | 2018-08-01
 6060 | Results for FL Lottery                                                            | 2018-08-01
 6108 | Fortune Quest: Savior                                                             | 2018-08-01
 6116 | Leica Q                                                                           | 2018-08-01
 6136 | Bird Sounds & Bird Ringtones for Free 2018                                        | 2018-08-01
 6161 | Elemental Galaxy Dx - Match3                                                      | 2018-08-01
 6174 | infirmiers                                                                        | 2018-08-01
 6328 | Inbox.eu                                                                          | 2018-08-01
 6331 | AU Students Zone (Result 2016)                                                    | 2018-08-01
 6405 | VCalendar - VenkatRama and Co                                                     | 2018-08-01
 6550 | Mummatikabalkuragi                                                                | 2018-08-01
 6749 | Peppa Pig: Party Time                                                             | 2018-08-01
 6781 | Ez Texting                                                                        | 2018-08-01
 6806 | 17th Edition Cable Sizer                                                          | 2018-08-01
 6879 | Coupons for Dairy Queen                                                           | 2018-08-01
 7013 | EM Launcher Pro                                                                   | 2018-08-01
 7025 | Ditto CP Calculator GO                                                            | 2018-08-01
 7901 | CARDI B WALLPAPERS                                                                | 2018-08-01
 7971 | Blood Pressure - Stay Healthy                                                     | 2018-08-01
 8016 | CP Calculator - Poke Go Calc                                                      | 2018-08-01
 8056 | Chat Kids - Chat Room For Kids                                                    | 2018-08-01
 8267 | BTS J-Hope Wallpaper HD for KPOP Fans                                             | 2018-08-01
 8299 | BL 1-Click Camera                                                                 | 2018-08-01
 8452 | BJ TIKET                                                                          | 2018-08-01
 8682 | CZ Kompas                                                                         | 2018-08-01
 8705 | DEM DZ                                                                            | 2018-08-01
 8716 | Vital Tones EI Pro                                                                | 2018-08-01
 8717 | EI HabitTracker                                                                   | 2018-08-01
 8719 | ei Calc                                                                           | 2018-08-01
 9074 | EXOGEN Connects (US)                                                              | 2018-08-01
 9112 | Popsicle Launcher for Android P 9.0 launcher                                      | 2018-08-01
 9212 | BA Status                                                                         | 2018-08-01
 9242 | BJ’s Community SoundBoard                                                         | 2018-08-01
 9427 | db Meter - sound level meter with data logging                                    | 2018-08-01
 9527 | EO Forum                                                                          | 2018-08-01

3. playstore=# SELECT category, COUNT(app_name) AS categ_count FROM analytics GROUP BY category;
      category       | categ_count
---------------------+-------------
 BOOKS_AND_REFERENCE |         191
 COMMUNICATION       |         342
 BEAUTY              |          46
 EVENTS              |          52
 PARENTING           |          59
 PHOTOGRAPHY         |         313
 GAME                |        1110
 BUSINESS            |         313
 SOCIAL              |         269
 MEDICAL             |         350
 TOOLS               |         753
 TRAVEL_AND_LOCAL    |         234
 ART_AND_DESIGN      |          63
 LIFESTYLE           |         319
 WEATHER             |          79
 COMICS              |          59
 PRODUCTIVITY        |         360
 PERSONALIZATION     |         329
 FINANCE             |         331
 SPORTS              |         338
 ENTERTAINMENT       |         149
 NEWS_AND_MAGAZINES  |         249
 HOUSE_AND_HOME      |          82
 SHOPPING            |         241
 DATING              |         204
 HEALTH_AND_FITNESS  |         298
 EDUCATION           |         156
 MAPS_AND_NAVIGATION |         129
 LIBRARIES_AND_DEMO  |          80
 FOOD_AND_DRINK      |         110
 FAMILY              |        1789
 VIDEO_PLAYERS       |         165
 AUTO_AND_VEHICLES   |          75

4. playstore=# SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
                 app_name                 | reviews
------------------------------------------+----------
 Facebook                                 | 78158306
 WhatsApp Messenger                       | 78128208
 Instagram                                | 69119316
 Messenger – Text and Video Chat for Free | 69119316
 Clash of Clans                           | 69109672

5. playstore=# SELECT app_name FROM analytics WHERE rating >= 4.8  ORDER BY reviews DESC LIMIT 1;
  app_name
------------
 Chess Free
(1 row)

6. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@NEED HELP: NOT FINISHED@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Could nto figure this one out, moved on for now, the below are all my attempts:

playstore=# SELECT category, AVG(rating) FROM analytics ORDERED BY rating DESC;
ERROR:  syntax error at or near "BY"
LINE 1: ...LECT category, AVG(rating) FROM analytics ORDERED BY rating ...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating DESC;
ERROR:  column "analytics.category" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT category, AVG(rating) FROM analytics ORDER BY rating ...
               ^
playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating DESC GROUP BY category;
ERROR:  syntax error at or near "GROUP"
LINE 1: ..., AVG(rating) FROM analytics ORDER BY rating DESC GROUP BY c...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY rating DESC;
ERROR:  column "analytics.rating" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: ...rating) FROM analytics GROUP BY category ORDER BY rating DES...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating DESC GROUP BY category;
ERROR:  syntax error at or near "GROUP"
LINE 1: ..., AVG(rating) FROM analytics ORDER BY rating DESC GROUP BY c...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating;
ERROR:  column "analytics.category" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT category, AVG(rating) FROM analytics ORDER BY rating;
               ^
playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating GROUP BY category;
ERROR:  syntax error at or near "GROUP"
LINE 1: ...egory, AVG(rating) FROM analytics ORDER BY rating GROUP BY c...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY rating;
ERROR:  column "analytics.rating" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: ...VG(rating) FROM analytics GROUP BY category ORDER BY rating;
                                                                ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category HAVING rating;
ERROR:  argument of HAVING must be type boolean, not type real
LINE 1: ... AVG(rating) FROM analytics GROUP BY category HAVING rating;
                                                                ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category HAVING rating DESC;
ERROR:  syntax error at or near "DESC"
LINE 1: ...rating) FROM analytics GROUP BY category HAVING rating DESC;
                                                                  ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category HAVING ORDER BY rating DESC;
ERROR:  syntax error at or near "ORDER"
LINE 1: ...G(rating) FROM analytics GROUP BY category HAVING ORDER BY r...
                                                             ^
playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category;
      category       |        avg
---------------------+--------------------
 BOOKS_AND_REFERENCE | 4.3423728633061645
 COMMUNICATION       |  4.151234589241169
 BEAUTY              |  4.299999970656175
 EVENTS              |  4.395238104320708
 PARENTING           |  4.285714266251545
 PHOTOGRAPHY         |  4.196116511489967
 GAME                |  4.287167731498383
 BUSINESS            |  4.116666667004849
 SOCIAL              |  4.245669291244717
 MEDICAL             | 4.1926829182520144
 TOOLS               |  4.050627608678331
 TRAVEL_AND_LOCAL    |   4.10179372753263
 ART_AND_DESIGN      |  4.347540949211746
 LIFESTYLE           |  4.077076400237226
 WEATHER             |   4.24399998664856
 COMICS              |  4.155172401461108
 PRODUCTIVITY        |  4.212173904543338
 PERSONALIZATION     |    4.3283387457509
 FINANCE             |  4.146835436549368
 SPORTS              |  4.233333332576449
 ENTERTAINMENT       |   4.12617449632427
 NEWS_AND_MAGAZINES  |  4.130131007281974
 HOUSE_AND_HOME      |  4.197368430463891
 SHOPPING            |  4.253648051376507
 DATING              |  3.993684190825412
 HEALTH_AND_FITNESS  | 4.2743944663902464
 EDUCATION           |   4.38903223006956
 MAPS_AND_NAVIGATION |  4.058196711735647
 LIBRARIES_AND_DEMO  | 4.1784615259904125
 FOOD_AND_DRINK      |  4.155660354866172
 FAMILY              | 4.1904873752761995
 VIDEO_PLAYERS       |  4.059748438919115
 AUTO_AND_VEHICLES   |  4.200000017881393
(33 rows)

playstore=# SELECT category, AVG(rating) FROM analytics ORDER BY rating GROUP BY category;
ERROR:  syntax error at or near "GROUP"
LINE 1: ...egory, AVG(rating) FROM analytics ORDER BY rating GROUP BY c...
                                                             ^

7. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@NEED HELP: NOT FINISHED@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Attempts to figure this one out.

                                                             ^
playstore=# SELECT app_name, price, rating FROM analytics WHERE MAX(price) AND rating <3;
ERROR:  aggregate functions are not allowed in WHERE
LINE 1: ...LECT app_name, price, rating FROM analytics WHERE MAX(price)...
                                                             ^
playstore=# SELECT app_name, price, rating FROM analytics HAVING  MAX(price) AND rating <3;
ERROR:  argument of AND must be type boolean, not type real
LINE 1: ...CT app_name, price, rating FROM analytics HAVING  MAX(price)...
                                                             ^
playstore=# SELECT app_name, MAX(price), rating FROM analytics HAVING rating <3;
ERROR:  column "analytics.app_name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT app_name, MAX(price), rating FROM analytics HAVING ra...
               ^
playstore=# SELECT app_name, MAX(price), rating FROM analytics GROUP BY app_name HAVING rating <3;
ERROR:  column "analytics.rating" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT app_name, MAX(price), rating FROM analytics GROUP BY ...
                                     ^
playstore=# SELECT app_name, MAX(price), rating FROM analytics GROUP BY rating HAVING rating <3;
ERROR:  column "analytics.app_name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT app_name, MAX(price), rating FROM analytics GROUP BY ...
               ^
playstore=# SELECT app_name, MAX(price), rating FROM analytics GROUP BY app_name HAVING rating <3;
ERROR:  column "analytics.rating" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: SELECT app_name, MAX(price), rating FROM analytics GROUP BY ...
                                     ^
playstore=# SELECT app_name, price, rating FROM analytics GROUP BY MAX(price) HAVING rating <3;
ERROR:  aggregate functions are not allowed in GROUP BY
LINE 1: ...T app_name, price, rating FROM analytics GROUP BY MAX(price)...
                                                             ^
playstore=# SELECT app_name, price, rating FROM analytics WHERE  GROUP BY MAX(price) HAVING rating <3;
ERROR:  syntax error at or near "GROUP"
LINE 1: ...ECT app_name, price, rating FROM analytics WHERE  GROUP BY M...


8. playstore=# SELECT app_name FROM analytics WHERE min_installs<=50 AND rating>0 ORDER BY rating DESC;
                   app_name
------------------------------------------------
 DT
 DQ Akses
 DM Adventure
 db Meter - sound level meter with data logging
 Otto DM
 ElejaOnline DF
 Labs on Demand
 FK Events
 My CW
 Dr.Dice - Sic bo analyzer
 BTK-FH Online Campus
 EU Whoiswho
 Wifi Mingle
 Lord Fairfax EMS Council
 E.U. Trademark Search Tool
 Popsicle Launcher for Android P 9.0 launcher
 Q Actions - Digital Assistant
 Border Ag & Energy
 AQ: First Contact
 AQ wisdom +
 AQ Dentals
 British Columbia Transit Info
 CI On The Go
 Radio FG Paris Underground
 BV Bombers
 EC Designer 2.0
 EP FCU
 Pekalongan CJ
 CQ SIGNAL PRO 5
 HR Team CQ Region Ed Qld
 iCluster - The DX-Cluster database
 MY GULFPORT FL
 Sensenuts eI
 BW t&t
 DT CLOTHINGS
 Miller’s Bar B-Q
 All-night drugstore CI & Price
 CY Spray nozzle
 DY Fitness
 Custos F.O.
 ER
 BL File Explorer
 Audiowalk EB
 Ec Solutions Mobile
 BT Satmeter
 FQ - Football Quiz
 Reksio cz. 1
 CE Genius Nurses Edition
 DF-View
 ReDNAKET DB Normalization Tool
 Ek IRA
 EC-Contractors
 Word Search Tab 1 FR
 Cy’s Elma Pharmacy
 F-1 watchface by Delta
 Dr D K Olukoya
 BibleRead En Cy Zh Yue
(57 rows)

9. playstore=# SELECT app_name FROM analytics WHERE rating<3 AND reviews>10000;
                    app_name
-------------------------------------------------
 The Wall Street Journal: Business & Market News
 Vikings: an Archer’s Journey
 Shoot Em Down Free

10. SELECT app_name FROM analytics WHERE price BETWEEN 0.1 AND 10 ORDER BY reviews DESC;
	Got a very big chart, 90% certain this is correct.

11.playstore=# SELECT app_name FROM analytics ORDER BY last_updated DESC LIMIT 1;
  app_name
------------
 True Skate
(1 row)


12. playstore=# SELECT app_name FROM analytics ORDER BY price DESC LIMIT 1;
      app_name
--------------------
 Cardi B Piano Game
(1 row)

13. playstore=# SELECT SUM(reviews) FROM analytics
playstore-# ;
    sum
------------
 4814575866

14. playstore=# SELECT category, COUNT(app_name) FROM analytics GROUP BY category HAVING COUNT(app_name)> 300;
    category     | count
-----------------+-------
 COMMUNICATION   |   342
 PHOTOGRAPHY     |   313
 GAME            |  1110
 BUSINESS        |   313
 MEDICAL         |   350
 TOOLS           |   753
 LIFESTYLE       |   319
 PRODUCTIVITY    |   360
 PERSONALIZATION |   329
 FINANCE         |   331
 SPORTS          |   338
 FAMILY          |  1789

15. playstore=# SELECT app_name, reviews, min_installs, min_installs/reviews AS ratio FROM analytics ORDER BY ratio DESC LIMIT 1;
     app_name     | reviews | min_installs | ratio
------------------+---------+--------------+--------
 Kim Bu Youtuber? |      66 |     10000000 | 151515


FS1.


FS2.playstore=# SELECT app_name FROM analytics WHERE app_name ILIKE '%facebook%';
                      app_name
----------------------------------------------------
 Facebook
 Facebook Lite
 Facebook Pages Manager
 Video Downloader for Facebook
 Who Viewed My Facebook Profile - Stalkers Visitors
 Lite for Facebook Messenger
 Friendly for Facebook
 Profile Tracker - Who Viewed My Facebook Profile
 EZ Video Download for Facebook
 Faster for Facebook Lite
 HD Video Download for Facebook
 Facebook Ads Manager
 HTC Social Plugin - Facebook
 Stickers for Facebook
 Puffin for Facebook
 Phoenix - Facebook & Messenger
 Swift for Facebook Lite
 Pink Color for Facebook
 Facebook Local
 Facebook Face to Face Events
 Facebook Creator
 Download Facebook Photo Albums
 IDM for Facebook ★ Downloader
 Faster Social for Facebook
 Mini for Facebook lite
 Lite Messenger for Facebook Lite
 Dp for Facebook
 Videos downloader for Facebook:fast fb video saver
(28 rows)




