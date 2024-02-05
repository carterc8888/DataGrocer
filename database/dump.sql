--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: absdata; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA absdata;


ALTER SCHEMA absdata OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: category; Type: TABLE; Schema: absdata; Owner: postgres
--

CREATE TABLE absdata.category (
    name text NOT NULL
);


ALTER TABLE absdata.category OWNER TO postgres;

--
-- Name: item; Type: TABLE; Schema: absdata; Owner: postgres
--

CREATE TABLE absdata.item (
    name text NOT NULL,
    category text NOT NULL
);


ALTER TABLE absdata.item OWNER TO postgres;

--
-- Name: location; Type: TABLE; Schema: absdata; Owner: postgres
--

CREATE TABLE absdata.location (
    name text NOT NULL
);


ALTER TABLE absdata.location OWNER TO postgres;

--
-- Name: price; Type: TABLE; Schema: absdata; Owner: postgres
--

CREATE TABLE absdata.price (
    location text NOT NULL,
    item text NOT NULL,
    date date NOT NULL,
    price numeric(8,0) NOT NULL
);


ALTER TABLE absdata.price OWNER TO postgres;

--
-- Data for Name: category; Type: TABLE DATA; Schema: absdata; Owner: postgres
--

COPY absdata.category (name) FROM stdin;
Dairy products
Bread and cereal products
Meat and seafoods
Fresh fruit and vegetables
Processed fruit and vegetables
Snacks and confectionery
Other food
Household supplies
Private motoring
Alcoholic drinks
Personal care products
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: absdata; Owner: postgres
--

COPY absdata.item (name, category) FROM stdin;
Milk	Dairy products
Cheese	Dairy products
Butter	Dairy products
Bread white loaf, sliced	Bread and cereal products
Biscuits, dry	Bread and cereal products
Breakfast cereal	Bread and cereal products
Flour, self raising	Bread and cereal products
Rice	Bread and cereal products
Roast beef	Meat and seafoods
Rump steak	Meat and seafoods
T-bone steak, with fillet	Meat and seafoods
Chuck steak	Meat and seafoods
Lamb leg	Meat and seafoods
Lamb loin chops	Meat and seafoods
Lamb forequarter chops	Meat and seafoods
Pork leg	Meat and seafoods
Pork loin chops	Meat and seafoods
Chicken, frozen	Meat and seafoods
Bacon, middle rashers	Meat and seafoods
Sausages	Meat and seafoods
Salmon, pink	Meat and seafoods
Oranges	Fresh fruit and vegetables
Bananas	Fresh fruit and vegetables
Potatoes	Fresh fruit and vegetables
Tomatoes	Fresh fruit and vegetables
Carrots	Fresh fruit and vegetables
Onions	Fresh fruit and vegetables
Peaches	Processed fruit and vegetables
Pineapple, sliced	Processed fruit and vegetables
Peas, frozen	Processed fruit and vegetables
Chocolate milk	Snacks and confectionery
Eggs	Other food
Sugar, white	Other food
Jam, strawberry	Other food
Teabags	Other food
Coffee, instant	Other food
Tomato sauce	Other food
Margarine, poly-unsaturated	Other food
Baked beans, in tomato sauce	Other food
Baby food	Other food
Laundry detergent	Household supplies
Dishwashing detergent	Household supplies
Facial tissues	Household supplies
Toilet paper	Household supplies
Pet food	Household supplies
Petrol, unleaded	Private motoring
Beer, low alcohol	Alcoholic drinks
Beer, full strength	Alcoholic drinks
Draught beer, low alcohol, public bar	Alcoholic drinks
Draught beer, full strength, public bar	Alcoholic drinks
Scotch	Alcoholic drinks
Toilet soap	Personal care products
Toilet tissue	Household supplies
Chicken, whole fresh	Meat and seafoods
Beef Sausages	Meat and seafoods
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: absdata; Owner: postgres
--

COPY absdata.location (name) FROM stdin;
Sydney
Melbourne
Brisbane
Adelaide
Perth
Hobart
Darwin
Canberra
\.


--
-- Data for Name: price; Type: TABLE DATA; Schema: absdata; Owner: postgres
--

COPY absdata.price (location, item, date, price) FROM stdin;
Adelaide	Milk	2004-09-01	283
Perth	Milk	2004-09-01	263
Hobart	Milk	2004-09-01	282
Darwin	Milk	2004-09-01	292
Sydney	Cheese	2004-09-01	425
Melbourne	Cheese	2004-09-01	394
Brisbane	Cheese	2004-09-01	405
Adelaide	Cheese	2004-09-01	399
Perth	Cheese	2004-09-01	426
Hobart	Cheese	2004-09-01	412
Darwin	Cheese	2004-09-01	431
Sydney	Butter	2004-09-01	266
Melbourne	Butter	2004-09-01	264
Brisbane	Butter	2004-09-01	214
Perth	Butter	2004-09-01	226
Hobart	Butter	2004-09-01	227
Darwin	Butter	2004-09-01	250
Sydney	Bread white loaf, sliced	2004-09-01	246
Melbourne	Bread white loaf, sliced	2004-09-01	254
Brisbane	Bread white loaf, sliced	2004-09-01	243
Adelaide	Bread white loaf, sliced	2004-09-01	242
Perth	Bread white loaf, sliced	2004-09-01	234
Hobart	Bread white loaf, sliced	2004-09-01	248
Darwin	Bread white loaf, sliced	2004-09-01	287
Sydney	Biscuits, dry	2004-09-01	180
Melbourne	Biscuits, dry	2004-09-01	185
Adelaide	Biscuits, dry	2004-09-01	186
Perth	Biscuits, dry	2004-09-01	173
Hobart	Biscuits, dry	2004-09-01	201
Darwin	Biscuits, dry	2004-09-01	202
Sydney	Breakfast cereal	2004-09-01	336
Melbourne	Breakfast cereal	2004-09-01	320
Brisbane	Breakfast cereal	2004-09-01	333
Adelaide	Breakfast cereal	2004-09-01	291
Perth	Breakfast cereal	2004-09-01	348
Hobart	Breakfast cereal	2004-09-01	354
Darwin	Breakfast cereal	2004-09-01	320
Sydney	Flour, self raising	2004-09-01	341
Melbourne	Flour, self raising	2004-09-01	398
Brisbane	Flour, self raising	2004-09-01	291
Perth	Flour, self raising	2004-09-01	406
Hobart	Flour, self raising	2004-09-01	261
Darwin	Flour, self raising	2004-09-01	372
Sydney	Rice	2004-09-01	185
Melbourne	Rice	2004-09-01	211
Brisbane	Rice	2004-09-01	196
Adelaide	Rice	2004-09-01	197
Perth	Rice	2004-09-01	214
Hobart	Rice	2004-09-01	217
Darwin	Rice	2004-09-01	218
Sydney	Roast beef	2004-09-01	1013
Melbourne	Roast beef	2004-09-01	1083
Brisbane	Roast beef	2004-09-01	1028
Adelaide	Roast beef	2004-09-01	1004
Perth	Roast beef	2004-09-01	1040
Hobart	Roast beef	2004-09-01	1039
Darwin	Roast beef	2004-09-01	1176
Sydney	Rump steak	2004-09-01	1581
Melbourne	Rump steak	2004-09-01	1566
Brisbane	Rump steak	2004-09-01	1572
Adelaide	Rump steak	2004-09-01	1689
Perth	Rump steak	2004-09-01	1466
Darwin	Rump steak	2004-09-01	1481
Sydney	T-bone steak, with fillet	2004-09-01	1667
Melbourne	T-bone steak, with fillet	2004-09-01	1588
Brisbane	T-bone steak, with fillet	2004-09-01	1675
Adelaide	T-bone steak, with fillet	2004-09-01	1588
Perth	T-bone steak, with fillet	2004-09-01	1684
Hobart	T-bone steak, with fillet	2004-09-01	1615
Darwin	T-bone steak, with fillet	2004-09-01	1679
Sydney	Chuck steak	2004-09-01	933
Melbourne	Chuck steak	2004-09-01	888
Brisbane	Chuck steak	2004-09-01	894
Adelaide	Chuck steak	2004-09-01	927
Perth	Chuck steak	2004-09-01	913
Hobart	Chuck steak	2004-09-01	895
Sydney	Lamb leg	2004-09-01	965
Melbourne	Lamb leg	2004-09-01	883
Brisbane	Lamb leg	2004-09-01	914
Adelaide	Lamb leg	2004-09-01	948
Perth	Lamb leg	2004-09-01	879
Hobart	Lamb leg	2004-09-01	869
Darwin	Lamb leg	2004-09-01	929
Sydney	Lamb loin chops	2004-09-01	1564
Melbourne	Lamb loin chops	2004-09-01	1525
Brisbane	Lamb loin chops	2004-09-01	1560
Adelaide	Lamb loin chops	2004-09-01	1576
Perth	Lamb loin chops	2004-09-01	1503
Darwin	Lamb loin chops	2004-09-01	1569
Sydney	Lamb forequarter chops	2004-09-01	875
Melbourne	Lamb forequarter chops	2004-09-01	865
Brisbane	Lamb forequarter chops	2004-09-01	827
Adelaide	Lamb forequarter chops	2004-09-01	896
Perth	Lamb forequarter chops	2004-09-01	832
Hobart	Lamb forequarter chops	2004-09-01	769
Darwin	Lamb forequarter chops	2004-09-01	874
Sydney	Pork leg	2004-09-01	551
Melbourne	Pork leg	2004-09-01	565
Brisbane	Pork leg	2004-09-01	561
Adelaide	Pork leg	2004-09-01	671
Perth	Pork leg	2004-09-01	687
Hobart	Pork leg	2004-09-01	665
Darwin	Pork leg	2004-09-01	705
Sydney	Pork loin chops	2004-09-01	1083
Brisbane	Pork loin chops	2004-09-01	1071
Adelaide	Pork loin chops	2004-09-01	1141
Perth	Pork loin chops	2004-09-01	1206
Hobart	Pork loin chops	2004-09-01	1156
Darwin	Pork loin chops	2004-09-01	1128
Sydney	Chicken, frozen	2004-09-01	392
Melbourne	Chicken, frozen	2004-09-01	392
Brisbane	Chicken, frozen	2004-09-01	399
Adelaide	Chicken, frozen	2004-09-01	420
Perth	Chicken, frozen	2004-09-01	396
Hobart	Chicken, frozen	2004-09-01	379
Melbourne	Milk	2004-09-01	268
Melbourne	Bacon, middle rashers	2004-09-01	357
Brisbane	Bacon, middle rashers	2004-09-01	360
Adelaide	Bacon, middle rashers	2004-09-01	368
Perth	Bacon, middle rashers	2004-09-01	350
Hobart	Bacon, middle rashers	2004-09-01	335
Darwin	Bacon, middle rashers	2004-09-01	429
Sydney	Sausages	2004-09-01	489
Melbourne	Sausages	2004-09-01	505
Brisbane	Sausages	2004-09-01	495
Adelaide	Sausages	2004-09-01	485
Perth	Sausages	2004-09-01	510
Hobart	Sausages	2004-09-01	515
Sydney	Salmon, pink	2004-09-01	240
Melbourne	Salmon, pink	2004-09-01	243
Brisbane	Salmon, pink	2004-09-01	242
Adelaide	Salmon, pink	2004-09-01	244
Perth	Salmon, pink	2004-09-01	264
Hobart	Salmon, pink	2004-09-01	342
Darwin	Salmon, pink	2004-09-01	279
Sydney	Oranges	2004-09-01	230
Melbourne	Oranges	2004-09-01	257
Brisbane	Oranges	2004-09-01	232
Adelaide	Oranges	2004-09-01	147
Perth	Oranges	2004-09-01	271
Hobart	Oranges	2004-09-01	202
Darwin	Oranges	2004-09-01	303
Melbourne	Bananas	2004-09-01	239
Brisbane	Bananas	2004-09-01	218
Adelaide	Bananas	2004-09-01	223
Perth	Bananas	2004-09-01	277
Hobart	Bananas	2004-09-01	255
Darwin	Bananas	2004-09-01	287
Sydney	Potatoes	2004-09-01	137
Melbourne	Potatoes	2004-09-01	175
Brisbane	Potatoes	2004-09-01	178
Adelaide	Potatoes	2004-09-01	119
Perth	Potatoes	2004-09-01	184
Hobart	Potatoes	2004-09-01	150
Darwin	Potatoes	2004-09-01	234
Sydney	Tomatoes	2004-09-01	285
Brisbane	Tomatoes	2004-09-01	261
Adelaide	Tomatoes	2004-09-01	340
Perth	Tomatoes	2004-09-01	325
Hobart	Tomatoes	2004-09-01	317
Darwin	Tomatoes	2004-09-01	417
Sydney	Carrots	2004-09-01	214
Melbourne	Carrots	2004-09-01	165
Brisbane	Carrots	2004-09-01	176
Adelaide	Carrots	2004-09-01	177
Perth	Carrots	2004-09-01	138
Hobart	Carrots	2004-09-01	177
Darwin	Carrots	2004-09-01	214
Sydney	Onions	2004-09-01	227
Melbourne	Onions	2004-09-01	216
Adelaide	Onions	2004-09-01	232
Perth	Onions	2004-09-01	169
Hobart	Onions	2004-09-01	177
Darwin	Onions	2004-09-01	266
Sydney	Peaches	2004-09-01	238
Melbourne	Peaches	2004-09-01	230
Brisbane	Peaches	2004-09-01	249
Adelaide	Peaches	2004-09-01	244
Perth	Peaches	2004-09-01	268
Hobart	Peaches	2004-09-01	251
Darwin	Peaches	2004-09-01	255
Sydney	Pineapple, sliced	2004-09-01	146
Brisbane	Pineapple, sliced	2004-09-01	149
Adelaide	Pineapple, sliced	2004-09-01	133
Perth	Pineapple, sliced	2004-09-01	154
Hobart	Pineapple, sliced	2004-09-01	161
Darwin	Pineapple, sliced	2004-09-01	145
Sydney	Peas, frozen	2004-09-01	149
Melbourne	Peas, frozen	2004-09-01	163
Brisbane	Peas, frozen	2004-09-01	147
Adelaide	Peas, frozen	2004-09-01	140
Perth	Peas, frozen	2004-09-01	165
Hobart	Peas, frozen	2004-09-01	159
Darwin	Peas, frozen	2004-09-01	183
Sydney	Chocolate milk	2004-09-01	327
Melbourne	Chocolate milk	2004-09-01	379
Brisbane	Chocolate milk	2004-09-01	325
Adelaide	Chocolate milk	2004-09-01	329
Hobart	Chocolate milk	2004-09-01	347
Darwin	Chocolate milk	2004-09-01	356
Sydney	Eggs	2004-09-01	307
Melbourne	Eggs	2004-09-01	313
Brisbane	Eggs	2004-09-01	295
Adelaide	Eggs	2004-09-01	296
Perth	Eggs	2004-09-01	387
Hobart	Eggs	2004-09-01	382
Darwin	Eggs	2004-09-01	401
Sydney	Sugar, white	2004-09-01	203
Melbourne	Sugar, white	2004-09-01	198
Brisbane	Sugar, white	2004-09-01	189
Adelaide	Sugar, white	2004-09-01	201
Perth	Sugar, white	2004-09-01	239
Hobart	Sugar, white	2004-09-01	274
Darwin	Sugar, white	2004-09-01	222
Melbourne	Jam, strawberry	2004-09-01	278
Brisbane	Jam, strawberry	2004-09-01	257
Adelaide	Jam, strawberry	2004-09-01	246
Perth	Jam, strawberry	2004-09-01	264
Hobart	Jam, strawberry	2004-09-01	290
Darwin	Jam, strawberry	2004-09-01	290
Sydney	Teabags	2004-09-01	335
Melbourne	Teabags	2004-09-01	375
Brisbane	Teabags	2004-09-01	307
Adelaide	Teabags	2004-09-01	337
Perth	Teabags	2004-09-01	359
Hobart	Teabags	2004-09-01	367
Darwin	Teabags	2004-09-01	340
Sydney	Coffee, instant	2004-09-01	609
Melbourne	Coffee, instant	2004-09-01	611
Brisbane	Coffee, instant	2004-09-01	557
Perth	Coffee, instant	2004-09-01	608
Hobart	Coffee, instant	2004-09-01	643
Darwin	Coffee, instant	2004-09-01	583
Sydney	Tomato sauce	2004-09-01	168
Melbourne	Tomato sauce	2004-09-01	156
Sydney	Bacon, middle rashers	2004-09-01	401
Perth	Tomato sauce	2004-09-01	176
Hobart	Tomato sauce	2004-09-01	192
Darwin	Tomato sauce	2004-09-01	190
Sydney	Margarine, poly-unsaturated	2004-09-01	239
Melbourne	Margarine, poly-unsaturated	2004-09-01	245
Brisbane	Margarine, poly-unsaturated	2004-09-01	231
Adelaide	Margarine, poly-unsaturated	2004-09-01	228
Perth	Margarine, poly-unsaturated	2004-09-01	229
Hobart	Margarine, poly-unsaturated	2004-09-01	248
Sydney	Baked beans, in tomato sauce	2004-09-01	116
Melbourne	Baked beans, in tomato sauce	2004-09-01	117
Brisbane	Baked beans, in tomato sauce	2004-09-01	111
Adelaide	Baked beans, in tomato sauce	2004-09-01	112
Perth	Baked beans, in tomato sauce	2004-09-01	115
Hobart	Baked beans, in tomato sauce	2004-09-01	126
Darwin	Baked beans, in tomato sauce	2004-09-01	118
Sydney	Baby food	2004-09-01	75
Melbourne	Baby food	2004-09-01	75
Brisbane	Baby food	2004-09-01	72
Adelaide	Baby food	2004-09-01	73
Perth	Baby food	2004-09-01	76
Hobart	Baby food	2004-09-01	79
Darwin	Baby food	2004-09-01	76
Sydney	Laundry detergent	2004-09-01	522
Melbourne	Laundry detergent	2004-09-01	509
Brisbane	Laundry detergent	2004-09-01	498
Adelaide	Laundry detergent	2004-09-01	524
Perth	Laundry detergent	2004-09-01	533
Hobart	Laundry detergent	2004-09-01	553
Sydney	Dishwashing detergent	2004-09-01	347
Melbourne	Dishwashing detergent	2004-09-01	335
Brisbane	Dishwashing detergent	2004-09-01	322
Adelaide	Dishwashing detergent	2004-09-01	334
Perth	Dishwashing detergent	2004-09-01	340
Hobart	Dishwashing detergent	2004-09-01	357
Darwin	Dishwashing detergent	2004-09-01	348
Sydney	Facial tissues	2004-09-01	205
Melbourne	Facial tissues	2004-09-01	209
Brisbane	Facial tissues	2004-09-01	213
Adelaide	Facial tissues	2004-09-01	195
Perth	Facial tissues	2004-09-01	206
Hobart	Facial tissues	2004-09-01	220
Darwin	Facial tissues	2004-09-01	225
Sydney	Toilet paper	2004-09-01	280
Melbourne	Toilet paper	2004-09-01	286
Adelaide	Toilet paper	2004-09-01	291
Perth	Toilet paper	2004-09-01	312
Hobart	Toilet paper	2004-09-01	316
Darwin	Toilet paper	2004-09-01	316
Sydney	Pet food	2004-09-01	101
Melbourne	Pet food	2004-09-01	102
Brisbane	Pet food	2004-09-01	104
Adelaide	Pet food	2004-09-01	100
Perth	Pet food	2004-09-01	109
Hobart	Pet food	2004-09-01	118
Darwin	Pet food	2004-09-01	103
Sydney	Petrol, unleaded	2004-09-01	102
Melbourne	Petrol, unleaded	2004-09-01	99
Brisbane	Petrol, unleaded	2004-09-01	93
Adelaide	Petrol, unleaded	2004-09-01	101
Perth	Petrol, unleaded	2004-09-01	99
Darwin	Petrol, unleaded	2004-09-01	107
Sydney	Beer, low alcohol	2004-09-01	2327
Melbourne	Beer, low alcohol	2004-09-01	2294
Brisbane	Beer, low alcohol	2004-09-01	2716
Adelaide	Beer, low alcohol	2004-09-01	2486
Perth	Beer, low alcohol	2004-09-01	2899
Hobart	Beer, low alcohol	2004-09-01	2613
Darwin	Beer, low alcohol	2004-09-01	2897
Sydney	Beer, full strength	2004-09-01	3384
Melbourne	Beer, full strength	2004-09-01	3415
Brisbane	Beer, full strength	2004-09-01	3294
Adelaide	Beer, full strength	2004-09-01	3289
Perth	Beer, full strength	2004-09-01	3453
Hobart	Beer, full strength	2004-09-01	3565
Darwin	Beer, full strength	2004-09-01	3658
Melbourne	Draught beer, low alcohol, public bar	2004-09-01	245
Brisbane	Draught beer, low alcohol, public bar	2004-09-01	217
Adelaide	Draught beer, low alcohol, public bar	2004-09-01	267
Perth	Draught beer, low alcohol, public bar	2004-09-01	303
Hobart	Draught beer, low alcohol, public bar	2004-09-01	247
Darwin	Draught beer, low alcohol, public bar	2004-09-01	243
Sydney	Draught beer, full strength, public bar	2004-09-01	230
Melbourne	Draught beer, full strength, public bar	2004-09-01	279
Brisbane	Draught beer, full strength, public bar	2004-09-01	235
Adelaide	Draught beer, full strength, public bar	2004-09-01	303
Perth	Draught beer, full strength, public bar	2004-09-01	313
Hobart	Draught beer, full strength, public bar	2004-09-01	293
Darwin	Draught beer, full strength, public bar	2004-09-01	279
Sydney	Scotch	2004-09-01	409
Melbourne	Scotch	2004-09-01	409
Brisbane	Scotch	2004-09-01	363
Adelaide	Scotch	2004-09-01	476
Perth	Scotch	2004-09-01	463
Hobart	Scotch	2004-09-01	364
Darwin	Scotch	2004-09-01	417
Sydney	Toilet soap	2004-09-01	247
Melbourne	Toilet soap	2004-09-01	241
Brisbane	Toilet soap	2004-09-01	288
Perth	Toilet soap	2004-09-01	267
Hobart	Toilet soap	2004-09-01	316
Darwin	Toilet soap	2004-09-01	275
Sydney	Milk	2004-12-01	273
Adelaide	Tomato sauce	2004-09-01	170
Melbourne	Milk	2004-12-01	298
Brisbane	Milk	2004-12-01	286
Adelaide	Milk	2004-12-01	294
Perth	Milk	2004-12-01	270
Hobart	Milk	2004-12-01	282
Darwin	Milk	2004-12-01	315
Melbourne	Cheese	2004-12-01	405
Brisbane	Cheese	2004-12-01	406
Adelaide	Cheese	2004-12-01	382
Perth	Cheese	2004-12-01	409
Hobart	Cheese	2004-12-01	390
Darwin	Cheese	2004-12-01	431
Sydney	Butter	2004-12-01	268
Melbourne	Butter	2004-12-01	274
Brisbane	Butter	2004-12-01	231
Adelaide	Butter	2004-12-01	235
Perth	Butter	2004-12-01	226
Hobart	Butter	2004-12-01	236
Sydney	Bread white loaf, sliced	2004-12-01	247
Melbourne	Bread white loaf, sliced	2004-12-01	262
Brisbane	Bread white loaf, sliced	2004-12-01	254
Adelaide	Bread white loaf, sliced	2004-12-01	240
Perth	Bread white loaf, sliced	2004-12-01	240
Hobart	Bread white loaf, sliced	2004-12-01	244
Darwin	Bread white loaf, sliced	2004-12-01	294
Sydney	Biscuits, dry	2004-12-01	182
Melbourne	Biscuits, dry	2004-12-01	185
Brisbane	Biscuits, dry	2004-12-01	168
Adelaide	Biscuits, dry	2004-12-01	186
Perth	Biscuits, dry	2004-12-01	173
Darwin	Biscuits, dry	2004-12-01	202
Sydney	Breakfast cereal	2004-12-01	342
Melbourne	Breakfast cereal	2004-12-01	336
Brisbane	Breakfast cereal	2004-12-01	333
Adelaide	Breakfast cereal	2004-12-01	330
Perth	Breakfast cereal	2004-12-01	359
Hobart	Breakfast cereal	2004-12-01	327
Darwin	Breakfast cereal	2004-12-01	332
Sydney	Flour, self raising	2004-12-01	363
Melbourne	Flour, self raising	2004-12-01	400
Brisbane	Flour, self raising	2004-12-01	287
Adelaide	Flour, self raising	2004-12-01	364
Perth	Flour, self raising	2004-12-01	392
Hobart	Flour, self raising	2004-12-01	258
Darwin	Flour, self raising	2004-12-01	365
Sydney	Rice	2004-12-01	196
Melbourne	Rice	2004-12-01	214
Brisbane	Rice	2004-12-01	196
Perth	Rice	2004-12-01	217
Hobart	Rice	2004-12-01	219
Darwin	Rice	2004-12-01	218
Sydney	Roast beef	2004-12-01	1039
Melbourne	Roast beef	2004-12-01	1151
Brisbane	Roast beef	2004-12-01	1139
Adelaide	Roast beef	2004-12-01	1136
Perth	Roast beef	2004-12-01	1076
Hobart	Roast beef	2004-12-01	1076
Darwin	Roast beef	2004-12-01	1163
Sydney	Rump steak	2004-12-01	1644
Melbourne	Rump steak	2004-12-01	1721
Brisbane	Rump steak	2004-12-01	1656
Adelaide	Rump steak	2004-12-01	1726
Hobart	Rump steak	2004-12-01	1503
Darwin	Rump steak	2004-12-01	1685
Sydney	T-bone steak, with fillet	2004-12-01	1794
Melbourne	T-bone steak, with fillet	2004-12-01	1642
Brisbane	T-bone steak, with fillet	2004-12-01	1779
Adelaide	T-bone steak, with fillet	2004-12-01	1692
Perth	T-bone steak, with fillet	2004-12-01	1829
Hobart	T-bone steak, with fillet	2004-12-01	1626
Darwin	T-bone steak, with fillet	2004-12-01	1652
Sydney	Chuck steak	2004-12-01	924
Melbourne	Chuck steak	2004-12-01	891
Brisbane	Chuck steak	2004-12-01	853
Perth	Chuck steak	2004-12-01	917
Hobart	Chuck steak	2004-12-01	930
Darwin	Chuck steak	2004-12-01	989
Sydney	Lamb leg	2004-12-01	848
Melbourne	Lamb leg	2004-12-01	858
Brisbane	Lamb leg	2004-12-01	875
Adelaide	Lamb leg	2004-12-01	933
Perth	Lamb leg	2004-12-01	912
Hobart	Lamb leg	2004-12-01	857
Darwin	Lamb leg	2004-12-01	951
Sydney	Lamb loin chops	2004-12-01	1536
Melbourne	Lamb loin chops	2004-12-01	1547
Brisbane	Lamb loin chops	2004-12-01	1551
Adelaide	Lamb loin chops	2004-12-01	1580
Perth	Lamb loin chops	2004-12-01	1557
Hobart	Lamb loin chops	2004-12-01	1488
Sydney	Lamb forequarter chops	2004-12-01	790
Melbourne	Lamb forequarter chops	2004-12-01	852
Brisbane	Lamb forequarter chops	2004-12-01	753
Adelaide	Lamb forequarter chops	2004-12-01	868
Perth	Lamb forequarter chops	2004-12-01	902
Hobart	Lamb forequarter chops	2004-12-01	847
Darwin	Lamb forequarter chops	2004-12-01	880
Sydney	Pork leg	2004-12-01	656
Melbourne	Pork leg	2004-12-01	709
Brisbane	Pork leg	2004-12-01	637
Adelaide	Pork leg	2004-12-01	708
Perth	Pork leg	2004-12-01	700
Hobart	Pork leg	2004-12-01	783
Darwin	Pork leg	2004-12-01	704
Sydney	Pork loin chops	2004-12-01	1178
Melbourne	Pork loin chops	2004-12-01	1199
Adelaide	Pork loin chops	2004-12-01	1235
Perth	Pork loin chops	2004-12-01	1226
Hobart	Pork loin chops	2004-12-01	1285
Darwin	Pork loin chops	2004-12-01	1314
Sydney	Chicken, frozen	2004-12-01	410
Melbourne	Chicken, frozen	2004-12-01	397
Brisbane	Chicken, frozen	2004-12-01	369
Adelaide	Chicken, frozen	2004-12-01	419
Perth	Chicken, frozen	2004-12-01	399
Hobart	Chicken, frozen	2004-12-01	386
Darwin	Chicken, frozen	2004-12-01	452
Sydney	Bacon, middle rashers	2004-12-01	390
Melbourne	Bacon, middle rashers	2004-12-01	357
Brisbane	Bacon, middle rashers	2004-12-01	365
Perth	Bacon, middle rashers	2004-12-01	411
Hobart	Bacon, middle rashers	2004-12-01	342
Darwin	Bacon, middle rashers	2004-12-01	428
Sydney	Sausages	2004-12-01	485
Melbourne	Sausages	2004-12-01	489
Brisbane	Sausages	2004-12-01	485
Adelaide	Sausages	2004-12-01	496
Perth	Sausages	2004-12-01	462
Hobart	Sausages	2004-12-01	506
Darwin	Sausages	2004-12-01	502
Melbourne	Salmon, pink	2004-12-01	245
Brisbane	Salmon, pink	2004-12-01	256
Adelaide	Salmon, pink	2004-12-01	231
Perth	Salmon, pink	2004-12-01	258
Hobart	Salmon, pink	2004-12-01	334
Darwin	Salmon, pink	2004-12-01	270
Sydney	Oranges	2004-12-01	273
Melbourne	Oranges	2004-12-01	263
Brisbane	Oranges	2004-12-01	252
Adelaide	Oranges	2004-12-01	165
Perth	Oranges	2004-12-01	336
Hobart	Oranges	2004-12-01	221
Darwin	Oranges	2004-12-01	324
Sydney	Bananas	2004-12-01	288
Brisbane	Bananas	2004-12-01	273
Adelaide	Bananas	2004-12-01	289
Perth	Bananas	2004-12-01	303
Hobart	Bananas	2004-12-01	278
Darwin	Bananas	2004-12-01	282
Sydney	Potatoes	2004-12-01	131
Melbourne	Potatoes	2004-12-01	181
Brisbane	Potatoes	2004-12-01	174
Adelaide	Potatoes	2004-12-01	125
Perth	Potatoes	2004-12-01	186
Hobart	Potatoes	2004-12-01	178
Darwin	Potatoes	2004-12-01	228
Sydney	Tomatoes	2004-12-01	357
Melbourne	Tomatoes	2004-12-01	343
Adelaide	Tomatoes	2004-12-01	385
Perth	Tomatoes	2004-12-01	334
Hobart	Tomatoes	2004-12-01	394
Darwin	Tomatoes	2004-12-01	482
Sydney	Carrots	2004-12-01	206
Melbourne	Carrots	2004-12-01	179
Brisbane	Carrots	2004-12-01	185
Adelaide	Carrots	2004-12-01	179
Perth	Carrots	2004-12-01	139
Hobart	Carrots	2004-12-01	173
Darwin	Carrots	2004-12-01	220
Sydney	Onions	2004-12-01	222
Melbourne	Onions	2004-12-01	219
Brisbane	Onions	2004-12-01	195
Perth	Onions	2004-12-01	166
Hobart	Onions	2004-12-01	189
Darwin	Onions	2004-12-01	255
Sydney	Peaches	2004-12-01	248
Melbourne	Peaches	2004-12-01	248
Brisbane	Peaches	2004-12-01	245
Adelaide	Peaches	2004-12-01	237
Perth	Peaches	2004-12-01	265
Hobart	Peaches	2004-12-01	246
Darwin	Peaches	2004-12-01	267
Sydney	Pineapple, sliced	2004-12-01	144
Melbourne	Pineapple, sliced	2004-12-01	149
Adelaide	Pineapple, sliced	2004-12-01	129
Perth	Pineapple, sliced	2004-12-01	150
Hobart	Pineapple, sliced	2004-12-01	156
Darwin	Pineapple, sliced	2004-12-01	141
Sydney	Peas, frozen	2004-12-01	164
Melbourne	Peas, frozen	2004-12-01	161
Brisbane	Peas, frozen	2004-12-01	173
Adelaide	Peas, frozen	2004-12-01	156
Perth	Peas, frozen	2004-12-01	171
Hobart	Peas, frozen	2004-12-01	168
Darwin	Peas, frozen	2004-12-01	185
Sydney	Chocolate milk	2004-12-01	309
Melbourne	Chocolate milk	2004-12-01	328
Brisbane	Chocolate milk	2004-12-01	323
Adelaide	Chocolate milk	2004-12-01	316
Perth	Chocolate milk	2004-12-01	344
Darwin	Chocolate milk	2004-12-01	334
Sydney	Eggs	2004-12-01	311
Melbourne	Eggs	2004-12-01	303
Brisbane	Eggs	2004-12-01	293
Adelaide	Eggs	2004-12-01	293
Perth	Eggs	2004-12-01	394
Hobart	Eggs	2004-12-01	393
Darwin	Eggs	2004-12-01	411
Sydney	Sugar, white	2004-12-01	209
Melbourne	Sugar, white	2004-12-01	208
Brisbane	Sugar, white	2004-12-01	188
Adelaide	Sugar, white	2004-12-01	202
Perth	Sugar, white	2004-12-01	241
Hobart	Sugar, white	2004-12-01	282
Darwin	Sugar, white	2004-12-01	221
Sydney	Jam, strawberry	2004-12-01	283
Brisbane	Jam, strawberry	2004-12-01	290
Adelaide	Jam, strawberry	2004-12-01	258
Perth	Jam, strawberry	2004-12-01	271
Hobart	Jam, strawberry	2004-12-01	302
Darwin	Jam, strawberry	2004-12-01	276
Sydney	Teabags	2004-12-01	375
Melbourne	Teabags	2004-12-01	345
Brisbane	Teabags	2004-12-01	352
Adelaide	Teabags	2004-12-01	344
Perth	Teabags	2004-12-01	337
Hobart	Teabags	2004-12-01	377
Darwin	Teabags	2004-12-01	370
Sydney	Coffee, instant	2004-12-01	597
Melbourne	Coffee, instant	2004-12-01	572
Brisbane	Coffee, instant	2004-12-01	553
Adelaide	Coffee, instant	2004-12-01	542
Hobart	Coffee, instant	2004-12-01	686
Darwin	Coffee, instant	2004-12-01	580
Sydney	Tomato sauce	2004-12-01	182
Melbourne	Tomato sauce	2004-12-01	167
Brisbane	Tomato sauce	2004-12-01	169
Adelaide	Tomato sauce	2004-12-01	173
Perth	Tomato sauce	2004-12-01	175
Hobart	Tomato sauce	2004-12-01	202
Darwin	Tomato sauce	2004-12-01	187
Melbourne	Margarine, poly-unsaturated	2004-12-01	243
Adelaide	Margarine, poly-unsaturated	2004-12-01	233
Perth	Margarine, poly-unsaturated	2004-12-01	236
Hobart	Margarine, poly-unsaturated	2004-12-01	252
Darwin	Margarine, poly-unsaturated	2004-12-01	254
Sydney	Baked beans, in tomato sauce	2004-12-01	113
Melbourne	Baked beans, in tomato sauce	2004-12-01	112
Brisbane	Baked beans, in tomato sauce	2004-12-01	111
Adelaide	Baked beans, in tomato sauce	2004-12-01	115
Perth	Baked beans, in tomato sauce	2004-12-01	111
Hobart	Baked beans, in tomato sauce	2004-12-01	122
Darwin	Baked beans, in tomato sauce	2004-12-01	132
Sydney	Baby food	2004-12-01	76
Melbourne	Baby food	2004-12-01	74
Brisbane	Baby food	2004-12-01	69
Adelaide	Baby food	2004-12-01	71
Perth	Baby food	2004-12-01	77
Hobart	Baby food	2004-12-01	79
Darwin	Baby food	2004-12-01	75
Sydney	Laundry detergent	2004-12-01	549
Melbourne	Laundry detergent	2004-12-01	557
Brisbane	Laundry detergent	2004-12-01	555
Adelaide	Laundry detergent	2004-12-01	546
Perth	Laundry detergent	2004-12-01	563
Hobart	Laundry detergent	2004-12-01	573
Sydney	Dishwashing detergent	2004-12-01	343
Melbourne	Dishwashing detergent	2004-12-01	343
Brisbane	Dishwashing detergent	2004-12-01	342
Adelaide	Dishwashing detergent	2004-12-01	324
Perth	Dishwashing detergent	2004-12-01	344
Hobart	Dishwashing detergent	2004-12-01	363
Darwin	Dishwashing detergent	2004-12-01	364
Sydney	Facial tissues	2004-12-01	205
Melbourne	Facial tissues	2004-12-01	211
Brisbane	Facial tissues	2004-12-01	214
Adelaide	Facial tissues	2004-12-01	207
Perth	Facial tissues	2004-12-01	207
Hobart	Facial tissues	2004-12-01	226
Darwin	Facial tissues	2004-12-01	223
Sydney	Toilet paper	2004-12-01	298
Melbourne	Toilet paper	2004-12-01	304
Adelaide	Toilet paper	2004-12-01	297
Perth	Toilet paper	2004-12-01	316
Hobart	Toilet paper	2004-12-01	317
Darwin	Toilet paper	2004-12-01	316
Sydney	Pet food	2004-12-01	97
Melbourne	Pet food	2004-12-01	108
Brisbane	Pet food	2004-12-01	102
Adelaide	Pet food	2004-12-01	86
Perth	Pet food	2004-12-01	110
Hobart	Pet food	2004-12-01	124
Darwin	Pet food	2004-12-01	102
Sydney	Petrol, unleaded	2004-12-01	104
Melbourne	Petrol, unleaded	2004-12-01	101
Brisbane	Petrol, unleaded	2004-12-01	94
Adelaide	Petrol, unleaded	2004-12-01	103
Perth	Petrol, unleaded	2004-12-01	102
Darwin	Petrol, unleaded	2004-12-01	111
Sydney	Beer, low alcohol	2004-12-01	2345
Melbourne	Beer, low alcohol	2004-12-01	2313
Brisbane	Beer, low alcohol	2004-12-01	2715
Adelaide	Beer, low alcohol	2004-12-01	2462
Perth	Beer, low alcohol	2004-12-01	2960
Hobart	Beer, low alcohol	2004-12-01	2695
Darwin	Beer, low alcohol	2004-12-01	2875
Sydney	Beer, full strength	2004-12-01	3480
Melbourne	Beer, full strength	2004-12-01	3483
Brisbane	Beer, full strength	2004-12-01	3350
Adelaide	Beer, full strength	2004-12-01	3422
Perth	Beer, full strength	2004-12-01	3544
Hobart	Beer, full strength	2004-12-01	3609
Darwin	Beer, full strength	2004-12-01	3645
Melbourne	Draught beer, low alcohol, public bar	2004-12-01	247
Brisbane	Draught beer, low alcohol, public bar	2004-12-01	218
Adelaide	Draught beer, low alcohol, public bar	2004-12-01	274
Perth	Draught beer, low alcohol, public bar	2004-12-01	308
Hobart	Draught beer, low alcohol, public bar	2004-12-01	253
Darwin	Draught beer, low alcohol, public bar	2004-12-01	247
Sydney	Draught beer, full strength, public bar	2004-12-01	236
Melbourne	Draught beer, full strength, public bar	2004-12-01	280
Brisbane	Draught beer, full strength, public bar	2004-12-01	237
Adelaide	Draught beer, full strength, public bar	2004-12-01	308
Perth	Draught beer, full strength, public bar	2004-12-01	319
Hobart	Draught beer, full strength, public bar	2004-12-01	300
Darwin	Draught beer, full strength, public bar	2004-12-01	285
Sydney	Scotch	2004-12-01	418
Melbourne	Scotch	2004-12-01	414
Brisbane	Scotch	2004-12-01	364
Adelaide	Scotch	2004-12-01	489
Perth	Scotch	2004-12-01	480
Hobart	Scotch	2004-12-01	373
Darwin	Scotch	2004-12-01	419
Sydney	Toilet soap	2004-12-01	246
Melbourne	Toilet soap	2004-12-01	268
Brisbane	Toilet soap	2004-12-01	285
Perth	Toilet soap	2004-12-01	266
Hobart	Toilet soap	2004-12-01	342
Darwin	Toilet soap	2004-12-01	290
Sydney	Milk	2005-03-01	282
Melbourne	Milk	2005-03-01	303
Brisbane	Milk	2005-03-01	289
Adelaide	Milk	2005-03-01	297
Perth	Milk	2005-03-01	271
Hobart	Milk	2005-03-01	293
Darwin	Milk	2005-03-01	327
Sydney	Cheese	2005-03-01	408
Melbourne	Cheese	2005-03-01	410
Brisbane	Cheese	2005-03-01	399
Adelaide	Cheese	2005-03-01	404
Perth	Cheese	2005-03-01	424
Darwin	Cheese	2005-03-01	437
Sydney	Butter	2005-03-01	284
Melbourne	Butter	2005-03-01	302
Brisbane	Butter	2005-03-01	244
Adelaide	Butter	2005-03-01	256
Perth	Butter	2005-03-01	252
Hobart	Butter	2005-03-01	240
Darwin	Butter	2005-03-01	262
Melbourne	Bread white loaf, sliced	2005-03-01	252
Brisbane	Bread white loaf, sliced	2005-03-01	250
Adelaide	Bread white loaf, sliced	2005-03-01	243
Perth	Bread white loaf, sliced	2005-03-01	243
Hobart	Bread white loaf, sliced	2005-03-01	251
Darwin	Bread white loaf, sliced	2005-03-01	287
Sydney	Biscuits, dry	2005-03-01	183
Melbourne	Biscuits, dry	2005-03-01	185
Brisbane	Biscuits, dry	2005-03-01	168
Adelaide	Biscuits, dry	2005-03-01	186
Perth	Biscuits, dry	2005-03-01	174
Hobart	Biscuits, dry	2005-03-01	201
Darwin	Biscuits, dry	2005-03-01	202
Sydney	Breakfast cereal	2005-03-01	342
Melbourne	Breakfast cereal	2005-03-01	326
Brisbane	Breakfast cereal	2005-03-01	335
Adelaide	Breakfast cereal	2005-03-01	330
Perth	Breakfast cereal	2005-03-01	360
Hobart	Breakfast cereal	2005-03-01	363
Darwin	Breakfast cereal	2005-03-01	353
Melbourne	Flour, self raising	2005-03-01	391
Brisbane	Flour, self raising	2005-03-01	287
Adelaide	Flour, self raising	2005-03-01	354
Perth	Flour, self raising	2005-03-01	390
Hobart	Flour, self raising	2005-03-01	261
Darwin	Flour, self raising	2005-03-01	363
Sydney	Rice	2005-03-01	192
Melbourne	Rice	2005-03-01	212
Brisbane	Rice	2005-03-01	183
Adelaide	Rice	2005-03-01	196
Perth	Rice	2005-03-01	216
Hobart	Rice	2005-03-01	207
Darwin	Rice	2005-03-01	218
Sydney	Roast beef	2005-03-01	1020
Melbourne	Roast beef	2005-03-01	1110
Brisbane	Roast beef	2005-03-01	1131
Adelaide	Roast beef	2005-03-01	1199
Perth	Roast beef	2005-03-01	1054
Darwin	Roast beef	2005-03-01	1271
Sydney	Rump steak	2005-03-01	1739
Melbourne	Rump steak	2005-03-01	1695
Brisbane	Rump steak	2005-03-01	1789
Adelaide	Rump steak	2005-03-01	1867
Perth	Rump steak	2005-03-01	1676
Hobart	Rump steak	2005-03-01	1663
Darwin	Rump steak	2005-03-01	1920
Sydney	T-bone steak, with fillet	2005-03-01	1815
Melbourne	T-bone steak, with fillet	2005-03-01	1733
Adelaide	T-bone steak, with fillet	2005-03-01	1825
Perth	T-bone steak, with fillet	2005-03-01	1910
Hobart	T-bone steak, with fillet	2005-03-01	1709
Darwin	T-bone steak, with fillet	2005-03-01	1774
Sydney	Chuck steak	2005-03-01	935
Melbourne	Chuck steak	2005-03-01	885
Brisbane	Chuck steak	2005-03-01	900
Adelaide	Chuck steak	2005-03-01	964
Perth	Chuck steak	2005-03-01	960
Hobart	Chuck steak	2005-03-01	912
Darwin	Chuck steak	2005-03-01	1008
Sydney	Lamb leg	2005-03-01	915
Melbourne	Lamb leg	2005-03-01	836
Brisbane	Lamb leg	2005-03-01	875
Adelaide	Lamb leg	2005-03-01	948
Perth	Lamb leg	2005-03-01	892
Hobart	Lamb leg	2005-03-01	882
Darwin	Lamb leg	2005-03-01	917
Sydney	Lamb loin chops	2005-03-01	1581
Melbourne	Lamb loin chops	2005-03-01	1585
Adelaide	Lamb loin chops	2005-03-01	1604
Perth	Lamb loin chops	2005-03-01	1608
Hobart	Lamb loin chops	2005-03-01	1556
Darwin	Lamb loin chops	2005-03-01	1718
Sydney	Lamb forequarter chops	2005-03-01	831
Melbourne	Lamb forequarter chops	2005-03-01	783
Brisbane	Lamb forequarter chops	2005-03-01	805
Adelaide	Lamb forequarter chops	2005-03-01	850
Perth	Lamb forequarter chops	2005-03-01	883
Hobart	Lamb forequarter chops	2005-03-01	829
Darwin	Lamb forequarter chops	2005-03-01	815
Sydney	Pork leg	2005-03-01	642
Melbourne	Pork leg	2005-03-01	773
Brisbane	Pork leg	2005-03-01	695
Adelaide	Pork leg	2005-03-01	717
Perth	Pork leg	2005-03-01	699
Hobart	Pork leg	2005-03-01	828
Darwin	Pork leg	2005-03-01	755
Melbourne	Pork loin chops	2005-03-01	1213
Brisbane	Pork loin chops	2005-03-01	1251
Adelaide	Pork loin chops	2005-03-01	1271
Perth	Pork loin chops	2005-03-01	1286
Hobart	Pork loin chops	2005-03-01	1285
Darwin	Pork loin chops	2005-03-01	1380
Sydney	Chicken, frozen	2005-03-01	409
Melbourne	Chicken, frozen	2005-03-01	397
Brisbane	Chicken, frozen	2005-03-01	395
Adelaide	Chicken, frozen	2005-03-01	397
Perth	Chicken, frozen	2005-03-01	381
Hobart	Chicken, frozen	2005-03-01	380
Darwin	Chicken, frozen	2005-03-01	427
Melbourne	Bacon, middle rashers	2005-03-01	357
Brisbane	Bacon, middle rashers	2005-03-01	373
Adelaide	Bacon, middle rashers	2005-03-01	382
Perth	Bacon, middle rashers	2005-03-01	436
Hobart	Bacon, middle rashers	2005-03-01	360
Darwin	Bacon, middle rashers	2005-03-01	444
Sydney	Sausages	2005-03-01	507
Brisbane	Sausages	2005-03-01	491
Adelaide	Sausages	2005-03-01	539
Perth	Sausages	2005-03-01	478
Hobart	Sausages	2005-03-01	546
Darwin	Sausages	2005-03-01	517
Sydney	Salmon, pink	2005-03-01	258
Melbourne	Salmon, pink	2005-03-01	252
Brisbane	Salmon, pink	2005-03-01	255
Adelaide	Salmon, pink	2005-03-01	236
Perth	Salmon, pink	2005-03-01	262
Hobart	Salmon, pink	2005-03-01	345
Darwin	Salmon, pink	2005-03-01	273
Sydney	Oranges	2005-03-01	277
Brisbane	Oranges	2005-03-01	202
Adelaide	Oranges	2005-03-01	154
Perth	Oranges	2005-03-01	312
Hobart	Oranges	2005-03-01	245
Darwin	Oranges	2005-03-01	392
Sydney	Bananas	2005-03-01	260
Melbourne	Bananas	2005-03-01	249
Brisbane	Bananas	2005-03-01	248
Adelaide	Bananas	2005-03-01	240
Perth	Bananas	2005-03-01	311
Hobart	Bananas	2005-03-01	267
Darwin	Bananas	2005-03-01	289
Sydney	Potatoes	2005-03-01	132
Melbourne	Potatoes	2005-03-01	190
Adelaide	Potatoes	2005-03-01	122
Perth	Potatoes	2005-03-01	189
Hobart	Potatoes	2005-03-01	203
Darwin	Potatoes	2005-03-01	231
Sydney	Tomatoes	2005-03-01	330
Melbourne	Tomatoes	2005-03-01	303
Brisbane	Tomatoes	2005-03-01	339
Adelaide	Tomatoes	2005-03-01	346
Perth	Tomatoes	2005-03-01	299
Hobart	Tomatoes	2005-03-01	409
Darwin	Tomatoes	2005-03-01	483
Sydney	Carrots	2005-03-01	209
Melbourne	Carrots	2005-03-01	180
Brisbane	Carrots	2005-03-01	186
Perth	Carrots	2005-03-01	137
Hobart	Carrots	2005-03-01	176
Darwin	Carrots	2005-03-01	215
Sydney	Onions	2005-03-01	219
Melbourne	Onions	2005-03-01	222
Brisbane	Onions	2005-03-01	199
Adelaide	Onions	2005-03-01	231
Perth	Onions	2005-03-01	188
Hobart	Onions	2005-03-01	199
Darwin	Onions	2005-03-01	283
Sydney	Peaches	2005-03-01	243
Melbourne	Peaches	2005-03-01	247
Brisbane	Peaches	2005-03-01	249
Adelaide	Peaches	2005-03-01	241
Hobart	Peaches	2005-03-01	260
Darwin	Peaches	2005-03-01	266
Sydney	Pineapple, sliced	2005-03-01	145
Melbourne	Pineapple, sliced	2005-03-01	151
Brisbane	Pineapple, sliced	2005-03-01	151
Adelaide	Pineapple, sliced	2005-03-01	134
Perth	Pineapple, sliced	2005-03-01	154
Hobart	Pineapple, sliced	2005-03-01	160
Darwin	Pineapple, sliced	2005-03-01	144
Sydney	Peas, frozen	2005-03-01	166
Melbourne	Peas, frozen	2005-03-01	164
Brisbane	Peas, frozen	2005-03-01	171
Perth	Peas, frozen	2005-03-01	169
Hobart	Peas, frozen	2005-03-01	175
Darwin	Peas, frozen	2005-03-01	191
Sydney	Chocolate milk	2005-03-01	336
Melbourne	Chocolate milk	2005-03-01	353
Brisbane	Chocolate milk	2005-03-01	346
Adelaide	Chocolate milk	2005-03-01	329
Perth	Chocolate milk	2005-03-01	339
Hobart	Chocolate milk	2005-03-01	385
Darwin	Chocolate milk	2005-03-01	359
Sydney	Eggs	2005-03-01	322
Melbourne	Eggs	2005-03-01	306
Brisbane	Eggs	2005-03-01	299
Adelaide	Eggs	2005-03-01	293
Perth	Eggs	2005-03-01	393
Hobart	Eggs	2005-03-01	388
Darwin	Eggs	2005-03-01	411
Sydney	Sugar, white	2005-03-01	199
Brisbane	Sugar, white	2005-03-01	185
Adelaide	Sugar, white	2005-03-01	204
Perth	Sugar, white	2005-03-01	242
Hobart	Sugar, white	2005-03-01	282
Darwin	Sugar, white	2005-03-01	224
Sydney	Jam, strawberry	2005-03-01	259
Melbourne	Jam, strawberry	2005-03-01	279
Brisbane	Jam, strawberry	2005-03-01	277
Adelaide	Jam, strawberry	2005-03-01	255
Perth	Jam, strawberry	2005-03-01	269
Hobart	Jam, strawberry	2005-03-01	288
Darwin	Jam, strawberry	2005-03-01	294
Sydney	Teabags	2005-03-01	350
Melbourne	Teabags	2005-03-01	375
Brisbane	Teabags	2005-03-01	344
Adelaide	Teabags	2005-03-01	332
Hobart	Teabags	2005-03-01	408
Darwin	Teabags	2005-03-01	370
Sydney	Coffee, instant	2005-03-01	562
Melbourne	Coffee, instant	2005-03-01	536
Brisbane	Coffee, instant	2005-03-01	506
Adelaide	Coffee, instant	2005-03-01	513
Perth	Coffee, instant	2005-03-01	619
Hobart	Coffee, instant	2005-03-01	616
Darwin	Coffee, instant	2005-03-01	569
Sydney	Tomato sauce	2005-03-01	188
Melbourne	Tomato sauce	2005-03-01	176
Brisbane	Tomato sauce	2005-03-01	173
Perth	Tomato sauce	2005-03-01	175
Hobart	Tomato sauce	2005-03-01	199
Darwin	Tomato sauce	2005-03-01	190
Sydney	Margarine, poly-unsaturated	2005-03-01	242
Melbourne	Margarine, poly-unsaturated	2005-03-01	248
Brisbane	Margarine, poly-unsaturated	2005-03-01	243
Adelaide	Margarine, poly-unsaturated	2005-03-01	236
Hobart	Margarine, poly-unsaturated	2005-03-01	250
Darwin	Margarine, poly-unsaturated	2005-03-01	253
Sydney	Baked beans, in tomato sauce	2005-03-01	123
Melbourne	Baked beans, in tomato sauce	2005-03-01	118
Brisbane	Baked beans, in tomato sauce	2005-03-01	105
Adelaide	Baked beans, in tomato sauce	2005-03-01	107
Perth	Baked beans, in tomato sauce	2005-03-01	123
Hobart	Baked beans, in tomato sauce	2005-03-01	131
Darwin	Baked beans, in tomato sauce	2005-03-01	127
Sydney	Baby food	2005-03-01	76
Melbourne	Baby food	2005-03-01	76
Brisbane	Baby food	2005-03-01	69
Adelaide	Baby food	2005-03-01	72
Perth	Baby food	2005-03-01	75
Darwin	Baby food	2005-03-01	76
Sydney	Laundry detergent	2005-03-01	524
Melbourne	Laundry detergent	2005-03-01	552
Brisbane	Laundry detergent	2005-03-01	559
Adelaide	Laundry detergent	2005-03-01	523
Perth	Laundry detergent	2005-03-01	542
Hobart	Laundry detergent	2005-03-01	531
Darwin	Laundry detergent	2005-03-01	569
Sydney	Dishwashing detergent	2005-03-01	334
Melbourne	Dishwashing detergent	2005-03-01	342
Adelaide	Dishwashing detergent	2005-03-01	316
Perth	Dishwashing detergent	2005-03-01	325
Hobart	Dishwashing detergent	2005-03-01	344
Darwin	Dishwashing detergent	2005-03-01	347
Sydney	Facial tissues	2005-03-01	207
Melbourne	Facial tissues	2005-03-01	207
Brisbane	Facial tissues	2005-03-01	207
Adelaide	Facial tissues	2005-03-01	207
Perth	Facial tissues	2005-03-01	215
Hobart	Facial tissues	2005-03-01	220
Darwin	Facial tissues	2005-03-01	216
Sydney	Toilet paper	2005-03-01	301
Melbourne	Toilet paper	2005-03-01	306
Brisbane	Toilet paper	2005-03-01	292
Adelaide	Toilet paper	2005-03-01	297
Perth	Toilet paper	2005-03-01	298
Hobart	Toilet paper	2005-03-01	317
Darwin	Toilet paper	2005-03-01	316
Sydney	Pet food	2005-03-01	102
Melbourne	Pet food	2005-03-01	110
Brisbane	Pet food	2005-03-01	92
Adelaide	Pet food	2005-03-01	106
Hobart	Pet food	2005-03-01	122
Darwin	Pet food	2005-03-01	105
Sydney	Petrol, unleaded	2005-03-01	102
Melbourne	Petrol, unleaded	2005-03-01	98
Brisbane	Petrol, unleaded	2005-03-01	92
Adelaide	Petrol, unleaded	2005-03-01	101
Perth	Petrol, unleaded	2005-03-01	99
Hobart	Petrol, unleaded	2005-03-01	107
Darwin	Petrol, unleaded	2005-03-01	108
Sydney	Beer, low alcohol	2005-03-01	2338
Melbourne	Beer, low alcohol	2005-03-01	2322
Brisbane	Beer, low alcohol	2005-03-01	2732
Perth	Beer, low alcohol	2005-03-01	3013
Hobart	Beer, low alcohol	2005-03-01	2661
Darwin	Beer, low alcohol	2005-03-01	2920
Sydney	Beer, full strength	2005-03-01	3570
Melbourne	Beer, full strength	2005-03-01	3507
Brisbane	Beer, full strength	2005-03-01	3339
Adelaide	Beer, full strength	2005-03-01	3414
Perth	Beer, full strength	2005-03-01	3590
Hobart	Beer, full strength	2005-03-01	3619
Darwin	Beer, full strength	2005-03-01	3706
Melbourne	Draught beer, low alcohol, public bar	2005-03-01	248
Brisbane	Draught beer, low alcohol, public bar	2005-03-01	221
Adelaide	Draught beer, low alcohol, public bar	2005-03-01	279
Perth	Draught beer, low alcohol, public bar	2005-03-01	309
Hobart	Draught beer, low alcohol, public bar	2005-03-01	254
Darwin	Draught beer, low alcohol, public bar	2005-03-01	245
Sydney	Draught beer, full strength, public bar	2005-03-01	235
Melbourne	Draught beer, full strength, public bar	2005-03-01	282
Brisbane	Draught beer, full strength, public bar	2005-03-01	243
Adelaide	Draught beer, full strength, public bar	2005-03-01	312
Perth	Draught beer, full strength, public bar	2005-03-01	321
Hobart	Draught beer, full strength, public bar	2005-03-01	302
Darwin	Draught beer, full strength, public bar	2005-03-01	290
Sydney	Scotch	2005-03-01	423
Melbourne	Scotch	2005-03-01	422
Brisbane	Scotch	2005-03-01	372
Adelaide	Scotch	2005-03-01	491
Perth	Scotch	2005-03-01	471
Hobart	Scotch	2005-03-01	374
Darwin	Scotch	2005-03-01	414
Sydney	Toilet soap	2005-03-01	265
Melbourne	Toilet soap	2005-03-01	273
Brisbane	Toilet soap	2005-03-01	278
Adelaide	Toilet soap	2005-03-01	279
Perth	Toilet soap	2005-03-01	279
Hobart	Toilet soap	2005-03-01	329
Darwin	Toilet soap	2005-03-01	282
Sydney	Milk	2005-06-01	286
Melbourne	Milk	2005-06-01	310
Brisbane	Milk	2005-06-01	292
Perth	Milk	2005-06-01	285
Hobart	Milk	2005-06-01	299
Darwin	Milk	2005-06-01	330
Sydney	Cheese	2005-06-01	403
Melbourne	Cheese	2005-06-01	428
Brisbane	Cheese	2005-06-01	426
Adelaide	Cheese	2005-06-01	417
Perth	Cheese	2005-06-01	427
Hobart	Cheese	2005-06-01	432
Darwin	Cheese	2005-06-01	476
Sydney	Butter	2005-06-01	294
Melbourne	Butter	2005-06-01	312
Brisbane	Butter	2005-06-01	254
Perth	Butter	2005-06-01	264
Hobart	Butter	2005-06-01	243
Darwin	Butter	2005-06-01	273
Sydney	Bread white loaf, sliced	2005-06-01	251
Melbourne	Bread white loaf, sliced	2005-06-01	262
Brisbane	Bread white loaf, sliced	2005-06-01	245
Adelaide	Bread white loaf, sliced	2005-06-01	236
Perth	Bread white loaf, sliced	2005-06-01	250
Darwin	Bread white loaf, sliced	2005-06-01	292
Sydney	Biscuits, dry	2005-06-01	187
Melbourne	Biscuits, dry	2005-06-01	190
Brisbane	Biscuits, dry	2005-06-01	174
Adelaide	Biscuits, dry	2005-06-01	192
Perth	Biscuits, dry	2005-06-01	179
Hobart	Biscuits, dry	2005-06-01	205
Darwin	Biscuits, dry	2005-06-01	203
Sydney	Breakfast cereal	2005-06-01	342
Melbourne	Breakfast cereal	2005-06-01	326
Brisbane	Breakfast cereal	2005-06-01	335
Adelaide	Breakfast cereal	2005-06-01	330
Perth	Breakfast cereal	2005-06-01	373
Hobart	Breakfast cereal	2005-06-01	372
Darwin	Breakfast cereal	2005-06-01	353
Sydney	Flour, self raising	2005-06-01	352
Melbourne	Flour, self raising	2005-06-01	371
Brisbane	Flour, self raising	2005-06-01	284
Perth	Flour, self raising	2005-06-01	406
Hobart	Flour, self raising	2005-06-01	260
Darwin	Flour, self raising	2005-06-01	365
Sydney	Rice	2005-06-01	196
Melbourne	Rice	2005-06-01	215
Brisbane	Rice	2005-06-01	197
Adelaide	Rice	2005-06-01	196
Perth	Rice	2005-06-01	211
Hobart	Rice	2005-06-01	216
Darwin	Rice	2005-06-01	217
Sydney	Roast beef	2005-06-01	984
Melbourne	Roast beef	2005-06-01	1057
Brisbane	Roast beef	2005-06-01	1136
Adelaide	Roast beef	2005-06-01	1169
Perth	Roast beef	2005-06-01	1092
Hobart	Roast beef	2005-06-01	1109
Darwin	Roast beef	2005-06-01	1202
Sydney	Rump steak	2005-06-01	1791
Melbourne	Rump steak	2005-06-01	1857
Brisbane	Rump steak	2005-06-01	1854
Adelaide	Rump steak	2005-06-01	1886
Perth	Rump steak	2005-06-01	1760
Darwin	Rump steak	2005-06-01	2046
Sydney	T-bone steak, with fillet	2005-06-01	1919
Melbourne	T-bone steak, with fillet	2005-06-01	1875
Brisbane	T-bone steak, with fillet	2005-06-01	1846
Adelaide	T-bone steak, with fillet	2005-06-01	1884
Perth	T-bone steak, with fillet	2005-06-01	1820
Hobart	T-bone steak, with fillet	2005-06-01	1829
Darwin	T-bone steak, with fillet	2005-06-01	1954
Sydney	Chuck steak	2005-06-01	922
Melbourne	Chuck steak	2005-06-01	887
Brisbane	Chuck steak	2005-06-01	919
Adelaide	Chuck steak	2005-06-01	972
Perth	Chuck steak	2005-06-01	990
Hobart	Chuck steak	2005-06-01	942
Sydney	Lamb leg	2005-06-01	876
Melbourne	Lamb leg	2005-06-01	824
Brisbane	Lamb leg	2005-06-01	897
Adelaide	Lamb leg	2005-06-01	898
Perth	Lamb leg	2005-06-01	929
Hobart	Lamb leg	2005-06-01	894
Darwin	Lamb leg	2005-06-01	968
Sydney	Lamb loin chops	2005-06-01	1584
Melbourne	Lamb loin chops	2005-06-01	1559
Brisbane	Lamb loin chops	2005-06-01	1621
Adelaide	Lamb loin chops	2005-06-01	1610
Perth	Lamb loin chops	2005-06-01	1636
Darwin	Lamb loin chops	2005-06-01	1726
Sydney	Lamb forequarter chops	2005-06-01	805
Melbourne	Lamb forequarter chops	2005-06-01	803
Brisbane	Lamb forequarter chops	2005-06-01	805
Adelaide	Lamb forequarter chops	2005-06-01	861
Perth	Lamb forequarter chops	2005-06-01	835
Hobart	Lamb forequarter chops	2005-06-01	903
Darwin	Lamb forequarter chops	2005-06-01	892
Sydney	Pork leg	2005-06-01	710
Melbourne	Pork leg	2005-06-01	744
Brisbane	Pork leg	2005-06-01	760
Adelaide	Pork leg	2005-06-01	727
Perth	Pork leg	2005-06-01	712
Hobart	Pork leg	2005-06-01	781
Darwin	Pork leg	2005-06-01	740
Sydney	Pork loin chops	2005-06-01	1327
Brisbane	Pork loin chops	2005-06-01	1339
Adelaide	Pork loin chops	2005-06-01	1322
Perth	Pork loin chops	2005-06-01	1315
Hobart	Pork loin chops	2005-06-01	1227
Darwin	Pork loin chops	2005-06-01	1428
Sydney	Chicken, frozen	2005-06-01	421
Melbourne	Chicken, frozen	2005-06-01	365
Brisbane	Chicken, frozen	2005-06-01	386
Adelaide	Chicken, frozen	2005-06-01	367
Perth	Chicken, frozen	2005-06-01	394
Hobart	Chicken, frozen	2005-06-01	378
Darwin	Chicken, frozen	2005-06-01	415
Sydney	Bacon, middle rashers	2005-06-01	378
Melbourne	Bacon, middle rashers	2005-06-01	357
Adelaide	Bacon, middle rashers	2005-06-01	395
Perth	Bacon, middle rashers	2005-06-01	492
Hobart	Bacon, middle rashers	2005-06-01	370
Darwin	Bacon, middle rashers	2005-06-01	455
Sydney	Sausages	2005-06-01	503
Melbourne	Sausages	2005-06-01	528
Brisbane	Sausages	2005-06-01	515
Adelaide	Sausages	2005-06-01	578
Perth	Sausages	2005-06-01	494
Hobart	Sausages	2005-06-01	514
Sydney	Salmon, pink	2005-06-01	257
Melbourne	Salmon, pink	2005-06-01	258
Brisbane	Salmon, pink	2005-06-01	264
Adelaide	Salmon, pink	2005-06-01	242
Perth	Salmon, pink	2005-06-01	263
Hobart	Salmon, pink	2005-06-01	345
Darwin	Salmon, pink	2005-06-01	269
Sydney	Oranges	2005-06-01	261
Melbourne	Oranges	2005-06-01	260
Brisbane	Oranges	2005-06-01	229
Adelaide	Oranges	2005-06-01	168
Perth	Oranges	2005-06-01	333
Darwin	Oranges	2005-06-01	373
Sydney	Bananas	2005-06-01	197
Melbourne	Bananas	2005-06-01	196
Brisbane	Bananas	2005-06-01	193
Adelaide	Bananas	2005-06-01	201
Perth	Bananas	2005-06-01	252
Hobart	Bananas	2005-06-01	237
Darwin	Bananas	2005-06-01	293
Sydney	Potatoes	2005-06-01	127
Melbourne	Potatoes	2005-06-01	176
Brisbane	Potatoes	2005-06-01	186
Adelaide	Potatoes	2005-06-01	119
Perth	Potatoes	2005-06-01	197
Hobart	Potatoes	2005-06-01	183
Sydney	Tomatoes	2005-06-01	380
Melbourne	Tomatoes	2005-06-01	356
Brisbane	Tomatoes	2005-06-01	375
Adelaide	Tomatoes	2005-06-01	413
Perth	Tomatoes	2005-06-01	427
Hobart	Tomatoes	2005-06-01	426
Darwin	Tomatoes	2005-06-01	498
Sydney	Carrots	2005-06-01	202
Melbourne	Carrots	2005-06-01	179
Brisbane	Carrots	2005-06-01	188
Adelaide	Carrots	2005-06-01	173
Perth	Carrots	2005-06-01	141
Hobart	Carrots	2005-06-01	175
Darwin	Carrots	2005-06-01	216
Melbourne	Onions	2005-06-01	216
Brisbane	Onions	2005-06-01	198
Adelaide	Onions	2005-06-01	212
Perth	Onions	2005-06-01	166
Hobart	Onions	2005-06-01	206
Darwin	Onions	2005-06-01	279
Sydney	Peaches	2005-06-01	243
Melbourne	Peaches	2005-06-01	261
Brisbane	Peaches	2005-06-01	244
Adelaide	Peaches	2005-06-01	263
Perth	Peaches	2005-06-01	296
Hobart	Peaches	2005-06-01	284
Darwin	Peaches	2005-06-01	261
Melbourne	Pineapple, sliced	2005-06-01	154
Brisbane	Pineapple, sliced	2005-06-01	157
Adelaide	Pineapple, sliced	2005-06-01	139
Perth	Pineapple, sliced	2005-06-01	161
Hobart	Pineapple, sliced	2005-06-01	162
Darwin	Pineapple, sliced	2005-06-01	142
Sydney	Peas, frozen	2005-06-01	152
Melbourne	Peas, frozen	2005-06-01	150
Brisbane	Peas, frozen	2005-06-01	162
Adelaide	Peas, frozen	2005-06-01	141
Perth	Peas, frozen	2005-06-01	161
Hobart	Peas, frozen	2005-06-01	157
Darwin	Peas, frozen	2005-06-01	169
Sydney	Chocolate milk	2005-06-01	346
Melbourne	Chocolate milk	2005-06-01	386
Adelaide	Chocolate milk	2005-06-01	337
Perth	Chocolate milk	2005-06-01	365
Hobart	Chocolate milk	2005-06-01	388
Darwin	Chocolate milk	2005-06-01	378
Sydney	Eggs	2005-06-01	309
Melbourne	Eggs	2005-06-01	300
Brisbane	Eggs	2005-06-01	295
Adelaide	Eggs	2005-06-01	299
Perth	Eggs	2005-06-01	385
Hobart	Eggs	2005-06-01	391
Darwin	Eggs	2005-06-01	427
Sydney	Sugar, white	2005-06-01	195
Melbourne	Sugar, white	2005-06-01	191
Brisbane	Sugar, white	2005-06-01	180
Adelaide	Sugar, white	2005-06-01	200
Perth	Sugar, white	2005-06-01	238
Hobart	Sugar, white	2005-06-01	279
Darwin	Sugar, white	2005-06-01	218
Melbourne	Jam, strawberry	2005-06-01	256
Brisbane	Jam, strawberry	2005-06-01	240
Adelaide	Jam, strawberry	2005-06-01	248
Perth	Jam, strawberry	2005-06-01	267
Hobart	Jam, strawberry	2005-06-01	273
Darwin	Jam, strawberry	2005-06-01	257
Sydney	Teabags	2005-06-01	380
Melbourne	Teabags	2005-06-01	375
Brisbane	Teabags	2005-06-01	342
Adelaide	Teabags	2005-06-01	347
Perth	Teabags	2005-06-01	357
Hobart	Teabags	2005-06-01	440
Darwin	Teabags	2005-06-01	346
Sydney	Coffee, instant	2005-06-01	571
Brisbane	Coffee, instant	2005-06-01	528
Adelaide	Coffee, instant	2005-06-01	542
Perth	Coffee, instant	2005-06-01	635
Hobart	Coffee, instant	2005-06-01	652
Darwin	Coffee, instant	2005-06-01	593
Sydney	Tomato sauce	2005-06-01	183
Melbourne	Tomato sauce	2005-06-01	175
Brisbane	Tomato sauce	2005-06-01	168
Adelaide	Tomato sauce	2005-06-01	167
Perth	Tomato sauce	2005-06-01	183
Hobart	Tomato sauce	2005-06-01	193
Darwin	Tomato sauce	2005-06-01	185
Sydney	Margarine, poly-unsaturated	2005-06-01	249
Brisbane	Margarine, poly-unsaturated	2005-06-01	240
Adelaide	Margarine, poly-unsaturated	2005-06-01	243
Perth	Margarine, poly-unsaturated	2005-06-01	244
Hobart	Margarine, poly-unsaturated	2005-06-01	256
Darwin	Margarine, poly-unsaturated	2005-06-01	254
Sydney	Baked beans, in tomato sauce	2005-06-01	127
Brisbane	Baked beans, in tomato sauce	2005-06-01	114
Adelaide	Baked beans, in tomato sauce	2005-06-01	128
Perth	Baked beans, in tomato sauce	2005-06-01	120
Hobart	Baked beans, in tomato sauce	2005-06-01	126
Darwin	Baked beans, in tomato sauce	2005-06-01	122
Sydney	Baby food	2005-06-01	78
Melbourne	Baby food	2005-06-01	75
Brisbane	Baby food	2005-06-01	72
Adelaide	Baby food	2005-06-01	74
Perth	Baby food	2005-06-01	74
Hobart	Baby food	2005-06-01	79
Darwin	Baby food	2005-06-01	77
Melbourne	Laundry detergent	2005-06-01	566
Brisbane	Laundry detergent	2005-06-01	589
Adelaide	Laundry detergent	2005-06-01	541
Perth	Laundry detergent	2005-06-01	591
Hobart	Laundry detergent	2005-06-01	584
Darwin	Laundry detergent	2005-06-01	606
Sydney	Dishwashing detergent	2005-06-01	340
Melbourne	Dishwashing detergent	2005-06-01	314
Brisbane	Dishwashing detergent	2005-06-01	342
Adelaide	Dishwashing detergent	2005-06-01	287
Perth	Dishwashing detergent	2005-06-01	326
Hobart	Dishwashing detergent	2005-06-01	332
Darwin	Dishwashing detergent	2005-06-01	366
Sydney	Facial tissues	2005-06-01	207
Melbourne	Facial tissues	2005-06-01	212
Adelaide	Facial tissues	2005-06-01	202
Perth	Facial tissues	2005-06-01	208
Hobart	Facial tissues	2005-06-01	218
Darwin	Facial tissues	2005-06-01	212
Sydney	Toilet paper	2005-06-01	299
Melbourne	Toilet paper	2005-06-01	301
Brisbane	Toilet paper	2005-06-01	301
Adelaide	Toilet paper	2005-06-01	294
Perth	Toilet paper	2005-06-01	298
Hobart	Toilet paper	2005-06-01	317
Darwin	Toilet paper	2005-06-01	316
Sydney	Pet food	2005-06-01	104
Melbourne	Pet food	2005-06-01	102
Brisbane	Pet food	2005-06-01	105
Adelaide	Pet food	2005-06-01	100
Perth	Pet food	2005-06-01	108
Hobart	Pet food	2005-06-01	112
Darwin	Pet food	2005-06-01	102
Melbourne	Petrol, unleaded	2005-06-01	106
Brisbane	Petrol, unleaded	2005-06-01	99
Adelaide	Petrol, unleaded	2005-06-01	108
Perth	Petrol, unleaded	2005-06-01	104
Hobart	Petrol, unleaded	2005-06-01	114
Darwin	Petrol, unleaded	2005-06-01	114
Sydney	Beer, low alcohol	2005-06-01	2333
Melbourne	Beer, low alcohol	2005-06-01	2341
Brisbane	Beer, low alcohol	2005-06-01	2713
Adelaide	Beer, low alcohol	2005-06-01	2504
Perth	Beer, low alcohol	2005-06-01	2956
Hobart	Beer, low alcohol	2005-06-01	2654
Darwin	Beer, low alcohol	2005-06-01	2895
Sydney	Beer, full strength	2005-06-01	3480
Brisbane	Beer, full strength	2005-06-01	3389
Adelaide	Beer, full strength	2005-06-01	3469
Perth	Beer, full strength	2005-06-01	3547
Hobart	Beer, full strength	2005-06-01	3661
Darwin	Beer, full strength	2005-06-01	3724
Sydney	Draught beer, low alcohol, public bar	2005-06-01	204
Melbourne	Draught beer, low alcohol, public bar	2005-06-01	248
Brisbane	Draught beer, low alcohol, public bar	2005-06-01	226
Adelaide	Draught beer, low alcohol, public bar	2005-06-01	286
Perth	Draught beer, low alcohol, public bar	2005-06-01	310
Hobart	Draught beer, low alcohol, public bar	2005-06-01	259
Darwin	Draught beer, low alcohol, public bar	2005-06-01	247
Melbourne	Draught beer, full strength, public bar	2005-06-01	283
Brisbane	Draught beer, full strength, public bar	2005-06-01	249
Adelaide	Draught beer, full strength, public bar	2005-06-01	320
Perth	Draught beer, full strength, public bar	2005-06-01	321
Hobart	Draught beer, full strength, public bar	2005-06-01	305
Darwin	Draught beer, full strength, public bar	2005-06-01	294
Sydney	Scotch	2005-06-01	422
Melbourne	Scotch	2005-06-01	429
Brisbane	Scotch	2005-06-01	381
Adelaide	Scotch	2005-06-01	502
Perth	Scotch	2005-06-01	478
Hobart	Scotch	2005-06-01	381
Darwin	Scotch	2005-06-01	416
Sydney	Toilet soap	2005-06-01	291
Melbourne	Toilet soap	2005-06-01	297
Brisbane	Toilet soap	2005-06-01	298
Adelaide	Toilet soap	2005-06-01	288
Perth	Toilet soap	2005-06-01	284
Hobart	Toilet soap	2005-06-01	310
Darwin	Toilet soap	2005-06-01	309
Sydney	Milk	2005-09-01	288
Melbourne	Milk	2005-09-01	311
Brisbane	Milk	2005-09-01	294
Adelaide	Milk	2005-09-01	299
Perth	Milk	2005-09-01	285
Hobart	Milk	2005-09-01	299
Darwin	Milk	2005-09-01	330
Sydney	Cheese	2005-09-01	427
Melbourne	Cheese	2005-09-01	426
Brisbane	Cheese	2005-09-01	429
Perth	Cheese	2005-09-01	424
Hobart	Cheese	2005-09-01	433
Darwin	Cheese	2005-09-01	478
Sydney	Butter	2005-09-01	302
Melbourne	Butter	2005-09-01	326
Brisbane	Butter	2005-09-01	266
Adelaide	Butter	2005-09-01	281
Perth	Butter	2005-09-01	261
Hobart	Butter	2005-09-01	254
Darwin	Butter	2005-09-01	294
Brisbane	Bread white loaf, sliced	2005-09-01	253
Adelaide	Bread white loaf, sliced	2005-09-01	263
Perth	Bread white loaf, sliced	2005-09-01	250
Hobart	Bread white loaf, sliced	2005-09-01	265
Darwin	Bread white loaf, sliced	2005-09-01	302
Sydney	Biscuits, dry	2005-09-01	189
Melbourne	Biscuits, dry	2005-09-01	191
Brisbane	Biscuits, dry	2005-09-01	175
Adelaide	Biscuits, dry	2005-09-01	193
Perth	Biscuits, dry	2005-09-01	181
Hobart	Biscuits, dry	2005-09-01	206
Darwin	Biscuits, dry	2005-09-01	203
Melbourne	Breakfast cereal	2005-09-01	335
Brisbane	Breakfast cereal	2005-09-01	337
Adelaide	Breakfast cereal	2005-09-01	330
Perth	Breakfast cereal	2005-09-01	373
Hobart	Breakfast cereal	2005-09-01	384
Darwin	Breakfast cereal	2005-09-01	353
Sydney	Flour, self raising	2005-09-01	363
Melbourne	Flour, self raising	2005-09-01	396
Brisbane	Flour, self raising	2005-09-01	304
Adelaide	Flour, self raising	2005-09-01	372
Perth	Flour, self raising	2005-09-01	413
Hobart	Flour, self raising	2005-09-01	261
Darwin	Flour, self raising	2005-09-01	369
Sydney	Rice	2005-09-01	192
Melbourne	Rice	2005-09-01	214
Brisbane	Rice	2005-09-01	196
Adelaide	Rice	2005-09-01	197
Perth	Rice	2005-09-01	199
Hobart	Rice	2005-09-01	217
Darwin	Rice	2005-09-01	219
Melbourne	Roast beef	2005-09-01	1083
Brisbane	Roast beef	2005-09-01	1179
Adelaide	Roast beef	2005-09-01	1071
Perth	Roast beef	2005-09-01	1067
Hobart	Roast beef	2005-09-01	1184
Darwin	Roast beef	2005-09-01	1107
Sydney	Rump steak	2005-09-01	1783
Melbourne	Rump steak	2005-09-01	1896
Brisbane	Rump steak	2005-09-01	1872
Adelaide	Rump steak	2005-09-01	1910
Perth	Rump steak	2005-09-01	1666
Hobart	Rump steak	2005-09-01	1742
Sydney	T-bone steak, with fillet	2005-09-01	1809
Melbourne	T-bone steak, with fillet	2005-09-01	1758
Brisbane	T-bone steak, with fillet	2005-09-01	1923
Adelaide	T-bone steak, with fillet	2005-09-01	1820
Perth	T-bone steak, with fillet	2005-09-01	1884
Hobart	T-bone steak, with fillet	2005-09-01	1621
Darwin	T-bone steak, with fillet	2005-09-01	1992
Sydney	Chuck steak	2005-09-01	965
Melbourne	Chuck steak	2005-09-01	917
Brisbane	Chuck steak	2005-09-01	919
Adelaide	Chuck steak	2005-09-01	945
Perth	Chuck steak	2005-09-01	980
Hobart	Chuck steak	2005-09-01	935
Darwin	Chuck steak	2005-09-01	1013
Melbourne	Lamb leg	2005-09-01	929
Brisbane	Lamb leg	2005-09-01	915
Adelaide	Lamb leg	2005-09-01	991
Perth	Lamb leg	2005-09-01	984
Hobart	Lamb leg	2005-09-01	914
Darwin	Lamb leg	2005-09-01	917
Sydney	Lamb loin chops	2005-09-01	1687
Melbourne	Lamb loin chops	2005-09-01	1604
Brisbane	Lamb loin chops	2005-09-01	1748
Adelaide	Lamb loin chops	2005-09-01	1683
Perth	Lamb loin chops	2005-09-01	1617
Hobart	Lamb loin chops	2005-09-01	1652
Sydney	Lamb forequarter chops	2005-09-01	862
Melbourne	Lamb forequarter chops	2005-09-01	861
Brisbane	Lamb forequarter chops	2005-09-01	860
Adelaide	Lamb forequarter chops	2005-09-01	887
Perth	Lamb forequarter chops	2005-09-01	911
Hobart	Lamb forequarter chops	2005-09-01	857
Darwin	Lamb forequarter chops	2005-09-01	896
Sydney	Pork leg	2005-09-01	722
Melbourne	Pork leg	2005-09-01	794
Brisbane	Pork leg	2005-09-01	695
Adelaide	Pork leg	2005-09-01	713
Perth	Pork leg	2005-09-01	663
Hobart	Pork leg	2005-09-01	724
Darwin	Pork leg	2005-09-01	753
Sydney	Pork loin chops	2005-09-01	1332
Melbourne	Pork loin chops	2005-09-01	1318
Adelaide	Pork loin chops	2005-09-01	1310
Perth	Pork loin chops	2005-09-01	1314
Hobart	Pork loin chops	2005-09-01	1284
Darwin	Pork loin chops	2005-09-01	1463
Sydney	Chicken, frozen	2005-09-01	415
Melbourne	Chicken, frozen	2005-09-01	346
Brisbane	Chicken, frozen	2005-09-01	368
Adelaide	Chicken, frozen	2005-09-01	362
Perth	Chicken, frozen	2005-09-01	400
Hobart	Chicken, frozen	2005-09-01	373
Darwin	Chicken, frozen	2005-09-01	391
Sydney	Bacon, middle rashers	2005-09-01	362
Melbourne	Bacon, middle rashers	2005-09-01	377
Brisbane	Bacon, middle rashers	2005-09-01	372
Perth	Bacon, middle rashers	2005-09-01	480
Hobart	Bacon, middle rashers	2005-09-01	358
Darwin	Bacon, middle rashers	2005-09-01	453
Sydney	Sausages	2005-09-01	510
Melbourne	Sausages	2005-09-01	516
Brisbane	Sausages	2005-09-01	525
Adelaide	Sausages	2005-09-01	546
Perth	Sausages	2005-09-01	501
Hobart	Sausages	2005-09-01	530
Darwin	Sausages	2005-09-01	465
Sydney	Salmon, pink	2005-09-01	234
Melbourne	Salmon, pink	2005-09-01	235
Brisbane	Salmon, pink	2005-09-01	248
Adelaide	Salmon, pink	2005-09-01	230
Hobart	Salmon, pink	2005-09-01	335
Darwin	Salmon, pink	2005-09-01	272
Sydney	Oranges	2005-09-01	225
Melbourne	Oranges	2005-09-01	223
Brisbane	Oranges	2005-09-01	202
Adelaide	Oranges	2005-09-01	138
Perth	Oranges	2005-09-01	275
Hobart	Oranges	2005-09-01	212
Darwin	Oranges	2005-09-01	338
Sydney	Bananas	2005-09-01	267
Melbourne	Bananas	2005-09-01	266
Adelaide	Bananas	2005-09-01	285
Perth	Bananas	2005-09-01	315
Hobart	Bananas	2005-09-01	277
Darwin	Bananas	2005-09-01	293
Sydney	Potatoes	2005-09-01	139
Melbourne	Potatoes	2005-09-01	183
Brisbane	Potatoes	2005-09-01	153
Adelaide	Potatoes	2005-09-01	125
Perth	Potatoes	2005-09-01	208
Hobart	Potatoes	2005-09-01	168
Darwin	Potatoes	2005-09-01	211
Sydney	Tomatoes	2005-09-01	330
Melbourne	Tomatoes	2005-09-01	335
Brisbane	Tomatoes	2005-09-01	322
Perth	Tomatoes	2005-09-01	432
Hobart	Tomatoes	2005-09-01	400
Darwin	Tomatoes	2005-09-01	466
Sydney	Carrots	2005-09-01	204
Melbourne	Carrots	2005-09-01	188
Brisbane	Carrots	2005-09-01	173
Adelaide	Carrots	2005-09-01	180
Perth	Carrots	2005-09-01	149
Hobart	Carrots	2005-09-01	174
Darwin	Carrots	2005-09-01	227
Sydney	Onions	2005-09-01	202
Melbourne	Onions	2005-09-01	228
Brisbane	Onions	2005-09-01	205
Adelaide	Onions	2005-09-01	198
Hobart	Onions	2005-09-01	188
Darwin	Onions	2005-09-01	271
Sydney	Peaches	2005-09-01	267
Melbourne	Peaches	2005-09-01	271
Brisbane	Peaches	2005-09-01	258
Adelaide	Peaches	2005-09-01	246
Perth	Peaches	2005-09-01	310
Hobart	Peaches	2005-09-01	289
Darwin	Peaches	2005-09-01	301
Sydney	Pineapple, sliced	2005-09-01	152
Melbourne	Pineapple, sliced	2005-09-01	155
Brisbane	Pineapple, sliced	2005-09-01	157
Perth	Pineapple, sliced	2005-09-01	161
Hobart	Pineapple, sliced	2005-09-01	167
Darwin	Pineapple, sliced	2005-09-01	151
Sydney	Peas, frozen	2005-09-01	172
Melbourne	Peas, frozen	2005-09-01	153
Brisbane	Peas, frozen	2005-09-01	162
Adelaide	Peas, frozen	2005-09-01	151
Perth	Peas, frozen	2005-09-01	163
Hobart	Peas, frozen	2005-09-01	173
Darwin	Peas, frozen	2005-09-01	188
Sydney	Chocolate milk	2005-09-01	347
Melbourne	Chocolate milk	2005-09-01	391
Brisbane	Chocolate milk	2005-09-01	321
Adelaide	Chocolate milk	2005-09-01	342
Perth	Chocolate milk	2005-09-01	332
Hobart	Chocolate milk	2005-09-01	383
Sydney	Eggs	2005-09-01	305
Melbourne	Eggs	2005-09-01	284
Brisbane	Eggs	2005-09-01	293
Adelaide	Eggs	2005-09-01	296
Perth	Eggs	2005-09-01	381
Hobart	Eggs	2005-09-01	339
Darwin	Eggs	2005-09-01	350
Sydney	Sugar, white	2005-09-01	203
Melbourne	Sugar, white	2005-09-01	201
Brisbane	Sugar, white	2005-09-01	187
Adelaide	Sugar, white	2005-09-01	206
Perth	Sugar, white	2005-09-01	237
Hobart	Sugar, white	2005-09-01	278
Darwin	Sugar, white	2005-09-01	220
Sydney	Jam, strawberry	2005-09-01	282
Melbourne	Jam, strawberry	2005-09-01	288
Adelaide	Jam, strawberry	2005-09-01	255
Perth	Jam, strawberry	2005-09-01	268
Hobart	Jam, strawberry	2005-09-01	314
Darwin	Jam, strawberry	2005-09-01	296
Sydney	Teabags	2005-09-01	366
Melbourne	Teabags	2005-09-01	366
Brisbane	Teabags	2005-09-01	338
Adelaide	Teabags	2005-09-01	346
Perth	Teabags	2005-09-01	375
Hobart	Teabags	2005-09-01	401
Darwin	Teabags	2005-09-01	348
Sydney	Coffee, instant	2005-09-01	582
Melbourne	Coffee, instant	2005-09-01	590
Brisbane	Coffee, instant	2005-09-01	569
Adelaide	Coffee, instant	2005-09-01	587
Perth	Coffee, instant	2005-09-01	652
Darwin	Coffee, instant	2005-09-01	619
Sydney	Tomato sauce	2005-09-01	184
Melbourne	Tomato sauce	2005-09-01	176
Brisbane	Tomato sauce	2005-09-01	178
Adelaide	Tomato sauce	2005-09-01	174
Perth	Tomato sauce	2005-09-01	179
Hobart	Tomato sauce	2005-09-01	205
Darwin	Tomato sauce	2005-09-01	192
Sydney	Margarine, poly-unsaturated	2005-09-01	236
Melbourne	Margarine, poly-unsaturated	2005-09-01	245
Brisbane	Margarine, poly-unsaturated	2005-09-01	244
Adelaide	Margarine, poly-unsaturated	2005-09-01	237
Perth	Margarine, poly-unsaturated	2005-09-01	237
Hobart	Margarine, poly-unsaturated	2005-09-01	242
Sydney	Baked beans, in tomato sauce	2005-09-01	137
Melbourne	Baked beans, in tomato sauce	2005-09-01	132
Brisbane	Baked beans, in tomato sauce	2005-09-01	117
Adelaide	Baked beans, in tomato sauce	2005-09-01	138
Perth	Baked beans, in tomato sauce	2005-09-01	122
Darwin	Baked beans, in tomato sauce	2005-09-01	129
Sydney	Baby food	2005-09-01	74
Melbourne	Baby food	2005-09-01	72
Brisbane	Baby food	2005-09-01	77
Adelaide	Baby food	2005-09-01	72
Perth	Baby food	2005-09-01	75
Hobart	Baby food	2005-09-01	77
Darwin	Baby food	2005-09-01	73
Sydney	Laundry detergent	2005-09-01	563
Melbourne	Laundry detergent	2005-09-01	564
Brisbane	Laundry detergent	2005-09-01	588
Adelaide	Laundry detergent	2005-09-01	558
Perth	Laundry detergent	2005-09-01	568
Hobart	Laundry detergent	2005-09-01	584
Darwin	Laundry detergent	2005-09-01	606
Melbourne	Dishwashing detergent	2005-09-01	339
Brisbane	Dishwashing detergent	2005-09-01	332
Adelaide	Dishwashing detergent	2005-09-01	328
Perth	Dishwashing detergent	2005-09-01	349
Hobart	Dishwashing detergent	2005-09-01	350
Darwin	Dishwashing detergent	2005-09-01	366
Sydney	Facial tissues	2005-09-01	208
Melbourne	Facial tissues	2005-09-01	211
Brisbane	Facial tissues	2005-09-01	209
Adelaide	Facial tissues	2005-09-01	197
Perth	Facial tissues	2005-09-01	208
Hobart	Facial tissues	2005-09-01	219
Darwin	Facial tissues	2005-09-01	214
Sydney	Toilet paper	2005-09-01	602
Melbourne	Toilet paper	2005-09-01	492
Brisbane	Toilet paper	2005-09-01	607
Adelaide	Toilet paper	2005-09-01	584
Perth	Toilet paper	2005-09-01	496
Hobart	Toilet paper	2005-09-01	596
Darwin	Toilet paper	2005-09-01	543
Melbourne	Pet food	2005-09-01	118
Brisbane	Pet food	2005-09-01	106
Adelaide	Pet food	2005-09-01	117
Perth	Pet food	2005-09-01	109
Hobart	Pet food	2005-09-01	127
Darwin	Pet food	2005-09-01	111
Sydney	Petrol, unleaded	2005-09-01	120
Melbourne	Petrol, unleaded	2005-09-01	120
Brisbane	Petrol, unleaded	2005-09-01	112
Adelaide	Petrol, unleaded	2005-09-01	121
Perth	Petrol, unleaded	2005-09-01	118
Hobart	Petrol, unleaded	2005-09-01	126
Sydney	Beer, low alcohol	2005-09-01	2341
Melbourne	Beer, low alcohol	2005-09-01	2371
Brisbane	Beer, low alcohol	2005-09-01	2751
Adelaide	Beer, low alcohol	2005-09-01	2599
Perth	Beer, low alcohol	2005-09-01	3001
Hobart	Beer, low alcohol	2005-09-01	2699
Darwin	Beer, low alcohol	2005-09-01	2924
Sydney	Beer, full strength	2005-09-01	3644
Melbourne	Beer, full strength	2005-09-01	3621
Brisbane	Beer, full strength	2005-09-01	3393
Adelaide	Beer, full strength	2005-09-01	3497
Perth	Beer, full strength	2005-09-01	3611
Hobart	Beer, full strength	2005-09-01	3623
Darwin	Beer, full strength	2005-09-01	3894
Melbourne	Draught beer, low alcohol, public bar	2005-09-01	257
Brisbane	Draught beer, low alcohol, public bar	2005-09-01	223
Adelaide	Draught beer, low alcohol, public bar	2005-09-01	291
Perth	Draught beer, low alcohol, public bar	2005-09-01	309
Hobart	Draught beer, low alcohol, public bar	2005-09-01	260
Darwin	Draught beer, low alcohol, public bar	2005-09-01	247
Sydney	Draught beer, full strength, public bar	2005-09-01	242
Melbourne	Draught beer, full strength, public bar	2005-09-01	292
Brisbane	Draught beer, full strength, public bar	2005-09-01	246
Adelaide	Draught beer, full strength, public bar	2005-09-01	328
Perth	Draught beer, full strength, public bar	2005-09-01	319
Hobart	Draught beer, full strength, public bar	2005-09-01	306
Darwin	Draught beer, full strength, public bar	2005-09-01	296
Sydney	Scotch	2005-09-01	429
Melbourne	Scotch	2005-09-01	425
Brisbane	Scotch	2005-09-01	381
Adelaide	Scotch	2005-09-01	509
Perth	Scotch	2005-09-01	483
Hobart	Scotch	2005-09-01	382
Darwin	Scotch	2005-09-01	418
Sydney	Toilet soap	2005-09-01	276
Melbourne	Toilet soap	2005-09-01	300
Brisbane	Toilet soap	2005-09-01	271
Adelaide	Toilet soap	2005-09-01	270
Perth	Toilet soap	2005-09-01	290
Hobart	Toilet soap	2005-09-01	308
Sydney	Milk	2005-12-01	295
Melbourne	Milk	2005-12-01	313
Brisbane	Milk	2005-12-01	301
Adelaide	Milk	2005-12-01	309
Perth	Milk	2005-12-01	294
Hobart	Milk	2005-12-01	311
Darwin	Milk	2005-12-01	338
Sydney	Cheese	2005-12-01	426
Melbourne	Cheese	2005-12-01	416
Brisbane	Cheese	2005-12-01	435
Adelaide	Cheese	2005-12-01	437
Perth	Cheese	2005-12-01	418
Hobart	Cheese	2005-12-01	437
Darwin	Cheese	2005-12-01	465
Melbourne	Butter	2005-12-01	338
Brisbane	Butter	2005-12-01	293
Adelaide	Butter	2005-12-01	297
Perth	Butter	2005-12-01	282
Hobart	Butter	2005-12-01	268
Darwin	Butter	2005-12-01	314
Sydney	Bread white loaf, sliced	2005-12-01	286
Melbourne	Bread white loaf, sliced	2005-12-01	286
Brisbane	Bread white loaf, sliced	2005-12-01	274
Adelaide	Bread white loaf, sliced	2005-12-01	271
Darwin	Bread white loaf, sliced	2005-12-01	323
Sydney	Biscuits, dry	2005-12-01	191
Melbourne	Biscuits, dry	2005-12-01	194
Brisbane	Biscuits, dry	2005-12-01	177
Adelaide	Biscuits, dry	2005-12-01	196
Perth	Biscuits, dry	2005-12-01	182
Hobart	Biscuits, dry	2005-12-01	205
Darwin	Biscuits, dry	2005-12-01	185
Sydney	Breakfast cereal	2005-12-01	345
Melbourne	Breakfast cereal	2005-12-01	332
Brisbane	Breakfast cereal	2005-12-01	337
Adelaide	Breakfast cereal	2005-12-01	325
Perth	Breakfast cereal	2005-12-01	373
Darwin	Breakfast cereal	2005-12-01	354
Sydney	Flour, self raising	2005-12-01	331
Melbourne	Flour, self raising	2005-12-01	389
Brisbane	Flour, self raising	2005-12-01	301
Adelaide	Flour, self raising	2005-12-01	375
Perth	Flour, self raising	2005-12-01	413
Hobart	Flour, self raising	2005-12-01	261
Darwin	Flour, self raising	2005-12-01	359
Sydney	Rice	2005-12-01	196
Melbourne	Rice	2005-12-01	212
Brisbane	Rice	2005-12-01	188
Adelaide	Rice	2005-12-01	193
Perth	Rice	2005-12-01	204
Hobart	Rice	2005-12-01	217
Darwin	Rice	2005-12-01	220
Sydney	Roast beef	2005-12-01	1124
Brisbane	Roast beef	2005-12-01	1171
Adelaide	Roast beef	2005-12-01	1206
Perth	Roast beef	2005-12-01	1131
Hobart	Roast beef	2005-12-01	1039
Darwin	Roast beef	2005-12-01	1232
Sydney	Rump steak	2005-12-01	1865
Melbourne	Rump steak	2005-12-01	1884
Brisbane	Rump steak	2005-12-01	1973
Adelaide	Rump steak	2005-12-01	1817
Perth	Rump steak	2005-12-01	1767
Hobart	Rump steak	2005-12-01	1760
Darwin	Rump steak	2005-12-01	1889
Sydney	T-bone steak, with fillet	2005-12-01	1880
Melbourne	T-bone steak, with fillet	2005-12-01	1966
Adelaide	T-bone steak, with fillet	2005-12-01	1925
Perth	T-bone steak, with fillet	2005-12-01	1886
Hobart	T-bone steak, with fillet	2005-12-01	1867
Darwin	T-bone steak, with fillet	2005-12-01	2015
Sydney	Chuck steak	2005-12-01	975
Melbourne	Chuck steak	2005-12-01	916
Brisbane	Chuck steak	2005-12-01	895
Adelaide	Chuck steak	2005-12-01	945
Perth	Chuck steak	2005-12-01	942
Hobart	Chuck steak	2005-12-01	970
Darwin	Chuck steak	2005-12-01	1082
Sydney	Lamb leg	2005-12-01	900
Melbourne	Lamb leg	2005-12-01	891
Brisbane	Lamb leg	2005-12-01	939
Adelaide	Lamb leg	2005-12-01	898
Perth	Lamb leg	2005-12-01	1028
Hobart	Lamb leg	2005-12-01	931
Darwin	Lamb leg	2005-12-01	925
Sydney	Lamb loin chops	2005-12-01	1620
Melbourne	Lamb loin chops	2005-12-01	1576
Adelaide	Lamb loin chops	2005-12-01	1656
Perth	Lamb loin chops	2005-12-01	1670
Hobart	Lamb loin chops	2005-12-01	1679
Darwin	Lamb loin chops	2005-12-01	1749
Sydney	Lamb forequarter chops	2005-12-01	800
Melbourne	Lamb forequarter chops	2005-12-01	798
Brisbane	Lamb forequarter chops	2005-12-01	836
Adelaide	Lamb forequarter chops	2005-12-01	914
Perth	Lamb forequarter chops	2005-12-01	946
Hobart	Lamb forequarter chops	2005-12-01	919
Darwin	Lamb forequarter chops	2005-12-01	897
Sydney	Pork leg	2005-12-01	698
Melbourne	Pork leg	2005-12-01	731
Brisbane	Pork leg	2005-12-01	668
Adelaide	Pork leg	2005-12-01	644
Perth	Pork leg	2005-12-01	665
Hobart	Pork leg	2005-12-01	770
Darwin	Pork leg	2005-12-01	649
Melbourne	Pork loin chops	2005-12-01	1300
Brisbane	Pork loin chops	2005-12-01	1292
Adelaide	Pork loin chops	2005-12-01	1348
Perth	Pork loin chops	2005-12-01	1280
Hobart	Pork loin chops	2005-12-01	1281
Darwin	Pork loin chops	2005-12-01	1444
Sydney	Chicken, frozen	2005-12-01	390
Melbourne	Chicken, frozen	2005-12-01	337
Brisbane	Chicken, frozen	2005-12-01	356
Adelaide	Chicken, frozen	2005-12-01	387
Perth	Chicken, frozen	2005-12-01	397
Hobart	Chicken, frozen	2005-12-01	363
Darwin	Chicken, frozen	2005-12-01	382
Melbourne	Bacon, middle rashers	2005-12-01	397
Brisbane	Bacon, middle rashers	2005-12-01	367
Adelaide	Bacon, middle rashers	2005-12-01	389
Perth	Bacon, middle rashers	2005-12-01	486
Hobart	Bacon, middle rashers	2005-12-01	357
Darwin	Bacon, middle rashers	2005-12-01	437
Sydney	Sausages	2005-12-01	506
Melbourne	Sausages	2005-12-01	520
Brisbane	Sausages	2005-12-01	534
Adelaide	Sausages	2005-12-01	553
Perth	Sausages	2005-12-01	522
Hobart	Sausages	2005-12-01	530
Darwin	Sausages	2005-12-01	487
Sydney	Salmon, pink	2005-12-01	251
Melbourne	Salmon, pink	2005-12-01	248
Brisbane	Salmon, pink	2005-12-01	257
Adelaide	Salmon, pink	2005-12-01	251
Perth	Salmon, pink	2005-12-01	265
Hobart	Salmon, pink	2005-12-01	336
Darwin	Salmon, pink	2005-12-01	267
Sydney	Oranges	2005-12-01	247
Adelaide	Oranges	2005-12-01	148
Perth	Oranges	2005-12-01	298
Hobart	Oranges	2005-12-01	239
Sydney	Bananas	2005-12-01	267
Melbourne	Bananas	2005-12-01	269
Brisbane	Bananas	2005-12-01	247
Adelaide	Bananas	2005-12-01	281
Perth	Bananas	2005-12-01	335
Hobart	Bananas	2005-12-01	281
Darwin	Bananas	2005-12-01	298
Sydney	Potatoes	2005-12-01	149
Melbourne	Potatoes	2005-12-01	220
Brisbane	Potatoes	2005-12-01	191
Adelaide	Potatoes	2005-12-01	179
Perth	Potatoes	2005-12-01	227
Hobart	Potatoes	2005-12-01	206
Darwin	Potatoes	2005-12-01	265
Melbourne	Tomatoes	2005-12-01	367
Brisbane	Tomatoes	2005-12-01	352
Adelaide	Tomatoes	2005-12-01	418
Perth	Tomatoes	2005-12-01	422
Hobart	Tomatoes	2005-12-01	432
Darwin	Tomatoes	2005-12-01	502
Sydney	Carrots	2005-12-01	211
Melbourne	Carrots	2005-12-01	194
Brisbane	Carrots	2005-12-01	181
Adelaide	Carrots	2005-12-01	185
Perth	Carrots	2005-12-01	153
Hobart	Carrots	2005-12-01	178
Darwin	Carrots	2005-12-01	238
Sydney	Onions	2005-12-01	251
Brisbane	Onions	2005-12-01	255
Adelaide	Onions	2005-12-01	284
Perth	Onions	2005-12-01	248
Hobart	Onions	2005-12-01	196
Darwin	Onions	2005-12-01	325
Sydney	Peaches	2005-12-01	272
Melbourne	Peaches	2005-12-01	289
Brisbane	Peaches	2005-12-01	272
Adelaide	Peaches	2005-12-01	284
Perth	Peaches	2005-12-01	275
Hobart	Peaches	2005-12-01	295
Darwin	Peaches	2005-12-01	290
Melbourne	Pineapple, sliced	2005-12-01	158
Brisbane	Pineapple, sliced	2005-12-01	154
Adelaide	Pineapple, sliced	2005-12-01	140
Perth	Pineapple, sliced	2005-12-01	161
Hobart	Pineapple, sliced	2005-12-01	167
Darwin	Pineapple, sliced	2005-12-01	152
Sydney	Peas, frozen	2005-12-01	156
Melbourne	Peas, frozen	2005-12-01	150
Brisbane	Peas, frozen	2005-12-01	159
Adelaide	Peas, frozen	2005-12-01	143
Perth	Peas, frozen	2005-12-01	143
Hobart	Peas, frozen	2005-12-01	160
Darwin	Peas, frozen	2005-12-01	184
Sydney	Chocolate milk	2005-12-01	335
Melbourne	Chocolate milk	2005-12-01	367
Brisbane	Chocolate milk	2005-12-01	336
Perth	Chocolate milk	2005-12-01	346
Hobart	Chocolate milk	2005-12-01	375
Darwin	Chocolate milk	2005-12-01	341
Sydney	Eggs	2005-12-01	319
Melbourne	Eggs	2005-12-01	299
Brisbane	Eggs	2005-12-01	296
Adelaide	Eggs	2005-12-01	300
Perth	Eggs	2005-12-01	364
Hobart	Eggs	2005-12-01	347
Darwin	Eggs	2005-12-01	351
Sydney	Sugar, white	2005-12-01	194
Melbourne	Sugar, white	2005-12-01	191
Brisbane	Sugar, white	2005-12-01	181
Adelaide	Sugar, white	2005-12-01	198
Perth	Sugar, white	2005-12-01	233
Hobart	Sugar, white	2005-12-01	275
Darwin	Sugar, white	2005-12-01	217
Melbourne	Jam, strawberry	2005-12-01	273
Brisbane	Jam, strawberry	2005-12-01	293
Adelaide	Jam, strawberry	2005-12-01	250
Perth	Jam, strawberry	2005-12-01	273
Hobart	Jam, strawberry	2005-12-01	283
Darwin	Jam, strawberry	2005-12-01	269
Sydney	Teabags	2005-12-01	384
Melbourne	Teabags	2005-12-01	348
Brisbane	Teabags	2005-12-01	344
Adelaide	Teabags	2005-12-01	354
Perth	Teabags	2005-12-01	366
Hobart	Teabags	2005-12-01	441
Darwin	Teabags	2005-12-01	358
Sydney	Coffee, instant	2005-12-01	634
Melbourne	Coffee, instant	2005-12-01	604
Adelaide	Coffee, instant	2005-12-01	558
Perth	Coffee, instant	2005-12-01	643
Hobart	Coffee, instant	2005-12-01	696
Darwin	Coffee, instant	2005-12-01	621
Sydney	Tomato sauce	2005-12-01	182
Melbourne	Tomato sauce	2005-12-01	173
Brisbane	Tomato sauce	2005-12-01	178
Adelaide	Tomato sauce	2005-12-01	172
Perth	Tomato sauce	2005-12-01	169
Hobart	Tomato sauce	2005-12-01	205
Darwin	Tomato sauce	2005-12-01	195
Sydney	Margarine, poly-unsaturated	2005-12-01	255
Brisbane	Margarine, poly-unsaturated	2005-12-01	245
Adelaide	Margarine, poly-unsaturated	2005-12-01	247
Perth	Margarine, poly-unsaturated	2005-12-01	251
Hobart	Margarine, poly-unsaturated	2005-12-01	262
Darwin	Margarine, poly-unsaturated	2005-12-01	260
Sydney	Baked beans, in tomato sauce	2005-12-01	126
Melbourne	Baked beans, in tomato sauce	2005-12-01	137
Brisbane	Baked beans, in tomato sauce	2005-12-01	125
Adelaide	Baked beans, in tomato sauce	2005-12-01	127
Perth	Baked beans, in tomato sauce	2005-12-01	132
Hobart	Baked beans, in tomato sauce	2005-12-01	135
Darwin	Baked beans, in tomato sauce	2005-12-01	138
Sydney	Baby food	2005-12-01	79
Melbourne	Baby food	2005-12-01	78
Brisbane	Baby food	2005-12-01	80
Perth	Baby food	2005-12-01	77
Hobart	Baby food	2005-12-01	82
Darwin	Baby food	2005-12-01	88
Sydney	Laundry detergent	2005-12-01	572
Melbourne	Laundry detergent	2005-12-01	578
Adelaide	Laundry detergent	2005-12-01	572
Perth	Laundry detergent	2005-12-01	534
Hobart	Laundry detergent	2005-12-01	562
Darwin	Laundry detergent	2005-12-01	582
Sydney	Dishwashing detergent	2005-12-01	352
Melbourne	Dishwashing detergent	2005-12-01	324
Brisbane	Dishwashing detergent	2005-12-01	349
Adelaide	Dishwashing detergent	2005-12-01	327
Perth	Dishwashing detergent	2005-12-01	343
Hobart	Dishwashing detergent	2005-12-01	350
Darwin	Dishwashing detergent	2005-12-01	354
Sydney	Facial tissues	2005-12-01	208
Melbourne	Facial tissues	2005-12-01	208
Brisbane	Facial tissues	2005-12-01	200
Adelaide	Facial tissues	2005-12-01	206
Perth	Facial tissues	2005-12-01	220
Darwin	Facial tissues	2005-12-01	222
Sydney	Toilet paper	2005-12-01	606
Melbourne	Toilet paper	2005-12-01	518
Brisbane	Toilet paper	2005-12-01	597
Adelaide	Toilet paper	2005-12-01	593
Perth	Toilet paper	2005-12-01	563
Hobart	Toilet paper	2005-12-01	576
Darwin	Toilet paper	2005-12-01	561
Sydney	Pet food	2005-12-01	112
Melbourne	Pet food	2005-12-01	117
Brisbane	Pet food	2005-12-01	108
Adelaide	Pet food	2005-12-01	111
Perth	Pet food	2005-12-01	115
Hobart	Pet food	2005-12-01	126
Darwin	Pet food	2005-12-01	116
Sydney	Petrol, unleaded	2005-12-01	119
Brisbane	Petrol, unleaded	2005-12-01	110
Adelaide	Petrol, unleaded	2005-12-01	119
Perth	Petrol, unleaded	2005-12-01	117
Hobart	Petrol, unleaded	2005-12-01	127
Darwin	Petrol, unleaded	2005-12-01	130
Sydney	Beer, low alcohol	2005-12-01	2390
Melbourne	Beer, low alcohol	2005-12-01	2385
Brisbane	Beer, low alcohol	2005-12-01	2826
Adelaide	Beer, low alcohol	2005-12-01	2655
Perth	Beer, low alcohol	2005-12-01	2965
Hobart	Beer, low alcohol	2005-12-01	2780
Darwin	Beer, low alcohol	2005-12-01	2989
Sydney	Beer, full strength	2005-12-01	3633
Melbourne	Beer, full strength	2005-12-01	3626
Adelaide	Beer, full strength	2005-12-01	3504
Perth	Beer, full strength	2005-12-01	3602
Hobart	Beer, full strength	2005-12-01	3746
Darwin	Beer, full strength	2005-12-01	3879
Sydney	Draught beer, low alcohol, public bar	2005-12-01	214
Melbourne	Draught beer, low alcohol, public bar	2005-12-01	260
Brisbane	Draught beer, low alcohol, public bar	2005-12-01	221
Adelaide	Draught beer, low alcohol, public bar	2005-12-01	292
Perth	Draught beer, low alcohol, public bar	2005-12-01	312
Hobart	Draught beer, low alcohol, public bar	2005-12-01	261
Darwin	Draught beer, low alcohol, public bar	2005-12-01	251
Sydney	Draught beer, full strength, public bar	2005-12-01	245
Melbourne	Draught beer, full strength, public bar	2005-12-01	293
Brisbane	Draught beer, full strength, public bar	2005-12-01	246
Perth	Draught beer, full strength, public bar	2005-12-01	321
Hobart	Draught beer, full strength, public bar	2005-12-01	305
Darwin	Draught beer, full strength, public bar	2005-12-01	300
Sydney	Scotch	2005-12-01	432
Melbourne	Scotch	2005-12-01	458
Brisbane	Scotch	2005-12-01	389
Adelaide	Scotch	2005-12-01	518
Perth	Scotch	2005-12-01	488
Hobart	Scotch	2005-12-01	382
Darwin	Scotch	2005-12-01	430
Sydney	Toilet soap	2005-12-01	269
Melbourne	Toilet soap	2005-12-01	279
Brisbane	Toilet soap	2005-12-01	286
Adelaide	Toilet soap	2005-12-01	276
Perth	Toilet soap	2005-12-01	264
Hobart	Toilet soap	2005-12-01	267
Darwin	Toilet soap	2005-12-01	294
Sydney	Milk	2006-03-01	296
Melbourne	Milk	2006-03-01	316
Brisbane	Milk	2006-03-01	307
Adelaide	Milk	2006-03-01	313
Perth	Milk	2006-03-01	290
Hobart	Milk	2006-03-01	313
Darwin	Milk	2006-03-01	342
Sydney	Cheese	2006-03-01	427
Melbourne	Cheese	2006-03-01	437
Brisbane	Cheese	2006-03-01	428
Adelaide	Cheese	2006-03-01	429
Perth	Cheese	2006-03-01	438
Hobart	Cheese	2006-03-01	451
Sydney	Butter	2006-03-01	312
Melbourne	Butter	2006-03-01	336
Brisbane	Butter	2006-03-01	297
Adelaide	Butter	2006-03-01	300
Perth	Butter	2006-03-01	286
Hobart	Butter	2006-03-01	279
Darwin	Butter	2006-03-01	315
Sydney	Bread white loaf, sliced	2006-03-01	289
Melbourne	Bread white loaf, sliced	2006-03-01	298
Brisbane	Bread white loaf, sliced	2006-03-01	273
Perth	Bread white loaf, sliced	2006-03-01	271
Hobart	Bread white loaf, sliced	2006-03-01	247
Darwin	Bread white loaf, sliced	2006-03-01	311
Sydney	Biscuits, dry	2006-03-01	185
Melbourne	Biscuits, dry	2006-03-01	194
Brisbane	Biscuits, dry	2006-03-01	177
Perth	Biscuits, dry	2006-03-01	182
Hobart	Biscuits, dry	2006-03-01	196
Darwin	Biscuits, dry	2006-03-01	205
Sydney	Breakfast cereal	2006-03-01	345
Melbourne	Breakfast cereal	2006-03-01	326
Brisbane	Breakfast cereal	2006-03-01	335
Adelaide	Breakfast cereal	2006-03-01	330
Perth	Breakfast cereal	2006-03-01	373
Hobart	Breakfast cereal	2006-03-01	384
Darwin	Breakfast cereal	2006-03-01	354
Melbourne	Flour, self raising	2006-03-01	391
Brisbane	Flour, self raising	2006-03-01	307
Adelaide	Flour, self raising	2006-03-01	381
Perth	Flour, self raising	2006-03-01	407
Hobart	Flour, self raising	2006-03-01	263
Darwin	Flour, self raising	2006-03-01	365
Sydney	Rice	2006-03-01	193
Melbourne	Rice	2006-03-01	215
Brisbane	Rice	2006-03-01	181
Adelaide	Rice	2006-03-01	193
Perth	Rice	2006-03-01	197
Hobart	Rice	2006-03-01	212
Darwin	Rice	2006-03-01	218
Sydney	Roast beef	2006-03-01	1123
Melbourne	Roast beef	2006-03-01	1034
Brisbane	Roast beef	2006-03-01	1310
Adelaide	Roast beef	2006-03-01	1321
Perth	Roast beef	2006-03-01	1202
Darwin	Roast beef	2006-03-01	1219
Sydney	Rump steak	2006-03-01	1840
Melbourne	Rump steak	2006-03-01	1922
Brisbane	Rump steak	2006-03-01	1912
Adelaide	Rump steak	2006-03-01	1979
Perth	Rump steak	2006-03-01	1857
Hobart	Rump steak	2006-03-01	1876
Darwin	Rump steak	2006-03-01	2051
Sydney	T-bone steak, with fillet	2006-03-01	2009
Melbourne	T-bone steak, with fillet	2006-03-01	1852
Adelaide	T-bone steak, with fillet	2006-03-01	2037
Perth	T-bone steak, with fillet	2006-03-01	1988
Hobart	T-bone steak, with fillet	2006-03-01	1970
Darwin	T-bone steak, with fillet	2006-03-01	2137
Sydney	Chuck steak	2006-03-01	973
Melbourne	Chuck steak	2006-03-01	912
Brisbane	Chuck steak	2006-03-01	909
Adelaide	Chuck steak	2006-03-01	949
Perth	Chuck steak	2006-03-01	974
Hobart	Chuck steak	2006-03-01	942
Darwin	Chuck steak	2006-03-01	1099
Sydney	Lamb leg	2006-03-01	949
Melbourne	Lamb leg	2006-03-01	834
Brisbane	Lamb leg	2006-03-01	887
Adelaide	Lamb leg	2006-03-01	886
Perth	Lamb leg	2006-03-01	963
Hobart	Lamb leg	2006-03-01	953
Darwin	Lamb leg	2006-03-01	952
Sydney	Lamb loin chops	2006-03-01	1660
Melbourne	Lamb loin chops	2006-03-01	1612
Adelaide	Lamb loin chops	2006-03-01	1658
Perth	Lamb loin chops	2006-03-01	1660
Hobart	Lamb loin chops	2006-03-01	1669
Darwin	Lamb loin chops	2006-03-01	1745
Sydney	Lamb forequarter chops	2006-03-01	839
Melbourne	Lamb forequarter chops	2006-03-01	846
Brisbane	Lamb forequarter chops	2006-03-01	852
Adelaide	Lamb forequarter chops	2006-03-01	949
Perth	Lamb forequarter chops	2006-03-01	907
Hobart	Lamb forequarter chops	2006-03-01	910
Darwin	Lamb forequarter chops	2006-03-01	955
Sydney	Pork leg	2006-03-01	692
Melbourne	Pork leg	2006-03-01	663
Brisbane	Pork leg	2006-03-01	671
Adelaide	Pork leg	2006-03-01	636
Perth	Pork leg	2006-03-01	675
Hobart	Pork leg	2006-03-01	747
Darwin	Pork leg	2006-03-01	750
Melbourne	Pork loin chops	2006-03-01	1344
Brisbane	Pork loin chops	2006-03-01	1319
Adelaide	Pork loin chops	2006-03-01	1370
Perth	Pork loin chops	2006-03-01	1358
Hobart	Pork loin chops	2006-03-01	1304
Darwin	Pork loin chops	2006-03-01	1313
Sydney	Chicken, frozen	2006-03-01	364
Melbourne	Chicken, frozen	2006-03-01	342
Brisbane	Chicken, frozen	2006-03-01	355
Adelaide	Chicken, frozen	2006-03-01	353
Perth	Chicken, frozen	2006-03-01	399
Hobart	Chicken, frozen	2006-03-01	352
Darwin	Chicken, frozen	2006-03-01	402
Melbourne	Bacon, middle rashers	2006-03-01	398
Brisbane	Bacon, middle rashers	2006-03-01	351
Adelaide	Bacon, middle rashers	2006-03-01	389
Perth	Bacon, middle rashers	2006-03-01	469
Hobart	Bacon, middle rashers	2006-03-01	355
Darwin	Bacon, middle rashers	2006-03-01	455
Sydney	Sausages	2006-03-01	531
Melbourne	Sausages	2006-03-01	525
Brisbane	Sausages	2006-03-01	552
Adelaide	Sausages	2006-03-01	553
Perth	Sausages	2006-03-01	527
Hobart	Sausages	2006-03-01	536
Darwin	Sausages	2006-03-01	495
Sydney	Salmon, pink	2006-03-01	251
Melbourne	Salmon, pink	2006-03-01	249
Brisbane	Salmon, pink	2006-03-01	257
Adelaide	Salmon, pink	2006-03-01	244
Perth	Salmon, pink	2006-03-01	264
Hobart	Salmon, pink	2006-03-01	322
Darwin	Salmon, pink	2006-03-01	271
Sydney	Oranges	2006-03-01	251
Brisbane	Oranges	2006-03-01	208
Adelaide	Oranges	2006-03-01	145
Perth	Oranges	2006-03-01	319
Hobart	Oranges	2006-03-01	217
Darwin	Oranges	2006-03-01	376
Sydney	Bananas	2006-03-01	248
Melbourne	Bananas	2006-03-01	242
Brisbane	Bananas	2006-03-01	231
Perth	Bananas	2006-03-01	302
Hobart	Bananas	2006-03-01	251
Darwin	Bananas	2006-03-01	294
Sydney	Potatoes	2006-03-01	160
Melbourne	Potatoes	2006-03-01	242
Brisbane	Potatoes	2006-03-01	230
Adelaide	Potatoes	2006-03-01	149
Perth	Potatoes	2006-03-01	209
Hobart	Potatoes	2006-03-01	217
Darwin	Potatoes	2006-03-01	293
Sydney	Tomatoes	2006-03-01	403
Melbourne	Tomatoes	2006-03-01	375
Brisbane	Tomatoes	2006-03-01	401
Adelaide	Tomatoes	2006-03-01	421
Hobart	Tomatoes	2006-03-01	470
Darwin	Tomatoes	2006-03-01	566
Sydney	Carrots	2006-03-01	219
Melbourne	Carrots	2006-03-01	192
Brisbane	Carrots	2006-03-01	186
Adelaide	Carrots	2006-03-01	182
Perth	Carrots	2006-03-01	154
Hobart	Carrots	2006-03-01	181
Darwin	Carrots	2006-03-01	242
Sydney	Onions	2006-03-01	263
Melbourne	Onions	2006-03-01	250
Brisbane	Onions	2006-03-01	242
Adelaide	Onions	2006-03-01	254
Perth	Onions	2006-03-01	244
Darwin	Onions	2006-03-01	333
Sydney	Peaches	2006-03-01	275
Melbourne	Peaches	2006-03-01	292
Brisbane	Peaches	2006-03-01	296
Adelaide	Peaches	2006-03-01	304
Perth	Peaches	2006-03-01	297
Hobart	Peaches	2006-03-01	293
Darwin	Peaches	2006-03-01	296
Sydney	Pineapple, sliced	2006-03-01	152
Melbourne	Pineapple, sliced	2006-03-01	158
Brisbane	Pineapple, sliced	2006-03-01	153
Adelaide	Pineapple, sliced	2006-03-01	140
Hobart	Pineapple, sliced	2006-03-01	167
Darwin	Pineapple, sliced	2006-03-01	152
Sydney	Peas, frozen	2006-03-01	144
Melbourne	Peas, frozen	2006-03-01	161
Brisbane	Peas, frozen	2006-03-01	156
Adelaide	Peas, frozen	2006-03-01	136
Perth	Peas, frozen	2006-03-01	161
Hobart	Peas, frozen	2006-03-01	167
Darwin	Peas, frozen	2006-03-01	178
Sydney	Chocolate milk	2006-03-01	362
Melbourne	Chocolate milk	2006-03-01	367
Brisbane	Chocolate milk	2006-03-01	351
Adelaide	Chocolate milk	2006-03-01	347
Perth	Chocolate milk	2006-03-01	374
Hobart	Chocolate milk	2006-03-01	386
Darwin	Chocolate milk	2006-03-01	368
Sydney	Eggs	2006-03-01	316
Melbourne	Eggs	2006-03-01	298
Adelaide	Eggs	2006-03-01	274
Perth	Eggs	2006-03-01	383
Hobart	Eggs	2006-03-01	331
Darwin	Eggs	2006-03-01	345
Sydney	Sugar, white	2006-03-01	190
Melbourne	Sugar, white	2006-03-01	194
Brisbane	Sugar, white	2006-03-01	186
Adelaide	Sugar, white	2006-03-01	202
Perth	Sugar, white	2006-03-01	241
Hobart	Sugar, white	2006-03-01	267
Darwin	Sugar, white	2006-03-01	223
Sydney	Jam, strawberry	2006-03-01	304
Brisbane	Jam, strawberry	2006-03-01	303
Adelaide	Jam, strawberry	2006-03-01	272
Perth	Jam, strawberry	2006-03-01	270
Hobart	Jam, strawberry	2006-03-01	313
Darwin	Jam, strawberry	2006-03-01	317
Sydney	Teabags	2006-03-01	384
Melbourne	Teabags	2006-03-01	385
Brisbane	Teabags	2006-03-01	360
Adelaide	Teabags	2006-03-01	354
Perth	Teabags	2006-03-01	364
Hobart	Teabags	2006-03-01	442
Darwin	Teabags	2006-03-01	370
Sydney	Coffee, instant	2006-03-01	633
Melbourne	Coffee, instant	2006-03-01	625
Brisbane	Coffee, instant	2006-03-01	575
Adelaide	Coffee, instant	2006-03-01	570
Hobart	Coffee, instant	2006-03-01	679
Darwin	Coffee, instant	2006-03-01	633
Sydney	Tomato sauce	2006-03-01	187
Melbourne	Tomato sauce	2006-03-01	184
Brisbane	Tomato sauce	2006-03-01	176
Adelaide	Tomato sauce	2006-03-01	163
Perth	Tomato sauce	2006-03-01	172
Hobart	Tomato sauce	2006-03-01	205
Darwin	Tomato sauce	2006-03-01	192
Sydney	Margarine, poly-unsaturated	2006-03-01	261
Melbourne	Margarine, poly-unsaturated	2006-03-01	266
Brisbane	Margarine, poly-unsaturated	2006-03-01	256
Perth	Margarine, poly-unsaturated	2006-03-01	263
Hobart	Margarine, poly-unsaturated	2006-03-01	271
Darwin	Margarine, poly-unsaturated	2006-03-01	270
Sydney	Baked beans, in tomato sauce	2006-03-01	140
Melbourne	Baked beans, in tomato sauce	2006-03-01	136
Brisbane	Baked beans, in tomato sauce	2006-03-01	132
Adelaide	Baked beans, in tomato sauce	2006-03-01	128
Perth	Baked beans, in tomato sauce	2006-03-01	133
Hobart	Baked beans, in tomato sauce	2006-03-01	138
Darwin	Baked beans, in tomato sauce	2006-03-01	137
Sydney	Baby food	2006-03-01	80
Melbourne	Baby food	2006-03-01	80
Brisbane	Baby food	2006-03-01	80
Adelaide	Baby food	2006-03-01	78
Perth	Baby food	2006-03-01	78
Hobart	Baby food	2006-03-01	81
Darwin	Baby food	2006-03-01	84
Sydney	Laundry detergent	2006-03-01	537
Brisbane	Laundry detergent	2006-03-01	540
Perth	Laundry detergent	2006-03-01	521
Hobart	Laundry detergent	2006-03-01	548
Darwin	Laundry detergent	2006-03-01	570
Sydney	Dishwashing detergent	2006-03-01	339
Melbourne	Dishwashing detergent	2006-03-01	344
Brisbane	Dishwashing detergent	2006-03-01	313
Adelaide	Dishwashing detergent	2006-03-01	334
Perth	Dishwashing detergent	2006-03-01	340
Hobart	Dishwashing detergent	2006-03-01	357
Darwin	Dishwashing detergent	2006-03-01	356
Sydney	Facial tissues	2006-03-01	208
Melbourne	Facial tissues	2006-03-01	206
Brisbane	Facial tissues	2006-03-01	205
Adelaide	Facial tissues	2006-03-01	204
Perth	Facial tissues	2006-03-01	208
Hobart	Facial tissues	2006-03-01	212
Sydney	Toilet paper	2006-03-01	662
Melbourne	Toilet paper	2006-03-01	649
Brisbane	Toilet paper	2006-03-01	652
Adelaide	Toilet paper	2006-03-01	640
Perth	Toilet paper	2006-03-01	614
Hobart	Toilet paper	2006-03-01	679
Darwin	Toilet paper	2006-03-01	635
Sydney	Pet food	2006-03-01	113
Melbourne	Pet food	2006-03-01	111
Brisbane	Pet food	2006-03-01	108
Adelaide	Pet food	2006-03-01	116
Perth	Pet food	2006-03-01	113
Hobart	Pet food	2006-03-01	125
Darwin	Pet food	2006-03-01	112
Sydney	Petrol, unleaded	2006-03-01	119
Melbourne	Petrol, unleaded	2006-03-01	119
Adelaide	Petrol, unleaded	2006-03-01	121
Perth	Petrol, unleaded	2006-03-01	118
Hobart	Petrol, unleaded	2006-03-01	127
Darwin	Petrol, unleaded	2006-03-01	128
Sydney	Beer, low alcohol	2006-03-01	2397
Melbourne	Beer, low alcohol	2006-03-01	2387
Brisbane	Beer, low alcohol	2006-03-01	2856
Adelaide	Beer, low alcohol	2006-03-01	2569
Perth	Beer, low alcohol	2006-03-01	3071
Hobart	Beer, low alcohol	2006-03-01	2833
Darwin	Beer, low alcohol	2006-03-01	3003
Sydney	Beer, full strength	2006-03-01	3717
Melbourne	Beer, full strength	2006-03-01	3689
Brisbane	Beer, full strength	2006-03-01	3535
Perth	Beer, full strength	2006-03-01	3628
Hobart	Beer, full strength	2006-03-01	3750
Darwin	Beer, full strength	2006-03-01	3913
Sydney	Draught beer, low alcohol, public bar	2006-03-01	217
Melbourne	Draught beer, low alcohol, public bar	2006-03-01	263
Brisbane	Draught beer, low alcohol, public bar	2006-03-01	225
Adelaide	Draught beer, low alcohol, public bar	2006-03-01	293
Perth	Draught beer, low alcohol, public bar	2006-03-01	315
Hobart	Draught beer, low alcohol, public bar	2006-03-01	263
Darwin	Draught beer, low alcohol, public bar	2006-03-01	248
Sydney	Draught beer, full strength, public bar	2006-03-01	247
Melbourne	Draught beer, full strength, public bar	2006-03-01	296
Brisbane	Draught beer, full strength, public bar	2006-03-01	250
Adelaide	Draught beer, full strength, public bar	2006-03-01	335
Hobart	Draught beer, full strength, public bar	2006-03-01	309
Darwin	Draught beer, full strength, public bar	2006-03-01	300
Sydney	Scotch	2006-03-01	435
Melbourne	Scotch	2006-03-01	460
Brisbane	Scotch	2006-03-01	395
Adelaide	Scotch	2006-03-01	499
Perth	Scotch	2006-03-01	495
Hobart	Scotch	2006-03-01	382
Darwin	Scotch	2006-03-01	434
Sydney	Toilet soap	2006-03-01	283
Melbourne	Toilet soap	2006-03-01	300
Brisbane	Toilet soap	2006-03-01	301
Adelaide	Toilet soap	2006-03-01	263
Perth	Toilet soap	2006-03-01	295
Hobart	Toilet soap	2006-03-01	288
Darwin	Toilet soap	2006-03-01	309
Sydney	Milk	2006-06-01	298
Melbourne	Milk	2006-06-01	319
Brisbane	Milk	2006-06-01	306
Adelaide	Milk	2006-06-01	314
Perth	Milk	2006-06-01	296
Hobart	Milk	2006-06-01	313
Darwin	Milk	2006-06-01	342
Sydney	Cheese	2006-06-01	433
Melbourne	Cheese	2006-06-01	429
Brisbane	Cheese	2006-06-01	433
Adelaide	Cheese	2006-06-01	430
Perth	Cheese	2006-06-01	436
Hobart	Cheese	2006-06-01	440
Darwin	Cheese	2006-06-01	478
Melbourne	Butter	2006-06-01	344
Brisbane	Butter	2006-06-01	310
Adelaide	Butter	2006-06-01	312
Perth	Butter	2006-06-01	299
Hobart	Butter	2006-06-01	287
Darwin	Butter	2006-06-01	323
Sydney	Bread white loaf, sliced	2006-06-01	289
Melbourne	Bread white loaf, sliced	2006-06-01	295
Brisbane	Bread white loaf, sliced	2006-06-01	277
Adelaide	Bread white loaf, sliced	2006-06-01	271
Hobart	Bread white loaf, sliced	2006-06-01	265
Darwin	Bread white loaf, sliced	2006-06-01	327
Sydney	Biscuits, dry	2006-06-01	198
Melbourne	Biscuits, dry	2006-06-01	200
Brisbane	Biscuits, dry	2006-06-01	182
Adelaide	Biscuits, dry	2006-06-01	201
Perth	Biscuits, dry	2006-06-01	185
Hobart	Biscuits, dry	2006-06-01	208
Darwin	Biscuits, dry	2006-06-01	207
Sydney	Breakfast cereal	2006-06-01	347
Brisbane	Breakfast cereal	2006-06-01	336
Adelaide	Breakfast cereal	2006-06-01	333
Perth	Breakfast cereal	2006-06-01	374
Darwin	Breakfast cereal	2006-06-01	354
Sydney	Flour, self raising	2006-06-01	347
Melbourne	Flour, self raising	2006-06-01	396
Brisbane	Flour, self raising	2006-06-01	304
Adelaide	Flour, self raising	2006-06-01	374
Perth	Flour, self raising	2006-06-01	406
Hobart	Flour, self raising	2006-06-01	260
Darwin	Flour, self raising	2006-06-01	362
Sydney	Rice	2006-06-01	196
Melbourne	Rice	2006-06-01	213
Brisbane	Rice	2006-06-01	184
Adelaide	Rice	2006-06-01	196
Perth	Rice	2006-06-01	202
Hobart	Rice	2006-06-01	217
Darwin	Rice	2006-06-01	219
Sydney	Roast beef	2006-06-01	1062
Brisbane	Roast beef	2006-06-01	1195
Adelaide	Roast beef	2006-06-01	1173
Perth	Roast beef	2006-06-01	1220
Hobart	Roast beef	2006-06-01	1134
Darwin	Roast beef	2006-06-01	1204
Sydney	Rump steak	2006-06-01	1947
Melbourne	Rump steak	2006-06-01	1978
Brisbane	Rump steak	2006-06-01	2051
Adelaide	Rump steak	2006-06-01	1989
Perth	Rump steak	2006-06-01	1978
Hobart	Rump steak	2006-06-01	2034
Darwin	Rump steak	2006-06-01	2123
Sydney	T-bone steak, with fillet	2006-06-01	2013
Melbourne	T-bone steak, with fillet	2006-06-01	2031
Adelaide	T-bone steak, with fillet	2006-06-01	2023
Perth	T-bone steak, with fillet	2006-06-01	2069
Hobart	T-bone steak, with fillet	2006-06-01	2005
Darwin	T-bone steak, with fillet	2006-06-01	2043
Sydney	Chuck steak	2006-06-01	974
Melbourne	Chuck steak	2006-06-01	930
Brisbane	Chuck steak	2006-06-01	932
Adelaide	Chuck steak	2006-06-01	974
Perth	Chuck steak	2006-06-01	1038
Hobart	Chuck steak	2006-06-01	979
Darwin	Chuck steak	2006-06-01	1029
Sydney	Lamb leg	2006-06-01	930
Melbourne	Lamb leg	2006-06-01	881
Brisbane	Lamb leg	2006-06-01	936
Adelaide	Lamb leg	2006-06-01	869
Perth	Lamb leg	2006-06-01	978
Hobart	Lamb leg	2006-06-01	915
Darwin	Lamb leg	2006-06-01	1033
Sydney	Lamb loin chops	2006-06-01	1661
Melbourne	Lamb loin chops	2006-06-01	1609
Adelaide	Lamb loin chops	2006-06-01	1685
Perth	Lamb loin chops	2006-06-01	1739
Hobart	Lamb loin chops	2006-06-01	1698
Darwin	Lamb loin chops	2006-06-01	1850
Sydney	Lamb forequarter chops	2006-06-01	889
Melbourne	Lamb forequarter chops	2006-06-01	916
Brisbane	Lamb forequarter chops	2006-06-01	861
Adelaide	Lamb forequarter chops	2006-06-01	931
Perth	Lamb forequarter chops	2006-06-01	902
Hobart	Lamb forequarter chops	2006-06-01	936
Darwin	Lamb forequarter chops	2006-06-01	974
Sydney	Pork leg	2006-06-01	580
Melbourne	Pork leg	2006-06-01	630
Brisbane	Pork leg	2006-06-01	671
Adelaide	Pork leg	2006-06-01	690
Perth	Pork leg	2006-06-01	665
Hobart	Pork leg	2006-06-01	806
Darwin	Pork leg	2006-06-01	709
Melbourne	Pork loin chops	2006-06-01	1289
Brisbane	Pork loin chops	2006-06-01	1347
Adelaide	Pork loin chops	2006-06-01	1428
Perth	Pork loin chops	2006-06-01	1416
Hobart	Pork loin chops	2006-06-01	1355
Darwin	Pork loin chops	2006-06-01	1427
Sydney	Chicken, frozen	2006-06-01	365
Melbourne	Chicken, frozen	2006-06-01	348
Brisbane	Chicken, frozen	2006-06-01	357
Adelaide	Chicken, frozen	2006-06-01	353
Perth	Chicken, frozen	2006-06-01	397
Hobart	Chicken, frozen	2006-06-01	348
Darwin	Chicken, frozen	2006-06-01	405
Melbourne	Bacon, middle rashers	2006-06-01	412
Brisbane	Bacon, middle rashers	2006-06-01	348
Adelaide	Bacon, middle rashers	2006-06-01	397
Perth	Bacon, middle rashers	2006-06-01	492
Hobart	Bacon, middle rashers	2006-06-01	354
Darwin	Bacon, middle rashers	2006-06-01	444
Sydney	Sausages	2006-06-01	546
Melbourne	Sausages	2006-06-01	558
Brisbane	Sausages	2006-06-01	572
Adelaide	Sausages	2006-06-01	582
Perth	Sausages	2006-06-01	555
Hobart	Sausages	2006-06-01	546
Darwin	Sausages	2006-06-01	527
Sydney	Salmon, pink	2006-06-01	251
Melbourne	Salmon, pink	2006-06-01	244
Brisbane	Salmon, pink	2006-06-01	240
Adelaide	Salmon, pink	2006-06-01	252
Perth	Salmon, pink	2006-06-01	265
Hobart	Salmon, pink	2006-06-01	335
Darwin	Salmon, pink	2006-06-01	280
Sydney	Oranges	2006-06-01	256
Brisbane	Oranges	2006-06-01	243
Adelaide	Oranges	2006-06-01	160
Perth	Oranges	2006-06-01	357
Hobart	Oranges	2006-06-01	260
Darwin	Oranges	2006-06-01	342
Sydney	Bananas	2006-06-01	883
Melbourne	Bananas	2006-06-01	898
Brisbane	Bananas	2006-06-01	767
Adelaide	Bananas	2006-06-01	930
Perth	Bananas	2006-06-01	880
Hobart	Bananas	2006-06-01	818
Darwin	Bananas	2006-06-01	790
Melbourne	Potatoes	2006-06-01	237
Brisbane	Potatoes	2006-06-01	220
Adelaide	Potatoes	2006-06-01	178
Perth	Potatoes	2006-06-01	199
Darwin	Potatoes	2006-06-01	291
Sydney	Tomatoes	2006-06-01	423
Melbourne	Tomatoes	2006-06-01	382
Brisbane	Tomatoes	2006-06-01	417
Adelaide	Tomatoes	2006-06-01	452
Perth	Tomatoes	2006-06-01	427
Hobart	Tomatoes	2006-06-01	524
Darwin	Tomatoes	2006-06-01	556
Sydney	Carrots	2006-06-01	216
Melbourne	Carrots	2006-06-01	187
Brisbane	Carrots	2006-06-01	180
Adelaide	Carrots	2006-06-01	175
Perth	Carrots	2006-06-01	146
Hobart	Carrots	2006-06-01	170
Sydney	Onions	2006-06-01	259
Melbourne	Onions	2006-06-01	239
Brisbane	Onions	2006-06-01	233
Adelaide	Onions	2006-06-01	228
Perth	Onions	2006-06-01	201
Hobart	Onions	2006-06-01	191
Darwin	Onions	2006-06-01	280
Sydney	Peaches	2006-06-01	293
Melbourne	Peaches	2006-06-01	293
Brisbane	Peaches	2006-06-01	303
Adelaide	Peaches	2006-06-01	309
Perth	Peaches	2006-06-01	293
Hobart	Peaches	2006-06-01	300
Darwin	Peaches	2006-06-01	319
Melbourne	Pineapple, sliced	2006-06-01	163
Brisbane	Pineapple, sliced	2006-06-01	158
Adelaide	Pineapple, sliced	2006-06-01	144
Perth	Pineapple, sliced	2006-06-01	166
Hobart	Pineapple, sliced	2006-06-01	170
Darwin	Pineapple, sliced	2006-06-01	155
Sydney	Peas, frozen	2006-06-01	157
Melbourne	Peas, frozen	2006-06-01	158
Brisbane	Peas, frozen	2006-06-01	157
Adelaide	Peas, frozen	2006-06-01	151
Perth	Peas, frozen	2006-06-01	142
Hobart	Peas, frozen	2006-06-01	161
Darwin	Peas, frozen	2006-06-01	195
Sydney	Chocolate milk	2006-06-01	379
Brisbane	Chocolate milk	2006-06-01	396
Adelaide	Chocolate milk	2006-06-01	374
Perth	Chocolate milk	2006-06-01	390
Hobart	Chocolate milk	2006-06-01	386
Darwin	Chocolate milk	2006-06-01	386
Sydney	Eggs	2006-06-01	330
Melbourne	Eggs	2006-06-01	316
Brisbane	Eggs	2006-06-01	310
Adelaide	Eggs	2006-06-01	307
Perth	Eggs	2006-06-01	386
Hobart	Eggs	2006-06-01	336
Darwin	Eggs	2006-06-01	358
Sydney	Sugar, white	2006-06-01	192
Melbourne	Sugar, white	2006-06-01	191
Brisbane	Sugar, white	2006-06-01	187
Adelaide	Sugar, white	2006-06-01	209
Perth	Sugar, white	2006-06-01	234
Hobart	Sugar, white	2006-06-01	285
Sydney	Jam, strawberry	2006-06-01	286
Melbourne	Jam, strawberry	2006-06-01	301
Brisbane	Jam, strawberry	2006-06-01	292
Adelaide	Jam, strawberry	2006-06-01	259
Perth	Jam, strawberry	2006-06-01	305
Hobart	Jam, strawberry	2006-06-01	302
Darwin	Jam, strawberry	2006-06-01	305
Sydney	Teabags	2006-06-01	373
Melbourne	Teabags	2006-06-01	365
Brisbane	Teabags	2006-06-01	360
Adelaide	Teabags	2006-06-01	354
Perth	Teabags	2006-06-01	354
Hobart	Teabags	2006-06-01	394
Darwin	Teabags	2006-06-01	348
Melbourne	Coffee, instant	2006-06-01	645
Brisbane	Coffee, instant	2006-06-01	603
Adelaide	Coffee, instant	2006-06-01	600
Perth	Coffee, instant	2006-06-01	632
Hobart	Coffee, instant	2006-06-01	694
Darwin	Coffee, instant	2006-06-01	655
Sydney	Tomato sauce	2006-06-01	186
Melbourne	Tomato sauce	2006-06-01	177
Brisbane	Tomato sauce	2006-06-01	175
Adelaide	Tomato sauce	2006-06-01	168
Perth	Tomato sauce	2006-06-01	171
Hobart	Tomato sauce	2006-06-01	186
Darwin	Tomato sauce	2006-06-01	182
Melbourne	Margarine, poly-unsaturated	2006-06-01	264
Brisbane	Margarine, poly-unsaturated	2006-06-01	261
Adelaide	Margarine, poly-unsaturated	2006-06-01	262
Perth	Margarine, poly-unsaturated	2006-06-01	265
Hobart	Margarine, poly-unsaturated	2006-06-01	262
Darwin	Margarine, poly-unsaturated	2006-06-01	270
Sydney	Baked beans, in tomato sauce	2006-06-01	137
Melbourne	Baked beans, in tomato sauce	2006-06-01	136
Brisbane	Baked beans, in tomato sauce	2006-06-01	127
Adelaide	Baked beans, in tomato sauce	2006-06-01	134
Perth	Baked beans, in tomato sauce	2006-06-01	134
Hobart	Baked beans, in tomato sauce	2006-06-01	136
Darwin	Baked beans, in tomato sauce	2006-06-01	137
Sydney	Baby food	2006-06-01	79
Melbourne	Baby food	2006-06-01	82
Brisbane	Baby food	2006-06-01	77
Adelaide	Baby food	2006-06-01	80
Perth	Baby food	2006-06-01	81
Hobart	Baby food	2006-06-01	83
Darwin	Baby food	2006-06-01	81
Melbourne	Laundry detergent	2006-06-01	589
Brisbane	Laundry detergent	2006-06-01	575
Adelaide	Laundry detergent	2006-06-01	595
Perth	Laundry detergent	2006-06-01	589
Hobart	Laundry detergent	2006-06-01	608
Darwin	Laundry detergent	2006-06-01	610
Melbourne	Dishwashing detergent	2006-06-01	347
Adelaide	Dishwashing detergent	2006-06-01	335
Perth	Dishwashing detergent	2006-06-01	367
Hobart	Dishwashing detergent	2006-06-01	371
Darwin	Dishwashing detergent	2006-06-01	382
Sydney	Facial tissues	2006-06-01	212
Melbourne	Facial tissues	2006-06-01	205
Brisbane	Facial tissues	2006-06-01	209
Adelaide	Facial tissues	2006-06-01	210
Perth	Facial tissues	2006-06-01	216
Hobart	Facial tissues	2006-06-01	216
Darwin	Facial tissues	2006-06-01	233
Sydney	Toilet paper	2006-06-01	657
Melbourne	Toilet paper	2006-06-01	555
Brisbane	Toilet paper	2006-06-01	614
Adelaide	Toilet paper	2006-06-01	634
Perth	Toilet paper	2006-06-01	532
Hobart	Toilet paper	2006-06-01	651
Darwin	Toilet paper	2006-06-01	648
Sydney	Pet food	2006-06-01	108
Melbourne	Pet food	2006-06-01	109
Brisbane	Pet food	2006-06-01	107
Adelaide	Pet food	2006-06-01	109
Hobart	Pet food	2006-06-01	124
Darwin	Pet food	2006-06-01	119
Sydney	Petrol, unleaded	2006-06-01	135
Melbourne	Petrol, unleaded	2006-06-01	134
Brisbane	Petrol, unleaded	2006-06-01	126
Adelaide	Petrol, unleaded	2006-06-01	134
Perth	Petrol, unleaded	2006-06-01	132
Hobart	Petrol, unleaded	2006-06-01	140
Darwin	Petrol, unleaded	2006-06-01	140
Sydney	Beer, low alcohol	2006-06-01	2485
Melbourne	Beer, low alcohol	2006-06-01	2418
Brisbane	Beer, low alcohol	2006-06-01	2851
Perth	Beer, low alcohol	2006-06-01	3098
Hobart	Beer, low alcohol	2006-06-01	2748
Darwin	Beer, low alcohol	2006-06-01	2982
Sydney	Beer, full strength	2006-06-01	3812
Melbourne	Beer, full strength	2006-06-01	3704
Brisbane	Beer, full strength	2006-06-01	3472
Adelaide	Beer, full strength	2006-06-01	3522
Perth	Beer, full strength	2006-06-01	3676
Hobart	Beer, full strength	2006-06-01	3794
Darwin	Beer, full strength	2006-06-01	3896
Melbourne	Draught beer, low alcohol, public bar	2006-06-01	269
Brisbane	Draught beer, low alcohol, public bar	2006-06-01	226
Adelaide	Draught beer, low alcohol, public bar	2006-06-01	306
Perth	Draught beer, low alcohol, public bar	2006-06-01	319
Hobart	Draught beer, low alcohol, public bar	2006-06-01	264
Darwin	Draught beer, low alcohol, public bar	2006-06-01	244
Sydney	Draught beer, full strength, public bar	2006-06-01	251
Melbourne	Draught beer, full strength, public bar	2006-06-01	302
Brisbane	Draught beer, full strength, public bar	2006-06-01	252
Adelaide	Draught beer, full strength, public bar	2006-06-01	340
Perth	Draught beer, full strength, public bar	2006-06-01	328
Hobart	Draught beer, full strength, public bar	2006-06-01	311
Darwin	Draught beer, full strength, public bar	2006-06-01	299
Sydney	Scotch	2006-06-01	443
Melbourne	Scotch	2006-06-01	473
Brisbane	Scotch	2006-06-01	400
Adelaide	Scotch	2006-06-01	521
Perth	Scotch	2006-06-01	507
Hobart	Scotch	2006-06-01	382
Darwin	Scotch	2006-06-01	434
Sydney	Toilet soap	2006-06-01	282
Melbourne	Toilet soap	2006-06-01	289
Brisbane	Toilet soap	2006-06-01	286
Adelaide	Toilet soap	2006-06-01	285
Perth	Toilet soap	2006-06-01	284
Hobart	Toilet soap	2006-06-01	288
Darwin	Toilet soap	2006-06-01	304
Sydney	Milk	2006-09-01	312
Melbourne	Milk	2006-09-01	320
Brisbane	Milk	2006-09-01	306
Perth	Milk	2006-09-01	299
Hobart	Milk	2006-09-01	315
Darwin	Milk	2006-09-01	351
Sydney	Cheese	2006-09-01	437
Melbourne	Cheese	2006-09-01	454
Brisbane	Cheese	2006-09-01	464
Adelaide	Cheese	2006-09-01	447
Perth	Cheese	2006-09-01	453
Hobart	Cheese	2006-09-01	441
Darwin	Cheese	2006-09-01	497
Sydney	Butter	2006-09-01	316
Melbourne	Butter	2006-09-01	348
Brisbane	Butter	2006-09-01	308
Adelaide	Butter	2006-09-01	314
Hobart	Butter	2006-09-01	294
Darwin	Butter	2006-09-01	339
Sydney	Bread white loaf, sliced	2006-09-01	291
Melbourne	Bread white loaf, sliced	2006-09-01	305
Brisbane	Bread white loaf, sliced	2006-09-01	284
Adelaide	Bread white loaf, sliced	2006-09-01	288
Perth	Bread white loaf, sliced	2006-09-01	271
Hobart	Bread white loaf, sliced	2006-09-01	262
Darwin	Bread white loaf, sliced	2006-09-01	325
Sydney	Biscuits, dry	2006-09-01	197
Melbourne	Biscuits, dry	2006-09-01	201
Brisbane	Biscuits, dry	2006-09-01	183
Perth	Biscuits, dry	2006-09-01	186
Hobart	Biscuits, dry	2006-09-01	210
Darwin	Biscuits, dry	2006-09-01	205
Sydney	Breakfast cereal	2006-09-01	356
Melbourne	Breakfast cereal	2006-09-01	358
Brisbane	Breakfast cereal	2006-09-01	341
Adelaide	Breakfast cereal	2006-09-01	352
Perth	Breakfast cereal	2006-09-01	362
Hobart	Breakfast cereal	2006-09-01	416
Darwin	Breakfast cereal	2006-09-01	361
Brisbane	Flour, self raising	2006-09-01	268
Adelaide	Flour, self raising	2006-09-01	376
Perth	Flour, self raising	2006-09-01	409
Hobart	Flour, self raising	2006-09-01	300
Darwin	Flour, self raising	2006-09-01	402
Sydney	Rice	2006-09-01	196
Melbourne	Rice	2006-09-01	215
Brisbane	Rice	2006-09-01	183
Adelaide	Rice	2006-09-01	201
Perth	Rice	2006-09-01	220
Hobart	Rice	2006-09-01	214
Darwin	Rice	2006-09-01	220
Sydney	Roast beef	2006-09-01	1028
Melbourne	Roast beef	2006-09-01	1141
Brisbane	Roast beef	2006-09-01	1179
Adelaide	Roast beef	2006-09-01	1154
Perth	Roast beef	2006-09-01	1207
Hobart	Roast beef	2006-09-01	1144
Darwin	Roast beef	2006-09-01	1160
Sydney	Rump steak	2006-09-01	1824
Brisbane	Rump steak	2006-09-01	1960
Adelaide	Rump steak	2006-09-01	2001
Perth	Rump steak	2006-09-01	1938
Hobart	Rump steak	2006-09-01	2024
Darwin	Rump steak	2006-09-01	1966
Sydney	T-bone steak, with fillet	2006-09-01	1929
Melbourne	T-bone steak, with fillet	2006-09-01	1942
Brisbane	T-bone steak, with fillet	2006-09-01	2000
Adelaide	T-bone steak, with fillet	2006-09-01	1972
Perth	T-bone steak, with fillet	2006-09-01	1964
Hobart	T-bone steak, with fillet	2006-09-01	1875
Darwin	T-bone steak, with fillet	2006-09-01	1976
Sydney	Chuck steak	2006-09-01	1033
Melbourne	Chuck steak	2006-09-01	963
Adelaide	Chuck steak	2006-09-01	987
Perth	Chuck steak	2006-09-01	1016
Hobart	Chuck steak	2006-09-01	1005
Darwin	Chuck steak	2006-09-01	1039
Sydney	Lamb leg	2006-09-01	914
Melbourne	Lamb leg	2006-09-01	856
Brisbane	Lamb leg	2006-09-01	972
Adelaide	Lamb leg	2006-09-01	925
Perth	Lamb leg	2006-09-01	982
Hobart	Lamb leg	2006-09-01	910
Darwin	Lamb leg	2006-09-01	1024
Sydney	Lamb loin chops	2006-09-01	1729
Melbourne	Lamb loin chops	2006-09-01	1697
Brisbane	Lamb loin chops	2006-09-01	1717
Adelaide	Lamb loin chops	2006-09-01	1685
Perth	Lamb loin chops	2006-09-01	1713
Darwin	Lamb loin chops	2006-09-01	1877
Sydney	Lamb forequarter chops	2006-09-01	883
Melbourne	Lamb forequarter chops	2006-09-01	897
Brisbane	Lamb forequarter chops	2006-09-01	883
Adelaide	Lamb forequarter chops	2006-09-01	953
Perth	Lamb forequarter chops	2006-09-01	944
Hobart	Lamb forequarter chops	2006-09-01	905
Darwin	Lamb forequarter chops	2006-09-01	945
Sydney	Pork leg	2006-09-01	618
Melbourne	Pork leg	2006-09-01	712
Brisbane	Pork leg	2006-09-01	653
Adelaide	Pork leg	2006-09-01	717
Perth	Pork leg	2006-09-01	721
Hobart	Pork leg	2006-09-01	824
Darwin	Pork leg	2006-09-01	745
Sydney	Pork loin chops	2006-09-01	1364
Brisbane	Pork loin chops	2006-09-01	1313
Adelaide	Pork loin chops	2006-09-01	1435
Perth	Pork loin chops	2006-09-01	1470
Hobart	Pork loin chops	2006-09-01	1352
Darwin	Pork loin chops	2006-09-01	1464
Sydney	Chicken, frozen	2006-09-01	358
Melbourne	Chicken, frozen	2006-09-01	334
Brisbane	Chicken, frozen	2006-09-01	359
Adelaide	Chicken, frozen	2006-09-01	347
Perth	Chicken, frozen	2006-09-01	397
Hobart	Chicken, frozen	2006-09-01	361
Darwin	Chicken, frozen	2006-09-01	403
Sydney	Bacon, middle rashers	2006-09-01	375
Melbourne	Bacon, middle rashers	2006-09-01	396
Adelaide	Bacon, middle rashers	2006-09-01	377
Perth	Bacon, middle rashers	2006-09-01	502
Hobart	Bacon, middle rashers	2006-09-01	354
Darwin	Bacon, middle rashers	2006-09-01	447
Sydney	Sausages	2006-09-01	535
Melbourne	Sausages	2006-09-01	542
Brisbane	Sausages	2006-09-01	557
Adelaide	Sausages	2006-09-01	575
Perth	Sausages	2006-09-01	530
Hobart	Sausages	2006-09-01	569
Darwin	Sausages	2006-09-01	512
Sydney	Salmon, pink	2006-09-01	240
Melbourne	Salmon, pink	2006-09-01	238
Brisbane	Salmon, pink	2006-09-01	257
Adelaide	Salmon, pink	2006-09-01	249
Perth	Salmon, pink	2006-09-01	264
Hobart	Salmon, pink	2006-09-01	335
Darwin	Salmon, pink	2006-09-01	284
Sydney	Oranges	2006-09-01	242
Melbourne	Oranges	2006-09-01	255
Brisbane	Oranges	2006-09-01	256
Adelaide	Oranges	2006-09-01	146
Hobart	Oranges	2006-09-01	275
Darwin	Oranges	2006-09-01	360
Sydney	Bananas	2006-09-01	1282
Melbourne	Bananas	2006-09-01	1271
Brisbane	Bananas	2006-09-01	1229
Adelaide	Bananas	2006-09-01	1282
Perth	Bananas	2006-09-01	1274
Hobart	Bananas	2006-09-01	1218
Darwin	Bananas	2006-09-01	1025
Sydney	Potatoes	2006-09-01	162
Melbourne	Potatoes	2006-09-01	243
Brisbane	Potatoes	2006-09-01	239
Adelaide	Potatoes	2006-09-01	184
Perth	Potatoes	2006-09-01	220
Darwin	Potatoes	2006-09-01	271
Sydney	Tomatoes	2006-09-01	353
Melbourne	Tomatoes	2006-09-01	349
Adelaide	Tomatoes	2006-09-01	431
Perth	Tomatoes	2006-09-01	369
Hobart	Tomatoes	2006-09-01	435
Darwin	Tomatoes	2006-09-01	498
Sydney	Carrots	2006-09-01	213
Melbourne	Carrots	2006-09-01	188
Brisbane	Carrots	2006-09-01	180
Adelaide	Carrots	2006-09-01	187
Perth	Carrots	2006-09-01	145
Hobart	Carrots	2006-09-01	178
Darwin	Carrots	2006-09-01	241
Sydney	Onions	2006-09-01	263
Melbourne	Onions	2006-09-01	234
Brisbane	Onions	2006-09-01	260
Perth	Onions	2006-09-01	218
Hobart	Onions	2006-09-01	203
Darwin	Onions	2006-09-01	305
Sydney	Peaches	2006-09-01	306
Melbourne	Peaches	2006-09-01	314
Brisbane	Peaches	2006-09-01	306
Adelaide	Peaches	2006-09-01	314
Perth	Peaches	2006-09-01	315
Hobart	Peaches	2006-09-01	304
Darwin	Peaches	2006-09-01	334
Sydney	Pineapple, sliced	2006-09-01	169
Melbourne	Pineapple, sliced	2006-09-01	160
Adelaide	Pineapple, sliced	2006-09-01	161
Perth	Pineapple, sliced	2006-09-01	167
Hobart	Pineapple, sliced	2006-09-01	167
Darwin	Pineapple, sliced	2006-09-01	155
Sydney	Peas, frozen	2006-09-01	172
Melbourne	Peas, frozen	2006-09-01	161
Brisbane	Peas, frozen	2006-09-01	165
Adelaide	Peas, frozen	2006-09-01	154
Perth	Peas, frozen	2006-09-01	163
Hobart	Peas, frozen	2006-09-01	177
Darwin	Peas, frozen	2006-09-01	191
Sydney	Chocolate milk	2006-09-01	378
Melbourne	Chocolate milk	2006-09-01	399
Brisbane	Chocolate milk	2006-09-01	370
Adelaide	Chocolate milk	2006-09-01	368
Perth	Chocolate milk	2006-09-01	401
Darwin	Chocolate milk	2006-09-01	372
Sydney	Eggs	2006-09-01	348
Melbourne	Eggs	2006-09-01	350
Brisbane	Eggs	2006-09-01	339
Adelaide	Eggs	2006-09-01	321
Perth	Eggs	2006-09-01	395
Hobart	Eggs	2006-09-01	357
Darwin	Eggs	2006-09-01	402
Sydney	Sugar, white	2006-09-01	194
Melbourne	Sugar, white	2006-09-01	201
Brisbane	Sugar, white	2006-09-01	192
Adelaide	Sugar, white	2006-09-01	210
Perth	Sugar, white	2006-09-01	248
Hobart	Sugar, white	2006-09-01	288
Darwin	Sugar, white	2006-09-01	230
Sydney	Jam, strawberry	2006-09-01	296
Brisbane	Jam, strawberry	2006-09-01	310
Adelaide	Jam, strawberry	2006-09-01	295
Perth	Jam, strawberry	2006-09-01	318
Hobart	Jam, strawberry	2006-09-01	319
Darwin	Jam, strawberry	2006-09-01	324
Sydney	Teabags	2006-09-01	377
Melbourne	Teabags	2006-09-01	391
Brisbane	Teabags	2006-09-01	341
Adelaide	Teabags	2006-09-01	340
Perth	Teabags	2006-09-01	351
Hobart	Teabags	2006-09-01	399
Darwin	Teabags	2006-09-01	359
Sydney	Coffee, instant	2006-09-01	672
Melbourne	Coffee, instant	2006-09-01	691
Brisbane	Coffee, instant	2006-09-01	631
Adelaide	Coffee, instant	2006-09-01	639
Hobart	Coffee, instant	2006-09-01	722
Darwin	Coffee, instant	2006-09-01	653
Sydney	Tomato sauce	2006-09-01	194
Melbourne	Tomato sauce	2006-09-01	181
Brisbane	Tomato sauce	2006-09-01	172
Adelaide	Tomato sauce	2006-09-01	173
Perth	Tomato sauce	2006-09-01	174
Hobart	Tomato sauce	2006-09-01	193
Darwin	Tomato sauce	2006-09-01	175
Sydney	Margarine, poly-unsaturated	2006-09-01	272
Melbourne	Margarine, poly-unsaturated	2006-09-01	278
Brisbane	Margarine, poly-unsaturated	2006-09-01	275
Perth	Margarine, poly-unsaturated	2006-09-01	278
Hobart	Margarine, poly-unsaturated	2006-09-01	278
Darwin	Margarine, poly-unsaturated	2006-09-01	276
Sydney	Baked beans, in tomato sauce	2006-09-01	137
Melbourne	Baked beans, in tomato sauce	2006-09-01	136
Brisbane	Baked beans, in tomato sauce	2006-09-01	119
Adelaide	Baked beans, in tomato sauce	2006-09-01	140
Perth	Baked beans, in tomato sauce	2006-09-01	129
Hobart	Baked beans, in tomato sauce	2006-09-01	138
Darwin	Baked beans, in tomato sauce	2006-09-01	137
Sydney	Baby food	2006-09-01	81
Melbourne	Baby food	2006-09-01	82
Brisbane	Baby food	2006-09-01	83
Adelaide	Baby food	2006-09-01	82
Perth	Baby food	2006-09-01	81
Hobart	Baby food	2006-09-01	81
Darwin	Baby food	2006-09-01	79
Sydney	Laundry detergent	2006-09-01	598
Melbourne	Laundry detergent	2006-09-01	600
Brisbane	Laundry detergent	2006-09-01	598
Adelaide	Laundry detergent	2006-09-01	569
Perth	Laundry detergent	2006-09-01	589
Hobart	Laundry detergent	2006-09-01	604
Darwin	Laundry detergent	2006-09-01	610
Melbourne	Dishwashing detergent	2006-09-01	368
Brisbane	Dishwashing detergent	2006-09-01	355
Adelaide	Dishwashing detergent	2006-09-01	360
Perth	Dishwashing detergent	2006-09-01	372
Darwin	Dishwashing detergent	2006-09-01	396
Sydney	Facial tissues	2006-09-01	219
Melbourne	Facial tissues	2006-09-01	220
Brisbane	Facial tissues	2006-09-01	219
Adelaide	Facial tissues	2006-09-01	216
Hobart	Facial tissues	2006-09-01	223
Darwin	Facial tissues	2006-09-01	225
Sydney	Toilet paper	2006-09-01	671
Melbourne	Toilet paper	2006-09-01	669
Brisbane	Toilet paper	2006-09-01	641
Adelaide	Toilet paper	2006-09-01	676
Perth	Toilet paper	2006-09-01	674
Hobart	Toilet paper	2006-09-01	675
Darwin	Toilet paper	2006-09-01	642
Sydney	Pet food	2006-09-01	111
Melbourne	Pet food	2006-09-01	115
Brisbane	Pet food	2006-09-01	111
Adelaide	Pet food	2006-09-01	111
Perth	Pet food	2006-09-01	115
Hobart	Pet food	2006-09-01	124
Darwin	Pet food	2006-09-01	121
Melbourne	Petrol, unleaded	2006-09-01	133
Brisbane	Petrol, unleaded	2006-09-01	124
Adelaide	Petrol, unleaded	2006-09-01	132
Perth	Petrol, unleaded	2006-09-01	129
Hobart	Petrol, unleaded	2006-09-01	137
Darwin	Petrol, unleaded	2006-09-01	142
Sydney	Beer, low alcohol	2006-09-01	2490
Melbourne	Beer, low alcohol	2006-09-01	2485
Brisbane	Beer, low alcohol	2006-09-01	2941
Adelaide	Beer, low alcohol	2006-09-01	2612
Perth	Beer, low alcohol	2006-09-01	3214
Hobart	Beer, low alcohol	2006-09-01	2825
Darwin	Beer, low alcohol	2006-09-01	3096
Sydney	Beer, full strength	2006-09-01	3708
Brisbane	Beer, full strength	2006-09-01	3564
Adelaide	Beer, full strength	2006-09-01	3558
Perth	Beer, full strength	2006-09-01	3715
Hobart	Beer, full strength	2006-09-01	3883
Darwin	Beer, full strength	2006-09-01	3935
Sydney	Draught beer, low alcohol, public bar	2006-09-01	222
Melbourne	Draught beer, low alcohol, public bar	2006-09-01	273
Brisbane	Draught beer, low alcohol, public bar	2006-09-01	229
Adelaide	Draught beer, low alcohol, public bar	2006-09-01	308
Perth	Draught beer, low alcohol, public bar	2006-09-01	320
Hobart	Draught beer, low alcohol, public bar	2006-09-01	266
Darwin	Draught beer, low alcohol, public bar	2006-09-01	244
Sydney	Draught beer, full strength, public bar	2006-09-01	253
Melbourne	Draught beer, full strength, public bar	2006-09-01	308
Adelaide	Draught beer, full strength, public bar	2006-09-01	347
Perth	Draught beer, full strength, public bar	2006-09-01	328
Hobart	Draught beer, full strength, public bar	2006-09-01	313
Darwin	Draught beer, full strength, public bar	2006-09-01	297
Sydney	Scotch	2006-09-01	448
Melbourne	Scotch	2006-09-01	486
Brisbane	Scotch	2006-09-01	407
Adelaide	Scotch	2006-09-01	532
Perth	Scotch	2006-09-01	509
Hobart	Scotch	2006-09-01	385
Darwin	Scotch	2006-09-01	445
Sydney	Toilet soap	2006-09-01	292
Melbourne	Toilet soap	2006-09-01	289
Brisbane	Toilet soap	2006-09-01	265
Adelaide	Toilet soap	2006-09-01	279
Perth	Toilet soap	2006-09-01	299
Hobart	Toilet soap	2006-09-01	292
Darwin	Toilet soap	2006-09-01	313
Sydney	Milk	2006-12-01	322
Melbourne	Milk	2006-12-01	323
Brisbane	Milk	2006-12-01	313
Adelaide	Milk	2006-12-01	318
Perth	Milk	2006-12-01	301
Hobart	Milk	2006-12-01	318
Darwin	Milk	2006-12-01	357
Sydney	Cheese	2006-12-01	433
Melbourne	Cheese	2006-12-01	446
Brisbane	Cheese	2006-12-01	452
Adelaide	Cheese	2006-12-01	436
Perth	Cheese	2006-12-01	450
Darwin	Cheese	2006-12-01	500
Sydney	Butter	2006-12-01	328
Melbourne	Butter	2006-12-01	358
Brisbane	Butter	2006-12-01	308
Adelaide	Butter	2006-12-01	312
Perth	Butter	2006-12-01	312
Hobart	Butter	2006-12-01	285
Darwin	Butter	2006-12-01	332
Sydney	Bread white loaf, sliced	2006-12-01	297
Melbourne	Bread white loaf, sliced	2006-12-01	299
Adelaide	Bread white loaf, sliced	2006-12-01	289
Perth	Bread white loaf, sliced	2006-12-01	279
Hobart	Bread white loaf, sliced	2006-12-01	265
Darwin	Bread white loaf, sliced	2006-12-01	351
Sydney	Biscuits, dry	2006-12-01	198
Melbourne	Biscuits, dry	2006-12-01	201
Brisbane	Biscuits, dry	2006-12-01	183
Adelaide	Biscuits, dry	2006-12-01	202
Perth	Biscuits, dry	2006-12-01	184
Hobart	Biscuits, dry	2006-12-01	208
Darwin	Biscuits, dry	2006-12-01	207
Sydney	Breakfast cereal	2006-12-01	373
Melbourne	Breakfast cereal	2006-12-01	358
Brisbane	Breakfast cereal	2006-12-01	338
Adelaide	Breakfast cereal	2006-12-01	354
Perth	Breakfast cereal	2006-12-01	376
Hobart	Breakfast cereal	2006-12-01	418
Darwin	Breakfast cereal	2006-12-01	357
Sydney	Flour, self raising	2006-12-01	384
Brisbane	Flour, self raising	2006-12-01	359
Adelaide	Flour, self raising	2006-12-01	408
Perth	Flour, self raising	2006-12-01	393
Darwin	Flour, self raising	2006-12-01	419
Sydney	Rice	2006-12-01	206
Melbourne	Rice	2006-12-01	228
Adelaide	Rice	2006-12-01	222
Perth	Rice	2006-12-01	225
Hobart	Rice	2006-12-01	232
Darwin	Rice	2006-12-01	228
Sydney	Roast beef	2006-12-01	1124
Melbourne	Roast beef	2006-12-01	1038
Brisbane	Roast beef	2006-12-01	1194
Adelaide	Roast beef	2006-12-01	1163
Perth	Roast beef	2006-12-01	1236
Hobart	Roast beef	2006-12-01	1175
Darwin	Roast beef	2006-12-01	1156
Sydney	Rump steak	2006-12-01	1759
Brisbane	Rump steak	2006-12-01	1844
Adelaide	Rump steak	2006-12-01	1923
Perth	Rump steak	2006-12-01	1857
Hobart	Rump steak	2006-12-01	1986
Darwin	Rump steak	2006-12-01	1901
Sydney	T-bone steak, with fillet	2006-12-01	2069
Melbourne	T-bone steak, with fillet	2006-12-01	1896
Brisbane	T-bone steak, with fillet	2006-12-01	1847
Adelaide	T-bone steak, with fillet	2006-12-01	2041
Perth	T-bone steak, with fillet	2006-12-01	1980
Hobart	T-bone steak, with fillet	2006-12-01	1741
Darwin	T-bone steak, with fillet	2006-12-01	2091
Sydney	Chuck steak	2006-12-01	1019
Melbourne	Chuck steak	2006-12-01	955
Brisbane	Chuck steak	2006-12-01	928
Adelaide	Chuck steak	2006-12-01	987
Perth	Chuck steak	2006-12-01	1022
Hobart	Chuck steak	2006-12-01	1023
Sydney	Lamb leg	2006-12-01	922
Melbourne	Lamb leg	2006-12-01	906
Brisbane	Lamb leg	2006-12-01	931
Adelaide	Lamb leg	2006-12-01	900
Perth	Lamb leg	2006-12-01	988
Hobart	Lamb leg	2006-12-01	938
Darwin	Lamb leg	2006-12-01	976
Sydney	Lamb loin chops	2006-12-01	1692
Melbourne	Lamb loin chops	2006-12-01	1642
Brisbane	Lamb loin chops	2006-12-01	1626
Adelaide	Lamb loin chops	2006-12-01	1670
Perth	Lamb loin chops	2006-12-01	1766
Darwin	Lamb loin chops	2006-12-01	1731
Sydney	Lamb forequarter chops	2006-12-01	875
Melbourne	Lamb forequarter chops	2006-12-01	903
Brisbane	Lamb forequarter chops	2006-12-01	863
Adelaide	Lamb forequarter chops	2006-12-01	946
Perth	Lamb forequarter chops	2006-12-01	870
Hobart	Lamb forequarter chops	2006-12-01	867
Darwin	Lamb forequarter chops	2006-12-01	931
Sydney	Pork leg	2006-12-01	638
Melbourne	Pork leg	2006-12-01	727
Brisbane	Pork leg	2006-12-01	695
Adelaide	Pork leg	2006-12-01	743
Perth	Pork leg	2006-12-01	716
Hobart	Pork leg	2006-12-01	808
Darwin	Pork leg	2006-12-01	752
Sydney	Pork loin chops	2006-12-01	1306
Brisbane	Pork loin chops	2006-12-01	1397
Adelaide	Pork loin chops	2006-12-01	1406
Perth	Pork loin chops	2006-12-01	1433
Hobart	Pork loin chops	2006-12-01	1328
Darwin	Pork loin chops	2006-12-01	1415
Sydney	Chicken, frozen	2006-12-01	350
Melbourne	Chicken, frozen	2006-12-01	325
Brisbane	Chicken, frozen	2006-12-01	361
Adelaide	Chicken, frozen	2006-12-01	360
Perth	Chicken, frozen	2006-12-01	380
Hobart	Chicken, frozen	2006-12-01	368
Darwin	Chicken, frozen	2006-12-01	406
Sydney	Bacon, middle rashers	2006-12-01	416
Melbourne	Bacon, middle rashers	2006-12-01	405
Adelaide	Bacon, middle rashers	2006-12-01	390
Perth	Bacon, middle rashers	2006-12-01	462
Hobart	Bacon, middle rashers	2006-12-01	367
Darwin	Bacon, middle rashers	2006-12-01	435
Sydney	Sausages	2006-12-01	554
Melbourne	Sausages	2006-12-01	573
Brisbane	Sausages	2006-12-01	562
Adelaide	Sausages	2006-12-01	581
Perth	Sausages	2006-12-01	595
Hobart	Sausages	2006-12-01	599
Darwin	Sausages	2006-12-01	533
Sydney	Salmon, pink	2006-12-01	247
Melbourne	Salmon, pink	2006-12-01	243
Brisbane	Salmon, pink	2006-12-01	249
Adelaide	Salmon, pink	2006-12-01	258
Perth	Salmon, pink	2006-12-01	264
Hobart	Salmon, pink	2006-12-01	335
Darwin	Salmon, pink	2006-12-01	285
Sydney	Oranges	2006-12-01	309
Melbourne	Oranges	2006-12-01	292
Brisbane	Oranges	2006-12-01	278
Adelaide	Oranges	2006-12-01	177
Hobart	Oranges	2006-12-01	315
Darwin	Oranges	2006-12-01	379
Sydney	Bananas	2006-12-01	1018
Melbourne	Bananas	2006-12-01	1067
Brisbane	Bananas	2006-12-01	1019
Adelaide	Bananas	2006-12-01	1050
Perth	Bananas	2006-12-01	1091
Hobart	Bananas	2006-12-01	992
Darwin	Bananas	2006-12-01	940
Sydney	Potatoes	2006-12-01	177
Melbourne	Potatoes	2006-12-01	281
Brisbane	Potatoes	2006-12-01	220
Adelaide	Potatoes	2006-12-01	219
Perth	Potatoes	2006-12-01	226
Darwin	Potatoes	2006-12-01	296
Sydney	Tomatoes	2006-12-01	344
Melbourne	Tomatoes	2006-12-01	319
Brisbane	Tomatoes	2006-12-01	344
Adelaide	Tomatoes	2006-12-01	408
Perth	Tomatoes	2006-12-01	410
Hobart	Tomatoes	2006-12-01	385
Melbourne	Carrots	2006-12-01	207
Brisbane	Carrots	2006-12-01	193
Adelaide	Carrots	2006-12-01	198
Perth	Carrots	2006-12-01	139
Hobart	Carrots	2006-12-01	180
Darwin	Carrots	2006-12-01	252
Sydney	Onions	2006-12-01	273
Melbourne	Onions	2006-12-01	249
Brisbane	Onions	2006-12-01	256
Adelaide	Onions	2006-12-01	257
Perth	Onions	2006-12-01	230
Hobart	Onions	2006-12-01	207
Darwin	Onions	2006-12-01	328
Sydney	Peaches	2006-12-01	323
Brisbane	Peaches	2006-12-01	314
Adelaide	Peaches	2006-12-01	323
Perth	Peaches	2006-12-01	321
Hobart	Peaches	2006-12-01	309
Darwin	Peaches	2006-12-01	331
Sydney	Pineapple, sliced	2006-12-01	170
Melbourne	Pineapple, sliced	2006-12-01	167
Brisbane	Pineapple, sliced	2006-12-01	164
Adelaide	Pineapple, sliced	2006-12-01	174
Perth	Pineapple, sliced	2006-12-01	185
Hobart	Pineapple, sliced	2006-12-01	170
Darwin	Pineapple, sliced	2006-12-01	174
Sydney	Peas, frozen	2006-12-01	164
Brisbane	Peas, frozen	2006-12-01	165
Adelaide	Peas, frozen	2006-12-01	139
Perth	Peas, frozen	2006-12-01	166
Hobart	Peas, frozen	2006-12-01	164
Darwin	Peas, frozen	2006-12-01	203
Sydney	Chocolate milk	2006-12-01	372
Melbourne	Chocolate milk	2006-12-01	400
Brisbane	Chocolate milk	2006-12-01	396
Adelaide	Chocolate milk	2006-12-01	366
Perth	Chocolate milk	2006-12-01	392
Hobart	Chocolate milk	2006-12-01	359
Darwin	Chocolate milk	2006-12-01	366
Sydney	Eggs	2006-12-01	413
Melbourne	Eggs	2006-12-01	406
Brisbane	Eggs	2006-12-01	403
Adelaide	Eggs	2006-12-01	396
Perth	Eggs	2006-12-01	423
Hobart	Eggs	2006-12-01	404
Darwin	Eggs	2006-12-01	359
Melbourne	Sugar, white	2006-12-01	224
Brisbane	Sugar, white	2006-12-01	220
Adelaide	Sugar, white	2006-12-01	236
Perth	Sugar, white	2006-12-01	274
Hobart	Sugar, white	2006-12-01	315
Darwin	Sugar, white	2006-12-01	250
Sydney	Jam, strawberry	2006-12-01	307
Melbourne	Jam, strawberry	2006-12-01	319
Brisbane	Jam, strawberry	2006-12-01	319
Adelaide	Jam, strawberry	2006-12-01	285
Hobart	Jam, strawberry	2006-12-01	309
Darwin	Jam, strawberry	2006-12-01	324
Sydney	Teabags	2006-12-01	394
Melbourne	Teabags	2006-12-01	381
Brisbane	Teabags	2006-12-01	360
Adelaide	Teabags	2006-12-01	356
Perth	Teabags	2006-12-01	369
Hobart	Teabags	2006-12-01	442
Darwin	Teabags	2006-12-01	380
Sydney	Coffee, instant	2006-12-01	694
Melbourne	Coffee, instant	2006-12-01	706
Brisbane	Coffee, instant	2006-12-01	627
Adelaide	Coffee, instant	2006-12-01	677
Perth	Coffee, instant	2006-12-01	680
Hobart	Coffee, instant	2006-12-01	708
Darwin	Coffee, instant	2006-12-01	678
Sydney	Tomato sauce	2006-12-01	187
Brisbane	Tomato sauce	2006-12-01	171
Adelaide	Tomato sauce	2006-12-01	167
Perth	Tomato sauce	2006-12-01	175
Hobart	Tomato sauce	2006-12-01	188
Darwin	Tomato sauce	2006-12-01	189
Sydney	Margarine, poly-unsaturated	2006-12-01	280
Melbourne	Margarine, poly-unsaturated	2006-12-01	280
Brisbane	Margarine, poly-unsaturated	2006-12-01	274
Adelaide	Margarine, poly-unsaturated	2006-12-01	267
Perth	Margarine, poly-unsaturated	2006-12-01	279
Hobart	Margarine, poly-unsaturated	2006-12-01	282
Darwin	Margarine, poly-unsaturated	2006-12-01	286
Sydney	Baked beans, in tomato sauce	2006-12-01	145
Brisbane	Baked beans, in tomato sauce	2006-12-01	132
Adelaide	Baked beans, in tomato sauce	2006-12-01	138
Perth	Baked beans, in tomato sauce	2006-12-01	140
Hobart	Baked beans, in tomato sauce	2006-12-01	145
Darwin	Baked beans, in tomato sauce	2006-12-01	145
Sydney	Baby food	2006-12-01	84
Melbourne	Baby food	2006-12-01	86
Brisbane	Baby food	2006-12-01	85
Adelaide	Baby food	2006-12-01	83
Perth	Baby food	2006-12-01	83
Hobart	Baby food	2006-12-01	87
Darwin	Baby food	2006-12-01	88
Sydney	Laundry detergent	2006-12-01	586
Melbourne	Laundry detergent	2006-12-01	593
Brisbane	Laundry detergent	2006-12-01	581
Adelaide	Laundry detergent	2006-12-01	585
Perth	Laundry detergent	2006-12-01	578
Hobart	Laundry detergent	2006-12-01	576
Darwin	Laundry detergent	2006-12-01	554
Sydney	Dishwashing detergent	2006-12-01	366
Brisbane	Dishwashing detergent	2006-12-01	375
Adelaide	Dishwashing detergent	2006-12-01	363
Perth	Dishwashing detergent	2006-12-01	348
Hobart	Dishwashing detergent	2006-12-01	369
Darwin	Dishwashing detergent	2006-12-01	370
Sydney	Facial tissues	2006-12-01	224
Melbourne	Facial tissues	2006-12-01	222
Brisbane	Facial tissues	2006-12-01	225
Adelaide	Facial tissues	2006-12-01	223
Hobart	Facial tissues	2006-12-01	229
Darwin	Facial tissues	2006-12-01	230
Sydney	Toilet paper	2006-12-01	648
Melbourne	Toilet paper	2006-12-01	657
Adelaide	Toilet paper	2006-12-01	655
Perth	Toilet paper	2006-12-01	636
Hobart	Toilet paper	2006-12-01	660
Darwin	Toilet paper	2006-12-01	630
Sydney	Pet food	2006-12-01	113
Melbourne	Pet food	2006-12-01	112
Brisbane	Pet food	2006-12-01	115
Adelaide	Pet food	2006-12-01	108
Perth	Pet food	2006-12-01	112
Hobart	Pet food	2006-12-01	128
Darwin	Pet food	2006-12-01	121
Sydney	Petrol, unleaded	2006-12-01	115
Melbourne	Petrol, unleaded	2006-12-01	116
Brisbane	Petrol, unleaded	2006-12-01	109
Adelaide	Petrol, unleaded	2006-12-01	114
Perth	Petrol, unleaded	2006-12-01	114
Darwin	Petrol, unleaded	2006-12-01	126
Sydney	Beer, low alcohol	2006-12-01	2564
Melbourne	Beer, low alcohol	2006-12-01	2546
Brisbane	Beer, low alcohol	2006-12-01	2908
Adelaide	Beer, low alcohol	2006-12-01	2572
Perth	Beer, low alcohol	2006-12-01	3282
Hobart	Beer, low alcohol	2006-12-01	2837
Darwin	Beer, low alcohol	2006-12-01	3079
Sydney	Beer, full strength	2006-12-01	3784
Melbourne	Beer, full strength	2006-12-01	3777
Brisbane	Beer, full strength	2006-12-01	3455
Adelaide	Beer, full strength	2006-12-01	3588
Perth	Beer, full strength	2006-12-01	3648
Hobart	Beer, full strength	2006-12-01	3852
Darwin	Beer, full strength	2006-12-01	4010
Melbourne	Draught beer, low alcohol, public bar	2006-12-01	278
Brisbane	Draught beer, low alcohol, public bar	2006-12-01	233
Adelaide	Draught beer, low alcohol, public bar	2006-12-01	310
Perth	Draught beer, low alcohol, public bar	2006-12-01	322
Hobart	Draught beer, low alcohol, public bar	2006-12-01	268
Darwin	Draught beer, low alcohol, public bar	2006-12-01	243
Sydney	Draught beer, full strength, public bar	2006-12-01	257
Melbourne	Draught beer, full strength, public bar	2006-12-01	312
Brisbane	Draught beer, full strength, public bar	2006-12-01	258
Adelaide	Draught beer, full strength, public bar	2006-12-01	350
Perth	Draught beer, full strength, public bar	2006-12-01	328
Hobart	Draught beer, full strength, public bar	2006-12-01	314
Darwin	Draught beer, full strength, public bar	2006-12-01	297
Sydney	Scotch	2006-12-01	453
Melbourne	Scotch	2006-12-01	512
Brisbane	Scotch	2006-12-01	412
Adelaide	Scotch	2006-12-01	533
Perth	Scotch	2006-12-01	512
Hobart	Scotch	2006-12-01	390
Darwin	Scotch	2006-12-01	456
Sydney	Toilet soap	2006-12-01	286
Melbourne	Toilet soap	2006-12-01	300
Brisbane	Toilet soap	2006-12-01	262
Perth	Toilet soap	2006-12-01	273
Hobart	Toilet soap	2006-12-01	279
Darwin	Toilet soap	2006-12-01	304
Sydney	Milk	2007-03-01	326
Melbourne	Milk	2007-03-01	323
Brisbane	Milk	2007-03-01	316
Adelaide	Milk	2007-03-01	320
Perth	Milk	2007-03-01	302
Hobart	Milk	2007-03-01	325
Darwin	Milk	2007-03-01	361
Sydney	Cheese	2007-03-01	491
Melbourne	Cheese	2007-03-01	485
Brisbane	Cheese	2007-03-01	482
Adelaide	Cheese	2007-03-01	485
Perth	Cheese	2007-03-01	480
Hobart	Cheese	2007-03-01	474
Darwin	Cheese	2007-03-01	528
Sydney	Butter	2007-03-01	336
Brisbane	Butter	2007-03-01	314
Adelaide	Butter	2007-03-01	320
Perth	Butter	2007-03-01	299
Hobart	Butter	2007-03-01	292
Darwin	Butter	2007-03-01	334
Sydney	Bread white loaf, sliced	2007-03-01	320
Melbourne	Bread white loaf, sliced	2007-03-01	323
Brisbane	Bread white loaf, sliced	2007-03-01	308
Adelaide	Bread white loaf, sliced	2007-03-01	307
Perth	Bread white loaf, sliced	2007-03-01	302
Darwin	Bread white loaf, sliced	2007-03-01	336
Sydney	Biscuits, dry	2007-03-01	201
Melbourne	Biscuits, dry	2007-03-01	200
Brisbane	Biscuits, dry	2007-03-01	183
Adelaide	Biscuits, dry	2007-03-01	202
Perth	Biscuits, dry	2007-03-01	183
Hobart	Biscuits, dry	2007-03-01	208
Darwin	Biscuits, dry	2007-03-01	207
Sydney	Breakfast cereal	2007-03-01	350
Melbourne	Breakfast cereal	2007-03-01	336
Brisbane	Breakfast cereal	2007-03-01	316
Adelaide	Breakfast cereal	2007-03-01	327
Perth	Breakfast cereal	2007-03-01	346
Hobart	Breakfast cereal	2007-03-01	418
Darwin	Breakfast cereal	2007-03-01	357
Sydney	Flour, self raising	2007-03-01	391
Melbourne	Flour, self raising	2007-03-01	429
Brisbane	Flour, self raising	2007-03-01	371
Perth	Flour, self raising	2007-03-01	443
Hobart	Flour, self raising	2007-03-01	287
Darwin	Flour, self raising	2007-03-01	434
Sydney	Rice	2007-03-01	199
Melbourne	Rice	2007-03-01	217
Brisbane	Rice	2007-03-01	191
Adelaide	Rice	2007-03-01	223
Perth	Rice	2007-03-01	226
Darwin	Rice	2007-03-01	221
Melbourne	Roast beef	2007-03-01	1084
Brisbane	Roast beef	2007-03-01	1184
Adelaide	Roast beef	2007-03-01	1088
Perth	Roast beef	2007-03-01	1162
Hobart	Roast beef	2007-03-01	1170
Darwin	Roast beef	2007-03-01	1179
Sydney	Rump steak	2007-03-01	1695
Melbourne	Rump steak	2007-03-01	1936
Brisbane	Rump steak	2007-03-01	1918
Adelaide	Rump steak	2007-03-01	1909
Perth	Rump steak	2007-03-01	1849
Hobart	Rump steak	2007-03-01	2005
Sydney	T-bone steak, with fillet	2007-03-01	1974
Melbourne	T-bone steak, with fillet	2007-03-01	1745
Brisbane	T-bone steak, with fillet	2007-03-01	1825
Adelaide	T-bone steak, with fillet	2007-03-01	1954
Perth	T-bone steak, with fillet	2007-03-01	1911
Hobart	T-bone steak, with fillet	2007-03-01	1859
Darwin	T-bone steak, with fillet	2007-03-01	2092
Sydney	Chuck steak	2007-03-01	1014
Melbourne	Chuck steak	2007-03-01	957
Brisbane	Chuck steak	2007-03-01	946
Adelaide	Chuck steak	2007-03-01	985
Perth	Chuck steak	2007-03-01	1021
Hobart	Chuck steak	2007-03-01	1023
Darwin	Chuck steak	2007-03-01	1059
Melbourne	Lamb leg	2007-03-01	842
Brisbane	Lamb leg	2007-03-01	853
Adelaide	Lamb leg	2007-03-01	944
Perth	Lamb leg	2007-03-01	913
Hobart	Lamb leg	2007-03-01	885
Darwin	Lamb leg	2007-03-01	885
Sydney	Lamb loin chops	2007-03-01	1577
Melbourne	Lamb loin chops	2007-03-01	1649
Brisbane	Lamb loin chops	2007-03-01	1598
Adelaide	Lamb loin chops	2007-03-01	1679
Perth	Lamb loin chops	2007-03-01	1766
Hobart	Lamb loin chops	2007-03-01	1621
Sydney	Lamb forequarter chops	2007-03-01	834
Melbourne	Lamb forequarter chops	2007-03-01	890
Brisbane	Lamb forequarter chops	2007-03-01	811
Adelaide	Lamb forequarter chops	2007-03-01	949
Perth	Lamb forequarter chops	2007-03-01	934
Hobart	Lamb forequarter chops	2007-03-01	863
Darwin	Lamb forequarter chops	2007-03-01	929
Sydney	Pork leg	2007-03-01	657
Melbourne	Pork leg	2007-03-01	713
Brisbane	Pork leg	2007-03-01	701
Adelaide	Pork leg	2007-03-01	750
Perth	Pork leg	2007-03-01	698
Hobart	Pork leg	2007-03-01	812
Darwin	Pork leg	2007-03-01	736
Sydney	Pork loin chops	2007-03-01	1418
Melbourne	Pork loin chops	2007-03-01	1386
Adelaide	Pork loin chops	2007-03-01	1419
Perth	Pork loin chops	2007-03-01	1472
Hobart	Pork loin chops	2007-03-01	1471
Darwin	Pork loin chops	2007-03-01	1445
Sydney	Chicken, frozen	2007-03-01	364
Melbourne	Chicken, frozen	2007-03-01	355
Brisbane	Chicken, frozen	2007-03-01	368
Adelaide	Chicken, frozen	2007-03-01	364
Perth	Chicken, frozen	2007-03-01	413
Hobart	Chicken, frozen	2007-03-01	377
Darwin	Chicken, frozen	2007-03-01	399
Sydney	Bacon, middle rashers	2007-03-01	425
Melbourne	Bacon, middle rashers	2007-03-01	408
Brisbane	Bacon, middle rashers	2007-03-01	390
Perth	Bacon, middle rashers	2007-03-01	537
Hobart	Bacon, middle rashers	2007-03-01	359
Darwin	Bacon, middle rashers	2007-03-01	448
Sydney	Sausages	2007-03-01	556
Melbourne	Sausages	2007-03-01	561
Brisbane	Sausages	2007-03-01	569
Adelaide	Sausages	2007-03-01	594
Perth	Sausages	2007-03-01	645
Hobart	Sausages	2007-03-01	596
Darwin	Sausages	2007-03-01	549
Sydney	Salmon, pink	2007-03-01	251
Melbourne	Salmon, pink	2007-03-01	255
Brisbane	Salmon, pink	2007-03-01	257
Adelaide	Salmon, pink	2007-03-01	254
Perth	Salmon, pink	2007-03-01	263
Hobart	Salmon, pink	2007-03-01	294
Darwin	Salmon, pink	2007-03-01	284
Sydney	Oranges	2007-03-01	338
Melbourne	Oranges	2007-03-01	296
Brisbane	Oranges	2007-03-01	270
Adelaide	Oranges	2007-03-01	192
Perth	Oranges	2007-03-01	444
Darwin	Oranges	2007-03-01	317
Sydney	Bananas	2007-03-01	262
Melbourne	Bananas	2007-03-01	295
Brisbane	Bananas	2007-03-01	271
Adelaide	Bananas	2007-03-01	295
Perth	Bananas	2007-03-01	356
Hobart	Bananas	2007-03-01	270
Darwin	Bananas	2007-03-01	415
Sydney	Potatoes	2007-03-01	164
Melbourne	Potatoes	2007-03-01	228
Brisbane	Potatoes	2007-03-01	218
Adelaide	Potatoes	2007-03-01	169
Perth	Potatoes	2007-03-01	223
Hobart	Potatoes	2007-03-01	223
Sydney	Tomatoes	2007-03-01	380
Melbourne	Tomatoes	2007-03-01	315
Brisbane	Tomatoes	2007-03-01	389
Adelaide	Tomatoes	2007-03-01	396
Perth	Tomatoes	2007-03-01	388
Hobart	Tomatoes	2007-03-01	391
Darwin	Tomatoes	2007-03-01	493
Sydney	Carrots	2007-03-01	205
Melbourne	Carrots	2007-03-01	196
Brisbane	Carrots	2007-03-01	188
Adelaide	Carrots	2007-03-01	194
Perth	Carrots	2007-03-01	148
Hobart	Carrots	2007-03-01	192
Sydney	Onions	2007-03-01	235
Melbourne	Onions	2007-03-01	223
Brisbane	Onions	2007-03-01	205
Adelaide	Onions	2007-03-01	233
Perth	Onions	2007-03-01	218
Darwin	Onions	2007-03-01	314
Sydney	Peaches	2007-03-01	318
Melbourne	Peaches	2007-03-01	308
Brisbane	Peaches	2007-03-01	308
Adelaide	Peaches	2007-03-01	325
Perth	Peaches	2007-03-01	314
Hobart	Peaches	2007-03-01	319
Darwin	Peaches	2007-03-01	327
Sydney	Pineapple, sliced	2007-03-01	181
Melbourne	Pineapple, sliced	2007-03-01	173
Brisbane	Pineapple, sliced	2007-03-01	174
Adelaide	Pineapple, sliced	2007-03-01	188
Hobart	Pineapple, sliced	2007-03-01	189
Darwin	Pineapple, sliced	2007-03-01	187
Sydney	Peas, frozen	2007-03-01	165
Melbourne	Peas, frozen	2007-03-01	168
Brisbane	Peas, frozen	2007-03-01	161
Adelaide	Peas, frozen	2007-03-01	160
Perth	Peas, frozen	2007-03-01	166
Hobart	Peas, frozen	2007-03-01	171
Darwin	Peas, frozen	2007-03-01	194
Sydney	Chocolate milk	2007-03-01	412
Melbourne	Chocolate milk	2007-03-01	412
Brisbane	Chocolate milk	2007-03-01	385
Adelaide	Chocolate milk	2007-03-01	373
Perth	Chocolate milk	2007-03-01	394
Hobart	Chocolate milk	2007-03-01	399
Darwin	Chocolate milk	2007-03-01	415
Sydney	Eggs	2007-03-01	437
Melbourne	Eggs	2007-03-01	426
Adelaide	Eggs	2007-03-01	409
Perth	Eggs	2007-03-01	472
Hobart	Eggs	2007-03-01	419
Darwin	Eggs	2007-03-01	459
Sydney	Sugar, white	2007-03-01	224
Melbourne	Sugar, white	2007-03-01	225
Brisbane	Sugar, white	2007-03-01	223
Adelaide	Sugar, white	2007-03-01	241
Perth	Sugar, white	2007-03-01	279
Hobart	Sugar, white	2007-03-01	346
Darwin	Sugar, white	2007-03-01	258
Sydney	Jam, strawberry	2007-03-01	306
Brisbane	Jam, strawberry	2007-03-01	307
Adelaide	Jam, strawberry	2007-03-01	282
Perth	Jam, strawberry	2007-03-01	312
Hobart	Jam, strawberry	2007-03-01	305
Darwin	Jam, strawberry	2007-03-01	312
Sydney	Teabags	2007-03-01	386
Melbourne	Teabags	2007-03-01	395
Brisbane	Teabags	2007-03-01	375
Adelaide	Teabags	2007-03-01	355
Perth	Teabags	2007-03-01	371
Hobart	Teabags	2007-03-01	441
Darwin	Teabags	2007-03-01	380
Sydney	Coffee, instant	2007-03-01	690
Melbourne	Coffee, instant	2007-03-01	705
Brisbane	Coffee, instant	2007-03-01	670
Adelaide	Coffee, instant	2007-03-01	666
Hobart	Coffee, instant	2007-03-01	737
Darwin	Coffee, instant	2007-03-01	667
Sydney	Tomato sauce	2007-03-01	190
Melbourne	Tomato sauce	2007-03-01	179
Brisbane	Tomato sauce	2007-03-01	176
Adelaide	Tomato sauce	2007-03-01	170
Perth	Tomato sauce	2007-03-01	174
Hobart	Tomato sauce	2007-03-01	182
Darwin	Tomato sauce	2007-03-01	185
Sydney	Margarine, poly-unsaturated	2007-03-01	279
Melbourne	Margarine, poly-unsaturated	2007-03-01	283
Brisbane	Margarine, poly-unsaturated	2007-03-01	280
Perth	Margarine, poly-unsaturated	2007-03-01	284
Hobart	Margarine, poly-unsaturated	2007-03-01	284
Darwin	Margarine, poly-unsaturated	2007-03-01	291
Sydney	Baked beans, in tomato sauce	2007-03-01	134
Melbourne	Baked beans, in tomato sauce	2007-03-01	137
Brisbane	Baked beans, in tomato sauce	2007-03-01	127
Adelaide	Baked beans, in tomato sauce	2007-03-01	121
Perth	Baked beans, in tomato sauce	2007-03-01	140
Hobart	Baked beans, in tomato sauce	2007-03-01	136
Darwin	Baked beans, in tomato sauce	2007-03-01	137
Sydney	Baby food	2007-03-01	90
Melbourne	Baby food	2007-03-01	92
Brisbane	Baby food	2007-03-01	91
Adelaide	Baby food	2007-03-01	86
Perth	Baby food	2007-03-01	90
Hobart	Baby food	2007-03-01	90
Darwin	Baby food	2007-03-01	94
Sydney	Laundry detergent	2007-03-01	567
Melbourne	Laundry detergent	2007-03-01	575
Brisbane	Laundry detergent	2007-03-01	552
Adelaide	Laundry detergent	2007-03-01	568
Perth	Laundry detergent	2007-03-01	561
Hobart	Laundry detergent	2007-03-01	559
Darwin	Laundry detergent	2007-03-01	573
Melbourne	Dishwashing detergent	2007-03-01	364
Brisbane	Dishwashing detergent	2007-03-01	370
Adelaide	Dishwashing detergent	2007-03-01	339
Perth	Dishwashing detergent	2007-03-01	357
Hobart	Dishwashing detergent	2007-03-01	363
Darwin	Dishwashing detergent	2007-03-01	364
Sydney	Facial tissues	2007-03-01	224
Melbourne	Facial tissues	2007-03-01	226
Brisbane	Facial tissues	2007-03-01	225
Adelaide	Facial tissues	2007-03-01	226
Perth	Facial tissues	2007-03-01	224
Hobart	Facial tissues	2007-03-01	219
Darwin	Facial tissues	2007-03-01	225
Sydney	Toilet paper	2007-03-01	647
Melbourne	Toilet paper	2007-03-01	657
Brisbane	Toilet paper	2007-03-01	615
Perth	Toilet paper	2007-03-01	639
Hobart	Toilet paper	2007-03-01	627
Darwin	Toilet paper	2007-03-01	605
Melbourne	Pet food	2007-03-01	119
Brisbane	Pet food	2007-03-01	115
Adelaide	Pet food	2007-03-01	110
Perth	Pet food	2007-03-01	114
Hobart	Pet food	2007-03-01	119
Darwin	Pet food	2007-03-01	119
Sydney	Petrol, unleaded	2007-03-01	117
Melbourne	Petrol, unleaded	2007-03-01	117
Brisbane	Petrol, unleaded	2007-03-01	111
Adelaide	Petrol, unleaded	2007-03-01	116
Perth	Petrol, unleaded	2007-03-01	118
Hobart	Petrol, unleaded	2007-03-01	121
Sydney	Beer, low alcohol	2007-03-01	2567
Melbourne	Beer, low alcohol	2007-03-01	2510
Brisbane	Beer, low alcohol	2007-03-01	2963
Adelaide	Beer, low alcohol	2007-03-01	2632
Perth	Beer, low alcohol	2007-03-01	3239
Hobart	Beer, low alcohol	2007-03-01	2872
Darwin	Beer, low alcohol	2007-03-01	3065
Sydney	Beer, full strength	2007-03-01	3731
Melbourne	Beer, full strength	2007-03-01	3731
Brisbane	Beer, full strength	2007-03-01	3521
Adelaide	Beer, full strength	2007-03-01	3622
Perth	Beer, full strength	2007-03-01	3782
Hobart	Beer, full strength	2007-03-01	3884
Darwin	Beer, full strength	2007-03-01	4053
Melbourne	Draught beer, low alcohol, public bar	2007-03-01	283
Brisbane	Draught beer, low alcohol, public bar	2007-03-01	237
Adelaide	Draught beer, low alcohol, public bar	2007-03-01	317
Perth	Draught beer, low alcohol, public bar	2007-03-01	329
Hobart	Draught beer, low alcohol, public bar	2007-03-01	270
Darwin	Draught beer, low alcohol, public bar	2007-03-01	246
Sydney	Draught beer, full strength, public bar	2007-03-01	260
Melbourne	Draught beer, full strength, public bar	2007-03-01	317
Brisbane	Draught beer, full strength, public bar	2007-03-01	263
Adelaide	Draught beer, full strength, public bar	2007-03-01	359
Perth	Draught beer, full strength, public bar	2007-03-01	334
Hobart	Draught beer, full strength, public bar	2007-03-01	317
Darwin	Draught beer, full strength, public bar	2007-03-01	302
Sydney	Scotch	2007-03-01	457
Melbourne	Scotch	2007-03-01	518
Brisbane	Scotch	2007-03-01	416
Adelaide	Scotch	2007-03-01	531
Perth	Scotch	2007-03-01	542
Hobart	Scotch	2007-03-01	393
Darwin	Scotch	2007-03-01	462
Sydney	Toilet soap	2007-03-01	375
Melbourne	Toilet soap	2007-03-01	406
Brisbane	Toilet soap	2007-03-01	346
Adelaide	Toilet soap	2007-03-01	362
Perth	Toilet soap	2007-03-01	410
Hobart	Toilet soap	2007-03-01	448
Sydney	Milk	2007-06-01	330
Melbourne	Milk	2007-06-01	325
Brisbane	Milk	2007-06-01	313
Adelaide	Milk	2007-06-01	312
Perth	Milk	2007-06-01	313
Hobart	Milk	2007-06-01	329
Darwin	Milk	2007-06-01	360
Sydney	Cheese	2007-06-01	485
Melbourne	Cheese	2007-06-01	478
Brisbane	Cheese	2007-06-01	487
Adelaide	Cheese	2007-06-01	474
Perth	Cheese	2007-06-01	487
Hobart	Cheese	2007-06-01	477
Darwin	Cheese	2007-06-01	571
Melbourne	Butter	2007-06-01	364
Brisbane	Butter	2007-06-01	321
Adelaide	Butter	2007-06-01	329
Perth	Butter	2007-06-01	318
Hobart	Butter	2007-06-01	303
Darwin	Butter	2007-06-01	348
Sydney	Bread white loaf, sliced	2007-06-01	326
Melbourne	Bread white loaf, sliced	2007-06-01	335
Brisbane	Bread white loaf, sliced	2007-06-01	311
Adelaide	Bread white loaf, sliced	2007-06-01	313
Hobart	Bread white loaf, sliced	2007-06-01	268
Darwin	Bread white loaf, sliced	2007-06-01	375
Sydney	Biscuits, dry	2007-06-01	202
Melbourne	Biscuits, dry	2007-06-01	200
Brisbane	Biscuits, dry	2007-06-01	183
Adelaide	Biscuits, dry	2007-06-01	202
Perth	Biscuits, dry	2007-06-01	183
Hobart	Biscuits, dry	2007-06-01	208
Darwin	Biscuits, dry	2007-06-01	207
Sydney	Breakfast cereal	2007-06-01	331
Melbourne	Breakfast cereal	2007-06-01	333
Brisbane	Breakfast cereal	2007-06-01	304
Adelaide	Breakfast cereal	2007-06-01	282
Perth	Breakfast cereal	2007-06-01	327
Hobart	Breakfast cereal	2007-06-01	354
Darwin	Breakfast cereal	2007-06-01	327
Sydney	Flour, self raising	2007-06-01	420
Melbourne	Flour, self raising	2007-06-01	435
Adelaide	Flour, self raising	2007-06-01	450
Perth	Flour, self raising	2007-06-01	452
Hobart	Flour, self raising	2007-06-01	300
Darwin	Flour, self raising	2007-06-01	482
Sydney	Rice	2007-06-01	201
Melbourne	Rice	2007-06-01	220
Brisbane	Rice	2007-06-01	191
Adelaide	Rice	2007-06-01	217
Perth	Rice	2007-06-01	225
Hobart	Rice	2007-06-01	224
Darwin	Rice	2007-06-01	228
Sydney	Roast beef	2007-06-01	1096
Melbourne	Roast beef	2007-06-01	1096
Brisbane	Roast beef	2007-06-01	1232
Adelaide	Roast beef	2007-06-01	1205
Perth	Roast beef	2007-06-01	1174
Darwin	Roast beef	2007-06-01	1237
Sydney	Rump steak	2007-06-01	1849
Melbourne	Rump steak	2007-06-01	1932
Brisbane	Rump steak	2007-06-01	1967
Adelaide	Rump steak	2007-06-01	1783
Perth	Rump steak	2007-06-01	1745
Hobart	Rump steak	2007-06-01	1908
Darwin	Rump steak	2007-06-01	1911
Sydney	T-bone steak, with fillet	2007-06-01	1993
Melbourne	T-bone steak, with fillet	2007-06-01	1964
Adelaide	T-bone steak, with fillet	2007-06-01	1980
Perth	T-bone steak, with fillet	2007-06-01	2013
Hobart	T-bone steak, with fillet	2007-06-01	1878
Darwin	T-bone steak, with fillet	2007-06-01	2095
Sydney	Chuck steak	2007-06-01	1009
Melbourne	Chuck steak	2007-06-01	974
Brisbane	Chuck steak	2007-06-01	960
Adelaide	Chuck steak	2007-06-01	998
Perth	Chuck steak	2007-06-01	1004
Hobart	Chuck steak	2007-06-01	1023
Darwin	Chuck steak	2007-06-01	1059
Sydney	Lamb leg	2007-06-01	938
Melbourne	Lamb leg	2007-06-01	937
Brisbane	Lamb leg	2007-06-01	915
Adelaide	Lamb leg	2007-06-01	960
Perth	Lamb leg	2007-06-01	944
Hobart	Lamb leg	2007-06-01	866
Darwin	Lamb leg	2007-06-01	958
Sydney	Lamb loin chops	2007-06-01	1652
Melbourne	Lamb loin chops	2007-06-01	1659
Adelaide	Lamb loin chops	2007-06-01	1702
Perth	Lamb loin chops	2007-06-01	1718
Hobart	Lamb loin chops	2007-06-01	1674
Darwin	Lamb loin chops	2007-06-01	1712
Sydney	Lamb forequarter chops	2007-06-01	850
Melbourne	Lamb forequarter chops	2007-06-01	868
Brisbane	Lamb forequarter chops	2007-06-01	867
Adelaide	Lamb forequarter chops	2007-06-01	887
Perth	Lamb forequarter chops	2007-06-01	878
Hobart	Lamb forequarter chops	2007-06-01	853
Darwin	Lamb forequarter chops	2007-06-01	937
Sydney	Pork leg	2007-06-01	634
Melbourne	Pork leg	2007-06-01	712
Brisbane	Pork leg	2007-06-01	606
Adelaide	Pork leg	2007-06-01	720
Perth	Pork leg	2007-06-01	654
Hobart	Pork leg	2007-06-01	829
Darwin	Pork leg	2007-06-01	791
Melbourne	Pork loin chops	2007-06-01	1295
Brisbane	Pork loin chops	2007-06-01	1402
Adelaide	Pork loin chops	2007-06-01	1456
Perth	Pork loin chops	2007-06-01	1483
Hobart	Pork loin chops	2007-06-01	1404
Darwin	Pork loin chops	2007-06-01	1504
Sydney	Chicken, frozen	2007-06-01	389
Melbourne	Chicken, frozen	2007-06-01	366
Brisbane	Chicken, frozen	2007-06-01	384
Adelaide	Chicken, frozen	2007-06-01	388
Perth	Chicken, frozen	2007-06-01	454
Hobart	Chicken, frozen	2007-06-01	401
Darwin	Chicken, frozen	2007-06-01	436
Melbourne	Bacon, middle rashers	2007-06-01	413
Brisbane	Bacon, middle rashers	2007-06-01	401
Adelaide	Bacon, middle rashers	2007-06-01	394
Perth	Bacon, middle rashers	2007-06-01	516
Hobart	Bacon, middle rashers	2007-06-01	359
Darwin	Bacon, middle rashers	2007-06-01	457
Sydney	Sausages	2007-06-01	547
Melbourne	Sausages	2007-06-01	579
Brisbane	Sausages	2007-06-01	574
Adelaide	Sausages	2007-06-01	594
Perth	Sausages	2007-06-01	616
Hobart	Sausages	2007-06-01	604
Darwin	Sausages	2007-06-01	546
Sydney	Salmon, pink	2007-06-01	242
Melbourne	Salmon, pink	2007-06-01	246
Brisbane	Salmon, pink	2007-06-01	241
Adelaide	Salmon, pink	2007-06-01	255
Perth	Salmon, pink	2007-06-01	261
Hobart	Salmon, pink	2007-06-01	334
Darwin	Salmon, pink	2007-06-01	270
Sydney	Oranges	2007-06-01	312
Brisbane	Oranges	2007-06-01	286
Adelaide	Oranges	2007-06-01	233
Perth	Oranges	2007-06-01	414
Hobart	Oranges	2007-06-01	341
Darwin	Oranges	2007-06-01	428
Sydney	Bananas	2007-06-01	381
Melbourne	Bananas	2007-06-01	392
Brisbane	Bananas	2007-06-01	382
Adelaide	Bananas	2007-06-01	401
Perth	Bananas	2007-06-01	473
Hobart	Bananas	2007-06-01	407
Darwin	Bananas	2007-06-01	430
Sydney	Potatoes	2007-06-01	145
Melbourne	Potatoes	2007-06-01	216
Adelaide	Potatoes	2007-06-01	190
Perth	Potatoes	2007-06-01	213
Hobart	Potatoes	2007-06-01	191
Darwin	Potatoes	2007-06-01	261
Sydney	Tomatoes	2007-06-01	501
Melbourne	Tomatoes	2007-06-01	431
Brisbane	Tomatoes	2007-06-01	492
Adelaide	Tomatoes	2007-06-01	527
Perth	Tomatoes	2007-06-01	490
Hobart	Tomatoes	2007-06-01	493
Darwin	Tomatoes	2007-06-01	673
Sydney	Carrots	2007-06-01	200
Melbourne	Carrots	2007-06-01	186
Brisbane	Carrots	2007-06-01	186
Perth	Carrots	2007-06-01	144
Hobart	Carrots	2007-06-01	193
Darwin	Carrots	2007-06-01	256
Sydney	Onions	2007-06-01	230
Melbourne	Onions	2007-06-01	225
Brisbane	Onions	2007-06-01	232
Adelaide	Onions	2007-06-01	224
Perth	Onions	2007-06-01	200
Darwin	Onions	2007-06-01	297
Sydney	Peaches	2007-06-01	344
Melbourne	Peaches	2007-06-01	312
Adelaide	Peaches	2007-06-01	333
Perth	Peaches	2007-06-01	345
Hobart	Peaches	2007-06-01	325
Darwin	Peaches	2007-06-01	341
Sydney	Pineapple, sliced	2007-06-01	188
Melbourne	Pineapple, sliced	2007-06-01	183
Brisbane	Pineapple, sliced	2007-06-01	175
Adelaide	Pineapple, sliced	2007-06-01	189
Perth	Pineapple, sliced	2007-06-01	196
Hobart	Pineapple, sliced	2007-06-01	190
Darwin	Pineapple, sliced	2007-06-01	196
Sydney	Peas, frozen	2007-06-01	168
Brisbane	Peas, frozen	2007-06-01	167
Adelaide	Peas, frozen	2007-06-01	167
Perth	Peas, frozen	2007-06-01	173
Hobart	Peas, frozen	2007-06-01	173
Darwin	Peas, frozen	2007-06-01	199
Sydney	Chocolate milk	2007-06-01	405
Melbourne	Chocolate milk	2007-06-01	425
Brisbane	Chocolate milk	2007-06-01	413
Adelaide	Chocolate milk	2007-06-01	389
Perth	Chocolate milk	2007-06-01	360
Hobart	Chocolate milk	2007-06-01	423
Darwin	Chocolate milk	2007-06-01	419
Sydney	Eggs	2007-06-01	443
Melbourne	Eggs	2007-06-01	432
Brisbane	Eggs	2007-06-01	439
Adelaide	Eggs	2007-06-01	418
Perth	Eggs	2007-06-01	469
Hobart	Eggs	2007-06-01	408
Darwin	Eggs	2007-06-01	465
Melbourne	Sugar, white	2007-06-01	230
Brisbane	Sugar, white	2007-06-01	217
Adelaide	Sugar, white	2007-06-01	240
Perth	Sugar, white	2007-06-01	289
Hobart	Sugar, white	2007-06-01	351
Darwin	Sugar, white	2007-06-01	273
Sydney	Jam, strawberry	2007-06-01	311
Melbourne	Jam, strawberry	2007-06-01	321
Brisbane	Jam, strawberry	2007-06-01	306
Adelaide	Jam, strawberry	2007-06-01	279
Perth	Jam, strawberry	2007-06-01	318
Darwin	Jam, strawberry	2007-06-01	312
Sydney	Teabags	2007-06-01	403
Melbourne	Teabags	2007-06-01	392
Brisbane	Teabags	2007-06-01	383
Adelaide	Teabags	2007-06-01	366
Perth	Teabags	2007-06-01	371
Hobart	Teabags	2007-06-01	413
Darwin	Teabags	2007-06-01	380
Sydney	Coffee, instant	2007-06-01	709
Melbourne	Coffee, instant	2007-06-01	750
Brisbane	Coffee, instant	2007-06-01	701
Adelaide	Coffee, instant	2007-06-01	676
Perth	Coffee, instant	2007-06-01	730
Hobart	Coffee, instant	2007-06-01	743
Darwin	Coffee, instant	2007-06-01	692
Sydney	Tomato sauce	2007-06-01	192
Brisbane	Tomato sauce	2007-06-01	175
Adelaide	Tomato sauce	2007-06-01	167
Perth	Tomato sauce	2007-06-01	174
Hobart	Tomato sauce	2007-06-01	179
Darwin	Tomato sauce	2007-06-01	185
Sydney	Margarine, poly-unsaturated	2007-06-01	282
Melbourne	Margarine, poly-unsaturated	2007-06-01	279
Brisbane	Margarine, poly-unsaturated	2007-06-01	280
Adelaide	Margarine, poly-unsaturated	2007-06-01	273
Perth	Margarine, poly-unsaturated	2007-06-01	281
Hobart	Margarine, poly-unsaturated	2007-06-01	281
Darwin	Margarine, poly-unsaturated	2007-06-01	287
Sydney	Baked beans, in tomato sauce	2007-06-01	143
Brisbane	Baked beans, in tomato sauce	2007-06-01	126
Adelaide	Baked beans, in tomato sauce	2007-06-01	137
Perth	Baked beans, in tomato sauce	2007-06-01	140
Hobart	Baked beans, in tomato sauce	2007-06-01	145
Darwin	Baked beans, in tomato sauce	2007-06-01	145
Sydney	Baby food	2007-06-01	94
Melbourne	Baby food	2007-06-01	94
Brisbane	Baby food	2007-06-01	90
Adelaide	Baby food	2007-06-01	92
Perth	Baby food	2007-06-01	95
Hobart	Baby food	2007-06-01	93
Darwin	Baby food	2007-06-01	96
Sydney	Laundry detergent	2007-06-01	583
Melbourne	Laundry detergent	2007-06-01	587
Brisbane	Laundry detergent	2007-06-01	581
Adelaide	Laundry detergent	2007-06-01	585
Perth	Laundry detergent	2007-06-01	588
Hobart	Laundry detergent	2007-06-01	576
Darwin	Laundry detergent	2007-06-01	600
Sydney	Dishwashing detergent	2007-06-01	384
Melbourne	Dishwashing detergent	2007-06-01	377
Adelaide	Dishwashing detergent	2007-06-01	357
Perth	Dishwashing detergent	2007-06-01	339
Hobart	Dishwashing detergent	2007-06-01	385
Darwin	Dishwashing detergent	2007-06-01	386
Sydney	Facial tissues	2007-06-01	227
Melbourne	Facial tissues	2007-06-01	218
Brisbane	Facial tissues	2007-06-01	223
Adelaide	Facial tissues	2007-06-01	214
Perth	Facial tissues	2007-06-01	224
Hobart	Facial tissues	2007-06-01	222
Darwin	Facial tissues	2007-06-01	237
Sydney	Toilet paper	2007-06-01	645
Melbourne	Toilet paper	2007-06-01	650
Brisbane	Toilet paper	2007-06-01	644
Adelaide	Toilet paper	2007-06-01	647
Perth	Toilet paper	2007-06-01	672
Hobart	Toilet paper	2007-06-01	635
Darwin	Toilet paper	2007-06-01	658
Sydney	Pet food	2007-06-01	115
Melbourne	Pet food	2007-06-01	109
Adelaide	Pet food	2007-06-01	113
Hobart	Pet food	2007-06-01	128
Darwin	Pet food	2007-06-01	115
Sydney	Petrol, unleaded	2007-06-01	128
Melbourne	Petrol, unleaded	2007-06-01	129
Brisbane	Petrol, unleaded	2007-06-01	122
Adelaide	Petrol, unleaded	2007-06-01	127
Perth	Petrol, unleaded	2007-06-01	128
Hobart	Petrol, unleaded	2007-06-01	133
Darwin	Petrol, unleaded	2007-06-01	138
Sydney	Beer, low alcohol	2007-06-01	2614
Melbourne	Beer, low alcohol	2007-06-01	2584
Brisbane	Beer, low alcohol	2007-06-01	2889
Perth	Beer, low alcohol	2007-06-01	3202
Hobart	Beer, low alcohol	2007-06-01	2999
Darwin	Beer, low alcohol	2007-06-01	3061
Sydney	Beer, full strength	2007-06-01	3822
Melbourne	Beer, full strength	2007-06-01	3683
Brisbane	Beer, full strength	2007-06-01	3647
Adelaide	Beer, full strength	2007-06-01	3769
Perth	Beer, full strength	2007-06-01	3858
Hobart	Beer, full strength	2007-06-01	3852
Darwin	Beer, full strength	2007-06-01	4002
Melbourne	Draught beer, low alcohol, public bar	2007-06-01	291
Brisbane	Draught beer, low alcohol, public bar	2007-06-01	242
Adelaide	Draught beer, low alcohol, public bar	2007-06-01	326
Perth	Draught beer, low alcohol, public bar	2007-06-01	337
Hobart	Draught beer, low alcohol, public bar	2007-06-01	273
Darwin	Draught beer, low alcohol, public bar	2007-06-01	252
Sydney	Draught beer, full strength, public bar	2007-06-01	272
Melbourne	Draught beer, full strength, public bar	2007-06-01	323
Brisbane	Draught beer, full strength, public bar	2007-06-01	269
Adelaide	Draught beer, full strength, public bar	2007-06-01	368
Perth	Draught beer, full strength, public bar	2007-06-01	341
Hobart	Draught beer, full strength, public bar	2007-06-01	323
Darwin	Draught beer, full strength, public bar	2007-06-01	309
Sydney	Scotch	2007-06-01	459
Melbourne	Scotch	2007-06-01	534
Brisbane	Scotch	2007-06-01	418
Adelaide	Scotch	2007-06-01	526
Perth	Scotch	2007-06-01	549
Hobart	Scotch	2007-06-01	407
Darwin	Scotch	2007-06-01	469
Sydney	Toilet soap	2007-06-01	466
Melbourne	Toilet soap	2007-06-01	509
Brisbane	Toilet soap	2007-06-01	404
Adelaide	Toilet soap	2007-06-01	447
Perth	Toilet soap	2007-06-01	576
Hobart	Toilet soap	2007-06-01	644
Darwin	Toilet soap	2007-06-01	469
Sydney	Milk	2007-09-01	344
Melbourne	Milk	2007-09-01	334
Brisbane	Milk	2007-09-01	319
Perth	Milk	2007-09-01	325
Hobart	Milk	2007-09-01	326
Darwin	Milk	2007-09-01	369
Sydney	Cheese	2007-09-01	422
Melbourne	Cheese	2007-09-01	472
Brisbane	Cheese	2007-09-01	454
Adelaide	Cheese	2007-09-01	434
Perth	Cheese	2007-09-01	465
Hobart	Cheese	2007-09-01	472
Darwin	Cheese	2007-09-01	564
Sydney	Butter	2007-09-01	342
Melbourne	Butter	2007-09-01	314
Brisbane	Butter	2007-09-01	281
Adelaide	Butter	2007-09-01	295
Hobart	Butter	2007-09-01	318
Darwin	Butter	2007-09-01	393
Sydney	Bread white loaf, sliced	2007-09-01	327
Melbourne	Bread white loaf, sliced	2007-09-01	336
Brisbane	Bread white loaf, sliced	2007-09-01	311
Adelaide	Bread white loaf, sliced	2007-09-01	307
Perth	Bread white loaf, sliced	2007-09-01	300
Hobart	Bread white loaf, sliced	2007-09-01	266
Darwin	Bread white loaf, sliced	2007-09-01	342
Sydney	Biscuits, dry	2007-09-01	213
Melbourne	Biscuits, dry	2007-09-01	208
Brisbane	Biscuits, dry	2007-09-01	191
Perth	Biscuits, dry	2007-09-01	192
Hobart	Biscuits, dry	2007-09-01	218
Darwin	Biscuits, dry	2007-09-01	214
Sydney	Breakfast cereal	2007-09-01	356
Melbourne	Breakfast cereal	2007-09-01	358
Brisbane	Breakfast cereal	2007-09-01	328
Adelaide	Breakfast cereal	2007-09-01	336
Perth	Breakfast cereal	2007-09-01	375
Hobart	Breakfast cereal	2007-09-01	402
Darwin	Breakfast cereal	2007-09-01	347
Sydney	Flour, self raising	2007-09-01	428
Melbourne	Flour, self raising	2007-09-01	449
Brisbane	Flour, self raising	2007-09-01	413
Adelaide	Flour, self raising	2007-09-01	414
Perth	Flour, self raising	2007-09-01	452
Hobart	Flour, self raising	2007-09-01	312
Sydney	Rice	2007-09-01	204
Melbourne	Rice	2007-09-01	223
Brisbane	Rice	2007-09-01	189
Adelaide	Rice	2007-09-01	223
Perth	Rice	2007-09-01	220
Hobart	Rice	2007-09-01	230
Darwin	Rice	2007-09-01	222
Sydney	Roast beef	2007-09-01	1089
Melbourne	Roast beef	2007-09-01	1069
Brisbane	Roast beef	2007-09-01	1208
Adelaide	Roast beef	2007-09-01	1160
Perth	Roast beef	2007-09-01	1095
Hobart	Roast beef	2007-09-01	1169
Darwin	Roast beef	2007-09-01	1214
Sydney	Rump steak	2007-09-01	1865
Melbourne	Rump steak	2007-09-01	2012
Brisbane	Rump steak	2007-09-01	2013
Adelaide	Rump steak	2007-09-01	1928
Hobart	Rump steak	2007-09-01	1821
Sydney	T-bone steak, with fillet	2007-09-01	1865
Melbourne	T-bone steak, with fillet	2007-09-01	1893
Brisbane	T-bone steak, with fillet	2007-09-01	1984
Adelaide	T-bone steak, with fillet	2007-09-01	1963
Perth	T-bone steak, with fillet	2007-09-01	1939
Hobart	T-bone steak, with fillet	2007-09-01	1912
Darwin	T-bone steak, with fillet	2007-09-01	2003
Sydney	Chuck steak	2007-09-01	999
Melbourne	Chuck steak	2007-09-01	983
Brisbane	Chuck steak	2007-09-01	982
Adelaide	Chuck steak	2007-09-01	1002
Perth	Chuck steak	2007-09-01	1069
Hobart	Chuck steak	2007-09-01	1003
Darwin	Chuck steak	2007-09-01	1059
Melbourne	Lamb leg	2007-09-01	950
Brisbane	Lamb leg	2007-09-01	930
Adelaide	Lamb leg	2007-09-01	951
Perth	Lamb leg	2007-09-01	969
Hobart	Lamb leg	2007-09-01	904
Darwin	Lamb leg	2007-09-01	953
Sydney	Lamb loin chops	2007-09-01	1636
Melbourne	Lamb loin chops	2007-09-01	1648
Brisbane	Lamb loin chops	2007-09-01	1727
Adelaide	Lamb loin chops	2007-09-01	1712
Perth	Lamb loin chops	2007-09-01	1786
Hobart	Lamb loin chops	2007-09-01	1615
Sydney	Lamb forequarter chops	2007-09-01	865
Melbourne	Lamb forequarter chops	2007-09-01	885
Brisbane	Lamb forequarter chops	2007-09-01	876
Adelaide	Lamb forequarter chops	2007-09-01	921
Perth	Lamb forequarter chops	2007-09-01	896
Hobart	Lamb forequarter chops	2007-09-01	813
Darwin	Lamb forequarter chops	2007-09-01	880
Sydney	Pork leg	2007-09-01	596
Melbourne	Pork leg	2007-09-01	613
Brisbane	Pork leg	2007-09-01	630
Adelaide	Pork leg	2007-09-01	731
Perth	Pork leg	2007-09-01	711
Hobart	Pork leg	2007-09-01	795
Darwin	Pork leg	2007-09-01	663
Sydney	Pork loin chops	2007-09-01	1420
Melbourne	Pork loin chops	2007-09-01	1283
Adelaide	Pork loin chops	2007-09-01	1386
Perth	Pork loin chops	2007-09-01	1489
Hobart	Pork loin chops	2007-09-01	1480
Darwin	Pork loin chops	2007-09-01	1426
Sydney	Chicken, frozen	2007-09-01	410
Melbourne	Chicken, frozen	2007-09-01	394
Brisbane	Chicken, frozen	2007-09-01	397
Adelaide	Chicken, frozen	2007-09-01	406
Perth	Chicken, frozen	2007-09-01	453
Hobart	Chicken, frozen	2007-09-01	410
Darwin	Chicken, frozen	2007-09-01	449
Sydney	Bacon, middle rashers	2007-09-01	413
Melbourne	Bacon, middle rashers	2007-09-01	426
Brisbane	Bacon, middle rashers	2007-09-01	406
Perth	Bacon, middle rashers	2007-09-01	534
Hobart	Bacon, middle rashers	2007-09-01	334
Darwin	Bacon, middle rashers	2007-09-01	463
Sydney	Sausages	2007-09-01	557
Melbourne	Sausages	2007-09-01	571
Brisbane	Sausages	2007-09-01	608
Adelaide	Sausages	2007-09-01	567
Perth	Sausages	2007-09-01	626
Hobart	Sausages	2007-09-01	617
Darwin	Sausages	2007-09-01	543
Sydney	Salmon, pink	2007-09-01	251
Melbourne	Salmon, pink	2007-09-01	255
Brisbane	Salmon, pink	2007-09-01	250
Adelaide	Salmon, pink	2007-09-01	259
Perth	Salmon, pink	2007-09-01	279
Hobart	Salmon, pink	2007-09-01	324
Darwin	Salmon, pink	2007-09-01	291
Sydney	Oranges	2007-09-01	241
Melbourne	Oranges	2007-09-01	252
Brisbane	Oranges	2007-09-01	243
Adelaide	Oranges	2007-09-01	240
Perth	Oranges	2007-09-01	312
Darwin	Oranges	2007-09-01	343
Sydney	Bananas	2007-09-01	518
Melbourne	Bananas	2007-09-01	567
Brisbane	Bananas	2007-09-01	553
Adelaide	Bananas	2007-09-01	600
Perth	Bananas	2007-09-01	671
Hobart	Bananas	2007-09-01	571
Darwin	Bananas	2007-09-01	550
Sydney	Potatoes	2007-09-01	148
Melbourne	Potatoes	2007-09-01	229
Brisbane	Potatoes	2007-09-01	211
Adelaide	Potatoes	2007-09-01	207
Perth	Potatoes	2007-09-01	254
Hobart	Potatoes	2007-09-01	197
Sydney	Tomatoes	2007-09-01	520
Melbourne	Tomatoes	2007-09-01	482
Brisbane	Tomatoes	2007-09-01	493
Adelaide	Tomatoes	2007-09-01	538
Perth	Tomatoes	2007-09-01	528
Hobart	Tomatoes	2007-09-01	529
Darwin	Tomatoes	2007-09-01	629
Sydney	Carrots	2007-09-01	237
Melbourne	Carrots	2007-09-01	226
Brisbane	Carrots	2007-09-01	217
Adelaide	Carrots	2007-09-01	208
Perth	Carrots	2007-09-01	153
Hobart	Carrots	2007-09-01	216
Darwin	Carrots	2007-09-01	268
Melbourne	Onions	2007-09-01	221
Brisbane	Onions	2007-09-01	246
Adelaide	Onions	2007-09-01	226
Perth	Onions	2007-09-01	211
Hobart	Onions	2007-09-01	228
Darwin	Onions	2007-09-01	328
Sydney	Peaches	2007-09-01	327
Melbourne	Peaches	2007-09-01	320
Brisbane	Peaches	2007-09-01	305
Adelaide	Peaches	2007-09-01	306
Perth	Peaches	2007-09-01	347
Darwin	Peaches	2007-09-01	343
Sydney	Pineapple, sliced	2007-09-01	189
Melbourne	Pineapple, sliced	2007-09-01	189
Brisbane	Pineapple, sliced	2007-09-01	187
Adelaide	Pineapple, sliced	2007-09-01	197
Perth	Pineapple, sliced	2007-09-01	198
Hobart	Pineapple, sliced	2007-09-01	198
Darwin	Pineapple, sliced	2007-09-01	204
Sydney	Peas, frozen	2007-09-01	180
Brisbane	Peas, frozen	2007-09-01	170
Adelaide	Peas, frozen	2007-09-01	174
Perth	Peas, frozen	2007-09-01	175
Hobart	Peas, frozen	2007-09-01	179
Darwin	Peas, frozen	2007-09-01	200
Sydney	Chocolate milk	2007-09-01	379
Melbourne	Chocolate milk	2007-09-01	416
Brisbane	Chocolate milk	2007-09-01	407
Adelaide	Chocolate milk	2007-09-01	390
Perth	Chocolate milk	2007-09-01	392
Hobart	Chocolate milk	2007-09-01	392
Darwin	Chocolate milk	2007-09-01	398
Sydney	Eggs	2007-09-01	416
Melbourne	Eggs	2007-09-01	448
Brisbane	Eggs	2007-09-01	444
Adelaide	Eggs	2007-09-01	413
Perth	Eggs	2007-09-01	469
Hobart	Eggs	2007-09-01	408
Darwin	Eggs	2007-09-01	479
Melbourne	Sugar, white	2007-09-01	242
Brisbane	Sugar, white	2007-09-01	232
Adelaide	Sugar, white	2007-09-01	260
Perth	Sugar, white	2007-09-01	299
Hobart	Sugar, white	2007-09-01	362
Darwin	Sugar, white	2007-09-01	279
Sydney	Jam, strawberry	2007-09-01	317
Melbourne	Jam, strawberry	2007-09-01	309
Brisbane	Jam, strawberry	2007-09-01	310
Adelaide	Jam, strawberry	2007-09-01	293
Hobart	Jam, strawberry	2007-09-01	306
Darwin	Jam, strawberry	2007-09-01	314
Sydney	Teabags	2007-09-01	358
Melbourne	Teabags	2007-09-01	367
Brisbane	Teabags	2007-09-01	349
Adelaide	Teabags	2007-09-01	350
Perth	Teabags	2007-09-01	344
Hobart	Teabags	2007-09-01	387
Darwin	Teabags	2007-09-01	380
Sydney	Coffee, instant	2007-09-01	701
Melbourne	Coffee, instant	2007-09-01	725
Brisbane	Coffee, instant	2007-09-01	684
Adelaide	Coffee, instant	2007-09-01	701
Perth	Coffee, instant	2007-09-01	707
Hobart	Coffee, instant	2007-09-01	747
Darwin	Coffee, instant	2007-09-01	718
Sydney	Tomato sauce	2007-09-01	191
Brisbane	Tomato sauce	2007-09-01	167
Adelaide	Tomato sauce	2007-09-01	188
Perth	Tomato sauce	2007-09-01	185
Hobart	Tomato sauce	2007-09-01	190
Darwin	Tomato sauce	2007-09-01	188
Sydney	Margarine, poly-unsaturated	2007-09-01	282
Melbourne	Margarine, poly-unsaturated	2007-09-01	273
Brisbane	Margarine, poly-unsaturated	2007-09-01	280
Adelaide	Margarine, poly-unsaturated	2007-09-01	281
Perth	Margarine, poly-unsaturated	2007-09-01	282
Hobart	Margarine, poly-unsaturated	2007-09-01	280
Darwin	Margarine, poly-unsaturated	2007-09-01	289
Sydney	Baked beans, in tomato sauce	2007-09-01	129
Brisbane	Baked beans, in tomato sauce	2007-09-01	114
Adelaide	Baked beans, in tomato sauce	2007-09-01	134
Perth	Baked beans, in tomato sauce	2007-09-01	119
Hobart	Baked beans, in tomato sauce	2007-09-01	130
Darwin	Baked beans, in tomato sauce	2007-09-01	123
Sydney	Baby food	2007-09-01	106
Melbourne	Baby food	2007-09-01	105
Brisbane	Baby food	2007-09-01	102
Adelaide	Baby food	2007-09-01	104
Perth	Baby food	2007-09-01	106
Hobart	Baby food	2007-09-01	108
Darwin	Baby food	2007-09-01	105
Sydney	Laundry detergent	2007-09-01	598
Melbourne	Laundry detergent	2007-09-01	600
Brisbane	Laundry detergent	2007-09-01	592
Adelaide	Laundry detergent	2007-09-01	598
Perth	Laundry detergent	2007-09-01	577
Hobart	Laundry detergent	2007-09-01	598
Darwin	Laundry detergent	2007-09-01	618
Sydney	Dishwashing detergent	2007-09-01	374
Brisbane	Dishwashing detergent	2007-09-01	367
Adelaide	Dishwashing detergent	2007-09-01	366
Perth	Dishwashing detergent	2007-09-01	348
Hobart	Dishwashing detergent	2007-09-01	358
Darwin	Dishwashing detergent	2007-09-01	360
Sydney	Facial tissues	2007-09-01	214
Melbourne	Facial tissues	2007-09-01	227
Brisbane	Facial tissues	2007-09-01	211
Adelaide	Facial tissues	2007-09-01	208
Perth	Facial tissues	2007-09-01	220
Hobart	Facial tissues	2007-09-01	220
Darwin	Facial tissues	2007-09-01	234
Sydney	Toilet tissue	2007-09-01	586
Melbourne	Toilet tissue	2007-09-01	632
Brisbane	Toilet tissue	2007-09-01	607
Adelaide	Toilet tissue	2007-09-01	610
Perth	Toilet tissue	2007-09-01	664
Hobart	Toilet tissue	2007-09-01	606
Darwin	Toilet tissue	2007-09-01	583
Sydney	Pet food	2007-09-01	113
Melbourne	Pet food	2007-09-01	107
Brisbane	Pet food	2007-09-01	116
Perth	Pet food	2007-09-01	112
Hobart	Pet food	2007-09-01	126
Darwin	Pet food	2007-09-01	119
Sydney	Petrol, unleaded	2007-09-01	122
Brisbane	Petrol, unleaded	2007-09-01	116
Adelaide	Petrol, unleaded	2007-09-01	122
Hobart	Petrol, unleaded	2007-09-01	128
Darwin	Petrol, unleaded	2007-09-01	136
Sydney	Beer, full strength	2007-09-01	3811
Melbourne	Beer, full strength	2007-09-01	3791
Brisbane	Beer, full strength	2007-09-01	3721
Adelaide	Beer, full strength	2007-09-01	3869
Perth	Beer, full strength	2007-09-01	3984
Hobart	Beer, full strength	2007-09-01	3861
Darwin	Beer, full strength	2007-09-01	4192
Sydney	Draught beer, low alcohol, public bar	2007-09-01	232
Brisbane	Draught beer, low alcohol, public bar	2007-09-01	241
Adelaide	Draught beer, low alcohol, public bar	2007-09-01	301
Perth	Draught beer, low alcohol, public bar	2007-09-01	324
Hobart	Draught beer, low alcohol, public bar	2007-09-01	282
Darwin	Draught beer, low alcohol, public bar	2007-09-01	266
Sydney	Draught beer, full strength, public bar	2007-09-01	266
Melbourne	Draught beer, full strength, public bar	2007-09-01	326
Brisbane	Draught beer, full strength, public bar	2007-09-01	269
Adelaide	Draught beer, full strength, public bar	2007-09-01	369
Perth	Draught beer, full strength, public bar	2007-09-01	347
Hobart	Draught beer, full strength, public bar	2007-09-01	330
Darwin	Draught beer, full strength, public bar	2007-09-01	312
Sydney	Scotch	2007-09-01	460
Melbourne	Scotch	2007-09-01	542
Brisbane	Scotch	2007-09-01	415
Adelaide	Scotch	2007-09-01	532
Perth	Scotch	2007-09-01	578
Hobart	Scotch	2007-09-01	409
Darwin	Scotch	2007-09-01	472
Sydney	Toilet soap	2007-09-01	787
Melbourne	Toilet soap	2007-09-01	802
Brisbane	Toilet soap	2007-09-01	759
Adelaide	Toilet soap	2007-09-01	765
Perth	Toilet soap	2007-09-01	777
Hobart	Toilet soap	2007-09-01	732
Darwin	Toilet soap	2007-09-01	787
Sydney	Milk	2007-12-01	368
Melbourne	Milk	2007-12-01	352
Brisbane	Milk	2007-12-01	333
Adelaide	Milk	2007-12-01	340
Perth	Milk	2007-12-01	327
Hobart	Milk	2007-12-01	346
Sydney	Cheese	2007-12-01	464
Melbourne	Cheese	2007-12-01	511
Brisbane	Cheese	2007-12-01	462
Adelaide	Cheese	2007-12-01	421
Perth	Cheese	2007-12-01	466
Hobart	Cheese	2007-12-01	471
Darwin	Cheese	2007-12-01	517
Sydney	Butter	2007-12-01	362
Melbourne	Butter	2007-12-01	329
Brisbane	Butter	2007-12-01	251
Perth	Butter	2007-12-01	384
Hobart	Butter	2007-12-01	331
Darwin	Butter	2007-12-01	399
Sydney	Bread white loaf, sliced	2007-12-01	334
Melbourne	Bread white loaf, sliced	2007-12-01	346
Brisbane	Bread white loaf, sliced	2007-12-01	321
Adelaide	Bread white loaf, sliced	2007-12-01	307
Perth	Bread white loaf, sliced	2007-12-01	315
Hobart	Bread white loaf, sliced	2007-12-01	283
Darwin	Bread white loaf, sliced	2007-12-01	374
Sydney	Biscuits, dry	2007-12-01	201
Melbourne	Biscuits, dry	2007-12-01	206
Adelaide	Biscuits, dry	2007-12-01	206
Perth	Biscuits, dry	2007-12-01	189
Hobart	Biscuits, dry	2007-12-01	203
Darwin	Biscuits, dry	2007-12-01	208
Sydney	Breakfast cereal	2007-12-01	374
Melbourne	Breakfast cereal	2007-12-01	358
Brisbane	Breakfast cereal	2007-12-01	344
Adelaide	Breakfast cereal	2007-12-01	358
Perth	Breakfast cereal	2007-12-01	375
Hobart	Breakfast cereal	2007-12-01	418
Darwin	Breakfast cereal	2007-12-01	364
Sydney	Flour, self raising	2007-12-01	311
Melbourne	Flour, self raising	2007-12-01	346
Brisbane	Flour, self raising	2007-12-01	293
Perth	Flour, self raising	2007-12-01	403
Hobart	Flour, self raising	2007-12-01	312
Darwin	Flour, self raising	2007-12-01	412
Sydney	Rice	2007-12-01	183
Melbourne	Rice	2007-12-01	236
Brisbane	Rice	2007-12-01	171
Adelaide	Rice	2007-12-01	185
Perth	Rice	2007-12-01	229
Hobart	Rice	2007-12-01	225
Darwin	Rice	2007-12-01	222
Sydney	Roast beef	2007-12-01	1150
Melbourne	Roast beef	2007-12-01	1018
Brisbane	Roast beef	2007-12-01	1139
Adelaide	Roast beef	2007-12-01	1036
Perth	Roast beef	2007-12-01	1067
Hobart	Roast beef	2007-12-01	1213
Darwin	Roast beef	2007-12-01	1102
Sydney	Rump steak	2007-12-01	1752
Melbourne	Rump steak	2007-12-01	1896
Brisbane	Rump steak	2007-12-01	1941
Adelaide	Rump steak	2007-12-01	2045
Perth	Rump steak	2007-12-01	1836
Darwin	Rump steak	2007-12-01	1823
Sydney	T-bone steak, with fillet	2007-12-01	2066
Melbourne	T-bone steak, with fillet	2007-12-01	1885
Brisbane	T-bone steak, with fillet	2007-12-01	1976
Adelaide	T-bone steak, with fillet	2007-12-01	1915
Perth	T-bone steak, with fillet	2007-12-01	1965
Hobart	T-bone steak, with fillet	2007-12-01	1958
Darwin	T-bone steak, with fillet	2007-12-01	1915
Sydney	Chuck steak	2007-12-01	1006
Melbourne	Chuck steak	2007-12-01	968
Adelaide	Chuck steak	2007-12-01	1006
Perth	Chuck steak	2007-12-01	1059
Hobart	Chuck steak	2007-12-01	976
Darwin	Chuck steak	2007-12-01	1059
Sydney	Lamb leg	2007-12-01	905
Melbourne	Lamb leg	2007-12-01	895
Brisbane	Lamb leg	2007-12-01	905
Adelaide	Lamb leg	2007-12-01	956
Perth	Lamb leg	2007-12-01	978
Hobart	Lamb leg	2007-12-01	937
Darwin	Lamb leg	2007-12-01	969
Sydney	Lamb loin chops	2007-12-01	1705
Brisbane	Lamb loin chops	2007-12-01	1744
Adelaide	Lamb loin chops	2007-12-01	1691
Perth	Lamb loin chops	2007-12-01	1756
Hobart	Lamb loin chops	2007-12-01	1722
Darwin	Lamb loin chops	2007-12-01	1640
Sydney	Lamb forequarter chops	2007-12-01	850
Melbourne	Lamb forequarter chops	2007-12-01	930
Brisbane	Lamb forequarter chops	2007-12-01	867
Adelaide	Lamb forequarter chops	2007-12-01	973
Perth	Lamb forequarter chops	2007-12-01	899
Hobart	Lamb forequarter chops	2007-12-01	821
Darwin	Lamb forequarter chops	2007-12-01	945
Sydney	Pork leg	2007-12-01	652
Melbourne	Pork leg	2007-12-01	709
Brisbane	Pork leg	2007-12-01	678
Adelaide	Pork leg	2007-12-01	680
Perth	Pork leg	2007-12-01	732
Hobart	Pork leg	2007-12-01	818
Sydney	Pork loin chops	2007-12-01	1404
Melbourne	Pork loin chops	2007-12-01	1346
Brisbane	Pork loin chops	2007-12-01	1349
Adelaide	Pork loin chops	2007-12-01	1436
Perth	Pork loin chops	2007-12-01	1494
Hobart	Pork loin chops	2007-12-01	1359
Darwin	Pork loin chops	2007-12-01	1433
Sydney	Chicken, whole fresh	2007-12-01	503
Melbourne	Chicken, whole fresh	2007-12-01	523
Brisbane	Chicken, whole fresh	2007-12-01	541
Perth	Chicken, whole fresh	2007-12-01	561
Hobart	Chicken, whole fresh	2007-12-01	588
Darwin	Chicken, whole fresh	2007-12-01	524
Sydney	Bacon, middle rashers	2007-12-01	415
Melbourne	Bacon, middle rashers	2007-12-01	426
Brisbane	Bacon, middle rashers	2007-12-01	424
Adelaide	Bacon, middle rashers	2007-12-01	413
Perth	Bacon, middle rashers	2007-12-01	512
Hobart	Bacon, middle rashers	2007-12-01	339
Darwin	Bacon, middle rashers	2007-12-01	480
Sydney	Beef Sausages	2007-12-01	561
Melbourne	Beef Sausages	2007-12-01	551
Brisbane	Beef Sausages	2007-12-01	625
Adelaide	Beef Sausages	2007-12-01	604
Perth	Beef Sausages	2007-12-01	626
Hobart	Beef Sausages	2007-12-01	664
Darwin	Beef Sausages	2007-12-01	528
Sydney	Salmon, pink	2007-12-01	250
Melbourne	Salmon, pink	2007-12-01	258
Brisbane	Salmon, pink	2007-12-01	265
Perth	Salmon, pink	2007-12-01	265
Hobart	Salmon, pink	2007-12-01	303
Darwin	Salmon, pink	2007-12-01	295
Sydney	Oranges	2007-12-01	300
Melbourne	Oranges	2007-12-01	301
Brisbane	Oranges	2007-12-01	270
Adelaide	Oranges	2007-12-01	283
Perth	Oranges	2007-12-01	382
Hobart	Oranges	2007-12-01	356
Darwin	Oranges	2007-12-01	356
Sydney	Bananas	2007-12-01	266
Melbourne	Bananas	2007-12-01	288
Brisbane	Bananas	2007-12-01	263
Adelaide	Bananas	2007-12-01	280
Perth	Bananas	2007-12-01	352
Hobart	Bananas	2007-12-01	322
Darwin	Bananas	2007-12-01	497
Sydney	Potatoes	2007-12-01	153
Brisbane	Potatoes	2007-12-01	202
Adelaide	Potatoes	2007-12-01	306
Perth	Potatoes	2007-12-01	250
Hobart	Potatoes	2007-12-01	221
Darwin	Potatoes	2007-12-01	295
Sydney	Tomatoes	2007-12-01	424
Melbourne	Tomatoes	2007-12-01	393
Brisbane	Tomatoes	2007-12-01	373
Adelaide	Tomatoes	2007-12-01	432
Perth	Tomatoes	2007-12-01	505
Hobart	Tomatoes	2007-12-01	481
Darwin	Tomatoes	2007-12-01	584
Sydney	Carrots	2007-12-01	236
Melbourne	Carrots	2007-12-01	229
Adelaide	Carrots	2007-12-01	206
Perth	Carrots	2007-12-01	160
Hobart	Carrots	2007-12-01	232
Darwin	Carrots	2007-12-01	283
Sydney	Onions	2007-12-01	263
Melbourne	Onions	2007-12-01	254
Brisbane	Onions	2007-12-01	267
Adelaide	Onions	2007-12-01	285
Perth	Onions	2007-12-01	233
Hobart	Onions	2007-12-01	198
Darwin	Onions	2007-12-01	351
Sydney	Peaches	2007-12-01	305
Melbourne	Peaches	2007-12-01	325
Brisbane	Peaches	2007-12-01	303
Perth	Peaches	2007-12-01	349
Hobart	Peaches	2007-12-01	297
Darwin	Peaches	2007-12-01	372
Sydney	Pineapple, sliced	2007-12-01	189
Melbourne	Pineapple, sliced	2007-12-01	193
Brisbane	Pineapple, sliced	2007-12-01	193
Adelaide	Pineapple, sliced	2007-12-01	201
Perth	Pineapple, sliced	2007-12-01	202
Hobart	Pineapple, sliced	2007-12-01	199
Darwin	Pineapple, sliced	2007-12-01	208
Sydney	Peas, frozen	2007-12-01	178
Melbourne	Peas, frozen	2007-12-01	194
Adelaide	Peas, frozen	2007-12-01	183
Perth	Peas, frozen	2007-12-01	186
Hobart	Peas, frozen	2007-12-01	186
Darwin	Peas, frozen	2007-12-01	219
Sydney	Chocolate milk	2007-12-01	417
Melbourne	Chocolate milk	2007-12-01	438
Brisbane	Chocolate milk	2007-12-01	410
Adelaide	Chocolate milk	2007-12-01	374
Perth	Chocolate milk	2007-12-01	395
Hobart	Chocolate milk	2007-12-01	412
Darwin	Chocolate milk	2007-12-01	439
Sydney	Eggs	2007-12-01	394
Melbourne	Eggs	2007-12-01	441
Brisbane	Eggs	2007-12-01	427
Adelaide	Eggs	2007-12-01	420
Perth	Eggs	2007-12-01	470
Hobart	Eggs	2007-12-01	410
Darwin	Eggs	2007-12-01	472
Melbourne	Sugar, white	2007-12-01	232
Brisbane	Sugar, white	2007-12-01	215
Adelaide	Sugar, white	2007-12-01	257
Perth	Sugar, white	2007-12-01	277
Hobart	Sugar, white	2007-12-01	344
Darwin	Sugar, white	2007-12-01	254
Sydney	Jam, strawberry	2007-12-01	308
Melbourne	Jam, strawberry	2007-12-01	301
Brisbane	Jam, strawberry	2007-12-01	301
Adelaide	Jam, strawberry	2007-12-01	303
Perth	Jam, strawberry	2007-12-01	301
Darwin	Jam, strawberry	2007-12-01	327
Sydney	Teabags	2007-12-01	383
Melbourne	Teabags	2007-12-01	374
Brisbane	Teabags	2007-12-01	365
Adelaide	Teabags	2007-12-01	337
Perth	Teabags	2007-12-01	359
Hobart	Teabags	2007-12-01	392
Darwin	Teabags	2007-12-01	376
Sydney	Coffee, instant	2007-12-01	732
Melbourne	Coffee, instant	2007-12-01	769
Brisbane	Coffee, instant	2007-12-01	734
Adelaide	Coffee, instant	2007-12-01	731
Perth	Coffee, instant	2007-12-01	743
Hobart	Coffee, instant	2007-12-01	772
Darwin	Coffee, instant	2007-12-01	778
Sydney	Tomato sauce	2007-12-01	186
Brisbane	Tomato sauce	2007-12-01	179
Adelaide	Tomato sauce	2007-12-01	193
Perth	Tomato sauce	2007-12-01	189
Hobart	Tomato sauce	2007-12-01	182
Darwin	Tomato sauce	2007-12-01	197
Sydney	Margarine, poly-unsaturated	2007-12-01	281
Melbourne	Margarine, poly-unsaturated	2007-12-01	270
Brisbane	Margarine, poly-unsaturated	2007-12-01	280
Adelaide	Margarine, poly-unsaturated	2007-12-01	265
Perth	Margarine, poly-unsaturated	2007-12-01	276
Hobart	Margarine, poly-unsaturated	2007-12-01	279
Darwin	Margarine, poly-unsaturated	2007-12-01	287
Sydney	Baked beans, in tomato sauce	2007-12-01	137
Brisbane	Baked beans, in tomato sauce	2007-12-01	125
Adelaide	Baked beans, in tomato sauce	2007-12-01	119
Perth	Baked beans, in tomato sauce	2007-12-01	132
Hobart	Baked beans, in tomato sauce	2007-12-01	130
Darwin	Baked beans, in tomato sauce	2007-12-01	131
Sydney	Baby food	2007-12-01	106
Melbourne	Baby food	2007-12-01	104
Brisbane	Baby food	2007-12-01	106
Adelaide	Baby food	2007-12-01	106
Perth	Baby food	2007-12-01	107
Hobart	Baby food	2007-12-01	102
Darwin	Baby food	2007-12-01	112
Sydney	Laundry detergent	2007-12-01	582
Melbourne	Laundry detergent	2007-12-01	600
Brisbane	Laundry detergent	2007-12-01	584
Adelaide	Laundry detergent	2007-12-01	580
Perth	Laundry detergent	2007-12-01	588
Hobart	Laundry detergent	2007-12-01	576
Darwin	Laundry detergent	2007-12-01	595
Sydney	Dishwashing detergent	2007-12-01	375
Melbourne	Dishwashing detergent	2007-12-01	364
Adelaide	Dishwashing detergent	2007-12-01	351
Perth	Dishwashing detergent	2007-12-01	362
Hobart	Dishwashing detergent	2007-12-01	358
Darwin	Dishwashing detergent	2007-12-01	366
Sydney	Facial tissues	2007-12-01	223
Melbourne	Facial tissues	2007-12-01	223
Brisbane	Facial tissues	2007-12-01	220
Adelaide	Facial tissues	2007-12-01	216
Perth	Facial tissues	2007-12-01	226
Hobart	Facial tissues	2007-12-01	213
Darwin	Facial tissues	2007-12-01	226
Sydney	Toilet tissue	2007-12-01	648
Melbourne	Toilet tissue	2007-12-01	649
Brisbane	Toilet tissue	2007-12-01	634
Adelaide	Toilet tissue	2007-12-01	628
Perth	Toilet tissue	2007-12-01	643
Hobart	Toilet tissue	2007-12-01	613
Darwin	Toilet tissue	2007-12-01	647
Sydney	Pet food	2007-12-01	113
Melbourne	Pet food	2007-12-01	114
Brisbane	Pet food	2007-12-01	111
Adelaide	Pet food	2007-12-01	116
Hobart	Pet food	2007-12-01	122
Darwin	Pet food	2007-12-01	125
Sydney	Petrol, unleaded	2007-12-01	132
Melbourne	Petrol, unleaded	2007-12-01	133
Brisbane	Petrol, unleaded	2007-12-01	124
Adelaide	Petrol, unleaded	2007-12-01	132
Perth	Petrol, unleaded	2007-12-01	130
Hobart	Petrol, unleaded	2007-12-01	134
Darwin	Petrol, unleaded	2007-12-01	141
Sydney	Beer, full strength	2007-12-01	3891
Brisbane	Beer, full strength	2007-12-01	3783
Adelaide	Beer, full strength	2007-12-01	3833
Hobart	Beer, full strength	2007-12-01	3900
Darwin	Beer, full strength	2007-12-01	4225
Sydney	Draught beer, low alcohol, public bar	2007-12-01	228
Brisbane	Draught beer, low alcohol, public bar	2007-12-01	238
Adelaide	Draught beer, low alcohol, public bar	2007-12-01	338
Perth	Draught beer, low alcohol, public bar	2007-12-01	323
Hobart	Draught beer, low alcohol, public bar	2007-12-01	274
Darwin	Draught beer, low alcohol, public bar	2007-12-01	254
Sydney	Draught beer, full strength, public bar	2007-12-01	268
Melbourne	Draught beer, full strength, public bar	2007-12-01	332
Brisbane	Draught beer, full strength, public bar	2007-12-01	271
Adelaide	Draught beer, full strength, public bar	2007-12-01	374
Perth	Draught beer, full strength, public bar	2007-12-01	340
Hobart	Draught beer, full strength, public bar	2007-12-01	331
Darwin	Draught beer, full strength, public bar	2007-12-01	319
Sydney	Scotch	2007-12-01	459
Melbourne	Scotch	2007-12-01	547
Brisbane	Scotch	2007-12-01	423
Adelaide	Scotch	2007-12-01	529
Perth	Scotch	2007-12-01	572
Hobart	Scotch	2007-12-01	416
Darwin	Scotch	2007-12-01	486
Sydney	Toilet soap	2007-12-01	811
Melbourne	Toilet soap	2007-12-01	800
Brisbane	Toilet soap	2007-12-01	811
Adelaide	Toilet soap	2007-12-01	777
Perth	Toilet soap	2007-12-01	820
Hobart	Toilet soap	2007-12-01	838
Darwin	Toilet soap	2007-12-01	859
Sydney	Milk	2008-03-01	372
Melbourne	Milk	2008-03-01	359
Brisbane	Milk	2008-03-01	340
Adelaide	Milk	2008-03-01	355
Perth	Milk	2008-03-01	346
Hobart	Milk	2008-03-01	370
Sydney	Cheese	2008-03-01	489
Melbourne	Cheese	2008-03-01	510
Brisbane	Cheese	2008-03-01	464
Adelaide	Cheese	2008-03-01	429
Perth	Cheese	2008-03-01	497
Hobart	Cheese	2008-03-01	473
Darwin	Cheese	2008-03-01	537
Sydney	Butter	2008-03-01	390
Melbourne	Butter	2008-03-01	340
Brisbane	Butter	2008-03-01	301
Perth	Butter	2008-03-01	408
Hobart	Butter	2008-03-01	354
Darwin	Butter	2008-03-01	405
Sydney	Bread white loaf, sliced	2008-03-01	350
Melbourne	Bread white loaf, sliced	2008-03-01	351
Brisbane	Bread white loaf, sliced	2008-03-01	330
Adelaide	Bread white loaf, sliced	2008-03-01	332
Perth	Bread white loaf, sliced	2008-03-01	328
Hobart	Bread white loaf, sliced	2008-03-01	286
Darwin	Bread white loaf, sliced	2008-03-01	360
Sydney	Biscuits, dry	2008-03-01	218
Melbourne	Biscuits, dry	2008-03-01	222
Adelaide	Biscuits, dry	2008-03-01	223
Perth	Biscuits, dry	2008-03-01	205
Hobart	Biscuits, dry	2008-03-01	225
Darwin	Biscuits, dry	2008-03-01	223
Sydney	Breakfast cereal	2008-03-01	384
Melbourne	Breakfast cereal	2008-03-01	366
Brisbane	Breakfast cereal	2008-03-01	357
Adelaide	Breakfast cereal	2008-03-01	366
Perth	Breakfast cereal	2008-03-01	392
Hobart	Breakfast cereal	2008-03-01	412
Darwin	Breakfast cereal	2008-03-01	385
Sydney	Flour, self raising	2008-03-01	367
Melbourne	Flour, self raising	2008-03-01	373
Brisbane	Flour, self raising	2008-03-01	346
Perth	Flour, self raising	2008-03-01	396
Hobart	Flour, self raising	2008-03-01	412
Darwin	Flour, self raising	2008-03-01	457
Sydney	Rice	2008-03-01	184
Melbourne	Rice	2008-03-01	215
Brisbane	Rice	2008-03-01	170
Adelaide	Rice	2008-03-01	213
Perth	Rice	2008-03-01	232
Hobart	Rice	2008-03-01	223
Darwin	Rice	2008-03-01	227
Sydney	Roast beef	2008-03-01	1080
Melbourne	Roast beef	2008-03-01	983
Brisbane	Roast beef	2008-03-01	1244
Adelaide	Roast beef	2008-03-01	1155
Perth	Roast beef	2008-03-01	1175
Hobart	Roast beef	2008-03-01	1203
Darwin	Roast beef	2008-03-01	1155
Sydney	Rump steak	2008-03-01	1838
Melbourne	Rump steak	2008-03-01	2130
Brisbane	Rump steak	2008-03-01	1956
Adelaide	Rump steak	2008-03-01	1994
Perth	Rump steak	2008-03-01	1978
Darwin	Rump steak	2008-03-01	2075
Sydney	T-bone steak, with fillet	2008-03-01	2026
Melbourne	T-bone steak, with fillet	2008-03-01	1954
Brisbane	T-bone steak, with fillet	2008-03-01	2063
Adelaide	T-bone steak, with fillet	2008-03-01	2082
Perth	T-bone steak, with fillet	2008-03-01	2093
Hobart	T-bone steak, with fillet	2008-03-01	1986
Darwin	T-bone steak, with fillet	2008-03-01	2113
Sydney	Chuck steak	2008-03-01	1021
Melbourne	Chuck steak	2008-03-01	982
Brisbane	Chuck steak	2008-03-01	994
Adelaide	Chuck steak	2008-03-01	1007
Perth	Chuck steak	2008-03-01	1047
Hobart	Chuck steak	2008-03-01	1026
Sydney	Lamb leg	2008-03-01	969
Melbourne	Lamb leg	2008-03-01	844
Brisbane	Lamb leg	2008-03-01	956
Adelaide	Lamb leg	2008-03-01	895
Perth	Lamb leg	2008-03-01	937
Hobart	Lamb leg	2008-03-01	895
Melbourne	Lamb loin chops	2008-03-01	1700
Brisbane	Lamb loin chops	2008-03-01	1809
Adelaide	Lamb loin chops	2008-03-01	1819
Perth	Lamb loin chops	2008-03-01	1827
Hobart	Lamb loin chops	2008-03-01	1771
Darwin	Lamb loin chops	2008-03-01	1852
Sydney	Lamb forequarter chops	2008-03-01	902
Melbourne	Lamb forequarter chops	2008-03-01	942
Brisbane	Lamb forequarter chops	2008-03-01	977
Adelaide	Lamb forequarter chops	2008-03-01	1031
Perth	Lamb forequarter chops	2008-03-01	996
Hobart	Lamb forequarter chops	2008-03-01	917
Sydney	Pork leg	2008-03-01	640
Melbourne	Pork leg	2008-03-01	751
Brisbane	Pork leg	2008-03-01	652
Adelaide	Pork leg	2008-03-01	713
Perth	Pork leg	2008-03-01	735
Hobart	Pork leg	2008-03-01	816
Darwin	Pork leg	2008-03-01	698
Sydney	Pork loin chops	2008-03-01	1506
Melbourne	Pork loin chops	2008-03-01	1328
Brisbane	Pork loin chops	2008-03-01	1421
Adelaide	Pork loin chops	2008-03-01	1482
Perth	Pork loin chops	2008-03-01	1570
Hobart	Pork loin chops	2008-03-01	1453
Darwin	Pork loin chops	2008-03-01	1510
Sydney	Chicken, whole fresh	2008-03-01	538
Melbourne	Chicken, whole fresh	2008-03-01	559
Brisbane	Chicken, whole fresh	2008-03-01	556
Adelaide	Chicken, whole fresh	2008-03-01	570
Perth	Chicken, whole fresh	2008-03-01	575
Hobart	Chicken, whole fresh	2008-03-01	607
Sydney	Bacon, middle rashers	2008-03-01	397
Melbourne	Bacon, middle rashers	2008-03-01	426
Brisbane	Bacon, middle rashers	2008-03-01	401
Adelaide	Bacon, middle rashers	2008-03-01	421
Perth	Bacon, middle rashers	2008-03-01	544
Hobart	Bacon, middle rashers	2008-03-01	376
Darwin	Bacon, middle rashers	2008-03-01	446
Sydney	Beef Sausages	2008-03-01	573
Melbourne	Beef Sausages	2008-03-01	544
Brisbane	Beef Sausages	2008-03-01	645
Adelaide	Beef Sausages	2008-03-01	636
Perth	Beef Sausages	2008-03-01	650
Hobart	Beef Sausages	2008-03-01	613
Darwin	Beef Sausages	2008-03-01	572
Sydney	Salmon, pink	2008-03-01	250
Melbourne	Salmon, pink	2008-03-01	246
Adelaide	Salmon, pink	2008-03-01	264
Perth	Salmon, pink	2008-03-01	271
Hobart	Salmon, pink	2008-03-01	287
Darwin	Salmon, pink	2008-03-01	278
Sydney	Oranges	2008-03-01	347
Melbourne	Oranges	2008-03-01	298
Brisbane	Oranges	2008-03-01	255
Adelaide	Oranges	2008-03-01	356
Perth	Oranges	2008-03-01	415
Hobart	Oranges	2008-03-01	311
Darwin	Oranges	2008-03-01	385
Sydney	Bananas	2008-03-01	263
Melbourne	Bananas	2008-03-01	269
Brisbane	Bananas	2008-03-01	235
Adelaide	Bananas	2008-03-01	269
Perth	Bananas	2008-03-01	321
Hobart	Bananas	2008-03-01	312
Darwin	Bananas	2008-03-01	429
Melbourne	Potatoes	2008-03-01	273
Brisbane	Potatoes	2008-03-01	229
Adelaide	Potatoes	2008-03-01	277
Perth	Potatoes	2008-03-01	252
Hobart	Potatoes	2008-03-01	219
Darwin	Potatoes	2008-03-01	315
Sydney	Tomatoes	2008-03-01	436
Melbourne	Tomatoes	2008-03-01	365
Brisbane	Tomatoes	2008-03-01	407
Adelaide	Tomatoes	2008-03-01	402
Perth	Tomatoes	2008-03-01	436
Hobart	Tomatoes	2008-03-01	459
Darwin	Tomatoes	2008-03-01	542
Sydney	Carrots	2008-03-01	217
Brisbane	Carrots	2008-03-01	192
Adelaide	Carrots	2008-03-01	192
Perth	Carrots	2008-03-01	160
Hobart	Carrots	2008-03-01	194
Darwin	Carrots	2008-03-01	256
Sydney	Onions	2008-03-01	269
Melbourne	Onions	2008-03-01	280
Brisbane	Onions	2008-03-01	261
Adelaide	Onions	2008-03-01	274
Perth	Onions	2008-03-01	224
Hobart	Onions	2008-03-01	227
Darwin	Onions	2008-03-01	368
Sydney	Peaches	2008-03-01	335
Melbourne	Peaches	2008-03-01	315
Adelaide	Peaches	2008-03-01	338
Perth	Peaches	2008-03-01	359
Hobart	Peaches	2008-03-01	339
Darwin	Peaches	2008-03-01	355
Sydney	Pineapple, sliced	2008-03-01	201
Melbourne	Pineapple, sliced	2008-03-01	192
Brisbane	Pineapple, sliced	2008-03-01	194
Adelaide	Pineapple, sliced	2008-03-01	210
Perth	Pineapple, sliced	2008-03-01	191
Hobart	Pineapple, sliced	2008-03-01	198
Darwin	Pineapple, sliced	2008-03-01	214
Sydney	Peas, frozen	2008-03-01	175
Brisbane	Peas, frozen	2008-03-01	175
Adelaide	Peas, frozen	2008-03-01	175
Perth	Peas, frozen	2008-03-01	185
Hobart	Peas, frozen	2008-03-01	190
Darwin	Peas, frozen	2008-03-01	218
Sydney	Chocolate milk	2008-03-01	393
Melbourne	Chocolate milk	2008-03-01	401
Brisbane	Chocolate milk	2008-03-01	390
Adelaide	Chocolate milk	2008-03-01	388
Perth	Chocolate milk	2008-03-01	368
Hobart	Chocolate milk	2008-03-01	423
Sydney	Eggs	2008-03-01	421
Melbourne	Eggs	2008-03-01	462
Brisbane	Eggs	2008-03-01	449
Adelaide	Eggs	2008-03-01	446
Perth	Eggs	2008-03-01	477
Hobart	Eggs	2008-03-01	439
Darwin	Eggs	2008-03-01	462
Sydney	Sugar, white	2008-03-01	228
Melbourne	Sugar, white	2008-03-01	233
Adelaide	Sugar, white	2008-03-01	255
Perth	Sugar, white	2008-03-01	278
Hobart	Sugar, white	2008-03-01	341
Darwin	Sugar, white	2008-03-01	259
Sydney	Jam, strawberry	2008-03-01	303
Melbourne	Jam, strawberry	2008-03-01	314
Brisbane	Jam, strawberry	2008-03-01	296
Adelaide	Jam, strawberry	2008-03-01	314
Perth	Jam, strawberry	2008-03-01	322
Hobart	Jam, strawberry	2008-03-01	324
Darwin	Jam, strawberry	2008-03-01	329
Sydney	Teabags	2008-03-01	416
Melbourne	Teabags	2008-03-01	397
Brisbane	Teabags	2008-03-01	385
Adelaide	Teabags	2008-03-01	369
Perth	Teabags	2008-03-01	395
Hobart	Teabags	2008-03-01	449
Darwin	Teabags	2008-03-01	393
Melbourne	Coffee, instant	2008-03-01	736
Brisbane	Coffee, instant	2008-03-01	721
Adelaide	Coffee, instant	2008-03-01	779
Perth	Coffee, instant	2008-03-01	759
Hobart	Coffee, instant	2008-03-01	772
Darwin	Coffee, instant	2008-03-01	847
Sydney	Tomato sauce	2008-03-01	192
Melbourne	Tomato sauce	2008-03-01	185
Brisbane	Tomato sauce	2008-03-01	187
Adelaide	Tomato sauce	2008-03-01	187
Perth	Tomato sauce	2008-03-01	183
Hobart	Tomato sauce	2008-03-01	191
Darwin	Tomato sauce	2008-03-01	210
Melbourne	Margarine, poly-unsaturated	2008-03-01	283
Brisbane	Margarine, poly-unsaturated	2008-03-01	282
Adelaide	Margarine, poly-unsaturated	2008-03-01	276
Perth	Margarine, poly-unsaturated	2008-03-01	282
Hobart	Margarine, poly-unsaturated	2008-03-01	283
Darwin	Margarine, poly-unsaturated	2008-03-01	298
Sydney	Baked beans, in tomato sauce	2008-03-01	134
Melbourne	Baked beans, in tomato sauce	2008-03-01	136
Brisbane	Baked beans, in tomato sauce	2008-03-01	122
Adelaide	Baked beans, in tomato sauce	2008-03-01	127
Perth	Baked beans, in tomato sauce	2008-03-01	137
Hobart	Baked beans, in tomato sauce	2008-03-01	130
Darwin	Baked beans, in tomato sauce	2008-03-01	143
Sydney	Baby food	2008-03-01	112
Melbourne	Baby food	2008-03-01	114
Brisbane	Baby food	2008-03-01	108
Adelaide	Baby food	2008-03-01	115
Perth	Baby food	2008-03-01	114
Hobart	Baby food	2008-03-01	112
Darwin	Baby food	2008-03-01	112
Melbourne	Laundry detergent	2008-03-01	574
Brisbane	Laundry detergent	2008-03-01	601
Adelaide	Laundry detergent	2008-03-01	568
Perth	Laundry detergent	2008-03-01	557
Hobart	Laundry detergent	2008-03-01	559
Darwin	Laundry detergent	2008-03-01	618
Sydney	Dishwashing detergent	2008-03-01	384
Melbourne	Dishwashing detergent	2008-03-01	373
Brisbane	Dishwashing detergent	2008-03-01	389
Adelaide	Dishwashing detergent	2008-03-01	388
Perth	Dishwashing detergent	2008-03-01	350
Hobart	Dishwashing detergent	2008-03-01	365
Darwin	Dishwashing detergent	2008-03-01	380
Sydney	Facial tissues	2008-03-01	219
Melbourne	Facial tissues	2008-03-01	223
Adelaide	Facial tissues	2008-03-01	225
Perth	Facial tissues	2008-03-01	222
Hobart	Facial tissues	2008-03-01	216
Darwin	Facial tissues	2008-03-01	229
Sydney	Toilet tissue	2008-03-01	656
Melbourne	Toilet tissue	2008-03-01	645
Brisbane	Toilet tissue	2008-03-01	623
Adelaide	Toilet tissue	2008-03-01	630
Perth	Toilet tissue	2008-03-01	635
Hobart	Toilet tissue	2008-03-01	618
Darwin	Toilet tissue	2008-03-01	632
Sydney	Pet food	2008-03-01	117
Melbourne	Pet food	2008-03-01	114
Brisbane	Pet food	2008-03-01	116
Adelaide	Pet food	2008-03-01	113
Perth	Pet food	2008-03-01	113
Hobart	Pet food	2008-03-01	122
Darwin	Pet food	2008-03-01	125
Melbourne	Petrol, unleaded	2008-03-01	139
Brisbane	Petrol, unleaded	2008-03-01	131
Adelaide	Petrol, unleaded	2008-03-01	136
Perth	Petrol, unleaded	2008-03-01	138
Hobart	Petrol, unleaded	2008-03-01	144
Darwin	Petrol, unleaded	2008-03-01	148
Sydney	Beer, full strength	2008-03-01	3897
Melbourne	Beer, full strength	2008-03-01	3960
Brisbane	Beer, full strength	2008-03-01	3739
Adelaide	Beer, full strength	2008-03-01	3874
Perth	Beer, full strength	2008-03-01	4130
Hobart	Beer, full strength	2008-03-01	3987
Darwin	Beer, full strength	2008-03-01	4156
Melbourne	Draught beer, low alcohol, public bar	2008-03-01	300
Brisbane	Draught beer, low alcohol, public bar	2008-03-01	245
Adelaide	Draught beer, low alcohol, public bar	2008-03-01	352
Perth	Draught beer, low alcohol, public bar	2008-03-01	327
Hobart	Draught beer, low alcohol, public bar	2008-03-01	277
Sydney	Draught beer, full strength, public bar	2008-03-01	273
Melbourne	Draught beer, full strength, public bar	2008-03-01	337
Brisbane	Draught beer, full strength, public bar	2008-03-01	276
Adelaide	Draught beer, full strength, public bar	2008-03-01	381
Perth	Draught beer, full strength, public bar	2008-03-01	352
Darwin	Draught beer, full strength, public bar	2008-03-01	323
Sydney	Scotch	2008-03-01	463
Melbourne	Scotch	2008-03-01	549
Brisbane	Scotch	2008-03-01	428
Adelaide	Scotch	2008-03-01	558
Perth	Scotch	2008-03-01	567
Hobart	Scotch	2008-03-01	416
Darwin	Scotch	2008-03-01	491
Sydney	Toilet soap	2008-03-01	806
Melbourne	Toilet soap	2008-03-01	809
Brisbane	Toilet soap	2008-03-01	823
Adelaide	Toilet soap	2008-03-01	816
Perth	Toilet soap	2008-03-01	808
Hobart	Toilet soap	2008-03-01	808
Darwin	Toilet soap	2008-03-01	821
Sydney	Milk	2008-06-01	366
Melbourne	Milk	2008-06-01	360
Brisbane	Milk	2008-06-01	322
Adelaide	Milk	2008-06-01	363
Perth	Milk	2008-06-01	357
Hobart	Milk	2008-06-01	384
Darwin	Milk	2008-06-01	401
Sydney	Cheese	2008-06-01	495
Melbourne	Cheese	2008-06-01	513
Brisbane	Cheese	2008-06-01	466
Adelaide	Cheese	2008-06-01	509
Perth	Cheese	2008-06-01	526
Hobart	Cheese	2008-06-01	486
Darwin	Cheese	2008-06-01	555
Sydney	Butter	2008-06-01	392
Brisbane	Butter	2008-06-01	334
Adelaide	Butter	2008-06-01	337
Perth	Butter	2008-06-01	467
Hobart	Butter	2008-06-01	383
Darwin	Butter	2008-06-01	425
Sydney	Bread white loaf, sliced	2008-06-01	339
Melbourne	Bread white loaf, sliced	2008-06-01	348
Brisbane	Bread white loaf, sliced	2008-06-01	320
Adelaide	Bread white loaf, sliced	2008-06-01	328
Perth	Bread white loaf, sliced	2008-06-01	325
Darwin	Bread white loaf, sliced	2008-06-01	388
Sydney	Biscuits, dry	2008-06-01	228
Melbourne	Biscuits, dry	2008-06-01	226
Brisbane	Biscuits, dry	2008-06-01	229
Adelaide	Biscuits, dry	2008-06-01	229
Perth	Biscuits, dry	2008-06-01	228
Hobart	Biscuits, dry	2008-06-01	229
Darwin	Biscuits, dry	2008-06-01	234
Sydney	Breakfast cereal	2008-06-01	395
Melbourne	Breakfast cereal	2008-06-01	376
Brisbane	Breakfast cereal	2008-06-01	367
Adelaide	Breakfast cereal	2008-06-01	376
Perth	Breakfast cereal	2008-06-01	395
Hobart	Breakfast cereal	2008-06-01	439
Darwin	Breakfast cereal	2008-06-01	387
Sydney	Flour, self raising	2008-06-01	329
Melbourne	Flour, self raising	2008-06-01	341
Brisbane	Flour, self raising	2008-06-01	348
Perth	Flour, self raising	2008-06-01	380
Hobart	Flour, self raising	2008-06-01	382
Darwin	Flour, self raising	2008-06-01	402
Sydney	Rice	2008-06-01	193
Melbourne	Rice	2008-06-01	223
Brisbane	Rice	2008-06-01	204
Adelaide	Rice	2008-06-01	215
Perth	Rice	2008-06-01	264
Hobart	Rice	2008-06-01	239
Darwin	Rice	2008-06-01	225
Sydney	Roast beef	2008-06-01	1119
Melbourne	Roast beef	2008-06-01	1062
Brisbane	Roast beef	2008-06-01	1168
Adelaide	Roast beef	2008-06-01	1165
Perth	Roast beef	2008-06-01	1171
Hobart	Roast beef	2008-06-01	1091
Darwin	Roast beef	2008-06-01	1159
Sydney	Rump steak	2008-06-01	1840
Melbourne	Rump steak	2008-06-01	1989
Brisbane	Rump steak	2008-06-01	2061
Adelaide	Rump steak	2008-06-01	1935
Perth	Rump steak	2008-06-01	1991
Darwin	Rump steak	2008-06-01	1992
Sydney	T-bone steak, with fillet	2008-06-01	2029
Melbourne	T-bone steak, with fillet	2008-06-01	2028
Brisbane	T-bone steak, with fillet	2008-06-01	2043
Adelaide	T-bone steak, with fillet	2008-06-01	2107
Perth	T-bone steak, with fillet	2008-06-01	2038
Hobart	T-bone steak, with fillet	2008-06-01	1953
Darwin	T-bone steak, with fillet	2008-06-01	2106
Sydney	Chuck steak	2008-06-01	974
Melbourne	Chuck steak	2008-06-01	983
Brisbane	Chuck steak	2008-06-01	1014
Adelaide	Chuck steak	2008-06-01	996
Perth	Chuck steak	2008-06-01	1056
Hobart	Chuck steak	2008-06-01	1022
Sydney	Lamb leg	2008-06-01	986
Melbourne	Lamb leg	2008-06-01	905
Brisbane	Lamb leg	2008-06-01	984
Adelaide	Lamb leg	2008-06-01	871
Perth	Lamb leg	2008-06-01	975
Hobart	Lamb leg	2008-06-01	927
Darwin	Lamb leg	2008-06-01	877
Sydney	Lamb loin chops	2008-06-01	1718
Melbourne	Lamb loin chops	2008-06-01	1811
Brisbane	Lamb loin chops	2008-06-01	1743
Adelaide	Lamb loin chops	2008-06-01	1824
Perth	Lamb loin chops	2008-06-01	1853
Darwin	Lamb loin chops	2008-06-01	1811
Sydney	Lamb forequarter chops	2008-06-01	941
Melbourne	Lamb forequarter chops	2008-06-01	924
Brisbane	Lamb forequarter chops	2008-06-01	902
Perth	Lamb forequarter chops	2008-06-01	968
Hobart	Lamb forequarter chops	2008-06-01	970
Darwin	Lamb forequarter chops	2008-06-01	1006
Sydney	Pork leg	2008-06-01	632
Melbourne	Pork leg	2008-06-01	795
Brisbane	Pork leg	2008-06-01	729
Adelaide	Pork leg	2008-06-01	712
Perth	Pork leg	2008-06-01	745
Hobart	Pork leg	2008-06-01	860
Darwin	Pork leg	2008-06-01	724
Sydney	Pork loin chops	2008-06-01	1492
Melbourne	Pork loin chops	2008-06-01	1406
Brisbane	Pork loin chops	2008-06-01	1502
Perth	Pork loin chops	2008-06-01	1573
Hobart	Pork loin chops	2008-06-01	1483
Darwin	Pork loin chops	2008-06-01	1527
Sydney	Chicken, whole fresh	2008-06-01	530
Melbourne	Chicken, whole fresh	2008-06-01	544
Brisbane	Chicken, whole fresh	2008-06-01	534
Adelaide	Chicken, whole fresh	2008-06-01	585
Perth	Chicken, whole fresh	2008-06-01	605
Hobart	Chicken, whole fresh	2008-06-01	590
Darwin	Chicken, whole fresh	2008-06-01	542
Sydney	Bacon, middle rashers	2008-06-01	400
Melbourne	Bacon, middle rashers	2008-06-01	426
Brisbane	Bacon, middle rashers	2008-06-01	410
Adelaide	Bacon, middle rashers	2008-06-01	416
Perth	Bacon, middle rashers	2008-06-01	536
Darwin	Bacon, middle rashers	2008-06-01	449
Sydney	Beef Sausages	2008-06-01	569
Melbourne	Beef Sausages	2008-06-01	575
Brisbane	Beef Sausages	2008-06-01	650
Adelaide	Beef Sausages	2008-06-01	629
Perth	Beef Sausages	2008-06-01	681
Hobart	Beef Sausages	2008-06-01	666
Darwin	Beef Sausages	2008-06-01	579
Sydney	Salmon, pink	2008-06-01	261
Melbourne	Salmon, pink	2008-06-01	256
Brisbane	Salmon, pink	2008-06-01	260
Adelaide	Salmon, pink	2008-06-01	260
Perth	Salmon, pink	2008-06-01	281
Hobart	Salmon, pink	2008-06-01	323
Darwin	Salmon, pink	2008-06-01	291
Sydney	Oranges	2008-06-01	304
Melbourne	Oranges	2008-06-01	298
Brisbane	Oranges	2008-06-01	246
Adelaide	Oranges	2008-06-01	312
Perth	Oranges	2008-06-01	337
Hobart	Oranges	2008-06-01	295
Sydney	Bananas	2008-06-01	216
Melbourne	Bananas	2008-06-01	232
Brisbane	Bananas	2008-06-01	206
Adelaide	Bananas	2008-06-01	213
Perth	Bananas	2008-06-01	306
Hobart	Bananas	2008-06-01	223
Darwin	Bananas	2008-06-01	436
Sydney	Potatoes	2008-06-01	156
Melbourne	Potatoes	2008-06-01	269
Brisbane	Potatoes	2008-06-01	222
Adelaide	Potatoes	2008-06-01	250
Perth	Potatoes	2008-06-01	262
Hobart	Potatoes	2008-06-01	202
Darwin	Potatoes	2008-06-01	293
Melbourne	Tomatoes	2008-06-01	372
Brisbane	Tomatoes	2008-06-01	359
Adelaide	Tomatoes	2008-06-01	404
Perth	Tomatoes	2008-06-01	420
Hobart	Tomatoes	2008-06-01	407
Darwin	Tomatoes	2008-06-01	543
Sydney	Carrots	2008-06-01	239
Melbourne	Carrots	2008-06-01	220
Brisbane	Carrots	2008-06-01	239
Adelaide	Carrots	2008-06-01	208
Perth	Carrots	2008-06-01	159
Hobart	Carrots	2008-06-01	178
Darwin	Carrots	2008-06-01	272
Sydney	Onions	2008-06-01	248
Brisbane	Onions	2008-06-01	241
Adelaide	Onions	2008-06-01	251
Perth	Onions	2008-06-01	212
Hobart	Onions	2008-06-01	206
Darwin	Onions	2008-06-01	322
Sydney	Peaches	2008-06-01	338
Melbourne	Peaches	2008-06-01	345
Brisbane	Peaches	2008-06-01	344
Adelaide	Peaches	2008-06-01	334
Perth	Peaches	2008-06-01	360
Hobart	Peaches	2008-06-01	339
Darwin	Peaches	2008-06-01	376
Melbourne	Pineapple, sliced	2008-06-01	205
Brisbane	Pineapple, sliced	2008-06-01	193
Adelaide	Pineapple, sliced	2008-06-01	211
Perth	Pineapple, sliced	2008-06-01	204
Hobart	Pineapple, sliced	2008-06-01	198
Darwin	Pineapple, sliced	2008-06-01	217
Sydney	Peas, frozen	2008-06-01	185
Melbourne	Peas, frozen	2008-06-01	187
Brisbane	Peas, frozen	2008-06-01	181
Adelaide	Peas, frozen	2008-06-01	199
Perth	Peas, frozen	2008-06-01	191
Hobart	Peas, frozen	2008-06-01	192
Darwin	Peas, frozen	2008-06-01	225
Sydney	Chocolate milk	2008-06-01	410
Melbourne	Chocolate milk	2008-06-01	391
Brisbane	Chocolate milk	2008-06-01	409
Perth	Chocolate milk	2008-06-01	399
Hobart	Chocolate milk	2008-06-01	401
Darwin	Chocolate milk	2008-06-01	393
Sydney	Eggs	2008-06-01	400
Melbourne	Eggs	2008-06-01	440
Brisbane	Eggs	2008-06-01	440
Adelaide	Eggs	2008-06-01	446
Perth	Eggs	2008-06-01	476
Hobart	Eggs	2008-06-01	431
Darwin	Eggs	2008-06-01	466
Sydney	Sugar, white	2008-06-01	232
Melbourne	Sugar, white	2008-06-01	236
Brisbane	Sugar, white	2008-06-01	219
Adelaide	Sugar, white	2008-06-01	261
Hobart	Sugar, white	2008-06-01	358
Darwin	Sugar, white	2008-06-01	259
Sydney	Jam, strawberry	2008-06-01	328
Brisbane	Jam, strawberry	2008-06-01	327
Adelaide	Jam, strawberry	2008-06-01	298
Perth	Jam, strawberry	2008-06-01	340
Hobart	Jam, strawberry	2008-06-01	337
Darwin	Jam, strawberry	2008-06-01	352
Sydney	Teabags	2008-06-01	379
Melbourne	Teabags	2008-06-01	395
Brisbane	Teabags	2008-06-01	384
Adelaide	Teabags	2008-06-01	369
Perth	Teabags	2008-06-01	399
Hobart	Teabags	2008-06-01	428
Darwin	Teabags	2008-06-01	388
Sydney	Coffee, instant	2008-06-01	761
Melbourne	Coffee, instant	2008-06-01	759
Brisbane	Coffee, instant	2008-06-01	714
Adelaide	Coffee, instant	2008-06-01	782
Hobart	Coffee, instant	2008-06-01	761
Darwin	Coffee, instant	2008-06-01	776
Sydney	Tomato sauce	2008-06-01	200
Melbourne	Tomato sauce	2008-06-01	192
Brisbane	Tomato sauce	2008-06-01	181
Adelaide	Tomato sauce	2008-06-01	193
Perth	Tomato sauce	2008-06-01	191
Hobart	Tomato sauce	2008-06-01	188
Darwin	Tomato sauce	2008-06-01	208
Sydney	Margarine, poly-unsaturated	2008-06-01	303
Melbourne	Margarine, poly-unsaturated	2008-06-01	306
Brisbane	Margarine, poly-unsaturated	2008-06-01	300
Perth	Margarine, poly-unsaturated	2008-06-01	304
Hobart	Margarine, poly-unsaturated	2008-06-01	303
Darwin	Margarine, poly-unsaturated	2008-06-01	314
Sydney	Baked beans, in tomato sauce	2008-06-01	150
Melbourne	Baked beans, in tomato sauce	2008-06-01	149
Brisbane	Baked beans, in tomato sauce	2008-06-01	148
Adelaide	Baked beans, in tomato sauce	2008-06-01	145
Perth	Baked beans, in tomato sauce	2008-06-01	145
Hobart	Baked beans, in tomato sauce	2008-06-01	144
Darwin	Baked beans, in tomato sauce	2008-06-01	152
Sydney	Baby food	2008-06-01	104
Melbourne	Baby food	2008-06-01	106
Brisbane	Baby food	2008-06-01	103
Adelaide	Baby food	2008-06-01	101
Perth	Baby food	2008-06-01	109
Hobart	Baby food	2008-06-01	100
Darwin	Baby food	2008-06-01	112
Sydney	Laundry detergent	2008-06-01	569
Melbourne	Laundry detergent	2008-06-01	572
Brisbane	Laundry detergent	2008-06-01	569
Adelaide	Laundry detergent	2008-06-01	566
Perth	Laundry detergent	2008-06-01	564
Hobart	Laundry detergent	2008-06-01	556
Darwin	Laundry detergent	2008-06-01	575
Melbourne	Dishwashing detergent	2008-06-01	346
Brisbane	Dishwashing detergent	2008-06-01	326
Adelaide	Dishwashing detergent	2008-06-01	320
Perth	Dishwashing detergent	2008-06-01	360
Hobart	Dishwashing detergent	2008-06-01	334
Darwin	Dishwashing detergent	2008-06-01	332
Sydney	Facial tissues	2008-06-01	218
Melbourne	Facial tissues	2008-06-01	224
Brisbane	Facial tissues	2008-06-01	221
Adelaide	Facial tissues	2008-06-01	222
Perth	Facial tissues	2008-06-01	213
Hobart	Facial tissues	2008-06-01	214
Darwin	Facial tissues	2008-06-01	217
Sydney	Toilet tissue	2008-06-01	657
Melbourne	Toilet tissue	2008-06-01	670
Brisbane	Toilet tissue	2008-06-01	677
Adelaide	Toilet tissue	2008-06-01	683
Perth	Toilet tissue	2008-06-01	627
Darwin	Toilet tissue	2008-06-01	706
Sydney	Pet food	2008-06-01	110
Melbourne	Pet food	2008-06-01	110
Brisbane	Pet food	2008-06-01	109
Adelaide	Pet food	2008-06-01	109
Perth	Pet food	2008-06-01	108
Hobart	Pet food	2008-06-01	122
Darwin	Pet food	2008-06-01	117
Sydney	Petrol, unleaded	2008-06-01	152
Melbourne	Petrol, unleaded	2008-06-01	150
Brisbane	Petrol, unleaded	2008-06-01	143
Adelaide	Petrol, unleaded	2008-06-01	151
Perth	Petrol, unleaded	2008-06-01	149
Hobart	Petrol, unleaded	2008-06-01	156
Darwin	Petrol, unleaded	2008-06-01	160
Sydney	Beer, full strength	2008-06-01	3852
Brisbane	Beer, full strength	2008-06-01	3840
Adelaide	Beer, full strength	2008-06-01	3932
Perth	Beer, full strength	2008-06-01	4100
Hobart	Beer, full strength	2008-06-01	4149
Darwin	Beer, full strength	2008-06-01	4254
Sydney	Draught beer, low alcohol, public bar	2008-06-01	253
Melbourne	Draught beer, low alcohol, public bar	2008-06-01	306
Brisbane	Draught beer, low alcohol, public bar	2008-06-01	252
Adelaide	Draught beer, low alcohol, public bar	2008-06-01	355
Perth	Draught beer, low alcohol, public bar	2008-06-01	339
Hobart	Draught beer, low alcohol, public bar	2008-06-01	285
Darwin	Draught beer, low alcohol, public bar	2008-06-01	258
Melbourne	Draught beer, full strength, public bar	2008-06-01	377
Brisbane	Draught beer, full strength, public bar	2008-06-01	282
Adelaide	Draught beer, full strength, public bar	2008-06-01	383
Perth	Draught beer, full strength, public bar	2008-06-01	344
Hobart	Draught beer, full strength, public bar	2008-06-01	344
Darwin	Draught beer, full strength, public bar	2008-06-01	326
Melbourne	Scotch	2008-06-01	555
Brisbane	Scotch	2008-06-01	442
Adelaide	Scotch	2008-06-01	567
Perth	Scotch	2008-06-01	582
Hobart	Scotch	2008-06-01	419
Darwin	Scotch	2008-06-01	496
Sydney	Toilet soap	2008-06-01	814
Brisbane	Toilet soap	2008-06-01	820
Adelaide	Toilet soap	2008-06-01	788
Perth	Toilet soap	2008-06-01	790
Hobart	Toilet soap	2008-06-01	773
Darwin	Toilet soap	2008-06-01	711
Sydney	Milk	2008-09-01	357
Melbourne	Milk	2008-09-01	367
Brisbane	Milk	2008-09-01	331
Adelaide	Milk	2008-09-01	370
Perth	Milk	2008-09-01	349
Hobart	Milk	2008-09-01	391
Darwin	Milk	2008-09-01	411
Sydney	Cheese	2008-09-01	521
Melbourne	Cheese	2008-09-01	546
Brisbane	Cheese	2008-09-01	509
Adelaide	Cheese	2008-09-01	535
Perth	Cheese	2008-09-01	558
Darwin	Cheese	2008-09-01	589
Sydney	Butter	2008-09-01	386
Melbourne	Butter	2008-09-01	369
Brisbane	Butter	2008-09-01	328
Adelaide	Butter	2008-09-01	353
Perth	Butter	2008-09-01	448
Hobart	Butter	2008-09-01	378
Darwin	Butter	2008-09-01	432
Sydney	Bread white loaf, sliced	2008-09-01	367
Melbourne	Bread white loaf, sliced	2008-09-01	373
Adelaide	Bread white loaf, sliced	2008-09-01	352
Perth	Bread white loaf, sliced	2008-09-01	335
Hobart	Bread white loaf, sliced	2008-09-01	298
Darwin	Bread white loaf, sliced	2008-09-01	368
Sydney	Biscuits, dry	2008-09-01	230
Melbourne	Biscuits, dry	2008-09-01	229
Brisbane	Biscuits, dry	2008-09-01	207
Adelaide	Biscuits, dry	2008-09-01	229
Perth	Biscuits, dry	2008-09-01	229
Hobart	Biscuits, dry	2008-09-01	229
Darwin	Biscuits, dry	2008-09-01	238
Sydney	Breakfast cereal	2008-09-01	385
Melbourne	Breakfast cereal	2008-09-01	376
Brisbane	Breakfast cereal	2008-09-01	367
Adelaide	Breakfast cereal	2008-09-01	376
Perth	Breakfast cereal	2008-09-01	395
Hobart	Breakfast cereal	2008-09-01	439
Darwin	Breakfast cereal	2008-09-01	384
Sydney	Flour, self raising	2008-09-01	324
Brisbane	Flour, self raising	2008-09-01	343
Adelaide	Flour, self raising	2008-09-01	381
Perth	Flour, self raising	2008-09-01	390
Hobart	Flour, self raising	2008-09-01	387
Darwin	Flour, self raising	2008-09-01	404
Sydney	Rice	2008-09-01	229
Melbourne	Rice	2008-09-01	255
Brisbane	Rice	2008-09-01	246
Adelaide	Rice	2008-09-01	245
Perth	Rice	2008-09-01	271
Hobart	Rice	2008-09-01	279
Darwin	Rice	2008-09-01	278
Sydney	Roast beef	2008-09-01	1078
Melbourne	Roast beef	2008-09-01	1085
Brisbane	Roast beef	2008-09-01	1272
Adelaide	Roast beef	2008-09-01	1202
Perth	Roast beef	2008-09-01	1148
Hobart	Roast beef	2008-09-01	1142
Darwin	Roast beef	2008-09-01	1213
Sydney	Rump steak	2008-09-01	1814
Brisbane	Rump steak	2008-09-01	1869
Adelaide	Rump steak	2008-09-01	1849
Perth	Rump steak	2008-09-01	1878
Hobart	Rump steak	2008-09-01	1961
Darwin	Rump steak	2008-09-01	1897
Sydney	T-bone steak, with fillet	2008-09-01	1863
Melbourne	T-bone steak, with fillet	2008-09-01	1993
Brisbane	T-bone steak, with fillet	2008-09-01	2059
Adelaide	T-bone steak, with fillet	2008-09-01	2110
Perth	T-bone steak, with fillet	2008-09-01	2019
Hobart	T-bone steak, with fillet	2008-09-01	1899
Darwin	T-bone steak, with fillet	2008-09-01	1984
Sydney	Chuck steak	2008-09-01	1029
Melbourne	Chuck steak	2008-09-01	981
Brisbane	Chuck steak	2008-09-01	1017
Perth	Chuck steak	2008-09-01	1083
Hobart	Chuck steak	2008-09-01	1015
Darwin	Chuck steak	2008-09-01	1039
Sydney	Lamb leg	2008-09-01	985
Melbourne	Lamb leg	2008-09-01	915
Brisbane	Lamb leg	2008-09-01	945
Adelaide	Lamb leg	2008-09-01	965
Perth	Lamb leg	2008-09-01	941
Hobart	Lamb leg	2008-09-01	904
Darwin	Lamb leg	2008-09-01	939
Sydney	Lamb loin chops	2008-09-01	1759
Melbourne	Lamb loin chops	2008-09-01	1793
Brisbane	Lamb loin chops	2008-09-01	1794
Adelaide	Lamb loin chops	2008-09-01	1795
Perth	Lamb loin chops	2008-09-01	1880
Hobart	Lamb loin chops	2008-09-01	1814
Sydney	Lamb forequarter chops	2008-09-01	896
Melbourne	Lamb forequarter chops	2008-09-01	957
Brisbane	Lamb forequarter chops	2008-09-01	945
Adelaide	Lamb forequarter chops	2008-09-01	992
Perth	Lamb forequarter chops	2008-09-01	991
Hobart	Lamb forequarter chops	2008-09-01	988
Darwin	Lamb forequarter chops	2008-09-01	1074
Sydney	Pork leg	2008-09-01	677
Melbourne	Pork leg	2008-09-01	777
Brisbane	Pork leg	2008-09-01	697
Adelaide	Pork leg	2008-09-01	775
Perth	Pork leg	2008-09-01	696
Hobart	Pork leg	2008-09-01	834
Darwin	Pork leg	2008-09-01	753
Melbourne	Pork loin chops	2008-09-01	1415
Brisbane	Pork loin chops	2008-09-01	1500
Adelaide	Pork loin chops	2008-09-01	1456
Perth	Pork loin chops	2008-09-01	1567
Hobart	Pork loin chops	2008-09-01	1505
Darwin	Pork loin chops	2008-09-01	1503
Sydney	Chicken, whole fresh	2008-09-01	533
Melbourne	Chicken, whole fresh	2008-09-01	541
Brisbane	Chicken, whole fresh	2008-09-01	542
Adelaide	Chicken, whole fresh	2008-09-01	545
Perth	Chicken, whole fresh	2008-09-01	590
Hobart	Chicken, whole fresh	2008-09-01	593
Darwin	Chicken, whole fresh	2008-09-01	518
Melbourne	Bacon, middle rashers	2008-09-01	426
Brisbane	Bacon, middle rashers	2008-09-01	354
Adelaide	Bacon, middle rashers	2008-09-01	417
Perth	Bacon, middle rashers	2008-09-01	473
Hobart	Bacon, middle rashers	2008-09-01	362
Darwin	Bacon, middle rashers	2008-09-01	399
Sydney	Beef Sausages	2008-09-01	590
Melbourne	Beef Sausages	2008-09-01	564
Brisbane	Beef Sausages	2008-09-01	653
Adelaide	Beef Sausages	2008-09-01	631
Perth	Beef Sausages	2008-09-01	671
Hobart	Beef Sausages	2008-09-01	677
Darwin	Beef Sausages	2008-09-01	584
Sydney	Salmon, pink	2008-09-01	258
Melbourne	Salmon, pink	2008-09-01	258
Brisbane	Salmon, pink	2008-09-01	258
Adelaide	Salmon, pink	2008-09-01	266
Perth	Salmon, pink	2008-09-01	288
Hobart	Salmon, pink	2008-09-01	335
Darwin	Salmon, pink	2008-09-01	291
Melbourne	Oranges	2008-09-01	252
Brisbane	Oranges	2008-09-01	219
Adelaide	Oranges	2008-09-01	239
Perth	Oranges	2008-09-01	307
Hobart	Oranges	2008-09-01	220
Darwin	Oranges	2008-09-01	342
Sydney	Bananas	2008-09-01	326
Melbourne	Bananas	2008-09-01	322
Brisbane	Bananas	2008-09-01	305
Adelaide	Bananas	2008-09-01	340
Perth	Bananas	2008-09-01	418
Hobart	Bananas	2008-09-01	368
Darwin	Bananas	2008-09-01	443
Sydney	Potatoes	2008-09-01	157
Brisbane	Potatoes	2008-09-01	219
Adelaide	Potatoes	2008-09-01	219
Perth	Potatoes	2008-09-01	282
Hobart	Potatoes	2008-09-01	203
Darwin	Potatoes	2008-09-01	313
Sydney	Tomatoes	2008-09-01	305
Melbourne	Tomatoes	2008-09-01	312
Brisbane	Tomatoes	2008-09-01	262
Adelaide	Tomatoes	2008-09-01	340
Perth	Tomatoes	2008-09-01	392
Hobart	Tomatoes	2008-09-01	304
Darwin	Tomatoes	2008-09-01	487
Sydney	Carrots	2008-09-01	215
Melbourne	Carrots	2008-09-01	222
Adelaide	Carrots	2008-09-01	205
Perth	Carrots	2008-09-01	166
Hobart	Carrots	2008-09-01	188
Darwin	Carrots	2008-09-01	271
Sydney	Onions	2008-09-01	251
Melbourne	Onions	2008-09-01	253
Brisbane	Onions	2008-09-01	242
Adelaide	Onions	2008-09-01	255
Perth	Onions	2008-09-01	208
Hobart	Onions	2008-09-01	198
Darwin	Onions	2008-09-01	325
Sydney	Peaches	2008-09-01	337
Melbourne	Peaches	2008-09-01	334
Brisbane	Peaches	2008-09-01	344
Perth	Peaches	2008-09-01	364
Hobart	Peaches	2008-09-01	322
Darwin	Peaches	2008-09-01	376
Sydney	Pineapple, sliced	2008-09-01	200
Melbourne	Pineapple, sliced	2008-09-01	203
Brisbane	Pineapple, sliced	2008-09-01	196
Adelaide	Pineapple, sliced	2008-09-01	209
Perth	Pineapple, sliced	2008-09-01	206
Hobart	Pineapple, sliced	2008-09-01	201
Darwin	Pineapple, sliced	2008-09-01	208
Sydney	Peas, frozen	2008-09-01	194
Melbourne	Peas, frozen	2008-09-01	200
Adelaide	Peas, frozen	2008-09-01	189
Perth	Peas, frozen	2008-09-01	199
Hobart	Peas, frozen	2008-09-01	190
Darwin	Peas, frozen	2008-09-01	238
Sydney	Chocolate milk	2008-09-01	399
Melbourne	Chocolate milk	2008-09-01	414
Brisbane	Chocolate milk	2008-09-01	388
Adelaide	Chocolate milk	2008-09-01	393
Perth	Chocolate milk	2008-09-01	400
Hobart	Chocolate milk	2008-09-01	402
Darwin	Chocolate milk	2008-09-01	392
Sydney	Eggs	2008-09-01	402
Melbourne	Eggs	2008-09-01	444
Brisbane	Eggs	2008-09-01	443
Adelaide	Eggs	2008-09-01	443
Perth	Eggs	2008-09-01	480
Hobart	Eggs	2008-09-01	452
Darwin	Eggs	2008-09-01	464
Melbourne	Sugar, white	2008-09-01	228
Brisbane	Sugar, white	2008-09-01	210
Adelaide	Sugar, white	2008-09-01	266
Perth	Sugar, white	2008-09-01	277
Hobart	Sugar, white	2008-09-01	350
Darwin	Sugar, white	2008-09-01	250
Sydney	Jam, strawberry	2008-09-01	330
Melbourne	Jam, strawberry	2008-09-01	340
Brisbane	Jam, strawberry	2008-09-01	327
Adelaide	Jam, strawberry	2008-09-01	334
Perth	Jam, strawberry	2008-09-01	340
Hobart	Jam, strawberry	2008-09-01	357
Sydney	Teabags	2008-09-01	362
Brisbane	Teabags	2008-09-01	369
Adelaide	Teabags	2008-09-01	341
Perth	Teabags	2008-09-01	385
Hobart	Teabags	2008-09-01	366
Darwin	Teabags	2008-09-01	381
Sydney	Coffee, instant	2008-09-01	722
Melbourne	Coffee, instant	2008-09-01	789
Brisbane	Coffee, instant	2008-09-01	748
Adelaide	Coffee, instant	2008-09-01	807
Perth	Coffee, instant	2008-09-01	756
Hobart	Coffee, instant	2008-09-01	806
Sydney	Tomato sauce	2008-09-01	207
Melbourne	Tomato sauce	2008-09-01	196
Brisbane	Tomato sauce	2008-09-01	185
Adelaide	Tomato sauce	2008-09-01	188
Perth	Tomato sauce	2008-09-01	202
Hobart	Tomato sauce	2008-09-01	199
Darwin	Tomato sauce	2008-09-01	217
Sydney	Margarine, poly-unsaturated	2008-09-01	314
Melbourne	Margarine, poly-unsaturated	2008-09-01	311
Brisbane	Margarine, poly-unsaturated	2008-09-01	314
Adelaide	Margarine, poly-unsaturated	2008-09-01	306
Perth	Margarine, poly-unsaturated	2008-09-01	317
Hobart	Margarine, poly-unsaturated	2008-09-01	315
Darwin	Margarine, poly-unsaturated	2008-09-01	324
Melbourne	Baked beans, in tomato sauce	2008-09-01	143
Brisbane	Baked beans, in tomato sauce	2008-09-01	141
Adelaide	Baked beans, in tomato sauce	2008-09-01	140
Perth	Baked beans, in tomato sauce	2008-09-01	148
Hobart	Baked beans, in tomato sauce	2008-09-01	137
Darwin	Baked beans, in tomato sauce	2008-09-01	156
Sydney	Baby food	2008-09-01	109
Melbourne	Baby food	2008-09-01	112
Brisbane	Baby food	2008-09-01	110
Adelaide	Baby food	2008-09-01	109
Perth	Baby food	2008-09-01	109
Hobart	Baby food	2008-09-01	108
Darwin	Baby food	2008-09-01	110
Sydney	Laundry detergent	2008-09-01	585
Melbourne	Laundry detergent	2008-09-01	587
Brisbane	Laundry detergent	2008-09-01	601
Adelaide	Laundry detergent	2008-09-01	598
Perth	Laundry detergent	2008-09-01	589
Hobart	Laundry detergent	2008-09-01	587
Darwin	Laundry detergent	2008-09-01	600
Melbourne	Dishwashing detergent	2008-09-01	384
Brisbane	Dishwashing detergent	2008-09-01	387
Adelaide	Dishwashing detergent	2008-09-01	379
Perth	Dishwashing detergent	2008-09-01	400
Hobart	Dishwashing detergent	2008-09-01	380
Darwin	Dishwashing detergent	2008-09-01	404
Sydney	Facial tissues	2008-09-01	211
Melbourne	Facial tissues	2008-09-01	211
Brisbane	Facial tissues	2008-09-01	200
Adelaide	Facial tissues	2008-09-01	219
Perth	Facial tissues	2008-09-01	204
Hobart	Facial tissues	2008-09-01	214
Darwin	Facial tissues	2008-09-01	218
Sydney	Toilet tissue	2008-09-01	660
Melbourne	Toilet tissue	2008-09-01	679
Brisbane	Toilet tissue	2008-09-01	703
Adelaide	Toilet tissue	2008-09-01	701
Perth	Toilet tissue	2008-09-01	659
Darwin	Toilet tissue	2008-09-01	686
Sydney	Pet food	2008-09-01	116
Melbourne	Pet food	2008-09-01	112
Brisbane	Pet food	2008-09-01	114
Adelaide	Pet food	2008-09-01	110
Perth	Pet food	2008-09-01	115
Hobart	Pet food	2008-09-01	128
Darwin	Pet food	2008-09-01	121
Sydney	Petrol, unleaded	2008-09-01	154
Melbourne	Petrol, unleaded	2008-09-01	155
Brisbane	Petrol, unleaded	2008-09-01	147
Adelaide	Petrol, unleaded	2008-09-01	154
Perth	Petrol, unleaded	2008-09-01	149
Hobart	Petrol, unleaded	2008-09-01	160
Darwin	Petrol, unleaded	2008-09-01	167
Sydney	Beer, full strength	2008-09-01	3791
Brisbane	Beer, full strength	2008-09-01	3921
Adelaide	Beer, full strength	2008-09-01	4019
Perth	Beer, full strength	2008-09-01	4167
Hobart	Beer, full strength	2008-09-01	4135
Darwin	Beer, full strength	2008-09-01	4363
Sydney	Draught beer, low alcohol, public bar	2008-09-01	257
Melbourne	Draught beer, low alcohol, public bar	2008-09-01	310
Brisbane	Draught beer, low alcohol, public bar	2008-09-01	262
Adelaide	Draught beer, low alcohol, public bar	2008-09-01	358
Perth	Draught beer, low alcohol, public bar	2008-09-01	342
Hobart	Draught beer, low alcohol, public bar	2008-09-01	287
Darwin	Draught beer, low alcohol, public bar	2008-09-01	259
Melbourne	Draught beer, full strength, public bar	2008-09-01	347
Brisbane	Draught beer, full strength, public bar	2008-09-01	295
Adelaide	Draught beer, full strength, public bar	2008-09-01	391
Perth	Draught beer, full strength, public bar	2008-09-01	363
Hobart	Draught beer, full strength, public bar	2008-09-01	346
Darwin	Draught beer, full strength, public bar	2008-09-01	328
Sydney	Scotch	2008-09-01	491
Melbourne	Scotch	2008-09-01	577
Brisbane	Scotch	2008-09-01	465
Adelaide	Scotch	2008-09-01	594
Perth	Scotch	2008-09-01	595
Hobart	Scotch	2008-09-01	423
Darwin	Scotch	2008-09-01	499
Sydney	Toilet soap	2008-09-01	430
Melbourne	Toilet soap	2008-09-01	438
Brisbane	Toilet soap	2008-09-01	423
Adelaide	Toilet soap	2008-09-01	417
Hobart	Toilet soap	2008-09-01	429
Darwin	Toilet soap	2008-09-01	438
Sydney	Milk	2008-12-01	361
Melbourne	Milk	2008-12-01	369
Brisbane	Milk	2008-12-01	334
Perth	Milk	2008-12-01	356
Hobart	Milk	2008-12-01	392
Darwin	Milk	2008-12-01	417
Sydney	Cheese	2008-12-01	499
Melbourne	Cheese	2008-12-01	570
Brisbane	Cheese	2008-12-01	502
Adelaide	Cheese	2008-12-01	529
Perth	Cheese	2008-12-01	528
Hobart	Cheese	2008-12-01	504
Darwin	Cheese	2008-12-01	599
Sydney	Butter	2008-12-01	395
Melbourne	Butter	2008-12-01	363
Brisbane	Butter	2008-12-01	316
Adelaide	Butter	2008-12-01	360
Hobart	Butter	2008-12-01	371
Darwin	Butter	2008-12-01	450
Sydney	Bread white loaf, sliced	2008-12-01	365
Melbourne	Bread white loaf, sliced	2008-12-01	377
Brisbane	Bread white loaf, sliced	2008-12-01	350
Adelaide	Bread white loaf, sliced	2008-12-01	368
Perth	Bread white loaf, sliced	2008-12-01	345
Hobart	Bread white loaf, sliced	2008-12-01	317
Darwin	Bread white loaf, sliced	2008-12-01	397
Sydney	Biscuits, dry	2008-12-01	223
Melbourne	Biscuits, dry	2008-12-01	226
Brisbane	Biscuits, dry	2008-12-01	224
Perth	Biscuits, dry	2008-12-01	223
Hobart	Biscuits, dry	2008-12-01	218
Darwin	Biscuits, dry	2008-12-01	233
Sydney	Breakfast cereal	2008-12-01	401
Melbourne	Breakfast cereal	2008-12-01	385
Brisbane	Breakfast cereal	2008-12-01	379
Adelaide	Breakfast cereal	2008-12-01	387
Perth	Breakfast cereal	2008-12-01	399
Hobart	Breakfast cereal	2008-12-01	444
Darwin	Breakfast cereal	2008-12-01	395
Sydney	Flour, self raising	2008-12-01	323
Melbourne	Flour, self raising	2008-12-01	329
Brisbane	Flour, self raising	2008-12-01	359
Adelaide	Flour, self raising	2008-12-01	391
Perth	Flour, self raising	2008-12-01	395
Hobart	Flour, self raising	2008-12-01	395
Sydney	Rice	2008-12-01	226
Melbourne	Rice	2008-12-01	280
Brisbane	Rice	2008-12-01	256
Adelaide	Rice	2008-12-01	252
Perth	Rice	2008-12-01	288
Hobart	Rice	2008-12-01	266
Darwin	Rice	2008-12-01	309
Sydney	Roast beef	2008-12-01	1170
Melbourne	Roast beef	2008-12-01	1078
Brisbane	Roast beef	2008-12-01	1227
Adelaide	Roast beef	2008-12-01	1108
Perth	Roast beef	2008-12-01	1170
Hobart	Roast beef	2008-12-01	1123
Darwin	Roast beef	2008-12-01	1217
Sydney	Rump steak	2008-12-01	1865
Melbourne	Rump steak	2008-12-01	2071
Brisbane	Rump steak	2008-12-01	2030
Adelaide	Rump steak	2008-12-01	1868
Hobart	Rump steak	2008-12-01	2061
Darwin	Rump steak	2008-12-01	1884
Sydney	T-bone steak, with fillet	2008-12-01	1910
Melbourne	T-bone steak, with fillet	2008-12-01	1972
Brisbane	T-bone steak, with fillet	2008-12-01	2113
Adelaide	T-bone steak, with fillet	2008-12-01	2025
Perth	T-bone steak, with fillet	2008-12-01	2018
Hobart	T-bone steak, with fillet	2008-12-01	2035
Darwin	T-bone steak, with fillet	2008-12-01	1971
Sydney	Chuck steak	2008-12-01	1026
Melbourne	Chuck steak	2008-12-01	1038
Brisbane	Chuck steak	2008-12-01	1003
Perth	Chuck steak	2008-12-01	1077
Hobart	Chuck steak	2008-12-01	1055
Darwin	Chuck steak	2008-12-01	1057
Sydney	Lamb leg	2008-12-01	963
Melbourne	Lamb leg	2008-12-01	948
Brisbane	Lamb leg	2008-12-01	973
Adelaide	Lamb leg	2008-12-01	952
Perth	Lamb leg	2008-12-01	939
Hobart	Lamb leg	2008-12-01	952
Darwin	Lamb leg	2008-12-01	981
Sydney	Lamb loin chops	2008-12-01	1775
Melbourne	Lamb loin chops	2008-12-01	1848
Brisbane	Lamb loin chops	2008-12-01	1823
Adelaide	Lamb loin chops	2008-12-01	1843
Perth	Lamb loin chops	2008-12-01	1897
Hobart	Lamb loin chops	2008-12-01	1803
Sydney	Lamb forequarter chops	2008-12-01	940
Melbourne	Lamb forequarter chops	2008-12-01	942
Brisbane	Lamb forequarter chops	2008-12-01	959
Adelaide	Lamb forequarter chops	2008-12-01	1023
Perth	Lamb forequarter chops	2008-12-01	952
Hobart	Lamb forequarter chops	2008-12-01	991
Darwin	Lamb forequarter chops	2008-12-01	962
Sydney	Pork leg	2008-12-01	731
Melbourne	Pork leg	2008-12-01	751
Brisbane	Pork leg	2008-12-01	750
Adelaide	Pork leg	2008-12-01	794
Perth	Pork leg	2008-12-01	782
Hobart	Pork leg	2008-12-01	856
Darwin	Pork leg	2008-12-01	828
Sydney	Pork loin chops	2008-12-01	1536
Melbourne	Pork loin chops	2008-12-01	1461
Adelaide	Pork loin chops	2008-12-01	1510
Perth	Pork loin chops	2008-12-01	1518
Hobart	Pork loin chops	2008-12-01	1519
Darwin	Pork loin chops	2008-12-01	1631
Sydney	Chicken, whole fresh	2008-12-01	554
Melbourne	Chicken, whole fresh	2008-12-01	553
Brisbane	Chicken, whole fresh	2008-12-01	565
Perth	Chicken, whole fresh	2008-12-01	596
Hobart	Chicken, whole fresh	2008-12-01	624
Darwin	Chicken, whole fresh	2008-12-01	561
Sydney	Bacon, middle rashers	2008-12-01	444
Melbourne	Bacon, middle rashers	2008-12-01	438
Brisbane	Bacon, middle rashers	2008-12-01	398
Adelaide	Bacon, middle rashers	2008-12-01	442
Perth	Bacon, middle rashers	2008-12-01	579
Hobart	Bacon, middle rashers	2008-12-01	424
Darwin	Bacon, middle rashers	2008-12-01	450
Sydney	Beef Sausages	2008-12-01	605
Melbourne	Beef Sausages	2008-12-01	592
Brisbane	Beef Sausages	2008-12-01	689
Adelaide	Beef Sausages	2008-12-01	641
Perth	Beef Sausages	2008-12-01	669
Darwin	Beef Sausages	2008-12-01	593
Sydney	Salmon, pink	2008-12-01	245
Melbourne	Salmon, pink	2008-12-01	258
Brisbane	Salmon, pink	2008-12-01	268
Adelaide	Salmon, pink	2008-12-01	270
Perth	Salmon, pink	2008-12-01	286
Hobart	Salmon, pink	2008-12-01	321
Darwin	Salmon, pink	2008-12-01	281
Sydney	Oranges	2008-12-01	307
Melbourne	Oranges	2008-12-01	269
Brisbane	Oranges	2008-12-01	286
Adelaide	Oranges	2008-12-01	321
Perth	Oranges	2008-12-01	382
Hobart	Oranges	2008-12-01	309
Darwin	Oranges	2008-12-01	405
Sydney	Bananas	2008-12-01	278
Melbourne	Bananas	2008-12-01	295
Adelaide	Bananas	2008-12-01	279
Perth	Bananas	2008-12-01	389
Hobart	Bananas	2008-12-01	353
Darwin	Bananas	2008-12-01	426
Sydney	Potatoes	2008-12-01	158
Melbourne	Potatoes	2008-12-01	253
Brisbane	Potatoes	2008-12-01	193
Adelaide	Potatoes	2008-12-01	223
Perth	Potatoes	2008-12-01	262
Hobart	Potatoes	2008-12-01	233
Darwin	Potatoes	2008-12-01	295
Sydney	Tomatoes	2008-12-01	411
Melbourne	Tomatoes	2008-12-01	384
Brisbane	Tomatoes	2008-12-01	369
Perth	Tomatoes	2008-12-01	477
Hobart	Tomatoes	2008-12-01	448
Darwin	Tomatoes	2008-12-01	584
Sydney	Carrots	2008-12-01	221
Melbourne	Carrots	2008-12-01	237
Brisbane	Carrots	2008-12-01	193
Adelaide	Carrots	2008-12-01	208
Perth	Carrots	2008-12-01	170
Hobart	Carrots	2008-12-01	201
Darwin	Carrots	2008-12-01	281
Sydney	Onions	2008-12-01	277
Melbourne	Onions	2008-12-01	290
Brisbane	Onions	2008-12-01	301
Adelaide	Onions	2008-12-01	313
Hobart	Onions	2008-12-01	237
Darwin	Onions	2008-12-01	358
Sydney	Peaches	2008-12-01	355
Melbourne	Peaches	2008-12-01	320
Brisbane	Peaches	2008-12-01	353
Adelaide	Peaches	2008-12-01	317
Perth	Peaches	2008-12-01	374
Hobart	Peaches	2008-12-01	298
Darwin	Peaches	2008-12-01	365
Sydney	Pineapple, sliced	2008-12-01	211
Melbourne	Pineapple, sliced	2008-12-01	216
Brisbane	Pineapple, sliced	2008-12-01	203
Perth	Pineapple, sliced	2008-12-01	211
Hobart	Pineapple, sliced	2008-12-01	219
Darwin	Pineapple, sliced	2008-12-01	221
Sydney	Peas, frozen	2008-12-01	210
Melbourne	Peas, frozen	2008-12-01	204
Brisbane	Peas, frozen	2008-12-01	199
Adelaide	Peas, frozen	2008-12-01	202
Perth	Peas, frozen	2008-12-01	205
Hobart	Peas, frozen	2008-12-01	213
Darwin	Peas, frozen	2008-12-01	238
Sydney	Chocolate milk	2008-12-01	429
Melbourne	Chocolate milk	2008-12-01	440
Brisbane	Chocolate milk	2008-12-01	420
Adelaide	Chocolate milk	2008-12-01	396
Perth	Chocolate milk	2008-12-01	445
Hobart	Chocolate milk	2008-12-01	449
Sydney	Eggs	2008-12-01	411
Melbourne	Eggs	2008-12-01	437
Brisbane	Eggs	2008-12-01	435
Adelaide	Eggs	2008-12-01	440
Perth	Eggs	2008-12-01	459
Hobart	Eggs	2008-12-01	442
Darwin	Eggs	2008-12-01	464
Sydney	Sugar, white	2008-12-01	225
Melbourne	Sugar, white	2008-12-01	233
Brisbane	Sugar, white	2008-12-01	221
Adelaide	Sugar, white	2008-12-01	248
Perth	Sugar, white	2008-12-01	275
Hobart	Sugar, white	2008-12-01	355
Darwin	Sugar, white	2008-12-01	265
Sydney	Jam, strawberry	2008-12-01	342
Melbourne	Jam, strawberry	2008-12-01	334
Adelaide	Jam, strawberry	2008-12-01	340
Perth	Jam, strawberry	2008-12-01	334
Hobart	Jam, strawberry	2008-12-01	357
Darwin	Jam, strawberry	2008-12-01	352
Sydney	Teabags	2008-12-01	389
Melbourne	Teabags	2008-12-01	417
Brisbane	Teabags	2008-12-01	397
Adelaide	Teabags	2008-12-01	405
Perth	Teabags	2008-12-01	419
Hobart	Teabags	2008-12-01	425
Darwin	Teabags	2008-12-01	415
Sydney	Coffee, instant	2008-12-01	720
Melbourne	Coffee, instant	2008-12-01	771
Brisbane	Coffee, instant	2008-12-01	712
Adelaide	Coffee, instant	2008-12-01	790
Perth	Coffee, instant	2008-12-01	764
Darwin	Coffee, instant	2008-12-01	851
Sydney	Tomato sauce	2008-12-01	202
Brisbane	Tomato sauce	2008-12-01	190
Adelaide	Tomato sauce	2008-12-01	186
Perth	Tomato sauce	2008-12-01	207
Hobart	Tomato sauce	2008-12-01	200
Darwin	Tomato sauce	2008-12-01	217
Sydney	Margarine, poly-unsaturated	2008-12-01	313
Melbourne	Margarine, poly-unsaturated	2008-12-01	305
Brisbane	Margarine, poly-unsaturated	2008-12-01	309
Adelaide	Margarine, poly-unsaturated	2008-12-01	299
Perth	Margarine, poly-unsaturated	2008-12-01	309
Hobart	Margarine, poly-unsaturated	2008-12-01	307
Darwin	Margarine, poly-unsaturated	2008-12-01	310
Sydney	Baked beans, in tomato sauce	2008-12-01	141
Brisbane	Baked beans, in tomato sauce	2008-12-01	149
Adelaide	Baked beans, in tomato sauce	2008-12-01	160
Perth	Baked beans, in tomato sauce	2008-12-01	150
Hobart	Baked beans, in tomato sauce	2008-12-01	153
Darwin	Baked beans, in tomato sauce	2008-12-01	142
Sydney	Baby food	2008-12-01	119
Melbourne	Baby food	2008-12-01	120
Brisbane	Baby food	2008-12-01	113
Adelaide	Baby food	2008-12-01	120
Perth	Baby food	2008-12-01	112
Hobart	Baby food	2008-12-01	122
Darwin	Baby food	2008-12-01	124
Sydney	Laundry detergent	2008-12-01	574
Melbourne	Laundry detergent	2008-12-01	600
Brisbane	Laundry detergent	2008-12-01	588
Adelaide	Laundry detergent	2008-12-01	613
Perth	Laundry detergent	2008-12-01	582
Hobart	Laundry detergent	2008-12-01	603
Darwin	Laundry detergent	2008-12-01	628
Sydney	Dishwashing detergent	2008-12-01	382
Brisbane	Dishwashing detergent	2008-12-01	387
Adelaide	Dishwashing detergent	2008-12-01	394
Perth	Dishwashing detergent	2008-12-01	374
Hobart	Dishwashing detergent	2008-12-01	399
Darwin	Dishwashing detergent	2008-12-01	401
Sydney	Facial tissues	2008-12-01	216
Melbourne	Facial tissues	2008-12-01	214
Brisbane	Facial tissues	2008-12-01	217
Adelaide	Facial tissues	2008-12-01	217
Perth	Facial tissues	2008-12-01	210
Hobart	Facial tissues	2008-12-01	209
Darwin	Facial tissues	2008-12-01	222
Sydney	Toilet tissue	2008-12-01	668
Melbourne	Toilet tissue	2008-12-01	621
Brisbane	Toilet tissue	2008-12-01	699
Adelaide	Toilet tissue	2008-12-01	701
Perth	Toilet tissue	2008-12-01	633
Hobart	Toilet tissue	2008-12-01	683
Darwin	Toilet tissue	2008-12-01	683
Sydney	Pet food	2008-12-01	113
Melbourne	Pet food	2008-12-01	114
Brisbane	Pet food	2008-12-01	115
Perth	Pet food	2008-12-01	117
Hobart	Pet food	2008-12-01	134
Darwin	Pet food	2008-12-01	122
Sydney	Petrol, unleaded	2008-12-01	125
Melbourne	Petrol, unleaded	2008-12-01	126
Brisbane	Petrol, unleaded	2008-12-01	118
Adelaide	Petrol, unleaded	2008-12-01	123
Perth	Petrol, unleaded	2008-12-01	123
Hobart	Petrol, unleaded	2008-12-01	136
Darwin	Petrol, unleaded	2008-12-01	140
Sydney	Beer, full strength	2008-12-01	3878
Brisbane	Beer, full strength	2008-12-01	3888
Adelaide	Beer, full strength	2008-12-01	4178
Perth	Beer, full strength	2008-12-01	4237
Hobart	Beer, full strength	2008-12-01	4117
Darwin	Beer, full strength	2008-12-01	4313
Sydney	Draught beer, low alcohol, public bar	2008-12-01	259
Melbourne	Draught beer, low alcohol, public bar	2008-12-01	314
Brisbane	Draught beer, low alcohol, public bar	2008-12-01	270
Adelaide	Draught beer, low alcohol, public bar	2008-12-01	362
Perth	Draught beer, low alcohol, public bar	2008-12-01	338
Hobart	Draught beer, low alcohol, public bar	2008-12-01	292
Darwin	Draught beer, low alcohol, public bar	2008-12-01	262
Sydney	Draught beer, full strength, public bar	2008-12-01	299
Brisbane	Draught beer, full strength, public bar	2008-12-01	304
Adelaide	Draught beer, full strength, public bar	2008-12-01	400
Perth	Draught beer, full strength, public bar	2008-12-01	360
Hobart	Draught beer, full strength, public bar	2008-12-01	351
Darwin	Draught beer, full strength, public bar	2008-12-01	330
Sydney	Scotch	2008-12-01	488
Melbourne	Scotch	2008-12-01	580
Brisbane	Scotch	2008-12-01	481
Adelaide	Scotch	2008-12-01	588
Perth	Scotch	2008-12-01	581
Hobart	Scotch	2008-12-01	426
Darwin	Scotch	2008-12-01	506
Sydney	Toilet soap	2008-12-01	402
Melbourne	Toilet soap	2008-12-01	399
Brisbane	Toilet soap	2008-12-01	330
Adelaide	Toilet soap	2008-12-01	370
Perth	Toilet soap	2008-12-01	364
Hobart	Toilet soap	2008-12-01	386
Darwin	Toilet soap	2008-12-01	440
Sydney	Milk	2009-03-01	352
Melbourne	Milk	2009-03-01	368
Brisbane	Milk	2009-03-01	329
Adelaide	Milk	2009-03-01	369
Perth	Milk	2009-03-01	366
Hobart	Milk	2009-03-01	382
Darwin	Milk	2009-03-01	424
Sydney	Cheese	2009-03-01	510
Melbourne	Cheese	2009-03-01	592
Brisbane	Cheese	2009-03-01	524
Perth	Cheese	2009-03-01	547
Hobart	Cheese	2009-03-01	512
Darwin	Cheese	2009-03-01	610
Sydney	Butter	2009-03-01	400
Melbourne	Butter	2009-03-01	378
Brisbane	Butter	2009-03-01	340
Adelaide	Butter	2009-03-01	364
Perth	Butter	2009-03-01	456
Hobart	Butter	2009-03-01	374
Darwin	Butter	2009-03-01	457
Melbourne	Bread white loaf, sliced	2009-03-01	388
Brisbane	Bread white loaf, sliced	2009-03-01	363
Adelaide	Bread white loaf, sliced	2009-03-01	365
Perth	Bread white loaf, sliced	2009-03-01	350
Hobart	Bread white loaf, sliced	2009-03-01	316
Darwin	Bread white loaf, sliced	2009-03-01	410
Sydney	Biscuits, dry	2009-03-01	226
Melbourne	Biscuits, dry	2009-03-01	231
Brisbane	Biscuits, dry	2009-03-01	229
Adelaide	Biscuits, dry	2009-03-01	222
Perth	Biscuits, dry	2009-03-01	223
Hobart	Biscuits, dry	2009-03-01	218
Darwin	Biscuits, dry	2009-03-01	238
Sydney	Breakfast cereal	2009-03-01	407
Melbourne	Breakfast cereal	2009-03-01	396
Brisbane	Breakfast cereal	2009-03-01	385
Perth	Breakfast cereal	2009-03-01	406
Hobart	Breakfast cereal	2009-03-01	447
Darwin	Breakfast cereal	2009-03-01	407
Sydney	Flour, self raising	2009-03-01	321
Melbourne	Flour, self raising	2009-03-01	334
Brisbane	Flour, self raising	2009-03-01	349
Adelaide	Flour, self raising	2009-03-01	391
Perth	Flour, self raising	2009-03-01	395
Hobart	Flour, self raising	2009-03-01	396
Darwin	Flour, self raising	2009-03-01	401
Sydney	Rice	2009-03-01	236
Melbourne	Rice	2009-03-01	292
Brisbane	Rice	2009-03-01	290
Adelaide	Rice	2009-03-01	268
Perth	Rice	2009-03-01	296
Hobart	Rice	2009-03-01	269
Darwin	Rice	2009-03-01	293
Sydney	Roast beef	2009-03-01	1138
Brisbane	Roast beef	2009-03-01	1221
Adelaide	Roast beef	2009-03-01	1020
Perth	Roast beef	2009-03-01	1115
Hobart	Roast beef	2009-03-01	1053
Darwin	Roast beef	2009-03-01	1185
Sydney	Rump steak	2009-03-01	1889
Melbourne	Rump steak	2009-03-01	2037
Brisbane	Rump steak	2009-03-01	2163
Adelaide	Rump steak	2009-03-01	2038
Perth	Rump steak	2009-03-01	1944
Hobart	Rump steak	2009-03-01	1966
Darwin	Rump steak	2009-03-01	1698
Melbourne	T-bone steak, with fillet	2009-03-01	2074
Brisbane	T-bone steak, with fillet	2009-03-01	2189
Adelaide	T-bone steak, with fillet	2009-03-01	2122
Perth	T-bone steak, with fillet	2009-03-01	2023
Hobart	T-bone steak, with fillet	2009-03-01	1916
Darwin	T-bone steak, with fillet	2009-03-01	2062
Sydney	Chuck steak	2009-03-01	1059
Melbourne	Chuck steak	2009-03-01	997
Brisbane	Chuck steak	2009-03-01	1024
Adelaide	Chuck steak	2009-03-01	1018
Perth	Chuck steak	2009-03-01	1075
Hobart	Chuck steak	2009-03-01	1075
Darwin	Chuck steak	2009-03-01	1004
Sydney	Lamb leg	2009-03-01	1010
Melbourne	Lamb leg	2009-03-01	1015
Brisbane	Lamb leg	2009-03-01	1053
Adelaide	Lamb leg	2009-03-01	964
Perth	Lamb leg	2009-03-01	1050
Hobart	Lamb leg	2009-03-01	1000
Darwin	Lamb leg	2009-03-01	1032
Melbourne	Lamb loin chops	2009-03-01	1859
Brisbane	Lamb loin chops	2009-03-01	1971
Adelaide	Lamb loin chops	2009-03-01	1918
Perth	Lamb loin chops	2009-03-01	1990
Hobart	Lamb loin chops	2009-03-01	1930
Darwin	Lamb loin chops	2009-03-01	1986
Sydney	Lamb forequarter chops	2009-03-01	957
Melbourne	Lamb forequarter chops	2009-03-01	1100
Brisbane	Lamb forequarter chops	2009-03-01	995
Adelaide	Lamb forequarter chops	2009-03-01	1056
Perth	Lamb forequarter chops	2009-03-01	1028
Hobart	Lamb forequarter chops	2009-03-01	963
Darwin	Lamb forequarter chops	2009-03-01	1024
Sydney	Pork leg	2009-03-01	786
Melbourne	Pork leg	2009-03-01	891
Brisbane	Pork leg	2009-03-01	795
Adelaide	Pork leg	2009-03-01	858
Perth	Pork leg	2009-03-01	808
Darwin	Pork leg	2009-03-01	924
Sydney	Pork loin chops	2009-03-01	1628
Melbourne	Pork loin chops	2009-03-01	1555
Brisbane	Pork loin chops	2009-03-01	1572
Adelaide	Pork loin chops	2009-03-01	1597
Perth	Pork loin chops	2009-03-01	1664
Hobart	Pork loin chops	2009-03-01	1593
Darwin	Pork loin chops	2009-03-01	1632
Sydney	Chicken, whole fresh	2009-03-01	558
Melbourne	Chicken, whole fresh	2009-03-01	566
Adelaide	Chicken, whole fresh	2009-03-01	582
Perth	Chicken, whole fresh	2009-03-01	605
Hobart	Chicken, whole fresh	2009-03-01	622
Darwin	Chicken, whole fresh	2009-03-01	563
Sydney	Bacon, middle rashers	2009-03-01	444
Melbourne	Bacon, middle rashers	2009-03-01	438
Brisbane	Bacon, middle rashers	2009-03-01	431
Adelaide	Bacon, middle rashers	2009-03-01	459
Perth	Bacon, middle rashers	2009-03-01	579
Hobart	Bacon, middle rashers	2009-03-01	440
Sydney	Beef Sausages	2009-03-01	619
Melbourne	Beef Sausages	2009-03-01	589
Brisbane	Beef Sausages	2009-03-01	691
Adelaide	Beef Sausages	2009-03-01	667
Perth	Beef Sausages	2009-03-01	655
Hobart	Beef Sausages	2009-03-01	712
Darwin	Beef Sausages	2009-03-01	629
Sydney	Salmon, pink	2009-03-01	246
Melbourne	Salmon, pink	2009-03-01	248
Brisbane	Salmon, pink	2009-03-01	260
Adelaide	Salmon, pink	2009-03-01	254
Perth	Salmon, pink	2009-03-01	285
Hobart	Salmon, pink	2009-03-01	319
Sydney	Oranges	2009-03-01	377
Melbourne	Oranges	2009-03-01	333
Brisbane	Oranges	2009-03-01	273
Adelaide	Oranges	2009-03-01	376
Perth	Oranges	2009-03-01	411
Hobart	Oranges	2009-03-01	330
Darwin	Oranges	2009-03-01	428
Sydney	Bananas	2009-03-01	300
Melbourne	Bananas	2009-03-01	332
Brisbane	Bananas	2009-03-01	303
Adelaide	Bananas	2009-03-01	352
Perth	Bananas	2009-03-01	409
Hobart	Bananas	2009-03-01	353
Darwin	Bananas	2009-03-01	421
Melbourne	Potatoes	2009-03-01	262
Brisbane	Potatoes	2009-03-01	218
Adelaide	Potatoes	2009-03-01	215
Perth	Potatoes	2009-03-01	266
Hobart	Potatoes	2009-03-01	262
Darwin	Potatoes	2009-03-01	285
Sydney	Tomatoes	2009-03-01	471
Melbourne	Tomatoes	2009-03-01	422
Brisbane	Tomatoes	2009-03-01	404
Adelaide	Tomatoes	2009-03-01	445
Perth	Tomatoes	2009-03-01	417
Hobart	Tomatoes	2009-03-01	468
Darwin	Tomatoes	2009-03-01	584
Sydney	Carrots	2009-03-01	221
Brisbane	Carrots	2009-03-01	197
Adelaide	Carrots	2009-03-01	207
Perth	Carrots	2009-03-01	172
Hobart	Carrots	2009-03-01	198
Darwin	Carrots	2009-03-01	275
Sydney	Onions	2009-03-01	271
Melbourne	Onions	2009-03-01	274
Brisbane	Onions	2009-03-01	275
Adelaide	Onions	2009-03-01	299
Perth	Onions	2009-03-01	272
Hobart	Onions	2009-03-01	247
Darwin	Onions	2009-03-01	359
Sydney	Peaches	2009-03-01	356
Melbourne	Peaches	2009-03-01	348
Adelaide	Peaches	2009-03-01	334
Perth	Peaches	2009-03-01	358
Hobart	Peaches	2009-03-01	326
Darwin	Peaches	2009-03-01	376
Sydney	Pineapple, sliced	2009-03-01	217
Melbourne	Pineapple, sliced	2009-03-01	219
Brisbane	Pineapple, sliced	2009-03-01	206
Adelaide	Pineapple, sliced	2009-03-01	216
Perth	Pineapple, sliced	2009-03-01	214
Hobart	Pineapple, sliced	2009-03-01	219
Darwin	Pineapple, sliced	2009-03-01	228
Sydney	Peas, frozen	2009-03-01	218
Brisbane	Peas, frozen	2009-03-01	194
Adelaide	Peas, frozen	2009-03-01	202
Perth	Peas, frozen	2009-03-01	194
Hobart	Peas, frozen	2009-03-01	237
Darwin	Peas, frozen	2009-03-01	251
Sydney	Chocolate milk	2009-03-01	458
Melbourne	Chocolate milk	2009-03-01	481
Brisbane	Chocolate milk	2009-03-01	452
Adelaide	Chocolate milk	2009-03-01	462
Perth	Chocolate milk	2009-03-01	445
Hobart	Chocolate milk	2009-03-01	451
Darwin	Chocolate milk	2009-03-01	490
Sydney	Eggs	2009-03-01	416
Melbourne	Eggs	2009-03-01	443
Brisbane	Eggs	2009-03-01	431
Adelaide	Eggs	2009-03-01	429
Perth	Eggs	2009-03-01	470
Hobart	Eggs	2009-03-01	451
Darwin	Eggs	2009-03-01	472
Melbourne	Sugar, white	2009-03-01	239
Brisbane	Sugar, white	2009-03-01	220
Adelaide	Sugar, white	2009-03-01	253
Perth	Sugar, white	2009-03-01	281
Hobart	Sugar, white	2009-03-01	355
Darwin	Sugar, white	2009-03-01	262
Sydney	Jam, strawberry	2009-03-01	332
Melbourne	Jam, strawberry	2009-03-01	326
Brisbane	Jam, strawberry	2009-03-01	315
Adelaide	Jam, strawberry	2009-03-01	330
Perth	Jam, strawberry	2009-03-01	329
Darwin	Jam, strawberry	2009-03-01	326
Sydney	Teabags	2009-03-01	420
Melbourne	Teabags	2009-03-01	439
Brisbane	Teabags	2009-03-01	413
Adelaide	Teabags	2009-03-01	410
Perth	Teabags	2009-03-01	415
Hobart	Teabags	2009-03-01	426
Darwin	Teabags	2009-03-01	398
Sydney	Coffee, instant	2009-03-01	741
Melbourne	Coffee, instant	2009-03-01	799
Brisbane	Coffee, instant	2009-03-01	766
Adelaide	Coffee, instant	2009-03-01	884
Perth	Coffee, instant	2009-03-01	803
Hobart	Coffee, instant	2009-03-01	841
Darwin	Coffee, instant	2009-03-01	794
Sydney	Tomato sauce	2009-03-01	215
Brisbane	Tomato sauce	2009-03-01	198
Adelaide	Tomato sauce	2009-03-01	198
Perth	Tomato sauce	2009-03-01	195
Hobart	Tomato sauce	2009-03-01	190
Darwin	Tomato sauce	2009-03-01	210
Sydney	Margarine, poly-unsaturated	2009-03-01	316
Melbourne	Margarine, poly-unsaturated	2009-03-01	315
Adelaide	Margarine, poly-unsaturated	2009-03-01	307
Perth	Margarine, poly-unsaturated	2009-03-01	311
Hobart	Margarine, poly-unsaturated	2009-03-01	317
Darwin	Margarine, poly-unsaturated	2009-03-01	325
Melbourne	Baked beans, in tomato sauce	2009-03-01	155
Brisbane	Baked beans, in tomato sauce	2009-03-01	150
Adelaide	Baked beans, in tomato sauce	2009-03-01	155
Perth	Baked beans, in tomato sauce	2009-03-01	154
Hobart	Baked beans, in tomato sauce	2009-03-01	152
Darwin	Baked beans, in tomato sauce	2009-03-01	171
Sydney	Baby food	2009-03-01	119
Melbourne	Baby food	2009-03-01	123
Brisbane	Baby food	2009-03-01	119
Adelaide	Baby food	2009-03-01	121
Perth	Baby food	2009-03-01	122
Hobart	Baby food	2009-03-01	122
Darwin	Baby food	2009-03-01	129
Sydney	Laundry detergent	2009-03-01	609
Melbourne	Laundry detergent	2009-03-01	582
Brisbane	Laundry detergent	2009-03-01	598
Adelaide	Laundry detergent	2009-03-01	604
Perth	Laundry detergent	2009-03-01	548
Hobart	Laundry detergent	2009-03-01	573
Darwin	Laundry detergent	2009-03-01	597
Melbourne	Dishwashing detergent	2009-03-01	368
Brisbane	Dishwashing detergent	2009-03-01	337
Adelaide	Dishwashing detergent	2009-03-01	383
Perth	Dishwashing detergent	2009-03-01	334
Hobart	Dishwashing detergent	2009-03-01	399
Darwin	Dishwashing detergent	2009-03-01	336
Sydney	Facial tissues	2009-03-01	219
Melbourne	Facial tissues	2009-03-01	217
Brisbane	Facial tissues	2009-03-01	217
Adelaide	Facial tissues	2009-03-01	216
Perth	Facial tissues	2009-03-01	215
Hobart	Facial tissues	2009-03-01	214
Darwin	Facial tissues	2009-03-01	240
Sydney	Toilet tissue	2009-03-01	718
Melbourne	Toilet tissue	2009-03-01	697
Brisbane	Toilet tissue	2009-03-01	676
Adelaide	Toilet tissue	2009-03-01	675
Perth	Toilet tissue	2009-03-01	680
Darwin	Toilet tissue	2009-03-01	679
Sydney	Pet food	2009-03-01	123
Melbourne	Pet food	2009-03-01	119
Brisbane	Pet food	2009-03-01	112
Adelaide	Pet food	2009-03-01	118
Perth	Pet food	2009-03-01	123
Hobart	Pet food	2009-03-01	142
Darwin	Pet food	2009-03-01	124
Sydney	Petrol, unleaded	2009-03-01	115
Melbourne	Petrol, unleaded	2009-03-01	117
Brisbane	Petrol, unleaded	2009-03-01	110
Adelaide	Petrol, unleaded	2009-03-01	116
Perth	Petrol, unleaded	2009-03-01	111
Hobart	Petrol, unleaded	2009-03-01	120
Darwin	Petrol, unleaded	2009-03-01	126
Sydney	Beer, full strength	2009-03-01	3819
Brisbane	Beer, full strength	2009-03-01	3844
Adelaide	Beer, full strength	2009-03-01	4159
Perth	Beer, full strength	2009-03-01	4195
Hobart	Beer, full strength	2009-03-01	4188
Darwin	Beer, full strength	2009-03-01	4351
Sydney	Draught beer, low alcohol, public bar	2009-03-01	261
Melbourne	Draught beer, low alcohol, public bar	2009-03-01	315
Brisbane	Draught beer, low alcohol, public bar	2009-03-01	280
Adelaide	Draught beer, low alcohol, public bar	2009-03-01	365
Perth	Draught beer, low alcohol, public bar	2009-03-01	342
Hobart	Draught beer, low alcohol, public bar	2009-03-01	294
Darwin	Draught beer, low alcohol, public bar	2009-03-01	262
Melbourne	Draught beer, full strength, public bar	2009-03-01	352
Brisbane	Draught beer, full strength, public bar	2009-03-01	312
Adelaide	Draught beer, full strength, public bar	2009-03-01	406
Perth	Draught beer, full strength, public bar	2009-03-01	367
Hobart	Draught beer, full strength, public bar	2009-03-01	354
Darwin	Draught beer, full strength, public bar	2009-03-01	332
Sydney	Scotch	2009-03-01	495
Melbourne	Scotch	2009-03-01	591
Brisbane	Scotch	2009-03-01	493
Adelaide	Scotch	2009-03-01	603
Perth	Scotch	2009-03-01	588
Hobart	Scotch	2009-03-01	436
Darwin	Scotch	2009-03-01	504
Sydney	Toilet soap	2009-03-01	402
Melbourne	Toilet soap	2009-03-01	430
Brisbane	Toilet soap	2009-03-01	440
Adelaide	Toilet soap	2009-03-01	419
Perth	Toilet soap	2009-03-01	416
Hobart	Toilet soap	2009-03-01	415
Darwin	Toilet soap	2009-03-01	442
Sydney	Milk	2009-06-01	341
Melbourne	Milk	2009-06-01	361
Brisbane	Milk	2009-06-01	318
Adelaide	Milk	2009-06-01	353
Perth	Milk	2009-06-01	322
Hobart	Milk	2009-06-01	370
Darwin	Milk	2009-06-01	410
Sydney	Cheese	2009-06-01	524
Melbourne	Cheese	2009-06-01	576
Brisbane	Cheese	2009-06-01	546
Perth	Cheese	2009-06-01	521
Hobart	Cheese	2009-06-01	503
Darwin	Cheese	2009-06-01	614
Sydney	Butter	2009-06-01	407
Melbourne	Butter	2009-06-01	370
Brisbane	Butter	2009-06-01	342
Adelaide	Butter	2009-06-01	363
Perth	Butter	2009-06-01	438
Hobart	Butter	2009-06-01	380
Darwin	Butter	2009-06-01	451
Brisbane	Bread white loaf, sliced	2009-06-01	360
Adelaide	Bread white loaf, sliced	2009-06-01	358
Perth	Bread white loaf, sliced	2009-06-01	343
Hobart	Bread white loaf, sliced	2009-06-01	318
Darwin	Bread white loaf, sliced	2009-06-01	397
Sydney	Biscuits, dry	2009-06-01	234
Melbourne	Biscuits, dry	2009-06-01	231
Brisbane	Biscuits, dry	2009-06-01	229
Adelaide	Biscuits, dry	2009-06-01	238
Perth	Biscuits, dry	2009-06-01	226
Hobart	Biscuits, dry	2009-06-01	225
Sydney	Breakfast cereal	2009-06-01	399
Melbourne	Breakfast cereal	2009-06-01	396
Brisbane	Breakfast cereal	2009-06-01	384
Adelaide	Breakfast cereal	2009-06-01	380
Perth	Breakfast cereal	2009-06-01	400
Hobart	Breakfast cereal	2009-06-01	449
Darwin	Breakfast cereal	2009-06-01	411
Sydney	Flour, self raising	2009-06-01	305
Melbourne	Flour, self raising	2009-06-01	327
Brisbane	Flour, self raising	2009-06-01	338
Adelaide	Flour, self raising	2009-06-01	380
Perth	Flour, self raising	2009-06-01	395
Hobart	Flour, self raising	2009-06-01	399
Darwin	Flour, self raising	2009-06-01	389
Sydney	Rice	2009-06-01	248
Melbourne	Rice	2009-06-01	288
Brisbane	Rice	2009-06-01	321
Adelaide	Rice	2009-06-01	277
Perth	Rice	2009-06-01	290
Hobart	Rice	2009-06-01	255
Sydney	Roast beef	2009-06-01	1128
Melbourne	Roast beef	2009-06-01	1041
Brisbane	Roast beef	2009-06-01	1189
Adelaide	Roast beef	2009-06-01	1101
Perth	Roast beef	2009-06-01	1109
Hobart	Roast beef	2009-06-01	1134
Darwin	Roast beef	2009-06-01	1125
Sydney	Rump steak	2009-06-01	1983
Brisbane	Rump steak	2009-06-01	2075
Adelaide	Rump steak	2009-06-01	2000
Perth	Rump steak	2009-06-01	2028
Hobart	Rump steak	2009-06-01	2033
Darwin	Rump steak	2009-06-01	2055
Sydney	T-bone steak, with fillet	2009-06-01	2097
Melbourne	T-bone steak, with fillet	2009-06-01	2069
Brisbane	T-bone steak, with fillet	2009-06-01	2166
Adelaide	T-bone steak, with fillet	2009-06-01	2102
Perth	T-bone steak, with fillet	2009-06-01	2054
Hobart	T-bone steak, with fillet	2009-06-01	1972
Darwin	T-bone steak, with fillet	2009-06-01	2041
Sydney	Chuck steak	2009-06-01	1055
Melbourne	Chuck steak	2009-06-01	1051
Brisbane	Chuck steak	2009-06-01	1009
Adelaide	Chuck steak	2009-06-01	1015
Perth	Chuck steak	2009-06-01	1059
Hobart	Chuck steak	2009-06-01	984
Sydney	Lamb leg	2009-06-01	1072
Melbourne	Lamb leg	2009-06-01	1021
Brisbane	Lamb leg	2009-06-01	1104
Adelaide	Lamb leg	2009-06-01	1033
Perth	Lamb leg	2009-06-01	1033
Hobart	Lamb leg	2009-06-01	1026
Darwin	Lamb leg	2009-06-01	1057
Sydney	Lamb loin chops	2009-06-01	1889
Melbourne	Lamb loin chops	2009-06-01	1862
Brisbane	Lamb loin chops	2009-06-01	1944
Adelaide	Lamb loin chops	2009-06-01	1846
Perth	Lamb loin chops	2009-06-01	1975
Darwin	Lamb loin chops	2009-06-01	1932
Sydney	Lamb forequarter chops	2009-06-01	970
Melbourne	Lamb forequarter chops	2009-06-01	1073
Brisbane	Lamb forequarter chops	2009-06-01	1038
Adelaide	Lamb forequarter chops	2009-06-01	1058
Perth	Lamb forequarter chops	2009-06-01	1024
Hobart	Lamb forequarter chops	2009-06-01	995
Darwin	Lamb forequarter chops	2009-06-01	1022
Sydney	Pork leg	2009-06-01	812
Melbourne	Pork leg	2009-06-01	882
Brisbane	Pork leg	2009-06-01	829
Adelaide	Pork leg	2009-06-01	845
Perth	Pork leg	2009-06-01	860
Hobart	Pork leg	2009-06-01	852
Darwin	Pork leg	2009-06-01	920
Sydney	Pork loin chops	2009-06-01	1574
Brisbane	Pork loin chops	2009-06-01	1535
Adelaide	Pork loin chops	2009-06-01	1511
Perth	Pork loin chops	2009-06-01	1578
Hobart	Pork loin chops	2009-06-01	1608
Darwin	Pork loin chops	2009-06-01	1567
Sydney	Chicken, whole fresh	2009-06-01	535
Melbourne	Chicken, whole fresh	2009-06-01	550
Brisbane	Chicken, whole fresh	2009-06-01	564
Adelaide	Chicken, whole fresh	2009-06-01	566
Perth	Chicken, whole fresh	2009-06-01	631
Hobart	Chicken, whole fresh	2009-06-01	592
Darwin	Chicken, whole fresh	2009-06-01	556
Sydney	Bacon, middle rashers	2009-06-01	444
Melbourne	Bacon, middle rashers	2009-06-01	438
Adelaide	Bacon, middle rashers	2009-06-01	479
Perth	Bacon, middle rashers	2009-06-01	662
Hobart	Bacon, middle rashers	2009-06-01	481
Darwin	Bacon, middle rashers	2009-06-01	535
Sydney	Beef Sausages	2009-06-01	612
Melbourne	Beef Sausages	2009-06-01	597
Brisbane	Beef Sausages	2009-06-01	658
Adelaide	Beef Sausages	2009-06-01	665
Perth	Beef Sausages	2009-06-01	652
Hobart	Beef Sausages	2009-06-01	658
Darwin	Beef Sausages	2009-06-01	625
Sydney	Salmon, pink	2009-06-01	285
Melbourne	Salmon, pink	2009-06-01	286
Brisbane	Salmon, pink	2009-06-01	308
Perth	Salmon, pink	2009-06-01	354
Hobart	Salmon, pink	2009-06-01	388
Darwin	Salmon, pink	2009-06-01	340
Sydney	Oranges	2009-06-01	333
Melbourne	Oranges	2009-06-01	312
Brisbane	Oranges	2009-06-01	310
Adelaide	Oranges	2009-06-01	341
Perth	Oranges	2009-06-01	397
Hobart	Oranges	2009-06-01	315
Darwin	Oranges	2009-06-01	377
Sydney	Bananas	2009-06-01	295
Melbourne	Bananas	2009-06-01	296
Brisbane	Bananas	2009-06-01	260
Adelaide	Bananas	2009-06-01	287
Perth	Bananas	2009-06-01	400
Darwin	Bananas	2009-06-01	416
Sydney	Potatoes	2009-06-01	142
Melbourne	Potatoes	2009-06-01	249
Brisbane	Potatoes	2009-06-01	202
Adelaide	Potatoes	2009-06-01	204
Perth	Potatoes	2009-06-01	273
Hobart	Potatoes	2009-06-01	225
Darwin	Potatoes	2009-06-01	277
Sydney	Tomatoes	2009-06-01	371
Melbourne	Tomatoes	2009-06-01	370
Brisbane	Tomatoes	2009-06-01	359
Adelaide	Tomatoes	2009-06-01	409
Perth	Tomatoes	2009-06-01	388
Hobart	Tomatoes	2009-06-01	425
Sydney	Carrots	2009-06-01	205
Melbourne	Carrots	2009-06-01	214
Brisbane	Carrots	2009-06-01	194
Adelaide	Carrots	2009-06-01	207
Perth	Carrots	2009-06-01	167
Hobart	Carrots	2009-06-01	187
Darwin	Carrots	2009-06-01	263
Sydney	Onions	2009-06-01	235
Melbourne	Onions	2009-06-01	238
Brisbane	Onions	2009-06-01	240
Adelaide	Onions	2009-06-01	255
Perth	Onions	2009-06-01	246
Hobart	Onions	2009-06-01	228
Darwin	Onions	2009-06-01	326
Melbourne	Peaches	2009-06-01	349
Brisbane	Peaches	2009-06-01	362
Adelaide	Peaches	2009-06-01	347
Perth	Peaches	2009-06-01	379
Hobart	Peaches	2009-06-01	349
Darwin	Peaches	2009-06-01	386
Sydney	Pineapple, sliced	2009-06-01	211
Melbourne	Pineapple, sliced	2009-06-01	216
Brisbane	Pineapple, sliced	2009-06-01	199
Adelaide	Pineapple, sliced	2009-06-01	197
Perth	Pineapple, sliced	2009-06-01	218
Hobart	Pineapple, sliced	2009-06-01	210
Sydney	Peas, frozen	2009-06-01	228
Melbourne	Peas, frozen	2009-06-01	216
Brisbane	Peas, frozen	2009-06-01	203
Adelaide	Peas, frozen	2009-06-01	209
Perth	Peas, frozen	2009-06-01	213
Hobart	Peas, frozen	2009-06-01	219
Darwin	Peas, frozen	2009-06-01	257
Sydney	Chocolate milk	2009-06-01	386
Melbourne	Chocolate milk	2009-06-01	384
Brisbane	Chocolate milk	2009-06-01	371
Adelaide	Chocolate milk	2009-06-01	386
Perth	Chocolate milk	2009-06-01	417
Hobart	Chocolate milk	2009-06-01	373
Darwin	Chocolate milk	2009-06-01	426
Sydney	Eggs	2009-06-01	410
Melbourne	Eggs	2009-06-01	443
Brisbane	Eggs	2009-06-01	432
Adelaide	Eggs	2009-06-01	444
Perth	Eggs	2009-06-01	460
Hobart	Eggs	2009-06-01	445
Sydney	Sugar, white	2009-06-01	235
Melbourne	Sugar, white	2009-06-01	244
Brisbane	Sugar, white	2009-06-01	229
Adelaide	Sugar, white	2009-06-01	253
Perth	Sugar, white	2009-06-01	287
Hobart	Sugar, white	2009-06-01	346
Darwin	Sugar, white	2009-06-01	260
Sydney	Jam, strawberry	2009-06-01	342
Brisbane	Jam, strawberry	2009-06-01	339
Adelaide	Jam, strawberry	2009-06-01	340
Perth	Jam, strawberry	2009-06-01	334
Hobart	Jam, strawberry	2009-06-01	357
Darwin	Jam, strawberry	2009-06-01	352
Sydney	Teabags	2009-06-01	428
Melbourne	Teabags	2009-06-01	434
Brisbane	Teabags	2009-06-01	423
Adelaide	Teabags	2009-06-01	379
Perth	Teabags	2009-06-01	412
Hobart	Teabags	2009-06-01	431
Darwin	Teabags	2009-06-01	465
Sydney	Coffee, instant	2009-06-01	772
Melbourne	Coffee, instant	2009-06-01	780
Brisbane	Coffee, instant	2009-06-01	799
Adelaide	Coffee, instant	2009-06-01	823
Hobart	Coffee, instant	2009-06-01	827
Darwin	Coffee, instant	2009-06-01	890
Sydney	Tomato sauce	2009-06-01	205
Melbourne	Tomato sauce	2009-06-01	208
Brisbane	Tomato sauce	2009-06-01	207
Adelaide	Tomato sauce	2009-06-01	207
Perth	Tomato sauce	2009-06-01	222
Hobart	Tomato sauce	2009-06-01	206
Darwin	Tomato sauce	2009-06-01	237
Sydney	Margarine, poly-unsaturated	2009-06-01	319
Melbourne	Margarine, poly-unsaturated	2009-06-01	324
Brisbane	Margarine, poly-unsaturated	2009-06-01	320
Perth	Margarine, poly-unsaturated	2009-06-01	325
Hobart	Margarine, poly-unsaturated	2009-06-01	318
Darwin	Margarine, poly-unsaturated	2009-06-01	325
Sydney	Baked beans, in tomato sauce	2009-06-01	161
Melbourne	Baked beans, in tomato sauce	2009-06-01	152
Brisbane	Baked beans, in tomato sauce	2009-06-01	159
Adelaide	Baked beans, in tomato sauce	2009-06-01	160
Hobart	Baked beans, in tomato sauce	2009-06-01	147
Sydney	Baby food	2009-06-01	118
Melbourne	Baby food	2009-06-01	122
Brisbane	Baby food	2009-06-01	120
Adelaide	Baby food	2009-06-01	119
Perth	Baby food	2009-06-01	119
Hobart	Baby food	2009-06-01	122
Darwin	Baby food	2009-06-01	126
Sydney	Laundry detergent	2009-06-01	586
Melbourne	Laundry detergent	2009-06-01	585
Brisbane	Laundry detergent	2009-06-01	546
Adelaide	Laundry detergent	2009-06-01	561
Perth	Laundry detergent	2009-06-01	570
Hobart	Laundry detergent	2009-06-01	539
Darwin	Laundry detergent	2009-06-01	588
Sydney	Dishwashing detergent	2009-06-01	341
Melbourne	Dishwashing detergent	2009-06-01	354
Brisbane	Dishwashing detergent	2009-06-01	351
Adelaide	Dishwashing detergent	2009-06-01	367
Perth	Dishwashing detergent	2009-06-01	331
Darwin	Dishwashing detergent	2009-06-01	385
Sydney	Facial tissues	2009-06-01	226
Melbourne	Facial tissues	2009-06-01	223
Brisbane	Facial tissues	2009-06-01	221
Adelaide	Facial tissues	2009-06-01	219
Perth	Facial tissues	2009-06-01	222
Hobart	Facial tissues	2009-06-01	226
Darwin	Facial tissues	2009-06-01	237
Sydney	Toilet tissue	2009-06-01	721
Melbourne	Toilet tissue	2009-06-01	671
Brisbane	Toilet tissue	2009-06-01	689
Adelaide	Toilet tissue	2009-06-01	668
Perth	Toilet tissue	2009-06-01	691
Hobart	Toilet tissue	2009-06-01	632
Darwin	Toilet tissue	2009-06-01	754
Sydney	Pet food	2009-06-01	119
Melbourne	Pet food	2009-06-01	123
Brisbane	Pet food	2009-06-01	116
Adelaide	Pet food	2009-06-01	119
Perth	Pet food	2009-06-01	116
Hobart	Pet food	2009-06-01	122
Sydney	Petrol, unleaded	2009-06-01	120
Melbourne	Petrol, unleaded	2009-06-01	121
Brisbane	Petrol, unleaded	2009-06-01	113
Adelaide	Petrol, unleaded	2009-06-01	120
Perth	Petrol, unleaded	2009-06-01	120
Hobart	Petrol, unleaded	2009-06-01	122
Darwin	Petrol, unleaded	2009-06-01	129
Sydney	Beer, full strength	2009-06-01	3912
Melbourne	Beer, full strength	2009-06-01	3949
Brisbane	Beer, full strength	2009-06-01	3857
Perth	Beer, full strength	2009-06-01	4139
Hobart	Beer, full strength	2009-06-01	4105
Darwin	Beer, full strength	2009-06-01	4461
Sydney	Draught beer, low alcohol, public bar	2009-06-01	268
Melbourne	Draught beer, low alcohol, public bar	2009-06-01	316
Brisbane	Draught beer, low alcohol, public bar	2009-06-01	290
Adelaide	Draught beer, low alcohol, public bar	2009-06-01	367
Perth	Draught beer, low alcohol, public bar	2009-06-01	350
Hobart	Draught beer, low alcohol, public bar	2009-06-01	295
Darwin	Draught beer, low alcohol, public bar	2009-06-01	267
Sydney	Draught beer, full strength, public bar	2009-06-01	308
Melbourne	Draught beer, full strength, public bar	2009-06-01	354
Brisbane	Draught beer, full strength, public bar	2009-06-01	319
Adelaide	Draught beer, full strength, public bar	2009-06-01	410
Hobart	Draught beer, full strength, public bar	2009-06-01	356
Darwin	Draught beer, full strength, public bar	2009-06-01	343
Sydney	Scotch	2009-06-01	487
Melbourne	Scotch	2009-06-01	603
Brisbane	Scotch	2009-06-01	504
Adelaide	Scotch	2009-06-01	607
Perth	Scotch	2009-06-01	590
Hobart	Scotch	2009-06-01	441
Darwin	Scotch	2009-06-01	504
Sydney	Toilet soap	2009-06-01	424
Melbourne	Toilet soap	2009-06-01	435
Brisbane	Toilet soap	2009-06-01	452
Adelaide	Toilet soap	2009-06-01	427
Perth	Toilet soap	2009-06-01	428
Hobart	Toilet soap	2009-06-01	420
Darwin	Toilet soap	2009-06-01	487
Sydney	Milk	2009-09-01	343
Melbourne	Milk	2009-09-01	358
Brisbane	Milk	2009-09-01	318
Adelaide	Milk	2009-09-01	344
Perth	Milk	2009-09-01	321
Hobart	Milk	2009-09-01	370
Darwin	Milk	2009-09-01	417
Sydney	Cheese	2009-09-01	520
Melbourne	Cheese	2009-09-01	545
Brisbane	Cheese	2009-09-01	527
Adelaide	Cheese	2009-09-01	554
Perth	Cheese	2009-09-01	551
Hobart	Cheese	2009-09-01	501
Darwin	Cheese	2009-09-01	626
Melbourne	Butter	2009-09-01	370
Brisbane	Butter	2009-09-01	340
Adelaide	Butter	2009-09-01	370
Perth	Butter	2009-09-01	461
Hobart	Butter	2009-09-01	378
Darwin	Butter	2009-09-01	457
Sydney	Bread white loaf, sliced	2009-09-01	371
Melbourne	Bread white loaf, sliced	2009-09-01	380
Brisbane	Bread white loaf, sliced	2009-09-01	356
Adelaide	Bread white loaf, sliced	2009-09-01	363
Hobart	Bread white loaf, sliced	2009-09-01	309
Darwin	Bread white loaf, sliced	2009-09-01	385
Sydney	Biscuits, dry	2009-09-01	237
Melbourne	Biscuits, dry	2009-09-01	239
Brisbane	Biscuits, dry	2009-09-01	240
Adelaide	Biscuits, dry	2009-09-01	238
Hobart	Biscuits, dry	2009-09-01	239
Darwin	Biscuits, dry	2009-09-01	254
Sydney	Breakfast cereal	2009-09-01	384
Melbourne	Breakfast cereal	2009-09-01	392
Brisbane	Breakfast cereal	2009-09-01	373
Adelaide	Breakfast cereal	2009-09-01	368
Perth	Breakfast cereal	2009-09-01	400
Darwin	Breakfast cereal	2009-09-01	404
Sydney	Flour, self raising	2009-09-01	321
Melbourne	Flour, self raising	2009-09-01	334
Brisbane	Flour, self raising	2009-09-01	343
Adelaide	Flour, self raising	2009-09-01	369
Perth	Flour, self raising	2009-09-01	397
Hobart	Flour, self raising	2009-09-01	389
Darwin	Flour, self raising	2009-09-01	392
Sydney	Rice	2009-09-01	247
Melbourne	Rice	2009-09-01	306
Brisbane	Rice	2009-09-01	317
Adelaide	Rice	2009-09-01	278
Perth	Rice	2009-09-01	296
Hobart	Rice	2009-09-01	262
Darwin	Rice	2009-09-01	314
Sydney	Roast beef	2009-09-01	1106
Brisbane	Roast beef	2009-09-01	1279
Adelaide	Roast beef	2009-09-01	1099
Perth	Roast beef	2009-09-01	1112
Hobart	Roast beef	2009-09-01	1185
Darwin	Roast beef	2009-09-01	1187
Sydney	Rump steak	2009-09-01	1935
Melbourne	Rump steak	2009-09-01	2039
Brisbane	Rump steak	2009-09-01	2173
Adelaide	Rump steak	2009-09-01	1948
Perth	Rump steak	2009-09-01	1991
Hobart	Rump steak	2009-09-01	2002
Darwin	Rump steak	2009-09-01	1934
Sydney	T-bone steak, with fillet	2009-09-01	1946
Melbourne	T-bone steak, with fillet	2009-09-01	2000
Adelaide	T-bone steak, with fillet	2009-09-01	2136
Perth	T-bone steak, with fillet	2009-09-01	2044
Hobart	T-bone steak, with fillet	2009-09-01	1949
Darwin	T-bone steak, with fillet	2009-09-01	1965
Sydney	Chuck steak	2009-09-01	1081
Melbourne	Chuck steak	2009-09-01	1045
Brisbane	Chuck steak	2009-09-01	983
Adelaide	Chuck steak	2009-09-01	1000
Perth	Chuck steak	2009-09-01	1084
Hobart	Chuck steak	2009-09-01	1029
Darwin	Chuck steak	2009-09-01	985
Sydney	Lamb leg	2009-09-01	1046
Melbourne	Lamb leg	2009-09-01	986
Brisbane	Lamb leg	2009-09-01	1073
Adelaide	Lamb leg	2009-09-01	1064
Perth	Lamb leg	2009-09-01	1097
Hobart	Lamb leg	2009-09-01	1024
Darwin	Lamb leg	2009-09-01	1101
Sydney	Lamb loin chops	2009-09-01	1853
Melbourne	Lamb loin chops	2009-09-01	1871
Adelaide	Lamb loin chops	2009-09-01	1898
Perth	Lamb loin chops	2009-09-01	1999
Hobart	Lamb loin chops	2009-09-01	1930
Darwin	Lamb loin chops	2009-09-01	1886
Sydney	Lamb forequarter chops	2009-09-01	1052
Melbourne	Lamb forequarter chops	2009-09-01	1049
Brisbane	Lamb forequarter chops	2009-09-01	1036
Adelaide	Lamb forequarter chops	2009-09-01	1078
Perth	Lamb forequarter chops	2009-09-01	1048
Hobart	Lamb forequarter chops	2009-09-01	1021
Darwin	Lamb forequarter chops	2009-09-01	1035
Sydney	Pork leg	2009-09-01	785
Melbourne	Pork leg	2009-09-01	886
Brisbane	Pork leg	2009-09-01	853
Adelaide	Pork leg	2009-09-01	837
Perth	Pork leg	2009-09-01	817
Hobart	Pork leg	2009-09-01	902
Darwin	Pork leg	2009-09-01	881
Melbourne	Pork loin chops	2009-09-01	1577
Brisbane	Pork loin chops	2009-09-01	1520
Adelaide	Pork loin chops	2009-09-01	1566
Perth	Pork loin chops	2009-09-01	1516
Hobart	Pork loin chops	2009-09-01	1645
Darwin	Pork loin chops	2009-09-01	1585
Sydney	Chicken, whole fresh	2009-09-01	562
Melbourne	Chicken, whole fresh	2009-09-01	554
Brisbane	Chicken, whole fresh	2009-09-01	528
Adelaide	Chicken, whole fresh	2009-09-01	557
Perth	Chicken, whole fresh	2009-09-01	624
Hobart	Chicken, whole fresh	2009-09-01	650
Darwin	Chicken, whole fresh	2009-09-01	582
Melbourne	Bacon, middle rashers	2009-09-01	438
Brisbane	Bacon, middle rashers	2009-09-01	465
Adelaide	Bacon, middle rashers	2009-09-01	455
Perth	Bacon, middle rashers	2009-09-01	661
Hobart	Bacon, middle rashers	2009-09-01	450
Darwin	Bacon, middle rashers	2009-09-01	514
Sydney	Beef Sausages	2009-09-01	613
Melbourne	Beef Sausages	2009-09-01	581
Brisbane	Beef Sausages	2009-09-01	644
Adelaide	Beef Sausages	2009-09-01	670
Perth	Beef Sausages	2009-09-01	665
Hobart	Beef Sausages	2009-09-01	696
Darwin	Beef Sausages	2009-09-01	623
Sydney	Salmon, pink	2009-09-01	314
Melbourne	Salmon, pink	2009-09-01	306
Brisbane	Salmon, pink	2009-09-01	319
Adelaide	Salmon, pink	2009-09-01	312
Perth	Salmon, pink	2009-09-01	371
Hobart	Salmon, pink	2009-09-01	354
Darwin	Salmon, pink	2009-09-01	327
Sydney	Oranges	2009-09-01	209
Brisbane	Oranges	2009-09-01	228
Adelaide	Oranges	2009-09-01	210
Perth	Oranges	2009-09-01	328
Hobart	Oranges	2009-09-01	239
Darwin	Oranges	2009-09-01	313
Sydney	Bananas	2009-09-01	300
Melbourne	Bananas	2009-09-01	291
Brisbane	Bananas	2009-09-01	261
Perth	Bananas	2009-09-01	379
Hobart	Bananas	2009-09-01	332
Darwin	Bananas	2009-09-01	424
Sydney	Potatoes	2009-09-01	145
Melbourne	Potatoes	2009-09-01	226
Brisbane	Potatoes	2009-09-01	203
Adelaide	Potatoes	2009-09-01	214
Perth	Potatoes	2009-09-01	265
Hobart	Potatoes	2009-09-01	216
Darwin	Potatoes	2009-09-01	287
Sydney	Tomatoes	2009-09-01	296
Melbourne	Tomatoes	2009-09-01	291
Brisbane	Tomatoes	2009-09-01	247
Adelaide	Tomatoes	2009-09-01	345
Hobart	Tomatoes	2009-09-01	287
Darwin	Tomatoes	2009-09-01	474
Sydney	Carrots	2009-09-01	214
Melbourne	Carrots	2009-09-01	218
Brisbane	Carrots	2009-09-01	193
Adelaide	Carrots	2009-09-01	213
Perth	Carrots	2009-09-01	171
Hobart	Carrots	2009-09-01	208
Darwin	Carrots	2009-09-01	274
Sydney	Onions	2009-09-01	241
Melbourne	Onions	2009-09-01	220
Brisbane	Onions	2009-09-01	241
Adelaide	Onions	2009-09-01	224
Perth	Onions	2009-09-01	237
Darwin	Onions	2009-09-01	301
Sydney	Peaches	2009-09-01	343
Melbourne	Peaches	2009-09-01	313
Brisbane	Peaches	2009-09-01	332
Adelaide	Peaches	2009-09-01	337
Perth	Peaches	2009-09-01	378
Hobart	Peaches	2009-09-01	318
Darwin	Peaches	2009-09-01	385
Sydney	Pineapple, sliced	2009-09-01	205
Melbourne	Pineapple, sliced	2009-09-01	218
Brisbane	Pineapple, sliced	2009-09-01	193
Adelaide	Pineapple, sliced	2009-09-01	192
Hobart	Pineapple, sliced	2009-09-01	209
Darwin	Pineapple, sliced	2009-09-01	219
Sydney	Peas, frozen	2009-09-01	225
Melbourne	Peas, frozen	2009-09-01	211
Brisbane	Peas, frozen	2009-09-01	205
Adelaide	Peas, frozen	2009-09-01	209
Perth	Peas, frozen	2009-09-01	202
Hobart	Peas, frozen	2009-09-01	214
Darwin	Peas, frozen	2009-09-01	264
Sydney	Chocolate milk	2009-09-01	346
Melbourne	Chocolate milk	2009-09-01	377
Brisbane	Chocolate milk	2009-09-01	387
Adelaide	Chocolate milk	2009-09-01	366
Perth	Chocolate milk	2009-09-01	356
Hobart	Chocolate milk	2009-09-01	363
Darwin	Chocolate milk	2009-09-01	396
Sydney	Eggs	2009-09-01	407
Melbourne	Eggs	2009-09-01	447
Adelaide	Eggs	2009-09-01	433
Perth	Eggs	2009-09-01	453
Hobart	Eggs	2009-09-01	447
Darwin	Eggs	2009-09-01	494
Sydney	Sugar, white	2009-09-01	242
Melbourne	Sugar, white	2009-09-01	250
Brisbane	Sugar, white	2009-09-01	234
Adelaide	Sugar, white	2009-09-01	253
Perth	Sugar, white	2009-09-01	289
Hobart	Sugar, white	2009-09-01	356
Darwin	Sugar, white	2009-09-01	269
Sydney	Jam, strawberry	2009-09-01	338
Brisbane	Jam, strawberry	2009-09-01	339
Adelaide	Jam, strawberry	2009-09-01	340
Perth	Jam, strawberry	2009-09-01	334
Hobart	Jam, strawberry	2009-09-01	357
Darwin	Jam, strawberry	2009-09-01	352
Sydney	Teabags	2009-09-01	405
Melbourne	Teabags	2009-09-01	408
Brisbane	Teabags	2009-09-01	397
Adelaide	Teabags	2009-09-01	371
Perth	Teabags	2009-09-01	389
Hobart	Teabags	2009-09-01	413
Darwin	Teabags	2009-09-01	428
Sydney	Coffee, instant	2009-09-01	770
Melbourne	Coffee, instant	2009-09-01	789
Brisbane	Coffee, instant	2009-09-01	782
Adelaide	Coffee, instant	2009-09-01	830
Hobart	Coffee, instant	2009-09-01	806
Darwin	Coffee, instant	2009-09-01	830
Sydney	Tomato sauce	2009-09-01	201
Melbourne	Tomato sauce	2009-09-01	215
Brisbane	Tomato sauce	2009-09-01	205
Adelaide	Tomato sauce	2009-09-01	220
Perth	Tomato sauce	2009-09-01	240
Hobart	Tomato sauce	2009-09-01	215
Darwin	Tomato sauce	2009-09-01	242
Sydney	Margarine, poly-unsaturated	2009-09-01	320
Melbourne	Margarine, poly-unsaturated	2009-09-01	314
Brisbane	Margarine, poly-unsaturated	2009-09-01	314
Perth	Margarine, poly-unsaturated	2009-09-01	323
Hobart	Margarine, poly-unsaturated	2009-09-01	322
Darwin	Margarine, poly-unsaturated	2009-09-01	333
Sydney	Baked beans, in tomato sauce	2009-09-01	161
Melbourne	Baked beans, in tomato sauce	2009-09-01	159
Brisbane	Baked beans, in tomato sauce	2009-09-01	159
Adelaide	Baked beans, in tomato sauce	2009-09-01	159
Perth	Baked beans, in tomato sauce	2009-09-01	154
Hobart	Baked beans, in tomato sauce	2009-09-01	159
Darwin	Baked beans, in tomato sauce	2009-09-01	171
Sydney	Baby food	2009-09-01	117
Melbourne	Baby food	2009-09-01	122
Brisbane	Baby food	2009-09-01	120
Adelaide	Baby food	2009-09-01	119
Perth	Baby food	2009-09-01	119
Hobart	Baby food	2009-09-01	122
Darwin	Baby food	2009-09-01	126
Sydney	Laundry detergent	2009-09-01	588
Brisbane	Laundry detergent	2009-09-01	570
Adelaide	Laundry detergent	2009-09-01	575
Perth	Laundry detergent	2009-09-01	558
Hobart	Laundry detergent	2009-09-01	570
Darwin	Laundry detergent	2009-09-01	616
Sydney	Dishwashing detergent	2009-09-01	375
Melbourne	Dishwashing detergent	2009-09-01	370
Brisbane	Dishwashing detergent	2009-09-01	357
Adelaide	Dishwashing detergent	2009-09-01	364
Perth	Dishwashing detergent	2009-09-01	346
Darwin	Dishwashing detergent	2009-09-01	368
Sydney	Facial tissues	2009-09-01	224
Melbourne	Facial tissues	2009-09-01	228
Brisbane	Facial tissues	2009-09-01	214
Adelaide	Facial tissues	2009-09-01	213
Perth	Facial tissues	2009-09-01	210
Hobart	Facial tissues	2009-09-01	208
Darwin	Facial tissues	2009-09-01	237
Sydney	Toilet tissue	2009-09-01	698
Melbourne	Toilet tissue	2009-09-01	710
Brisbane	Toilet tissue	2009-09-01	635
Adelaide	Toilet tissue	2009-09-01	600
Perth	Toilet tissue	2009-09-01	682
Hobart	Toilet tissue	2009-09-01	688
Darwin	Toilet tissue	2009-09-01	625
Sydney	Pet food	2009-09-01	134
Melbourne	Pet food	2009-09-01	132
Brisbane	Pet food	2009-09-01	132
Adelaide	Pet food	2009-09-01	131
Perth	Pet food	2009-09-01	137
Hobart	Pet food	2009-09-01	137
Darwin	Pet food	2009-09-01	133
Melbourne	Petrol, unleaded	2009-09-01	125
Brisbane	Petrol, unleaded	2009-09-01	125
Adelaide	Petrol, unleaded	2009-09-01	122
Perth	Petrol, unleaded	2009-09-01	122
Hobart	Petrol, unleaded	2009-09-01	127
Darwin	Petrol, unleaded	2009-09-01	134
Sydney	Beer, full strength	2009-09-01	3925
Melbourne	Beer, full strength	2009-09-01	3993
Brisbane	Beer, full strength	2009-09-01	3986
Adelaide	Beer, full strength	2009-09-01	4259
Perth	Beer, full strength	2009-09-01	4205
Hobart	Beer, full strength	2009-09-01	4245
Darwin	Beer, full strength	2009-09-01	4549
Melbourne	Draught beer, low alcohol, public bar	2009-09-01	308
Brisbane	Draught beer, low alcohol, public bar	2009-09-01	297
Adelaide	Draught beer, low alcohol, public bar	2009-09-01	363
Perth	Draught beer, low alcohol, public bar	2009-09-01	355
Hobart	Draught beer, low alcohol, public bar	2009-09-01	300
Darwin	Draught beer, low alcohol, public bar	2009-09-01	272
Sydney	Draught beer, full strength, public bar	2009-09-01	303
Melbourne	Draught beer, full strength, public bar	2009-09-01	350
Brisbane	Draught beer, full strength, public bar	2009-09-01	324
Adelaide	Draught beer, full strength, public bar	2009-09-01	411
Perth	Draught beer, full strength, public bar	2009-09-01	373
Hobart	Draught beer, full strength, public bar	2009-09-01	361
Darwin	Draught beer, full strength, public bar	2009-09-01	358
Sydney	Scotch	2009-09-01	497
Melbourne	Scotch	2009-09-01	589
Brisbane	Scotch	2009-09-01	493
Adelaide	Scotch	2009-09-01	604
Perth	Scotch	2009-09-01	593
Hobart	Scotch	2009-09-01	445
Darwin	Scotch	2009-09-01	511
Sydney	Toilet soap	2009-09-01	365
Melbourne	Toilet soap	2009-09-01	435
Brisbane	Toilet soap	2009-09-01	452
Perth	Toilet soap	2009-09-01	426
Hobart	Toilet soap	2009-09-01	390
Darwin	Toilet soap	2009-09-01	457
Sydney	Milk	2009-12-01	348
Melbourne	Milk	2009-12-01	358
Adelaide	T-bone steak, with fillet	2009-12-01	2117
Perth	T-bone steak, with fillet	2009-12-01	2104
Hobart	T-bone steak, with fillet	2009-12-01	2055
Darwin	T-bone steak, with fillet	2009-12-01	2113
Sydney	Chuck steak	2009-12-01	1127
Melbourne	Chuck steak	2009-12-01	1049
Brisbane	Chuck steak	2009-12-01	1039
Adelaide	Chuck steak	2009-12-01	1074
Perth	Chuck steak	2009-12-01	1116
Hobart	Chuck steak	2009-12-01	1102
Darwin	Chuck steak	2009-12-01	1004
Sydney	Lamb leg	2009-12-01	987
Melbourne	Lamb leg	2009-12-01	952
Brisbane	Lamb leg	2009-12-01	1078
Adelaide	Lamb leg	2009-12-01	932
Perth	Lamb leg	2009-12-01	1045
Hobart	Lamb leg	2009-12-01	1012
Darwin	Lamb leg	2009-12-01	989
Sydney	Lamb loin chops	2009-12-01	1882
Melbourne	Lamb loin chops	2009-12-01	1852
Brisbane	Lamb loin chops	2009-12-01	1955
Adelaide	Lamb loin chops	2009-12-01	1901
Perth	Lamb loin chops	2009-12-01	1966
Hobart	Lamb loin chops	2009-12-01	1846
Darwin	Lamb loin chops	2009-12-01	1974
Sydney	Lamb forequarter chops	2009-12-01	964
Melbourne	Lamb forequarter chops	2009-12-01	1016
Brisbane	Lamb forequarter chops	2009-12-01	1027
Adelaide	Lamb forequarter chops	2009-12-01	1040
Perth	Lamb forequarter chops	2009-12-01	1071
Hobart	Lamb forequarter chops	2009-12-01	963
Darwin	Lamb forequarter chops	2009-12-01	1094
Sydney	Pork leg	2009-12-01	803
Melbourne	Pork leg	2009-12-01	874
Brisbane	Pork leg	2009-12-01	891
Adelaide	Pork leg	2009-12-01	846
Perth	Pork leg	2009-12-01	804
Hobart	Pork leg	2009-12-01	905
Darwin	Pork leg	2009-12-01	875
Sydney	Pork loin chops	2009-12-01	1522
Melbourne	Pork loin chops	2009-12-01	1496
Brisbane	Pork loin chops	2009-12-01	1575
Adelaide	Pork loin chops	2009-12-01	1587
Perth	Pork loin chops	2009-12-01	1575
Hobart	Pork loin chops	2009-12-01	1457
Darwin	Pork loin chops	2009-12-01	1430
Sydney	Chicken, whole fresh	2009-12-01	567
Melbourne	Chicken, whole fresh	2009-12-01	591
Brisbane	Chicken, whole fresh	2009-12-01	561
Adelaide	Chicken, whole fresh	2009-12-01	575
Perth	Chicken, whole fresh	2009-12-01	602
Hobart	Chicken, whole fresh	2009-12-01	623
Darwin	Chicken, whole fresh	2009-12-01	562
Sydney	Bacon, middle rashers	2009-12-01	444
Melbourne	Bacon, middle rashers	2009-12-01	438
Brisbane	Bacon, middle rashers	2009-12-01	506
Adelaide	Bacon, middle rashers	2009-12-01	434
Perth	Bacon, middle rashers	2009-12-01	612
Hobart	Bacon, middle rashers	2009-12-01	455
Darwin	Bacon, middle rashers	2009-12-01	525
Sydney	Beef Sausages	2009-12-01	614
Melbourne	Beef Sausages	2009-12-01	601
Brisbane	Beef Sausages	2009-12-01	663
Adelaide	Beef Sausages	2009-12-01	647
Perth	Beef Sausages	2009-12-01	667
Hobart	Beef Sausages	2009-12-01	652
Darwin	Beef Sausages	2009-12-01	617
Sydney	Salmon, pink	2009-12-01	352
Melbourne	Salmon, pink	2009-12-01	321
Brisbane	Salmon, pink	2009-12-01	315
Adelaide	Salmon, pink	2009-12-01	324
Perth	Salmon, pink	2009-12-01	349
Hobart	Salmon, pink	2009-12-01	306
Darwin	Salmon, pink	2009-12-01	349
Sydney	Oranges	2009-12-01	264
Melbourne	Oranges	2009-12-01	272
Brisbane	Oranges	2009-12-01	245
Adelaide	Oranges	2009-12-01	254
Perth	Oranges	2009-12-01	353
Hobart	Oranges	2009-12-01	280
Darwin	Oranges	2009-12-01	339
Sydney	Bananas	2009-12-01	425
Melbourne	Bananas	2009-12-01	389
Brisbane	Bananas	2009-12-01	387
Adelaide	Bananas	2009-12-01	445
Perth	Bananas	2009-12-01	531
Hobart	Bananas	2009-12-01	474
Darwin	Bananas	2009-12-01	429
Sydney	Potatoes	2009-12-01	150
Melbourne	Potatoes	2009-12-01	238
Brisbane	Potatoes	2009-12-01	207
Adelaide	Potatoes	2009-12-01	261
Perth	Potatoes	2009-12-01	250
Darwin	Potatoes	2009-12-01	272
Sydney	Tomatoes	2009-12-01	368
Melbourne	Tomatoes	2009-12-01	331
Adelaide	Tomatoes	2009-12-01	375
Perth	Tomatoes	2009-12-01	434
Hobart	Tomatoes	2009-12-01	378
Darwin	Tomatoes	2009-12-01	457
Sydney	Carrots	2009-12-01	214
Melbourne	Carrots	2009-12-01	209
Brisbane	Carrots	2009-12-01	190
Adelaide	Carrots	2009-12-01	207
Perth	Carrots	2009-12-01	172
Hobart	Carrots	2009-12-01	241
Darwin	Carrots	2009-12-01	274
Sydney	Onions	2009-12-01	218
Melbourne	Onions	2009-12-01	222
Brisbane	Onions	2009-12-01	218
Perth	Onions	2009-12-01	222
Hobart	Onions	2009-12-01	198
Darwin	Onions	2009-12-01	273
Sydney	Peaches	2009-12-01	371
Melbourne	Peaches	2009-12-01	368
Brisbane	Peaches	2009-12-01	377
Adelaide	Peaches	2009-12-01	366
Perth	Peaches	2009-12-01	379
Hobart	Peaches	2009-12-01	369
Darwin	Peaches	2009-12-01	380
Sydney	Pineapple, sliced	2009-12-01	207
Melbourne	Pineapple, sliced	2009-12-01	212
Adelaide	Pineapple, sliced	2009-12-01	197
Perth	Pineapple, sliced	2009-12-01	202
Hobart	Pineapple, sliced	2009-12-01	211
Darwin	Pineapple, sliced	2009-12-01	210
Sydney	Peas, frozen	2009-12-01	231
Melbourne	Peas, frozen	2009-12-01	203
Brisbane	Peas, frozen	2009-12-01	199
Adelaide	Peas, frozen	2009-12-01	206
Perth	Peas, frozen	2009-12-01	202
Hobart	Peas, frozen	2009-12-01	210
Darwin	Peas, frozen	2009-12-01	249
Sydney	Chocolate milk	2009-12-01	361
Melbourne	Chocolate milk	2009-12-01	383
Brisbane	Chocolate milk	2009-12-01	369
Adelaide	Chocolate milk	2009-12-01	343
Perth	Chocolate milk	2009-12-01	334
Darwin	Chocolate milk	2009-12-01	374
Sydney	Eggs	2009-12-01	399
Melbourne	Eggs	2009-12-01	444
Brisbane	Eggs	2009-12-01	412
Adelaide	Eggs	2009-12-01	436
Perth	Eggs	2009-12-01	454
Hobart	Eggs	2009-12-01	440
Darwin	Eggs	2009-12-01	500
Sydney	Sugar, white	2009-12-01	245
Melbourne	Sugar, white	2009-12-01	246
Brisbane	Sugar, white	2009-12-01	238
Adelaide	Sugar, white	2009-12-01	256
Perth	Sugar, white	2009-12-01	303
Hobart	Sugar, white	2009-12-01	367
Darwin	Sugar, white	2009-12-01	277
Sydney	Jam, strawberry	2009-12-01	350
Brisbane	Jam, strawberry	2009-12-01	347
Adelaide	Jam, strawberry	2009-12-01	347
Perth	Jam, strawberry	2009-12-01	344
Hobart	Jam, strawberry	2009-12-01	363
Darwin	Jam, strawberry	2009-12-01	367
Sydney	Teabags	2009-12-01	432
Melbourne	Teabags	2009-12-01	431
Brisbane	Teabags	2009-12-01	455
Adelaide	Teabags	2009-12-01	405
Perth	Teabags	2009-12-01	419
Hobart	Teabags	2009-12-01	455
Darwin	Teabags	2009-12-01	415
Sydney	Coffee, instant	2009-12-01	756
Melbourne	Coffee, instant	2009-12-01	768
Brisbane	Coffee, instant	2009-12-01	750
Adelaide	Coffee, instant	2009-12-01	784
Hobart	Coffee, instant	2009-12-01	790
Darwin	Coffee, instant	2009-12-01	851
Sydney	Tomato sauce	2009-12-01	206
Melbourne	Tomato sauce	2009-12-01	217
Brisbane	Tomato sauce	2009-12-01	201
Adelaide	Tomato sauce	2009-12-01	212
Perth	Tomato sauce	2009-12-01	220
Hobart	Tomato sauce	2009-12-01	194
Darwin	Tomato sauce	2009-12-01	238
Sydney	Margarine, poly-unsaturated	2009-12-01	322
Melbourne	Margarine, poly-unsaturated	2009-12-01	326
Brisbane	Margarine, poly-unsaturated	2009-12-01	323
Perth	Margarine, poly-unsaturated	2009-12-01	325
Hobart	Margarine, poly-unsaturated	2009-12-01	323
Darwin	Margarine, poly-unsaturated	2009-12-01	330
Sydney	Baked beans, in tomato sauce	2009-12-01	167
Melbourne	Baked beans, in tomato sauce	2009-12-01	161
Brisbane	Baked beans, in tomato sauce	2009-12-01	166
Adelaide	Baked beans, in tomato sauce	2009-12-01	169
Perth	Baked beans, in tomato sauce	2009-12-01	149
Hobart	Baked beans, in tomato sauce	2009-12-01	167
Darwin	Baked beans, in tomato sauce	2009-12-01	180
Sydney	Baby food	2009-12-01	122
Melbourne	Baby food	2009-12-01	128
Brisbane	Baby food	2009-12-01	122
Adelaide	Baby food	2009-12-01	123
Perth	Baby food	2009-12-01	127
Hobart	Baby food	2009-12-01	126
Darwin	Baby food	2009-12-01	129
Sydney	Laundry detergent	2009-12-01	597
Melbourne	Laundry detergent	2009-12-01	611
Brisbane	Laundry detergent	2009-12-01	568
Adelaide	Laundry detergent	2009-12-01	575
Perth	Laundry detergent	2009-12-01	590
Hobart	Laundry detergent	2009-12-01	583
Darwin	Laundry detergent	2009-12-01	646
Melbourne	Dishwashing detergent	2009-12-01	349
Brisbane	Dishwashing detergent	2009-12-01	375
Adelaide	Dishwashing detergent	2009-12-01	339
Hobart	Dishwashing detergent	2009-12-01	352
Darwin	Dishwashing detergent	2009-12-01	376
Sydney	Facial tissues	2009-12-01	221
Melbourne	Facial tissues	2009-12-01	231
Brisbane	Facial tissues	2009-12-01	217
Adelaide	Facial tissues	2009-12-01	215
Perth	Facial tissues	2009-12-01	212
Darwin	Facial tissues	2009-12-01	230
Sydney	Toilet tissue	2009-12-01	658
Melbourne	Toilet tissue	2009-12-01	706
Brisbane	Toilet tissue	2009-12-01	635
Adelaide	Toilet tissue	2009-12-01	673
Perth	Toilet tissue	2009-12-01	700
Hobart	Toilet tissue	2009-12-01	646
Darwin	Toilet tissue	2009-12-01	694
Sydney	Pet food	2009-12-01	143
Melbourne	Pet food	2009-12-01	145
Brisbane	Pet food	2009-12-01	136
Adelaide	Pet food	2009-12-01	138
Perth	Pet food	2009-12-01	145
Hobart	Pet food	2009-12-01	145
Darwin	Pet food	2009-12-01	150
Sydney	Petrol, unleaded	2009-12-01	119
Brisbane	Petrol, unleaded	2009-12-01	122
Adelaide	Petrol, unleaded	2009-12-01	119
Perth	Petrol, unleaded	2009-12-01	118
Hobart	Petrol, unleaded	2009-12-01	128
Darwin	Petrol, unleaded	2009-12-01	130
Sydney	Beer, full strength	2009-12-01	3968
Melbourne	Beer, full strength	2009-12-01	4043
Brisbane	Beer, full strength	2009-12-01	4058
Adelaide	Beer, full strength	2009-12-01	4349
Perth	Beer, full strength	2009-12-01	4124
Hobart	Beer, full strength	2009-12-01	4046
Darwin	Beer, full strength	2009-12-01	4501
Melbourne	Draught beer, low alcohol, public bar	2009-12-01	298
Brisbane	Draught beer, low alcohol, public bar	2009-12-01	301
Adelaide	Draught beer, low alcohol, public bar	2009-12-01	363
Perth	Draught beer, low alcohol, public bar	2009-12-01	358
Hobart	Draught beer, low alcohol, public bar	2009-12-01	302
Darwin	Draught beer, low alcohol, public bar	2009-12-01	268
Sydney	Draught beer, full strength, public bar	2009-12-01	316
Melbourne	Draught beer, full strength, public bar	2009-12-01	346
Brisbane	Draught beer, full strength, public bar	2009-12-01	327
Adelaide	Draught beer, full strength, public bar	2009-12-01	408
Perth	Draught beer, full strength, public bar	2009-12-01	384
Hobart	Draught beer, full strength, public bar	2009-12-01	364
Darwin	Draught beer, full strength, public bar	2009-12-01	365
Sydney	Scotch	2009-12-01	509
Melbourne	Scotch	2009-12-01	604
Brisbane	Scotch	2009-12-01	511
Adelaide	Scotch	2009-12-01	597
Perth	Scotch	2009-12-01	606
Hobart	Scotch	2009-12-01	453
Darwin	Scotch	2009-12-01	509
Sydney	Toilet soap	2009-12-01	418
Melbourne	Toilet soap	2009-12-01	435
Brisbane	Toilet soap	2009-12-01	369
Adelaide	Toilet soap	2009-12-01	386
Perth	Toilet soap	2009-12-01	430
Hobart	Toilet soap	2009-12-01	418
Darwin	Toilet soap	2009-12-01	392
Sydney	Milk	2010-03-01	361
Brisbane	Milk	2010-03-01	320
Adelaide	Milk	2010-03-01	347
Perth	Milk	2010-03-01	316
Hobart	Milk	2010-03-01	370
Darwin	Milk	2010-03-01	417
Sydney	Cheese	2010-03-01	547
Melbourne	Cheese	2010-03-01	554
Brisbane	Cheese	2010-03-01	543
Adelaide	Cheese	2010-03-01	577
Perth	Cheese	2010-03-01	519
Hobart	Cheese	2010-03-01	531
Darwin	Cheese	2010-03-01	632
Sydney	Butter	2010-03-01	399
Melbourne	Butter	2010-03-01	367
Adelaide	Butter	2010-03-01	375
Perth	Butter	2010-03-01	394
Hobart	Butter	2010-03-01	388
Darwin	Butter	2010-03-01	461
Sydney	Bread white loaf, sliced	2010-03-01	386
Melbourne	Bread white loaf, sliced	2010-03-01	388
Brisbane	Bread white loaf, sliced	2010-03-01	352
Adelaide	Bread white loaf, sliced	2010-03-01	370
Perth	Bread white loaf, sliced	2010-03-01	328
Hobart	Bread white loaf, sliced	2010-03-01	319
Sydney	Biscuits, dry	2010-03-01	245
Melbourne	Biscuits, dry	2010-03-01	243
Brisbane	Biscuits, dry	2010-03-01	250
Adelaide	Biscuits, dry	2010-03-01	248
Perth	Biscuits, dry	2010-03-01	249
Hobart	Biscuits, dry	2010-03-01	249
Darwin	Biscuits, dry	2010-03-01	259
Sydney	Breakfast cereal	2010-03-01	372
Melbourne	Breakfast cereal	2010-03-01	375
Brisbane	Breakfast cereal	2010-03-01	372
Adelaide	Breakfast cereal	2010-03-01	377
Perth	Breakfast cereal	2010-03-01	346
Hobart	Breakfast cereal	2010-03-01	422
Darwin	Breakfast cereal	2010-03-01	387
Sydney	Flour, self raising	2010-03-01	331
Melbourne	Flour, self raising	2010-03-01	332
Brisbane	Flour, self raising	2010-03-01	347
Adelaide	Flour, self raising	2010-03-01	384
Perth	Flour, self raising	2010-03-01	366
Hobart	Flour, self raising	2010-03-01	389
Sydney	Rice	2010-03-01	260
Melbourne	Rice	2010-03-01	301
Brisbane	Rice	2010-03-01	292
Adelaide	Rice	2010-03-01	269
Darwin	Rice	2010-03-01	320
Sydney	Roast beef	2010-03-01	1134
Melbourne	Roast beef	2010-03-01	1243
Brisbane	Roast beef	2010-03-01	1207
Adelaide	Roast beef	2010-03-01	1012
Perth	Roast beef	2010-03-01	1194
Hobart	Roast beef	2010-03-01	1151
Darwin	Roast beef	2010-03-01	1146
Sydney	Rump steak	2010-03-01	1889
Brisbane	Rump steak	2010-03-01	2135
Adelaide	Rump steak	2010-03-01	2053
Perth	Rump steak	2010-03-01	1946
Hobart	Rump steak	2010-03-01	2042
Darwin	Rump steak	2010-03-01	1976
Sydney	T-bone steak, with fillet	2010-03-01	2086
Melbourne	T-bone steak, with fillet	2010-03-01	2032
Brisbane	T-bone steak, with fillet	2010-03-01	2196
Adelaide	T-bone steak, with fillet	2010-03-01	2006
Perth	T-bone steak, with fillet	2010-03-01	2087
Hobart	T-bone steak, with fillet	2010-03-01	2104
Darwin	T-bone steak, with fillet	2010-03-01	1936
Sydney	Chuck steak	2010-03-01	1159
Melbourne	Chuck steak	2010-03-01	1060
Brisbane	Chuck steak	2010-03-01	1044
Perth	Chuck steak	2010-03-01	1071
Hobart	Chuck steak	2010-03-01	1088
Darwin	Chuck steak	2010-03-01	1039
Sydney	Lamb leg	2010-03-01	1092
Melbourne	Lamb leg	2010-03-01	1003
Brisbane	Lamb leg	2010-03-01	1078
Adelaide	Lamb leg	2010-03-01	1007
Perth	Lamb leg	2010-03-01	1043
Hobart	Lamb leg	2010-03-01	1001
Darwin	Lamb leg	2010-03-01	1065
Sydney	Lamb loin chops	2010-03-01	1821
Melbourne	Lamb loin chops	2010-03-01	1849
Brisbane	Lamb loin chops	2010-03-01	1870
Adelaide	Lamb loin chops	2010-03-01	1990
Perth	Lamb loin chops	2010-03-01	2038
Hobart	Lamb loin chops	2010-03-01	1936
Sydney	Lamb forequarter chops	2010-03-01	1048
Melbourne	Lamb forequarter chops	2010-03-01	1083
Brisbane	Lamb forequarter chops	2010-03-01	1035
Adelaide	Lamb forequarter chops	2010-03-01	1060
Perth	Lamb forequarter chops	2010-03-01	1135
Hobart	Lamb forequarter chops	2010-03-01	1047
Darwin	Lamb forequarter chops	2010-03-01	1002
Sydney	Pork leg	2010-03-01	848
Melbourne	Pork leg	2010-03-01	891
Brisbane	Pork leg	2010-03-01	877
Adelaide	Pork leg	2010-03-01	852
Perth	Pork leg	2010-03-01	760
Hobart	Pork leg	2010-03-01	907
Darwin	Pork leg	2010-03-01	909
Sydney	Pork loin chops	2010-03-01	1529
Melbourne	Pork loin chops	2010-03-01	1486
Adelaide	Pork loin chops	2010-03-01	1542
Perth	Pork loin chops	2010-03-01	1545
Hobart	Pork loin chops	2010-03-01	1543
Darwin	Pork loin chops	2010-03-01	1505
Sydney	Chicken, whole fresh	2010-03-01	566
Melbourne	Chicken, whole fresh	2010-03-01	594
Brisbane	Chicken, whole fresh	2010-03-01	539
Adelaide	Chicken, whole fresh	2010-03-01	580
Perth	Chicken, whole fresh	2010-03-01	617
Hobart	Chicken, whole fresh	2010-03-01	626
Darwin	Chicken, whole fresh	2010-03-01	527
Sydney	Bacon, middle rashers	2010-03-01	1058
Melbourne	Bacon, middle rashers	2010-03-01	1093
Brisbane	Bacon, middle rashers	2010-03-01	1099
Perth	Bacon, middle rashers	2010-03-01	979
Hobart	Bacon, middle rashers	2010-03-01	1072
Darwin	Bacon, middle rashers	2010-03-01	1097
Sydney	Beef Sausages	2010-03-01	614
Melbourne	Beef Sausages	2010-03-01	601
Brisbane	Beef Sausages	2010-03-01	686
Adelaide	Beef Sausages	2010-03-01	682
Perth	Beef Sausages	2010-03-01	670
Hobart	Beef Sausages	2010-03-01	727
Darwin	Beef Sausages	2010-03-01	621
Sydney	Salmon, pink	2010-03-01	381
Melbourne	Salmon, pink	2010-03-01	313
Brisbane	Salmon, pink	2010-03-01	330
Adelaide	Salmon, pink	2010-03-01	316
Perth	Salmon, pink	2010-03-01	367
Hobart	Salmon, pink	2010-03-01	337
Darwin	Salmon, pink	2010-03-01	362
Sydney	Oranges	2010-03-01	346
Melbourne	Oranges	2010-03-01	268
Brisbane	Oranges	2010-03-01	245
Adelaide	Oranges	2010-03-01	316
Perth	Oranges	2010-03-01	379
Darwin	Oranges	2010-03-01	406
Sydney	Bananas	2010-03-01	310
Melbourne	Bananas	2010-03-01	276
Brisbane	Bananas	2010-03-01	302
Adelaide	Bananas	2010-03-01	305
Perth	Bananas	2010-03-01	409
Hobart	Bananas	2010-03-01	336
Darwin	Bananas	2010-03-01	427
Sydney	Potatoes	2010-03-01	155
Melbourne	Potatoes	2010-03-01	258
Brisbane	Potatoes	2010-03-01	219
Adelaide	Potatoes	2010-03-01	278
Perth	Potatoes	2010-03-01	260
Hobart	Potatoes	2010-03-01	266
Sydney	Tomatoes	2010-03-01	485
Melbourne	Tomatoes	2010-03-01	403
Brisbane	Tomatoes	2010-03-01	507
Adelaide	Tomatoes	2010-03-01	451
Perth	Tomatoes	2010-03-01	418
Hobart	Tomatoes	2010-03-01	458
Darwin	Tomatoes	2010-03-01	614
Sydney	Carrots	2010-03-01	213
Melbourne	Carrots	2010-03-01	205
Brisbane	Carrots	2010-03-01	200
Adelaide	Carrots	2010-03-01	207
Hobart	Carrots	2010-03-01	232
Darwin	Carrots	2010-03-01	277
Sydney	Onions	2010-03-01	240
Melbourne	Onions	2010-03-01	234
Brisbane	Onions	2010-03-01	242
Adelaide	Onions	2010-03-01	245
Perth	Onions	2010-03-01	226
Darwin	Onions	2010-03-01	274
Sydney	Peaches	2010-03-01	368
Melbourne	Peaches	2010-03-01	362
Brisbane	Peaches	2010-03-01	384
Adelaide	Peaches	2010-03-01	352
Perth	Peaches	2010-03-01	373
Hobart	Peaches	2010-03-01	344
Darwin	Peaches	2010-03-01	392
Sydney	Pineapple, sliced	2010-03-01	222
Melbourne	Pineapple, sliced	2010-03-01	223
Brisbane	Pineapple, sliced	2010-03-01	203
Adelaide	Pineapple, sliced	2010-03-01	204
Hobart	Pineapple, sliced	2010-03-01	227
Darwin	Pineapple, sliced	2010-03-01	221
Sydney	Peas, frozen	2010-03-01	222
Melbourne	Peas, frozen	2010-03-01	224
Brisbane	Peas, frozen	2010-03-01	201
Adelaide	Peas, frozen	2010-03-01	208
Perth	Peas, frozen	2010-03-01	209
Hobart	Peas, frozen	2010-03-01	226
Darwin	Peas, frozen	2010-03-01	251
Sydney	Chocolate milk	2010-03-01	359
Melbourne	Chocolate milk	2010-03-01	388
Brisbane	Chocolate milk	2010-03-01	363
Adelaide	Chocolate milk	2010-03-01	364
Perth	Chocolate milk	2010-03-01	369
Hobart	Chocolate milk	2010-03-01	363
Darwin	Chocolate milk	2010-03-01	396
Sydney	Eggs	2010-03-01	392
Melbourne	Eggs	2010-03-01	435
Adelaide	Eggs	2010-03-01	419
Perth	Eggs	2010-03-01	435
Hobart	Eggs	2010-03-01	425
Darwin	Eggs	2010-03-01	483
Sydney	Sugar, white	2010-03-01	275
Melbourne	Sugar, white	2010-03-01	289
Brisbane	Sugar, white	2010-03-01	270
Adelaide	Sugar, white	2010-03-01	288
Perth	Sugar, white	2010-03-01	328
Hobart	Sugar, white	2010-03-01	411
Darwin	Sugar, white	2010-03-01	303
Sydney	Jam, strawberry	2010-03-01	330
Brisbane	Jam, strawberry	2010-03-01	340
Adelaide	Jam, strawberry	2010-03-01	320
Perth	Jam, strawberry	2010-03-01	346
Hobart	Jam, strawberry	2010-03-01	342
Darwin	Jam, strawberry	2010-03-01	364
Sydney	Teabags	2010-03-01	434
Melbourne	Teabags	2010-03-01	430
Brisbane	Teabags	2010-03-01	441
Adelaide	Teabags	2010-03-01	400
Perth	Teabags	2010-03-01	433
Hobart	Teabags	2010-03-01	436
Darwin	Teabags	2010-03-01	431
Sydney	Coffee, instant	2010-03-01	764
Melbourne	Coffee, instant	2010-03-01	798
Brisbane	Coffee, instant	2010-03-01	798
Adelaide	Coffee, instant	2010-03-01	801
Hobart	Coffee, instant	2010-03-01	799
Darwin	Coffee, instant	2010-03-01	837
Sydney	Tomato sauce	2010-03-01	206
Melbourne	Tomato sauce	2010-03-01	208
Brisbane	Tomato sauce	2010-03-01	201
Adelaide	Tomato sauce	2010-03-01	215
Perth	Tomato sauce	2010-03-01	228
Hobart	Tomato sauce	2010-03-01	202
Darwin	Tomato sauce	2010-03-01	226
Sydney	Margarine, poly-unsaturated	2010-03-01	321
Melbourne	Margarine, poly-unsaturated	2010-03-01	330
Brisbane	Margarine, poly-unsaturated	2010-03-01	329
Perth	Margarine, poly-unsaturated	2010-03-01	325
Hobart	Margarine, poly-unsaturated	2010-03-01	327
Darwin	Margarine, poly-unsaturated	2010-03-01	327
Sydney	Baked beans, in tomato sauce	2010-03-01	155
Melbourne	Baked beans, in tomato sauce	2010-03-01	164
Brisbane	Baked beans, in tomato sauce	2010-03-01	149
Adelaide	Baked beans, in tomato sauce	2010-03-01	157
Perth	Baked beans, in tomato sauce	2010-03-01	163
Hobart	Baked beans, in tomato sauce	2010-03-01	162
Darwin	Baked beans, in tomato sauce	2010-03-01	171
Sydney	Baby food	2010-03-01	122
Melbourne	Baby food	2010-03-01	123
Brisbane	Baby food	2010-03-01	120
Adelaide	Baby food	2010-03-01	123
Perth	Baby food	2010-03-01	125
Hobart	Baby food	2010-03-01	126
Darwin	Baby food	2010-03-01	129
Sydney	Laundry detergent	2010-03-01	609
Melbourne	Laundry detergent	2010-03-01	549
Brisbane	Laundry detergent	2010-03-01	540
Adelaide	Laundry detergent	2010-03-01	550
Perth	Laundry detergent	2010-03-01	573
Hobart	Laundry detergent	2010-03-01	549
Darwin	Laundry detergent	2010-03-01	558
Melbourne	Dishwashing detergent	2010-03-01	351
Brisbane	Dishwashing detergent	2010-03-01	390
Adelaide	Dishwashing detergent	2010-03-01	311
Perth	Dishwashing detergent	2010-03-01	336
Hobart	Dishwashing detergent	2010-03-01	355
Darwin	Dishwashing detergent	2010-03-01	356
Sydney	Facial tissues	2010-03-01	228
Melbourne	Facial tissues	2010-03-01	235
Brisbane	Facial tissues	2010-03-01	225
Adelaide	Facial tissues	2010-03-01	222
Perth	Facial tissues	2010-03-01	217
Hobart	Facial tissues	2010-03-01	224
Darwin	Facial tissues	2010-03-01	234
Sydney	Toilet tissue	2010-03-01	674
Brisbane	Toilet tissue	2010-03-01	648
Adelaide	Toilet tissue	2010-03-01	737
Perth	Toilet tissue	2010-03-01	699
Hobart	Toilet tissue	2010-03-01	663
Darwin	Toilet tissue	2010-03-01	783
Sydney	Pet food	2010-03-01	136
Melbourne	Pet food	2010-03-01	138
Adelaide	Pet food	2010-03-01	138
Perth	Pet food	2010-03-01	129
Hobart	Pet food	2010-03-01	136
Darwin	Pet food	2010-03-01	146
Sydney	Petrol, unleaded	2010-03-01	125
Melbourne	Petrol, unleaded	2010-03-01	125
Brisbane	Petrol, unleaded	2010-03-01	127
Adelaide	Petrol, unleaded	2010-03-01	125
Perth	Petrol, unleaded	2010-03-01	123
Hobart	Petrol, unleaded	2010-03-01	132
Darwin	Petrol, unleaded	2010-03-01	135
Sydney	Beer, full strength	2010-03-01	3983
Brisbane	Beer, full strength	2010-03-01	4038
Adelaide	Beer, full strength	2010-03-01	4360
Perth	Beer, full strength	2010-03-01	4354
Hobart	Beer, full strength	2010-03-01	4229
Darwin	Beer, full strength	2010-03-01	4558
Sydney	Draught beer, low alcohol, public bar	2010-03-01	280
Melbourne	Draught beer, low alcohol, public bar	2010-03-01	309
Brisbane	Draught beer, low alcohol, public bar	2010-03-01	303
Adelaide	Draught beer, low alcohol, public bar	2010-03-01	371
Perth	Draught beer, low alcohol, public bar	2010-03-01	358
Hobart	Draught beer, low alcohol, public bar	2010-03-01	308
Darwin	Draught beer, low alcohol, public bar	2010-03-01	271
Melbourne	Draught beer, full strength, public bar	2010-03-01	360
Brisbane	Draught beer, full strength, public bar	2010-03-01	328
Adelaide	Draught beer, full strength, public bar	2010-03-01	414
Perth	Draught beer, full strength, public bar	2010-03-01	390
Hobart	Draught beer, full strength, public bar	2010-03-01	369
Darwin	Draught beer, full strength, public bar	2010-03-01	369
Sydney	Scotch	2010-03-01	510
Melbourne	Scotch	2010-03-01	635
Brisbane	Scotch	2010-03-01	514
Adelaide	Scotch	2010-03-01	606
Perth	Scotch	2010-03-01	628
Hobart	Scotch	2010-03-01	460
Darwin	Scotch	2010-03-01	512
Sydney	Toilet soap	2010-03-01	411
Melbourne	Toilet soap	2010-03-01	407
Brisbane	Toilet soap	2010-03-01	442
Adelaide	Toilet soap	2010-03-01	400
Perth	Toilet soap	2010-03-01	377
Hobart	Toilet soap	2010-03-01	392
Darwin	Toilet soap	2010-03-01	480
Sydney	Milk	2010-06-01	372
Melbourne	Milk	2010-06-01	365
Brisbane	Milk	2010-06-01	320
Adelaide	Milk	2010-06-01	359
Perth	Milk	2010-06-01	327
Hobart	Milk	2010-06-01	368
Darwin	Milk	2010-06-01	417
Sydney	Cheese	2010-06-01	537
Melbourne	Cheese	2010-06-01	573
Brisbane	Cheese	2010-06-01	527
Perth	Cheese	2010-06-01	538
Hobart	Cheese	2010-06-01	531
Darwin	Cheese	2010-06-01	571
Sydney	Butter	2010-06-01	408
Melbourne	Butter	2010-06-01	368
Brisbane	Butter	2010-06-01	346
Adelaide	Butter	2010-06-01	381
Perth	Butter	2010-06-01	396
Hobart	Butter	2010-06-01	398
Darwin	Butter	2010-06-01	466
Melbourne	Bread white loaf, sliced	2010-06-01	382
Brisbane	Bread white loaf, sliced	2010-06-01	357
Adelaide	Bread white loaf, sliced	2010-06-01	365
Perth	Bread white loaf, sliced	2010-06-01	326
Hobart	Bread white loaf, sliced	2010-06-01	319
Darwin	Bread white loaf, sliced	2010-06-01	406
Sydney	Biscuits, dry	2010-06-01	237
Melbourne	Biscuits, dry	2010-06-01	233
Brisbane	Biscuits, dry	2010-06-01	229
Adelaide	Biscuits, dry	2010-06-01	234
Perth	Biscuits, dry	2010-06-01	242
Hobart	Biscuits, dry	2010-06-01	231
Darwin	Biscuits, dry	2010-06-01	252
Sydney	Breakfast cereal	2010-06-01	391
Melbourne	Breakfast cereal	2010-06-01	405
Brisbane	Breakfast cereal	2010-06-01	376
Adelaide	Breakfast cereal	2010-06-01	371
Perth	Breakfast cereal	2010-06-01	393
Hobart	Breakfast cereal	2010-06-01	439
Darwin	Breakfast cereal	2010-06-01	389
Melbourne	Flour, self raising	2010-06-01	325
Brisbane	Flour, self raising	2010-06-01	340
Adelaide	Flour, self raising	2010-06-01	379
Perth	Flour, self raising	2010-06-01	368
Hobart	Flour, self raising	2010-06-01	390
Darwin	Flour, self raising	2010-06-01	404
Sydney	Rice	2010-06-01	245
Melbourne	Rice	2010-06-01	301
Brisbane	Rice	2010-06-01	317
Adelaide	Rice	2010-06-01	263
Perth	Rice	2010-06-01	292
Hobart	Rice	2010-06-01	260
Darwin	Rice	2010-06-01	315
Sydney	Roast beef	2010-06-01	1106
Melbourne	Roast beef	2010-06-01	1233
Brisbane	Roast beef	2010-06-01	1208
Adelaide	Roast beef	2010-06-01	1040
Perth	Roast beef	2010-06-01	1197
Darwin	Roast beef	2010-06-01	1165
Sydney	Rump steak	2010-06-01	1972
Melbourne	Rump steak	2010-06-01	1852
Brisbane	Rump steak	2010-06-01	2120
Perth	Rump steak	2010-06-01	1884
Hobart	Rump steak	2010-06-01	1840
Darwin	Rump steak	2010-06-01	2167
Sydney	T-bone steak, with fillet	2010-06-01	2069
Melbourne	T-bone steak, with fillet	2010-06-01	2119
Brisbane	T-bone steak, with fillet	2010-06-01	2222
Adelaide	T-bone steak, with fillet	2010-06-01	2056
Perth	T-bone steak, with fillet	2010-06-01	2101
Hobart	T-bone steak, with fillet	2010-06-01	2067
Sydney	Chuck steak	2010-06-01	1088
Melbourne	Chuck steak	2010-06-01	1043
Brisbane	Chuck steak	2010-06-01	1099
Adelaide	Chuck steak	2010-06-01	1075
Perth	Chuck steak	2010-06-01	1066
Hobart	Chuck steak	2010-06-01	1083
Darwin	Chuck steak	2010-06-01	1067
Sydney	Lamb leg	2010-06-01	1119
Melbourne	Lamb leg	2010-06-01	1106
Brisbane	Lamb leg	2010-06-01	1138
Adelaide	Lamb leg	2010-06-01	1121
Perth	Lamb leg	2010-06-01	1148
Hobart	Lamb leg	2010-06-01	1116
Darwin	Lamb leg	2010-06-01	1162
Sydney	Lamb loin chops	2010-06-01	1829
Melbourne	Lamb loin chops	2010-06-01	1862
Brisbane	Lamb loin chops	2010-06-01	1893
Adelaide	Lamb loin chops	2010-06-01	1958
Perth	Lamb loin chops	2010-06-01	1944
Hobart	Lamb loin chops	2010-06-01	1885
Sydney	Lamb forequarter chops	2010-06-01	1071
Melbourne	Lamb forequarter chops	2010-06-01	1036
Brisbane	Lamb forequarter chops	2010-06-01	1059
Adelaide	Lamb forequarter chops	2010-06-01	1045
Perth	Lamb forequarter chops	2010-06-01	1096
Hobart	Lamb forequarter chops	2010-06-01	963
Darwin	Lamb forequarter chops	2010-06-01	1032
Sydney	Pork leg	2010-06-01	863
Melbourne	Pork leg	2010-06-01	895
Brisbane	Pork leg	2010-06-01	849
Adelaide	Pork leg	2010-06-01	853
Perth	Pork leg	2010-06-01	783
Hobart	Pork leg	2010-06-01	902
Darwin	Pork leg	2010-06-01	878
Sydney	Pork loin chops	2010-06-01	1499
Melbourne	Pork loin chops	2010-06-01	1483
Adelaide	Pork loin chops	2010-06-01	1549
Perth	Pork loin chops	2010-06-01	1621
Hobart	Pork loin chops	2010-06-01	1640
Darwin	Pork loin chops	2010-06-01	1534
Sydney	Chicken, whole fresh	2010-06-01	572
Melbourne	Chicken, whole fresh	2010-06-01	582
Brisbane	Chicken, whole fresh	2010-06-01	541
Adelaide	Chicken, whole fresh	2010-06-01	541
Perth	Chicken, whole fresh	2010-06-01	619
Hobart	Chicken, whole fresh	2010-06-01	656
Darwin	Chicken, whole fresh	2010-06-01	505
Sydney	Bacon, middle rashers	2010-06-01	1052
Melbourne	Bacon, middle rashers	2010-06-01	1025
Brisbane	Bacon, middle rashers	2010-06-01	944
Perth	Bacon, middle rashers	2010-06-01	977
Hobart	Bacon, middle rashers	2010-06-01	955
Darwin	Bacon, middle rashers	2010-06-01	1035
Sydney	Beef Sausages	2010-06-01	611
Melbourne	Beef Sausages	2010-06-01	594
Brisbane	Beef Sausages	2010-06-01	701
Adelaide	Beef Sausages	2010-06-01	668
Perth	Beef Sausages	2010-06-01	675
Hobart	Beef Sausages	2010-06-01	704
Darwin	Beef Sausages	2010-06-01	593
Sydney	Salmon, pink	2010-06-01	371
Melbourne	Salmon, pink	2010-06-01	317
Brisbane	Salmon, pink	2010-06-01	345
Adelaide	Salmon, pink	2010-06-01	321
Perth	Salmon, pink	2010-06-01	373
Hobart	Salmon, pink	2010-06-01	349
Darwin	Salmon, pink	2010-06-01	350
Sydney	Oranges	2010-06-01	302
Melbourne	Oranges	2010-06-01	295
Brisbane	Oranges	2010-06-01	285
Adelaide	Oranges	2010-06-01	307
Perth	Oranges	2010-06-01	365
Darwin	Oranges	2010-06-01	367
Sydney	Bananas	2010-06-01	234
Melbourne	Bananas	2010-06-01	237
Brisbane	Bananas	2010-06-01	225
Adelaide	Bananas	2010-06-01	220
Perth	Bananas	2010-06-01	316
Hobart	Bananas	2010-06-01	266
Darwin	Bananas	2010-06-01	415
Sydney	Potatoes	2010-06-01	149
Melbourne	Potatoes	2010-06-01	244
Brisbane	Potatoes	2010-06-01	201
Adelaide	Potatoes	2010-06-01	257
Perth	Potatoes	2010-06-01	256
Hobart	Potatoes	2010-06-01	243
Sydney	Tomatoes	2010-06-01	534
Melbourne	Tomatoes	2010-06-01	459
Brisbane	Tomatoes	2010-06-01	516
Adelaide	Tomatoes	2010-06-01	524
Perth	Tomatoes	2010-06-01	504
Hobart	Tomatoes	2010-06-01	529
Darwin	Tomatoes	2010-06-01	680
Sydney	Carrots	2010-06-01	214
Melbourne	Carrots	2010-06-01	195
Brisbane	Carrots	2010-06-01	199
Adelaide	Carrots	2010-06-01	206
Perth	Carrots	2010-06-01	175
Hobart	Carrots	2010-06-01	201
Darwin	Carrots	2010-06-01	274
Melbourne	Onions	2010-06-01	235
Brisbane	Onions	2010-06-01	237
Adelaide	Onions	2010-06-01	239
Perth	Onions	2010-06-01	225
Hobart	Onions	2010-06-01	176
Darwin	Onions	2010-06-01	276
Sydney	Peaches	2010-06-01	391
Melbourne	Peaches	2010-06-01	377
Adelaide	Peaches	2010-06-01	380
Perth	Peaches	2010-06-01	397
Hobart	Peaches	2010-06-01	380
Darwin	Peaches	2010-06-01	398
Sydney	Pineapple, sliced	2010-06-01	211
Melbourne	Pineapple, sliced	2010-06-01	211
Brisbane	Pineapple, sliced	2010-06-01	204
Adelaide	Pineapple, sliced	2010-06-01	195
Perth	Pineapple, sliced	2010-06-01	209
Hobart	Pineapple, sliced	2010-06-01	206
Sydney	Peas, frozen	2010-06-01	234
Melbourne	Peas, frozen	2010-06-01	215
Brisbane	Peas, frozen	2010-06-01	191
Adelaide	Peas, frozen	2010-06-01	199
Perth	Peas, frozen	2010-06-01	205
Hobart	Peas, frozen	2010-06-01	214
Darwin	Peas, frozen	2010-06-01	261
Sydney	Chocolate milk	2010-06-01	353
Melbourne	Chocolate milk	2010-06-01	376
Brisbane	Chocolate milk	2010-06-01	361
Adelaide	Chocolate milk	2010-06-01	366
Perth	Chocolate milk	2010-06-01	396
Hobart	Chocolate milk	2010-06-01	360
Darwin	Chocolate milk	2010-06-01	379
Sydney	Eggs	2010-06-01	380
Melbourne	Eggs	2010-06-01	437
Brisbane	Eggs	2010-06-01	407
Adelaide	Eggs	2010-06-01	411
Perth	Eggs	2010-06-01	449
Hobart	Eggs	2010-06-01	424
Sydney	Sugar, white	2010-06-01	267
Melbourne	Sugar, white	2010-06-01	282
Brisbane	Sugar, white	2010-06-01	260
Adelaide	Sugar, white	2010-06-01	286
Perth	Sugar, white	2010-06-01	326
Hobart	Sugar, white	2010-06-01	423
Darwin	Sugar, white	2010-06-01	312
Sydney	Jam, strawberry	2010-06-01	319
Brisbane	Jam, strawberry	2010-06-01	330
Adelaide	Jam, strawberry	2010-06-01	318
Perth	Jam, strawberry	2010-06-01	322
Hobart	Jam, strawberry	2010-06-01	323
Darwin	Jam, strawberry	2010-06-01	345
Sydney	Teabags	2010-06-01	418
Melbourne	Teabags	2010-06-01	432
Brisbane	Teabags	2010-06-01	427
Adelaide	Teabags	2010-06-01	401
Perth	Teabags	2010-06-01	405
Hobart	Teabags	2010-06-01	436
Darwin	Teabags	2010-06-01	433
Sydney	Coffee, instant	2010-06-01	788
Melbourne	Coffee, instant	2010-06-01	798
Brisbane	Coffee, instant	2010-06-01	797
Adelaide	Coffee, instant	2010-06-01	786
Hobart	Coffee, instant	2010-06-01	799
Darwin	Coffee, instant	2010-06-01	827
Sydney	Tomato sauce	2010-06-01	205
Melbourne	Tomato sauce	2010-06-01	213
Brisbane	Tomato sauce	2010-06-01	205
Adelaide	Tomato sauce	2010-06-01	224
Perth	Tomato sauce	2010-06-01	234
Hobart	Tomato sauce	2010-06-01	210
Darwin	Tomato sauce	2010-06-01	235
Sydney	Margarine, poly-unsaturated	2010-06-01	324
Melbourne	Margarine, poly-unsaturated	2010-06-01	323
Brisbane	Margarine, poly-unsaturated	2010-06-01	326
Perth	Margarine, poly-unsaturated	2010-06-01	326
Hobart	Margarine, poly-unsaturated	2010-06-01	324
Darwin	Margarine, poly-unsaturated	2010-06-01	321
Sydney	Baked beans, in tomato sauce	2010-06-01	165
Melbourne	Baked beans, in tomato sauce	2010-06-01	167
Brisbane	Baked beans, in tomato sauce	2010-06-01	167
Adelaide	Baked beans, in tomato sauce	2010-06-01	162
Perth	Baked beans, in tomato sauce	2010-06-01	167
Hobart	Baked beans, in tomato sauce	2010-06-01	167
Darwin	Baked beans, in tomato sauce	2010-06-01	179
Sydney	Baby food	2010-06-01	122
Melbourne	Baby food	2010-06-01	124
Brisbane	Baby food	2010-06-01	121
Adelaide	Baby food	2010-06-01	122
Perth	Baby food	2010-06-01	124
Hobart	Baby food	2010-06-01	124
Darwin	Baby food	2010-06-01	127
Sydney	Laundry detergent	2010-06-01	566
Melbourne	Laundry detergent	2010-06-01	537
Brisbane	Laundry detergent	2010-06-01	547
Adelaide	Laundry detergent	2010-06-01	560
Perth	Laundry detergent	2010-06-01	589
Hobart	Laundry detergent	2010-06-01	566
Darwin	Laundry detergent	2010-06-01	578
Melbourne	Dishwashing detergent	2010-06-01	347
Brisbane	Dishwashing detergent	2010-06-01	373
Adelaide	Dishwashing detergent	2010-06-01	321
Perth	Dishwashing detergent	2010-06-01	310
Hobart	Dishwashing detergent	2010-06-01	384
Darwin	Dishwashing detergent	2010-06-01	391
Sydney	Facial tissues	2010-06-01	218
Melbourne	Facial tissues	2010-06-01	233
Brisbane	Facial tissues	2010-06-01	221
Adelaide	Facial tissues	2010-06-01	217
Perth	Facial tissues	2010-06-01	214
Hobart	Facial tissues	2010-06-01	219
Darwin	Facial tissues	2010-06-01	233
Sydney	Toilet tissue	2010-06-01	714
Melbourne	Toilet tissue	2010-06-01	711
Brisbane	Toilet tissue	2010-06-01	700
Adelaide	Toilet tissue	2010-06-01	702
Perth	Toilet tissue	2010-06-01	735
Darwin	Toilet tissue	2010-06-01	717
Sydney	Pet food	2010-06-01	153
Melbourne	Pet food	2010-06-01	153
Brisbane	Pet food	2010-06-01	151
Adelaide	Pet food	2010-06-01	150
Perth	Pet food	2010-06-01	149
Darwin	Pet food	2010-06-01	164
Sydney	Petrol, unleaded	2010-06-01	127
Melbourne	Petrol, unleaded	2010-06-01	129
Brisbane	Petrol, unleaded	2010-06-01	130
Perth	Petrol, unleaded	2010-06-01	129
Hobart	Petrol, unleaded	2010-06-01	135
Darwin	Petrol, unleaded	2010-06-01	134
Sydney	Beer, full strength	2010-06-01	4016
Melbourne	Beer, full strength	2010-06-01	4032
Brisbane	Beer, full strength	2010-06-01	4012
Adelaide	Beer, full strength	2010-06-01	4307
Perth	Beer, full strength	2010-06-01	4362
Hobart	Beer, full strength	2010-06-01	4228
Darwin	Beer, full strength	2010-06-01	4513
Melbourne	Draught beer, low alcohol, public bar	2010-06-01	316
Brisbane	Draught beer, low alcohol, public bar	2010-06-01	303
Adelaide	Draught beer, low alcohol, public bar	2010-06-01	378
Perth	Draught beer, low alcohol, public bar	2010-06-01	358
Hobart	Draught beer, low alcohol, public bar	2010-06-01	313
Darwin	Draught beer, low alcohol, public bar	2010-06-01	274
Sydney	Draught beer, full strength, public bar	2010-06-01	324
Melbourne	Draught beer, full strength, public bar	2010-06-01	373
Brisbane	Draught beer, full strength, public bar	2010-06-01	328
Adelaide	Draught beer, full strength, public bar	2010-06-01	422
Perth	Draught beer, full strength, public bar	2010-06-01	390
Hobart	Draught beer, full strength, public bar	2010-06-01	367
Darwin	Draught beer, full strength, public bar	2010-06-01	380
Sydney	Scotch	2010-06-01	512
Melbourne	Scotch	2010-06-01	621
Brisbane	Scotch	2010-06-01	488
Adelaide	Scotch	2010-06-01	589
Perth	Scotch	2010-06-01	609
Hobart	Scotch	2010-06-01	458
Darwin	Scotch	2010-06-01	510
Sydney	Toilet soap	2010-06-01	411
Melbourne	Toilet soap	2010-06-01	408
Brisbane	Toilet soap	2010-06-01	392
Adelaide	Toilet soap	2010-06-01	381
Perth	Toilet soap	2010-06-01	404
Hobart	Toilet soap	2010-06-01	384
Darwin	Toilet soap	2010-06-01	397
Sydney	Milk	2010-09-01	369
Melbourne	Milk	2010-09-01	364
Brisbane	Milk	2010-09-01	320
Perth	Milk	2010-09-01	321
Hobart	Milk	2010-09-01	366
Darwin	Milk	2010-09-01	414
Sydney	Cheese	2010-09-01	522
Melbourne	Cheese	2010-09-01	558
Brisbane	Cheese	2010-09-01	541
Adelaide	Cheese	2010-09-01	578
Perth	Cheese	2010-09-01	512
Hobart	Cheese	2010-09-01	533
Darwin	Cheese	2010-09-01	633
Sydney	Butter	2010-09-01	410
Melbourne	Butter	2010-09-01	364
Brisbane	Butter	2010-09-01	333
Adelaide	Butter	2010-09-01	376
Hobart	Butter	2010-09-01	400
Darwin	Butter	2010-09-01	449
Sydney	Bread white loaf, sliced	2010-09-01	378
Melbourne	Bread white loaf, sliced	2010-09-01	378
Brisbane	Bread white loaf, sliced	2010-09-01	348
Adelaide	Bread white loaf, sliced	2010-09-01	366
Perth	Bread white loaf, sliced	2010-09-01	324
Hobart	Bread white loaf, sliced	2010-09-01	319
Darwin	Bread white loaf, sliced	2010-09-01	407
Sydney	Biscuits, dry	2010-09-01	253
Melbourne	Biscuits, dry	2010-09-01	249
Brisbane	Biscuits, dry	2010-09-01	250
Perth	Biscuits, dry	2010-09-01	249
Hobart	Biscuits, dry	2010-09-01	249
Darwin	Biscuits, dry	2010-09-01	261
Sydney	Breakfast cereal	2010-09-01	410
Melbourne	Breakfast cereal	2010-09-01	419
Brisbane	Breakfast cereal	2010-09-01	414
Adelaide	Breakfast cereal	2010-09-01	398
Perth	Breakfast cereal	2010-09-01	402
Hobart	Breakfast cereal	2010-09-01	439
Darwin	Breakfast cereal	2010-09-01	405
Sydney	Flour, self raising	2010-09-01	302
Melbourne	Flour, self raising	2010-09-01	319
Brisbane	Flour, self raising	2010-09-01	331
Adelaide	Flour, self raising	2010-09-01	379
Perth	Flour, self raising	2010-09-01	379
Hobart	Flour, self raising	2010-09-01	390
Sydney	Rice	2010-09-01	256
Melbourne	Rice	2010-09-01	296
Brisbane	Rice	2010-09-01	306
Adelaide	Rice	2010-09-01	265
Perth	Rice	2010-09-01	272
Hobart	Rice	2010-09-01	254
Darwin	Rice	2010-09-01	315
Sydney	Roast beef	2010-09-01	1145
Melbourne	Roast beef	2010-09-01	1281
Brisbane	Roast beef	2010-09-01	1219
Adelaide	Roast beef	2010-09-01	1078
Perth	Roast beef	2010-09-01	1219
Hobart	Roast beef	2010-09-01	1164
Darwin	Roast beef	2010-09-01	1232
Sydney	Rump steak	2010-09-01	2003
Melbourne	Rump steak	2010-09-01	1859
Brisbane	Rump steak	2010-09-01	2287
Adelaide	Rump steak	2010-09-01	2017
Hobart	Rump steak	2010-09-01	2099
Darwin	Rump steak	2010-09-01	2022
Sydney	T-bone steak, with fillet	2010-09-01	2115
Melbourne	T-bone steak, with fillet	2010-09-01	2110
Brisbane	T-bone steak, with fillet	2010-09-01	2247
Adelaide	T-bone steak, with fillet	2010-09-01	2074
Perth	T-bone steak, with fillet	2010-09-01	2061
Hobart	T-bone steak, with fillet	2010-09-01	1986
Sydney	Chuck steak	2010-09-01	1079
Melbourne	Chuck steak	2010-09-01	1056
Brisbane	Chuck steak	2010-09-01	1107
Adelaide	Chuck steak	2010-09-01	1065
Perth	Chuck steak	2010-09-01	1104
Hobart	Chuck steak	2010-09-01	1090
Darwin	Chuck steak	2010-09-01	1043
Sydney	Lamb leg	2010-09-01	1186
Melbourne	Lamb leg	2010-09-01	1117
Brisbane	Lamb leg	2010-09-01	1149
Adelaide	Lamb leg	2010-09-01	1110
Perth	Lamb leg	2010-09-01	1162
Hobart	Lamb leg	2010-09-01	1179
Darwin	Lamb leg	2010-09-01	1134
Melbourne	Lamb loin chops	2010-09-01	1760
Brisbane	Lamb loin chops	2010-09-01	1909
Adelaide	Lamb loin chops	2010-09-01	1906
Perth	Lamb loin chops	2010-09-01	1960
Hobart	Lamb loin chops	2010-09-01	1921
Darwin	Lamb loin chops	2010-09-01	2112
Sydney	Lamb forequarter chops	2010-09-01	1091
Melbourne	Lamb forequarter chops	2010-09-01	1066
Brisbane	Lamb forequarter chops	2010-09-01	1065
Adelaide	Lamb forequarter chops	2010-09-01	1039
Perth	Lamb forequarter chops	2010-09-01	1119
Hobart	Lamb forequarter chops	2010-09-01	1008
Sydney	Pork leg	2010-09-01	766
Melbourne	Pork leg	2010-09-01	902
Brisbane	Pork leg	2010-09-01	836
Adelaide	Pork leg	2010-09-01	884
Perth	Pork leg	2010-09-01	831
Hobart	Pork leg	2010-09-01	881
Darwin	Pork leg	2010-09-01	910
Sydney	Pork loin chops	2010-09-01	1452
Melbourne	Pork loin chops	2010-09-01	1446
Brisbane	Pork loin chops	2010-09-01	1575
Adelaide	Pork loin chops	2010-09-01	1542
Perth	Pork loin chops	2010-09-01	1665
Hobart	Pork loin chops	2010-09-01	1704
Darwin	Pork loin chops	2010-09-01	1549
Sydney	Chicken, whole fresh	2010-09-01	581
Melbourne	Chicken, whole fresh	2010-09-01	588
Brisbane	Chicken, whole fresh	2010-09-01	575
Adelaide	Chicken, whole fresh	2010-09-01	591
Perth	Chicken, whole fresh	2010-09-01	645
Hobart	Chicken, whole fresh	2010-09-01	639
Sydney	Bacon, middle rashers	2010-09-01	1079
Melbourne	Bacon, middle rashers	2010-09-01	1030
Brisbane	Bacon, middle rashers	2010-09-01	941
Adelaide	Bacon, middle rashers	2010-09-01	927
Perth	Bacon, middle rashers	2010-09-01	1025
Hobart	Bacon, middle rashers	2010-09-01	972
Darwin	Bacon, middle rashers	2010-09-01	1035
Sydney	Beef Sausages	2010-09-01	648
Melbourne	Beef Sausages	2010-09-01	623
Brisbane	Beef Sausages	2010-09-01	741
Adelaide	Beef Sausages	2010-09-01	668
Perth	Beef Sausages	2010-09-01	727
Hobart	Beef Sausages	2010-09-01	697
Darwin	Beef Sausages	2010-09-01	630
Sydney	Salmon, pink	2010-09-01	357
Melbourne	Salmon, pink	2010-09-01	316
Adelaide	Salmon, pink	2010-09-01	328
Perth	Salmon, pink	2010-09-01	374
Hobart	Salmon, pink	2010-09-01	337
Darwin	Salmon, pink	2010-09-01	365
Sydney	Oranges	2010-09-01	241
Melbourne	Oranges	2010-09-01	256
Brisbane	Oranges	2010-09-01	252
Adelaide	Oranges	2010-09-01	263
Perth	Oranges	2010-09-01	317
Hobart	Oranges	2010-09-01	257
Darwin	Oranges	2010-09-01	341
Sydney	Bananas	2010-09-01	231
Melbourne	Bananas	2010-09-01	233
Brisbane	Bananas	2010-09-01	227
Adelaide	Bananas	2010-09-01	229
Perth	Bananas	2010-09-01	342
Hobart	Bananas	2010-09-01	269
Darwin	Bananas	2010-09-01	421
Melbourne	Potatoes	2010-09-01	234
Brisbane	Potatoes	2010-09-01	215
Adelaide	Potatoes	2010-09-01	262
Perth	Potatoes	2010-09-01	258
Hobart	Potatoes	2010-09-01	215
Darwin	Potatoes	2010-09-01	298
Sydney	Tomatoes	2010-09-01	394
Melbourne	Tomatoes	2010-09-01	377
Brisbane	Tomatoes	2010-09-01	346
Adelaide	Tomatoes	2010-09-01	438
Perth	Tomatoes	2010-09-01	446
Hobart	Tomatoes	2010-09-01	401
Darwin	Tomatoes	2010-09-01	562
Sydney	Carrots	2010-09-01	220
Brisbane	Carrots	2010-09-01	187
Adelaide	Carrots	2010-09-01	197
Perth	Carrots	2010-09-01	169
Hobart	Carrots	2010-09-01	230
Darwin	Carrots	2010-09-01	257
Sydney	Onions	2010-09-01	264
Melbourne	Onions	2010-09-01	238
Brisbane	Onions	2010-09-01	234
Adelaide	Onions	2010-09-01	251
Perth	Onions	2010-09-01	221
Hobart	Onions	2010-09-01	188
Darwin	Onions	2010-09-01	295
Sydney	Peaches	2010-09-01	389
Melbourne	Peaches	2010-09-01	375
Adelaide	Peaches	2010-09-01	388
Perth	Peaches	2010-09-01	420
Hobart	Peaches	2010-09-01	372
Darwin	Peaches	2010-09-01	394
Sydney	Pineapple, sliced	2010-09-01	213
Melbourne	Pineapple, sliced	2010-09-01	213
Brisbane	Pineapple, sliced	2010-09-01	200
Adelaide	Pineapple, sliced	2010-09-01	198
Perth	Pineapple, sliced	2010-09-01	211
Hobart	Pineapple, sliced	2010-09-01	214
Sydney	Peas, frozen	2010-09-01	233
Melbourne	Peas, frozen	2010-09-01	214
Brisbane	Peas, frozen	2010-09-01	197
Adelaide	Peas, frozen	2010-09-01	199
Perth	Peas, frozen	2010-09-01	194
Hobart	Peas, frozen	2010-09-01	214
Sydney	Chocolate milk	2010-09-01	385
Melbourne	Chocolate milk	2010-09-01	391
Brisbane	Chocolate milk	2010-09-01	408
Adelaide	Chocolate milk	2010-09-01	380
Perth	Chocolate milk	2010-09-01	383
Hobart	Chocolate milk	2010-09-01	404
Darwin	Chocolate milk	2010-09-01	390
Sydney	Eggs	2010-09-01	373
Melbourne	Eggs	2010-09-01	437
Brisbane	Eggs	2010-09-01	389
Adelaide	Eggs	2010-09-01	409
Perth	Eggs	2010-09-01	445
Hobart	Eggs	2010-09-01	435
Darwin	Eggs	2010-09-01	495
Melbourne	Sugar, white	2010-09-01	278
Brisbane	Sugar, white	2010-09-01	259
Adelaide	Sugar, white	2010-09-01	286
Perth	Sugar, white	2010-09-01	323
Hobart	Sugar, white	2010-09-01	419
Darwin	Sugar, white	2010-09-01	306
Sydney	Jam, strawberry	2010-09-01	323
Melbourne	Jam, strawberry	2010-09-01	319
Brisbane	Jam, strawberry	2010-09-01	330
Adelaide	Jam, strawberry	2010-09-01	329
Perth	Jam, strawberry	2010-09-01	322
Hobart	Jam, strawberry	2010-09-01	315
Sydney	Teabags	2010-09-01	421
Melbourne	Teabags	2010-09-01	420
Brisbane	Teabags	2010-09-01	391
Adelaide	Teabags	2010-09-01	371
Perth	Teabags	2010-09-01	407
Hobart	Teabags	2010-09-01	417
Darwin	Teabags	2010-09-01	421
Sydney	Coffee, instant	2010-09-01	797
Melbourne	Coffee, instant	2010-09-01	795
Brisbane	Coffee, instant	2010-09-01	794
Adelaide	Coffee, instant	2010-09-01	801
Perth	Coffee, instant	2010-09-01	806
Hobart	Coffee, instant	2010-09-01	799
Darwin	Coffee, instant	2010-09-01	827
Sydney	Tomato sauce	2010-09-01	211
Melbourne	Tomato sauce	2010-09-01	224
Adelaide	Tomato sauce	2010-09-01	224
Perth	Tomato sauce	2010-09-01	225
Hobart	Tomato sauce	2010-09-01	211
Darwin	Tomato sauce	2010-09-01	236
Sydney	Margarine, poly-unsaturated	2010-09-01	325
Melbourne	Margarine, poly-unsaturated	2010-09-01	333
Brisbane	Margarine, poly-unsaturated	2010-09-01	319
Adelaide	Margarine, poly-unsaturated	2010-09-01	305
Perth	Margarine, poly-unsaturated	2010-09-01	318
Hobart	Margarine, poly-unsaturated	2010-09-01	321
Darwin	Margarine, poly-unsaturated	2010-09-01	325
Sydney	Baked beans, in tomato sauce	2010-09-01	161
Brisbane	Baked beans, in tomato sauce	2010-09-01	158
Adelaide	Baked beans, in tomato sauce	2010-09-01	157
Perth	Baked beans, in tomato sauce	2010-09-01	163
Hobart	Baked beans, in tomato sauce	2010-09-01	167
Darwin	Baked beans, in tomato sauce	2010-09-01	180
Sydney	Baby food	2010-09-01	122
Melbourne	Baby food	2010-09-01	124
Brisbane	Baby food	2010-09-01	121
Adelaide	Baby food	2010-09-01	122
Perth	Baby food	2010-09-01	124
Hobart	Baby food	2010-09-01	124
Darwin	Baby food	2010-09-01	127
Sydney	Laundry detergent	2010-09-01	899
Melbourne	Laundry detergent	2010-09-01	872
Brisbane	Laundry detergent	2010-09-01	839
Adelaide	Laundry detergent	2010-09-01	928
Perth	Laundry detergent	2010-09-01	922
Hobart	Laundry detergent	2010-09-01	875
Darwin	Laundry detergent	2010-09-01	976
Sydney	Dishwashing detergent	2010-09-01	378
Melbourne	Dishwashing detergent	2010-09-01	384
Brisbane	Dishwashing detergent	2010-09-01	367
Perth	Dishwashing detergent	2010-09-01	358
Hobart	Dishwashing detergent	2010-09-01	368
Darwin	Dishwashing detergent	2010-09-01	391
Sydney	Facial tissues	2010-09-01	223
Melbourne	Facial tissues	2010-09-01	221
Brisbane	Facial tissues	2010-09-01	221
Adelaide	Facial tissues	2010-09-01	223
Perth	Facial tissues	2010-09-01	222
Hobart	Facial tissues	2010-09-01	219
Darwin	Facial tissues	2010-09-01	237
Sydney	Toilet tissue	2010-09-01	684
Melbourne	Toilet tissue	2010-09-01	708
Brisbane	Toilet tissue	2010-09-01	730
Adelaide	Toilet tissue	2010-09-01	729
Perth	Toilet tissue	2010-09-01	735
Hobart	Toilet tissue	2010-09-01	771
Darwin	Toilet tissue	2010-09-01	685
Sydney	Pet food	2010-09-01	150
Melbourne	Pet food	2010-09-01	149
Brisbane	Pet food	2010-09-01	146
Adelaide	Pet food	2010-09-01	140
Perth	Pet food	2010-09-01	147
Darwin	Pet food	2010-09-01	167
Sydney	Petrol, unleaded	2010-09-01	122
Melbourne	Petrol, unleaded	2010-09-01	123
Brisbane	Petrol, unleaded	2010-09-01	125
Adelaide	Petrol, unleaded	2010-09-01	120
Perth	Petrol, unleaded	2010-09-01	125
Hobart	Petrol, unleaded	2010-09-01	135
Darwin	Petrol, unleaded	2010-09-01	133
Sydney	Beer, full strength	2010-09-01	4046
Melbourne	Beer, full strength	2010-09-01	4056
Adelaide	Beer, full strength	2010-09-01	4342
Perth	Beer, full strength	2010-09-01	4353
Hobart	Beer, full strength	2010-09-01	4331
Sydney	Draught beer, low alcohol, public bar	2010-09-01	285
Melbourne	Draught beer, low alcohol, public bar	2010-09-01	311
Brisbane	Draught beer, low alcohol, public bar	2010-09-01	310
Adelaide	Draught beer, low alcohol, public bar	2010-09-01	385
Perth	Draught beer, low alcohol, public bar	2010-09-01	359
Hobart	Draught beer, low alcohol, public bar	2010-09-01	316
Darwin	Draught beer, low alcohol, public bar	2010-09-01	280
Sydney	Draught beer, full strength, public bar	2010-09-01	327
Melbourne	Draught beer, full strength, public bar	2010-09-01	378
Brisbane	Draught beer, full strength, public bar	2010-09-01	336
Perth	Draught beer, full strength, public bar	2010-09-01	393
Hobart	Draught beer, full strength, public bar	2010-09-01	377
Darwin	Draught beer, full strength, public bar	2010-09-01	382
Sydney	Scotch	2010-09-01	515
Melbourne	Scotch	2010-09-01	624
Brisbane	Scotch	2010-09-01	518
Adelaide	Scotch	2010-09-01	600
Perth	Scotch	2010-09-01	610
Hobart	Scotch	2010-09-01	472
Darwin	Scotch	2010-09-01	514
Sydney	Toilet soap	2010-09-01	391
Melbourne	Toilet soap	2010-09-01	426
Brisbane	Toilet soap	2010-09-01	424
Adelaide	Toilet soap	2010-09-01	415
Perth	Toilet soap	2010-09-01	415
Hobart	Toilet soap	2010-09-01	394
Darwin	Toilet soap	2010-09-01	415
Sydney	Milk	2010-12-01	373
Melbourne	Milk	2010-12-01	362
Brisbane	Milk	2010-12-01	317
Adelaide	Milk	2010-12-01	349
Perth	Milk	2010-12-01	315
Hobart	Milk	2010-12-01	366
Darwin	Milk	2010-12-01	414
Sydney	Cheese	2010-12-01	512
Melbourne	Cheese	2010-12-01	500
Brisbane	Cheese	2010-12-01	550
Adelaide	Cheese	2010-12-01	559
Perth	Cheese	2010-12-01	519
Hobart	Cheese	2010-12-01	567
Sydney	Butter	2010-12-01	425
Melbourne	Butter	2010-12-01	375
Brisbane	Butter	2010-12-01	352
Adelaide	Butter	2010-12-01	386
Perth	Butter	2010-12-01	418
Hobart	Butter	2010-12-01	400
Darwin	Butter	2010-12-01	465
Sydney	Bread white loaf, sliced	2010-12-01	379
Melbourne	Bread white loaf, sliced	2010-12-01	383
Brisbane	Bread white loaf, sliced	2010-12-01	349
Perth	Bread white loaf, sliced	2010-12-01	325
Hobart	Bread white loaf, sliced	2010-12-01	328
Darwin	Bread white loaf, sliced	2010-12-01	414
Sydney	Biscuits, dry	2010-12-01	251
Melbourne	Biscuits, dry	2010-12-01	249
Brisbane	Biscuits, dry	2010-12-01	250
Adelaide	Biscuits, dry	2010-12-01	248
Perth	Biscuits, dry	2010-12-01	249
Hobart	Biscuits, dry	2010-12-01	249
Darwin	Biscuits, dry	2010-12-01	261
Sydney	Breakfast cereal	2010-12-01	396
Melbourne	Breakfast cereal	2010-12-01	405
Brisbane	Breakfast cereal	2010-12-01	388
Adelaide	Breakfast cereal	2010-12-01	375
Perth	Breakfast cereal	2010-12-01	368
Hobart	Breakfast cereal	2010-12-01	375
Darwin	Breakfast cereal	2010-12-01	389
Sydney	Flour, self raising	2010-12-01	310
Brisbane	Flour, self raising	2010-12-01	346
Adelaide	Flour, self raising	2010-12-01	379
Perth	Flour, self raising	2010-12-01	376
Hobart	Flour, self raising	2010-12-01	391
Darwin	Flour, self raising	2010-12-01	393
Sydney	Rice	2010-12-01	245
Melbourne	Rice	2010-12-01	295
Brisbane	Rice	2010-12-01	310
Adelaide	Rice	2010-12-01	255
Perth	Rice	2010-12-01	291
Hobart	Rice	2010-12-01	251
Darwin	Rice	2010-12-01	313
Sydney	Roast beef	2010-12-01	1072
Melbourne	Roast beef	2010-12-01	1130
Brisbane	Roast beef	2010-12-01	1090
Adelaide	Roast beef	2010-12-01	1055
Perth	Roast beef	2010-12-01	1066
Hobart	Roast beef	2010-12-01	1139
Darwin	Roast beef	2010-12-01	1066
Sydney	Rump steak	2010-12-01	1705
Brisbane	Rump steak	2010-12-01	1915
Adelaide	Rump steak	2010-12-01	1831
Perth	Rump steak	2010-12-01	1806
Hobart	Rump steak	2010-12-01	1872
Darwin	Rump steak	2010-12-01	1834
Sydney	T-bone steak, with fillet	2010-12-01	2003
Melbourne	T-bone steak, with fillet	2010-12-01	1984
Brisbane	T-bone steak, with fillet	2010-12-01	2160
Adelaide	T-bone steak, with fillet	2010-12-01	1983
Perth	T-bone steak, with fillet	2010-12-01	2040
Hobart	T-bone steak, with fillet	2010-12-01	1919
Darwin	T-bone steak, with fillet	2010-12-01	2035
Sydney	Chuck steak	2010-12-01	1013
Melbourne	Chuck steak	2010-12-01	940
Brisbane	Chuck steak	2010-12-01	1081
Adelaide	Chuck steak	2010-12-01	999
Perth	Chuck steak	2010-12-01	1039
Hobart	Chuck steak	2010-12-01	1014
Sydney	Lamb leg	2010-12-01	1196
Melbourne	Lamb leg	2010-12-01	1095
Brisbane	Lamb leg	2010-12-01	1181
Adelaide	Lamb leg	2010-12-01	1099
Hobart	Lamb leg	2010-12-01	1090
Darwin	Lamb leg	2010-12-01	1131
Melbourne	Lamb loin chops	2010-12-01	1933
Brisbane	Lamb loin chops	2010-12-01	2134
Adelaide	Lamb loin chops	2010-12-01	1965
Perth	Lamb loin chops	2010-12-01	2020
Hobart	Lamb loin chops	2010-12-01	1933
Darwin	Lamb loin chops	2010-12-01	1954
Sydney	Lamb forequarter chops	2010-12-01	1073
Melbourne	Lamb forequarter chops	2010-12-01	983
Brisbane	Lamb forequarter chops	2010-12-01	1052
Adelaide	Lamb forequarter chops	2010-12-01	1130
Perth	Lamb forequarter chops	2010-12-01	1035
Hobart	Lamb forequarter chops	2010-12-01	1074
Darwin	Lamb forequarter chops	2010-12-01	1041
Sydney	Pork leg	2010-12-01	863
Melbourne	Pork leg	2010-12-01	924
Brisbane	Pork leg	2010-12-01	950
Adelaide	Pork leg	2010-12-01	916
Perth	Pork leg	2010-12-01	872
Darwin	Pork leg	2010-12-01	973
Sydney	Pork loin chops	2010-12-01	1523
Melbourne	Pork loin chops	2010-12-01	1578
Brisbane	Pork loin chops	2010-12-01	1597
Adelaide	Pork loin chops	2010-12-01	1516
Perth	Pork loin chops	2010-12-01	1644
Hobart	Pork loin chops	2010-12-01	1687
Darwin	Pork loin chops	2010-12-01	1562
Sydney	Chicken, whole fresh	2010-12-01	606
Melbourne	Chicken, whole fresh	2010-12-01	584
Adelaide	Chicken, whole fresh	2010-12-01	570
Perth	Chicken, whole fresh	2010-12-01	655
Hobart	Chicken, whole fresh	2010-12-01	643
Darwin	Chicken, whole fresh	2010-12-01	543
Sydney	Bacon, middle rashers	2010-12-01	1077
Melbourne	Bacon, middle rashers	2010-12-01	1012
Brisbane	Bacon, middle rashers	2010-12-01	944
Adelaide	Bacon, middle rashers	2010-12-01	953
Perth	Bacon, middle rashers	2010-12-01	926
Hobart	Bacon, middle rashers	2010-12-01	955
Darwin	Bacon, middle rashers	2010-12-01	1059
Sydney	Beef Sausages	2010-12-01	671
Melbourne	Beef Sausages	2010-12-01	645
Brisbane	Beef Sausages	2010-12-01	760
Adelaide	Beef Sausages	2010-12-01	637
Perth	Beef Sausages	2010-12-01	692
Hobart	Beef Sausages	2010-12-01	714
Darwin	Beef Sausages	2010-12-01	644
Sydney	Salmon, pink	2010-12-01	366
Melbourne	Salmon, pink	2010-12-01	309
Adelaide	Salmon, pink	2010-12-01	332
Perth	Salmon, pink	2010-12-01	350
Hobart	Salmon, pink	2010-12-01	330
Darwin	Salmon, pink	2010-12-01	357
Sydney	Oranges	2010-12-01	339
Melbourne	Oranges	2010-12-01	290
Brisbane	Oranges	2010-12-01	321
Adelaide	Oranges	2010-12-01	317
Perth	Oranges	2010-12-01	400
Hobart	Oranges	2010-12-01	354
Darwin	Oranges	2010-12-01	361
Sydney	Bananas	2010-12-01	255
Melbourne	Bananas	2010-12-01	268
Brisbane	Bananas	2010-12-01	254
Adelaide	Bananas	2010-12-01	285
Perth	Bananas	2010-12-01	343
Hobart	Bananas	2010-12-01	301
Darwin	Bananas	2010-12-01	421
Melbourne	Potatoes	2010-12-01	255
Brisbane	Potatoes	2010-12-01	247
Adelaide	Potatoes	2010-12-01	283
Perth	Potatoes	2010-12-01	249
Hobart	Potatoes	2010-12-01	255
Darwin	Potatoes	2010-12-01	315
Sydney	Tomatoes	2010-12-01	527
Melbourne	Tomatoes	2010-12-01	459
Brisbane	Tomatoes	2010-12-01	464
Adelaide	Tomatoes	2010-12-01	479
Perth	Tomatoes	2010-12-01	509
Hobart	Tomatoes	2010-12-01	497
Darwin	Tomatoes	2010-12-01	597
Sydney	Carrots	2010-12-01	225
Brisbane	Carrots	2010-12-01	198
Adelaide	Carrots	2010-12-01	209
Perth	Carrots	2010-12-01	166
Hobart	Carrots	2010-12-01	243
Darwin	Carrots	2010-12-01	274
Sydney	Onions	2010-12-01	302
Melbourne	Onions	2010-12-01	289
Brisbane	Onions	2010-12-01	278
Adelaide	Onions	2010-12-01	312
Perth	Onions	2010-12-01	271
Hobart	Onions	2010-12-01	202
Darwin	Onions	2010-12-01	333
Sydney	Peaches	2010-12-01	394
Melbourne	Peaches	2010-12-01	376
Adelaide	Peaches	2010-12-01	368
Perth	Peaches	2010-12-01	415
Hobart	Peaches	2010-12-01	373
Darwin	Peaches	2010-12-01	394
Sydney	Pineapple, sliced	2010-12-01	211
Melbourne	Pineapple, sliced	2010-12-01	213
Brisbane	Pineapple, sliced	2010-12-01	208
Adelaide	Pineapple, sliced	2010-12-01	198
Perth	Pineapple, sliced	2010-12-01	211
Hobart	Pineapple, sliced	2010-12-01	210
Darwin	Pineapple, sliced	2010-12-01	211
Sydney	Peas, frozen	2010-12-01	231
Brisbane	Peas, frozen	2010-12-01	188
Adelaide	Peas, frozen	2010-12-01	204
Perth	Peas, frozen	2010-12-01	207
Hobart	Peas, frozen	2010-12-01	211
Darwin	Peas, frozen	2010-12-01	243
Sydney	Chocolate milk	2010-12-01	366
Melbourne	Chocolate milk	2010-12-01	377
Brisbane	Chocolate milk	2010-12-01	412
Adelaide	Chocolate milk	2010-12-01	385
Hobart	Chocolate milk	2010-12-01	381
Darwin	Chocolate milk	2010-12-01	365
Sydney	Eggs	2010-12-01	548
Melbourne	Eggs	2010-12-01	541
Brisbane	Eggs	2010-12-01	567
Adelaide	Eggs	2010-12-01	509
Perth	Eggs	2010-12-01	616
Hobart	Eggs	2010-12-01	529
Darwin	Eggs	2010-12-01	574
Melbourne	Sugar, white	2010-12-01	286
Brisbane	Sugar, white	2010-12-01	253
Adelaide	Sugar, white	2010-12-01	286
Perth	Sugar, white	2010-12-01	315
Hobart	Sugar, white	2010-12-01	396
Darwin	Sugar, white	2010-12-01	304
Sydney	Jam, strawberry	2010-12-01	338
Melbourne	Jam, strawberry	2010-12-01	319
Brisbane	Jam, strawberry	2010-12-01	338
Adelaide	Jam, strawberry	2010-12-01	330
Perth	Jam, strawberry	2010-12-01	322
Darwin	Jam, strawberry	2010-12-01	332
Sydney	Teabags	2010-12-01	426
Melbourne	Teabags	2010-12-01	426
Brisbane	Teabags	2010-12-01	412
Adelaide	Teabags	2010-12-01	386
Perth	Teabags	2010-12-01	410
Hobart	Teabags	2010-12-01	417
Darwin	Teabags	2010-12-01	418
Sydney	Coffee, instant	2010-12-01	763
Melbourne	Coffee, instant	2010-12-01	795
Brisbane	Coffee, instant	2010-12-01	794
Adelaide	Coffee, instant	2010-12-01	801
Perth	Coffee, instant	2010-12-01	806
Hobart	Coffee, instant	2010-12-01	799
Darwin	Coffee, instant	2010-12-01	827
Sydney	Tomato sauce	2010-12-01	187
Brisbane	Tomato sauce	2010-12-01	211
Adelaide	Tomato sauce	2010-12-01	228
Perth	Tomato sauce	2010-12-01	224
Hobart	Tomato sauce	2010-12-01	215
Darwin	Tomato sauce	2010-12-01	231
Sydney	Margarine, poly-unsaturated	2010-12-01	319
Melbourne	Margarine, poly-unsaturated	2010-12-01	313
Brisbane	Margarine, poly-unsaturated	2010-12-01	316
Adelaide	Margarine, poly-unsaturated	2010-12-01	311
Perth	Margarine, poly-unsaturated	2010-12-01	319
Hobart	Margarine, poly-unsaturated	2010-12-01	321
Darwin	Margarine, poly-unsaturated	2010-12-01	322
Sydney	Baked beans, in tomato sauce	2010-12-01	150
Brisbane	Baked beans, in tomato sauce	2010-12-01	149
Adelaide	Baked beans, in tomato sauce	2010-12-01	157
Perth	Baked beans, in tomato sauce	2010-12-01	162
Hobart	Baked beans, in tomato sauce	2010-12-01	167
Darwin	Baked beans, in tomato sauce	2010-12-01	166
Sydney	Baby food	2010-12-01	116
Melbourne	Baby food	2010-12-01	121
Brisbane	Baby food	2010-12-01	121
Adelaide	Baby food	2010-12-01	119
Perth	Baby food	2010-12-01	125
Hobart	Baby food	2010-12-01	124
Darwin	Baby food	2010-12-01	124
Sydney	Laundry detergent	2010-12-01	866
Melbourne	Laundry detergent	2010-12-01	808
Brisbane	Laundry detergent	2010-12-01	857
Adelaide	Laundry detergent	2010-12-01	757
Perth	Laundry detergent	2010-12-01	793
Hobart	Laundry detergent	2010-12-01	828
Darwin	Laundry detergent	2010-12-01	853
Sydney	Dishwashing detergent	2010-12-01	342
Melbourne	Dishwashing detergent	2010-12-01	358
Adelaide	Dishwashing detergent	2010-12-01	330
Perth	Dishwashing detergent	2010-12-01	338
Hobart	Dishwashing detergent	2010-12-01	342
Darwin	Dishwashing detergent	2010-12-01	349
Sydney	Facial tissues	2010-12-01	231
Melbourne	Facial tissues	2010-12-01	221
Brisbane	Facial tissues	2010-12-01	225
Adelaide	Facial tissues	2010-12-01	233
Perth	Facial tissues	2010-12-01	216
Hobart	Facial tissues	2010-12-01	224
Darwin	Facial tissues	2010-12-01	243
Sydney	Toilet tissue	2010-12-01	678
Melbourne	Toilet tissue	2010-12-01	743
Brisbane	Toilet tissue	2010-12-01	710
Adelaide	Toilet tissue	2010-12-01	709
Perth	Toilet tissue	2010-12-01	785
Hobart	Toilet tissue	2010-12-01	771
Darwin	Toilet tissue	2010-12-01	703
Sydney	Pet food	2010-12-01	138
Melbourne	Pet food	2010-12-01	136
Brisbane	Pet food	2010-12-01	131
Adelaide	Pet food	2010-12-01	145
Hobart	Pet food	2010-12-01	134
Darwin	Pet food	2010-12-01	142
Sydney	Petrol, unleaded	2010-12-01	127
Melbourne	Petrol, unleaded	2010-12-01	125
Brisbane	Petrol, unleaded	2010-12-01	128
Adelaide	Petrol, unleaded	2010-12-01	123
Perth	Petrol, unleaded	2010-12-01	125
Hobart	Petrol, unleaded	2010-12-01	131
Darwin	Petrol, unleaded	2010-12-01	132
Sydney	Beer, full strength	2010-12-01	3973
Brisbane	Beer, full strength	2010-12-01	4052
Adelaide	Beer, full strength	2010-12-01	4419
Perth	Beer, full strength	2010-12-01	4324
Hobart	Beer, full strength	2010-12-01	4369
Darwin	Beer, full strength	2010-12-01	4712
Sydney	Draught beer, low alcohol, public bar	2010-12-01	288
Melbourne	Draught beer, low alcohol, public bar	2010-12-01	306
Brisbane	Draught beer, low alcohol, public bar	2010-12-01	313
Adelaide	Draught beer, low alcohol, public bar	2010-12-01	384
Sydney	Milk	2011-03-01	311
Hobart	Draught beer, low alcohol, public bar	2010-12-01	323
Darwin	Draught beer, low alcohol, public bar	2010-12-01	282
Sydney	Draught beer, full strength, public bar	2010-12-01	331
Melbourne	Draught beer, full strength, public bar	2010-12-01	381
Brisbane	Draught beer, full strength, public bar	2010-12-01	340
Adelaide	Draught beer, full strength, public bar	2010-12-01	428
Perth	Draught beer, full strength, public bar	2010-12-01	401
Hobart	Draught beer, full strength, public bar	2010-12-01	381
Darwin	Draught beer, full strength, public bar	2010-12-01	378
Sydney	Scotch	2010-12-01	522
Melbourne	Scotch	2010-12-01	642
Brisbane	Scotch	2010-12-01	523
Adelaide	Scotch	2010-12-01	616
Perth	Scotch	2010-12-01	617
Hobart	Scotch	2010-12-01	487
Darwin	Scotch	2010-12-01	507
Sydney	Toilet soap	2010-12-01	419
Brisbane	Toilet soap	2010-12-01	405
Adelaide	Toilet soap	2010-12-01	405
Perth	Toilet soap	2010-12-01	413
Hobart	Toilet soap	2010-12-01	396
Darwin	Toilet soap	2010-12-01	430
Melbourne	Milk	2011-03-01	311
Brisbane	Milk	2011-03-01	281
Adelaide	Milk	2011-03-01	277
Perth	Milk	2011-03-01	283
Hobart	Milk	2011-03-01	333
Darwin	Milk	2011-03-01	378
Sydney	Cheese	2011-03-01	500
Melbourne	Cheese	2011-03-01	576
Brisbane	Cheese	2011-03-01	542
Adelaide	Cheese	2011-03-01	554
Perth	Cheese	2011-03-01	522
Hobart	Cheese	2011-03-01	480
Sydney	Butter	2011-03-01	436
Melbourne	Butter	2011-03-01	380
Brisbane	Butter	2011-03-01	372
Adelaide	Butter	2011-03-01	375
Perth	Butter	2011-03-01	400
Hobart	Butter	2011-03-01	374
Darwin	Butter	2011-03-01	454
Sydney	Bread white loaf, sliced	2011-03-01	371
Melbourne	Bread white loaf, sliced	2011-03-01	366
Brisbane	Bread white loaf, sliced	2011-03-01	346
Perth	Bread white loaf, sliced	2011-03-01	328
Hobart	Bread white loaf, sliced	2011-03-01	327
Darwin	Bread white loaf, sliced	2011-03-01	407
Sydney	Biscuits, dry	2011-03-01	247
Melbourne	Biscuits, dry	2011-03-01	247
Brisbane	Biscuits, dry	2011-03-01	250
Adelaide	Biscuits, dry	2011-03-01	243
Perth	Biscuits, dry	2011-03-01	249
Hobart	Biscuits, dry	2011-03-01	246
Darwin	Biscuits, dry	2011-03-01	258
Sydney	Breakfast cereal	2011-03-01	385
Melbourne	Breakfast cereal	2011-03-01	379
Brisbane	Breakfast cereal	2011-03-01	362
Adelaide	Breakfast cereal	2011-03-01	399
Perth	Breakfast cereal	2011-03-01	369
Hobart	Breakfast cereal	2011-03-01	412
Darwin	Breakfast cereal	2011-03-01	359
Sydney	Flour, self raising	2011-03-01	320
Brisbane	Flour, self raising	2011-03-01	364
Adelaide	Flour, self raising	2011-03-01	387
Perth	Flour, self raising	2011-03-01	389
Hobart	Flour, self raising	2011-03-01	390
Darwin	Flour, self raising	2011-03-01	399
Sydney	Rice	2011-03-01	253
Melbourne	Rice	2011-03-01	292
Brisbane	Rice	2011-03-01	269
Adelaide	Rice	2011-03-01	280
Perth	Rice	2011-03-01	290
Hobart	Rice	2011-03-01	248
Darwin	Rice	2011-03-01	306
Sydney	Roast beef	2011-03-01	1067
Melbourne	Roast beef	2011-03-01	1083
Brisbane	Roast beef	2011-03-01	1090
Adelaide	Roast beef	2011-03-01	1022
Perth	Roast beef	2011-03-01	1077
Hobart	Roast beef	2011-03-01	1085
Darwin	Roast beef	2011-03-01	1021
Sydney	Rump steak	2011-03-01	1833
Brisbane	Rump steak	2011-03-01	1910
Adelaide	Rump steak	2011-03-01	1941
Perth	Rump steak	2011-03-01	1735
Hobart	Rump steak	2011-03-01	1808
Darwin	Rump steak	2011-03-01	1838
Sydney	T-bone steak, with fillet	2011-03-01	1966
Melbourne	T-bone steak, with fillet	2011-03-01	1939
Brisbane	T-bone steak, with fillet	2011-03-01	2066
Adelaide	T-bone steak, with fillet	2011-03-01	2017
Perth	T-bone steak, with fillet	2011-03-01	1998
Hobart	T-bone steak, with fillet	2011-03-01	1927
Darwin	T-bone steak, with fillet	2011-03-01	1899
Sydney	Chuck steak	2011-03-01	1016
Melbourne	Chuck steak	2011-03-01	984
Brisbane	Chuck steak	2011-03-01	1096
Adelaide	Chuck steak	2011-03-01	997
Perth	Chuck steak	2011-03-01	979
Hobart	Chuck steak	2011-03-01	1058
Sydney	Lamb leg	2011-03-01	1238
Melbourne	Lamb leg	2011-03-01	1153
Brisbane	Lamb leg	2011-03-01	1208
Adelaide	Lamb leg	2011-03-01	1154
Perth	Lamb leg	2011-03-01	1191
Hobart	Lamb leg	2011-03-01	1197
Darwin	Lamb leg	2011-03-01	1180
Sydney	Lamb loin chops	2011-03-01	2119
Melbourne	Lamb loin chops	2011-03-01	2016
Brisbane	Lamb loin chops	2011-03-01	2040
Adelaide	Lamb loin chops	2011-03-01	2062
Perth	Lamb loin chops	2011-03-01	2123
Darwin	Lamb loin chops	2011-03-01	2123
Sydney	Lamb forequarter chops	2011-03-01	1200
Brisbane	Lamb forequarter chops	2011-03-01	1158
Adelaide	Lamb forequarter chops	2011-03-01	1159
Perth	Lamb forequarter chops	2011-03-01	1154
Hobart	Lamb forequarter chops	2011-03-01	1149
Darwin	Lamb forequarter chops	2011-03-01	1137
Sydney	Pork leg	2011-03-01	817
Melbourne	Pork leg	2011-03-01	896
Brisbane	Pork leg	2011-03-01	974
Adelaide	Pork leg	2011-03-01	892
Perth	Pork leg	2011-03-01	804
Hobart	Pork leg	2011-03-01	892
Sydney	Pork loin chops	2011-03-01	1577
Melbourne	Pork loin chops	2011-03-01	1554
Brisbane	Pork loin chops	2011-03-01	1577
Adelaide	Pork loin chops	2011-03-01	1624
Perth	Pork loin chops	2011-03-01	1623
Hobart	Pork loin chops	2011-03-01	1643
Darwin	Pork loin chops	2011-03-01	1505
Sydney	Chicken, whole fresh	2011-03-01	616
Melbourne	Chicken, whole fresh	2011-03-01	613
Brisbane	Chicken, whole fresh	2011-03-01	555
Perth	Chicken, whole fresh	2011-03-01	641
Hobart	Chicken, whole fresh	2011-03-01	658
Darwin	Chicken, whole fresh	2011-03-01	543
Sydney	Bacon, middle rashers	2011-03-01	1070
Melbourne	Bacon, middle rashers	2011-03-01	996
Brisbane	Bacon, middle rashers	2011-03-01	990
Adelaide	Bacon, middle rashers	2011-03-01	962
Perth	Bacon, middle rashers	2011-03-01	1016
Hobart	Bacon, middle rashers	2011-03-01	972
Darwin	Bacon, middle rashers	2011-03-01	1072
Sydney	Beef Sausages	2011-03-01	683
Melbourne	Beef Sausages	2011-03-01	640
Brisbane	Beef Sausages	2011-03-01	749
Adelaide	Beef Sausages	2011-03-01	653
Perth	Beef Sausages	2011-03-01	678
Hobart	Beef Sausages	2011-03-01	746
Darwin	Beef Sausages	2011-03-01	664
Sydney	Salmon, pink	2011-03-01	354
Melbourne	Salmon, pink	2011-03-01	317
Brisbane	Salmon, pink	2011-03-01	332
Perth	Salmon, pink	2011-03-01	349
Hobart	Salmon, pink	2011-03-01	346
Darwin	Salmon, pink	2011-03-01	351
Sydney	Oranges	2011-03-01	367
Melbourne	Oranges	2011-03-01	394
Brisbane	Oranges	2011-03-01	402
Adelaide	Oranges	2011-03-01	348
Perth	Oranges	2011-03-01	425
Hobart	Oranges	2011-03-01	404
Darwin	Oranges	2011-03-01	459
Sydney	Bananas	2011-03-01	539
Melbourne	Bananas	2011-03-01	528
Brisbane	Bananas	2011-03-01	495
Adelaide	Bananas	2011-03-01	548
Perth	Bananas	2011-03-01	631
Hobart	Bananas	2011-03-01	608
Darwin	Bananas	2011-03-01	600
Sydney	Potatoes	2011-03-01	221
Brisbane	Potatoes	2011-03-01	285
Adelaide	Potatoes	2011-03-01	276
Perth	Potatoes	2011-03-01	270
Hobart	Potatoes	2011-03-01	258
Darwin	Potatoes	2011-03-01	338
Sydney	Tomatoes	2011-03-01	567
Melbourne	Tomatoes	2011-03-01	518
Brisbane	Tomatoes	2011-03-01	593
Adelaide	Tomatoes	2011-03-01	494
Perth	Tomatoes	2011-03-01	486
Hobart	Tomatoes	2011-03-01	576
Darwin	Tomatoes	2011-03-01	629
Sydney	Carrots	2011-03-01	227
Melbourne	Carrots	2011-03-01	206
Adelaide	Carrots	2011-03-01	211
Perth	Carrots	2011-03-01	178
Hobart	Carrots	2011-03-01	244
Darwin	Carrots	2011-03-01	272
Sydney	Onions	2011-03-01	323
Melbourne	Onions	2011-03-01	325
Brisbane	Onions	2011-03-01	331
Adelaide	Onions	2011-03-01	323
Perth	Onions	2011-03-01	257
Hobart	Onions	2011-03-01	309
Darwin	Onions	2011-03-01	371
Sydney	Peaches	2011-03-01	373
Melbourne	Peaches	2011-03-01	378
Brisbane	Peaches	2011-03-01	354
Perth	Peaches	2011-03-01	385
Hobart	Peaches	2011-03-01	373
Darwin	Peaches	2011-03-01	374
Sydney	Pineapple, sliced	2011-03-01	215
Melbourne	Pineapple, sliced	2011-03-01	215
Brisbane	Pineapple, sliced	2011-03-01	207
Adelaide	Pineapple, sliced	2011-03-01	201
Perth	Pineapple, sliced	2011-03-01	212
Hobart	Pineapple, sliced	2011-03-01	212
Darwin	Pineapple, sliced	2011-03-01	211
Sydney	Peas, frozen	2011-03-01	225
Melbourne	Peas, frozen	2011-03-01	210
Adelaide	Peas, frozen	2011-03-01	205
Perth	Peas, frozen	2011-03-01	211
Hobart	Peas, frozen	2011-03-01	214
Darwin	Peas, frozen	2011-03-01	260
Sydney	Chocolate milk	2011-03-01	376
Melbourne	Chocolate milk	2011-03-01	391
Brisbane	Chocolate milk	2011-03-01	412
Adelaide	Chocolate milk	2011-03-01	398
Perth	Chocolate milk	2011-03-01	410
Hobart	Chocolate milk	2011-03-01	381
Darwin	Chocolate milk	2011-03-01	417
Sydney	Eggs	2011-03-01	526
Melbourne	Eggs	2011-03-01	532
Brisbane	Eggs	2011-03-01	541
Adelaide	Eggs	2011-03-01	520
Perth	Eggs	2011-03-01	558
Hobart	Eggs	2011-03-01	500
Darwin	Eggs	2011-03-01	549
Melbourne	Sugar, white	2011-03-01	286
Adelaide	Sugar, white	2011-03-01	298
Perth	Sugar, white	2011-03-01	335
Hobart	Sugar, white	2011-03-01	415
Darwin	Sugar, white	2011-03-01	324
Sydney	Jam, strawberry	2011-03-01	312
Melbourne	Jam, strawberry	2011-03-01	346
Brisbane	Jam, strawberry	2011-03-01	303
Adelaide	Jam, strawberry	2011-03-01	347
Perth	Jam, strawberry	2011-03-01	346
Hobart	Jam, strawberry	2011-03-01	283
Darwin	Jam, strawberry	2011-03-01	363
Sydney	Teabags	2011-03-01	417
Melbourne	Teabags	2011-03-01	432
Brisbane	Teabags	2011-03-01	434
Adelaide	Teabags	2011-03-01	394
Perth	Teabags	2011-03-01	426
Hobart	Teabags	2011-03-01	436
Darwin	Teabags	2011-03-01	424
Melbourne	Coffee, instant	2011-03-01	797
Brisbane	Coffee, instant	2011-03-01	797
Adelaide	Coffee, instant	2011-03-01	799
Perth	Coffee, instant	2011-03-01	806
Hobart	Coffee, instant	2011-03-01	799
Darwin	Coffee, instant	2011-03-01	827
Sydney	Tomato sauce	2011-03-01	209
Melbourne	Tomato sauce	2011-03-01	227
Brisbane	Tomato sauce	2011-03-01	223
Adelaide	Tomato sauce	2011-03-01	238
Perth	Tomato sauce	2011-03-01	219
Hobart	Tomato sauce	2011-03-01	217
Darwin	Tomato sauce	2011-03-01	226
Melbourne	Margarine, poly-unsaturated	2011-03-01	316
Brisbane	Margarine, poly-unsaturated	2011-03-01	309
Adelaide	Margarine, poly-unsaturated	2011-03-01	313
Perth	Margarine, poly-unsaturated	2011-03-01	316
Hobart	Margarine, poly-unsaturated	2011-03-01	316
Darwin	Margarine, poly-unsaturated	2011-03-01	323
Sydney	Baked beans, in tomato sauce	2011-03-01	145
Melbourne	Baked beans, in tomato sauce	2011-03-01	143
Brisbane	Baked beans, in tomato sauce	2011-03-01	144
Adelaide	Baked beans, in tomato sauce	2011-03-01	140
Perth	Baked beans, in tomato sauce	2011-03-01	156
Hobart	Baked beans, in tomato sauce	2011-03-01	134
Darwin	Baked beans, in tomato sauce	2011-03-01	166
Sydney	Baby food	2011-03-01	120
Melbourne	Baby food	2011-03-01	124
Brisbane	Baby food	2011-03-01	115
Adelaide	Baby food	2011-03-01	115
Perth	Baby food	2011-03-01	122
Hobart	Baby food	2011-03-01	120
Darwin	Baby food	2011-03-01	129
Melbourne	Laundry detergent	2011-03-01	834
Brisbane	Laundry detergent	2011-03-01	848
Adelaide	Laundry detergent	2011-03-01	822
Perth	Laundry detergent	2011-03-01	855
Hobart	Laundry detergent	2011-03-01	822
Darwin	Laundry detergent	2011-03-01	946
Sydney	Dishwashing detergent	2011-03-01	372
Melbourne	Dishwashing detergent	2011-03-01	382
Brisbane	Dishwashing detergent	2011-03-01	341
Adelaide	Dishwashing detergent	2011-03-01	318
Perth	Dishwashing detergent	2011-03-01	364
Hobart	Dishwashing detergent	2011-03-01	384
Darwin	Dishwashing detergent	2011-03-01	391
Sydney	Facial tissues	2011-03-01	225
Melbourne	Facial tissues	2011-03-01	228
Adelaide	Facial tissues	2011-03-01	223
Perth	Facial tissues	2011-03-01	228
Hobart	Facial tissues	2011-03-01	224
Darwin	Facial tissues	2011-03-01	236
Sydney	Toilet tissue	2011-03-01	667
Melbourne	Toilet tissue	2011-03-01	714
Brisbane	Toilet tissue	2011-03-01	771
Adelaide	Toilet tissue	2011-03-01	692
Perth	Toilet tissue	2011-03-01	723
Hobart	Toilet tissue	2011-03-01	734
Darwin	Toilet tissue	2011-03-01	706
Sydney	Pet food	2011-03-01	135
Melbourne	Pet food	2011-03-01	130
Brisbane	Pet food	2011-03-01	137
Adelaide	Pet food	2011-03-01	143
Perth	Pet food	2011-03-01	123
Hobart	Pet food	2011-03-01	134
Darwin	Pet food	2011-03-01	142
Melbourne	Petrol, unleaded	2011-03-01	136
Brisbane	Petrol, unleaded	2011-03-01	139
Adelaide	Petrol, unleaded	2011-03-01	134
Perth	Petrol, unleaded	2011-03-01	137
Hobart	Petrol, unleaded	2011-03-01	141
Darwin	Petrol, unleaded	2011-03-01	142
Sydney	Beer, full strength	2011-03-01	4051
Melbourne	Beer, full strength	2011-03-01	3943
Brisbane	Beer, full strength	2011-03-01	3956
Adelaide	Beer, full strength	2011-03-01	4397
Perth	Beer, full strength	2011-03-01	4267
Hobart	Beer, full strength	2011-03-01	4549
Darwin	Beer, full strength	2011-03-01	4729
Melbourne	Draught beer, low alcohol, public bar	2011-03-01	308
Brisbane	Draught beer, low alcohol, public bar	2011-03-01	316
Adelaide	Draught beer, low alcohol, public bar	2011-03-01	388
Perth	Draught beer, low alcohol, public bar	2011-03-01	372
Hobart	Draught beer, low alcohol, public bar	2011-03-01	326
Darwin	Draught beer, low alcohol, public bar	2011-03-01	287
Sydney	Draught beer, full strength, public bar	2011-03-01	338
Melbourne	Draught beer, full strength, public bar	2011-03-01	386
Brisbane	Draught beer, full strength, public bar	2011-03-01	343
Adelaide	Draught beer, full strength, public bar	2011-03-01	433
Perth	Draught beer, full strength, public bar	2011-03-01	395
Brisbane	Milk	2011-06-01	256
Adelaide	Milk	2011-06-01	242
Perth	Milk	2011-06-01	236
Hobart	Milk	2011-06-01	324
Darwin	Milk	2011-06-01	325
Melbourne	Cheese	2011-06-01	588
Brisbane	Cheese	2011-06-01	515
Adelaide	Cheese	2011-06-01	557
Perth	Cheese	2011-06-01	552
Hobart	Cheese	2011-06-01	534
Darwin	Cheese	2011-06-01	633
Sydney	Butter	2011-06-01	436
Melbourne	Butter	2011-06-01	371
Brisbane	Butter	2011-06-01	360
Adelaide	Butter	2011-06-01	364
Perth	Butter	2011-06-01	394
Hobart	Butter	2011-06-01	356
Darwin	Butter	2011-06-01	431
Melbourne	Bread white loaf, sliced	2011-06-01	351
Brisbane	Bread white loaf, sliced	2011-06-01	316
Adelaide	Bread white loaf, sliced	2011-06-01	349
Perth	Bread white loaf, sliced	2011-06-01	306
Hobart	Bread white loaf, sliced	2011-06-01	318
Darwin	Bread white loaf, sliced	2011-06-01	394
Sydney	Biscuits, dry	2011-06-01	254
Melbourne	Biscuits, dry	2011-06-01	253
Brisbane	Biscuits, dry	2011-06-01	254
Adelaide	Biscuits, dry	2011-06-01	256
Perth	Biscuits, dry	2011-06-01	254
Hobart	Biscuits, dry	2011-06-01	261
Darwin	Biscuits, dry	2011-06-01	274
Sydney	Breakfast cereal	2011-06-01	386
Melbourne	Breakfast cereal	2011-06-01	392
Brisbane	Breakfast cereal	2011-06-01	365
Perth	Breakfast cereal	2011-06-01	385
Hobart	Breakfast cereal	2011-06-01	391
Darwin	Breakfast cereal	2011-06-01	367
Sydney	Flour, self raising	2011-06-01	307
Melbourne	Flour, self raising	2011-06-01	308
Brisbane	Flour, self raising	2011-06-01	352
Adelaide	Flour, self raising	2011-06-01	357
Perth	Flour, self raising	2011-06-01	319
Hobart	Flour, self raising	2011-06-01	330
Darwin	Flour, self raising	2011-06-01	365
Sydney	Rice	2011-06-01	257
Melbourne	Rice	2011-06-01	296
Brisbane	Rice	2011-06-01	284
Adelaide	Rice	2011-06-01	287
Perth	Rice	2011-06-01	298
Hobart	Rice	2011-06-01	259
Darwin	Rice	2011-06-01	284
Sydney	Roast beef	2011-06-01	1059
Brisbane	Roast beef	2011-06-01	1117
Adelaide	Roast beef	2011-06-01	1019
Perth	Roast beef	2011-06-01	1078
Hobart	Roast beef	2011-06-01	1070
Darwin	Roast beef	2011-06-01	1016
Sydney	Rump steak	2011-06-01	1789
Melbourne	Rump steak	2011-06-01	1784
Brisbane	Rump steak	2011-06-01	1789
Adelaide	Rump steak	2011-06-01	1949
Perth	Rump steak	2011-06-01	1739
Hobart	Rump steak	2011-06-01	1739
Darwin	Rump steak	2011-06-01	1800
Melbourne	T-bone steak, with fillet	2011-06-01	1893
Brisbane	T-bone steak, with fillet	2011-06-01	2034
Adelaide	T-bone steak, with fillet	2011-06-01	1966
Perth	T-bone steak, with fillet	2011-06-01	1994
Hobart	T-bone steak, with fillet	2011-06-01	1862
Darwin	T-bone steak, with fillet	2011-06-01	1902
Sydney	Chuck steak	2011-06-01	1024
Melbourne	Chuck steak	2011-06-01	982
Brisbane	Chuck steak	2011-06-01	1118
Adelaide	Chuck steak	2011-06-01	1019
Perth	Chuck steak	2011-06-01	1029
Hobart	Chuck steak	2011-06-01	1087
Darwin	Chuck steak	2011-06-01	975
Sydney	Lamb leg	2011-06-01	1266
Melbourne	Lamb leg	2011-06-01	1240
Brisbane	Lamb leg	2011-06-01	1276
Adelaide	Lamb leg	2011-06-01	1260
Perth	Lamb leg	2011-06-01	1286
Hobart	Lamb leg	2011-06-01	1278
Darwin	Lamb leg	2011-06-01	1309
Melbourne	Lamb loin chops	2011-06-01	1978
Brisbane	Lamb loin chops	2011-06-01	2133
Adelaide	Lamb loin chops	2011-06-01	2068
Perth	Lamb loin chops	2011-06-01	2169
Hobart	Lamb loin chops	2011-06-01	1993
Darwin	Lamb loin chops	2011-06-01	2177
Sydney	Lamb forequarter chops	2011-06-01	1268
Melbourne	Lamb forequarter chops	2011-06-01	1174
Brisbane	Lamb forequarter chops	2011-06-01	1164
Adelaide	Lamb forequarter chops	2011-06-01	1236
Perth	Lamb forequarter chops	2011-06-01	1218
Hobart	Lamb forequarter chops	2011-06-01	1233
Darwin	Lamb forequarter chops	2011-06-01	1176
Sydney	Pork leg	2011-06-01	821
Melbourne	Pork leg	2011-06-01	845
Brisbane	Pork leg	2011-06-01	936
Adelaide	Pork leg	2011-06-01	880
Darwin	Draught beer, full strength, public bar	2011-03-01	383
Sydney	Scotch	2011-03-01	527
Melbourne	Scotch	2011-03-01	630
Brisbane	Scotch	2011-03-01	533
Adelaide	Scotch	2011-03-01	609
Perth	Scotch	2011-03-01	627
Hobart	Scotch	2011-03-01	491
Darwin	Scotch	2011-03-01	511
Sydney	Toilet soap	2011-03-01	391
Melbourne	Toilet soap	2011-03-01	410
Brisbane	Toilet soap	2011-03-01	378
Adelaide	Toilet soap	2011-03-01	411
Perth	Toilet soap	2011-03-01	409
Hobart	Toilet soap	2011-03-01	373
Darwin	Toilet soap	2011-03-01	412
Melbourne	Milk	2011-06-01	286
Melbourne	Pork loin chops	2011-06-01	1530
Brisbane	Pork loin chops	2011-06-01	1640
Adelaide	Pork loin chops	2011-06-01	1628
Perth	Pork loin chops	2011-06-01	1665
Hobart	Pork loin chops	2011-06-01	1674
Darwin	Pork loin chops	2011-06-01	1579
Sydney	Chicken, whole fresh	2011-06-01	551
Melbourne	Chicken, whole fresh	2011-06-01	554
Brisbane	Chicken, whole fresh	2011-06-01	557
Perth	Chicken, whole fresh	2011-06-01	608
Hobart	Chicken, whole fresh	2011-06-01	586
Darwin	Chicken, whole fresh	2011-06-01	482
Sydney	Bacon, middle rashers	2011-06-01	1066
Melbourne	Bacon, middle rashers	2011-06-01	1030
Brisbane	Bacon, middle rashers	2011-06-01	978
Adelaide	Bacon, middle rashers	2011-06-01	962
Perth	Bacon, middle rashers	2011-06-01	971
Hobart	Bacon, middle rashers	2011-06-01	983
Darwin	Bacon, middle rashers	2011-06-01	1052
Sydney	Beef Sausages	2011-06-01	709
Melbourne	Beef Sausages	2011-06-01	679
Brisbane	Beef Sausages	2011-06-01	773
Adelaide	Beef Sausages	2011-06-01	680
Perth	Beef Sausages	2011-06-01	722
Hobart	Beef Sausages	2011-06-01	771
Darwin	Beef Sausages	2011-06-01	674
Sydney	Salmon, pink	2011-06-01	345
Melbourne	Salmon, pink	2011-06-01	326
Brisbane	Salmon, pink	2011-06-01	345
Perth	Salmon, pink	2011-06-01	344
Hobart	Salmon, pink	2011-06-01	343
Darwin	Salmon, pink	2011-06-01	348
Sydney	Oranges	2011-06-01	343
Melbourne	Oranges	2011-06-01	332
Brisbane	Oranges	2011-06-01	319
Adelaide	Oranges	2011-06-01	301
Perth	Oranges	2011-06-01	499
Hobart	Oranges	2011-06-01	392
Darwin	Oranges	2011-06-01	390
Sydney	Bananas	2011-06-01	1312
Melbourne	Bananas	2011-06-01	1288
Brisbane	Bananas	2011-06-01	1199
Adelaide	Bananas	2011-06-01	1312
Perth	Bananas	2011-06-01	1405
Hobart	Bananas	2011-06-01	1242
Darwin	Bananas	2011-06-01	1146
Sydney	Potatoes	2011-06-01	193
Brisbane	Potatoes	2011-06-01	243
Adelaide	Potatoes	2011-06-01	287
Perth	Potatoes	2011-06-01	272
Hobart	Potatoes	2011-06-01	247
Darwin	Potatoes	2011-06-01	326
Sydney	Tomatoes	2011-06-01	661
Melbourne	Tomatoes	2011-06-01	582
Brisbane	Tomatoes	2011-06-01	627
Adelaide	Tomatoes	2011-06-01	582
Perth	Tomatoes	2011-06-01	626
Hobart	Tomatoes	2011-06-01	659
Darwin	Tomatoes	2011-06-01	721
Sydney	Carrots	2011-06-01	219
Melbourne	Carrots	2011-06-01	212
Adelaide	Carrots	2011-06-01	208
Perth	Carrots	2011-06-01	178
Hobart	Carrots	2011-06-01	211
Darwin	Carrots	2011-06-01	277
Sydney	Onions	2011-06-01	283
Melbourne	Onions	2011-06-01	302
Brisbane	Onions	2011-06-01	299
Adelaide	Onions	2011-06-01	280
Perth	Onions	2011-06-01	231
Hobart	Onions	2011-06-01	239
Darwin	Onions	2011-06-01	340
Sydney	Peaches	2011-06-01	384
Melbourne	Peaches	2011-06-01	379
Brisbane	Peaches	2011-06-01	351
Perth	Peaches	2011-06-01	385
Hobart	Peaches	2011-06-01	373
Darwin	Peaches	2011-06-01	397
Sydney	Pineapple, sliced	2011-06-01	217
Melbourne	Pineapple, sliced	2011-06-01	213
Brisbane	Pineapple, sliced	2011-06-01	207
Adelaide	Pineapple, sliced	2011-06-01	206
Perth	Pineapple, sliced	2011-06-01	211
Hobart	Pineapple, sliced	2011-06-01	215
Darwin	Pineapple, sliced	2011-06-01	215
Sydney	Peas, frozen	2011-06-01	229
Melbourne	Peas, frozen	2011-06-01	207
Adelaide	Peas, frozen	2011-06-01	208
Perth	Peas, frozen	2011-06-01	203
Hobart	Peas, frozen	2011-06-01	217
Darwin	Peas, frozen	2011-06-01	268
Sydney	Chocolate milk	2011-06-01	412
Melbourne	Chocolate milk	2011-06-01	422
Brisbane	Chocolate milk	2011-06-01	432
Adelaide	Chocolate milk	2011-06-01	424
Perth	Chocolate milk	2011-06-01	408
Hobart	Chocolate milk	2011-06-01	425
Darwin	Chocolate milk	2011-06-01	436
Sydney	Eggs	2011-06-01	524
Melbourne	Eggs	2011-06-01	530
Brisbane	Eggs	2011-06-01	540
Adelaide	Eggs	2011-06-01	510
Perth	Eggs	2011-06-01	533
Hobart	Eggs	2011-06-01	513
Darwin	Eggs	2011-06-01	515
Melbourne	Sugar, white	2011-06-01	298
Brisbane	Sugar, white	2011-06-01	284
Adelaide	Sugar, white	2011-06-01	296
Perth	Sugar, white	2011-06-01	346
Hobart	Sugar, white	2011-06-01	376
Darwin	Sugar, white	2011-06-01	330
Sydney	Jam, strawberry	2011-06-01	335
Melbourne	Jam, strawberry	2011-06-01	331
Brisbane	Jam, strawberry	2011-06-01	333
Adelaide	Jam, strawberry	2011-06-01	311
Perth	Jam, strawberry	2011-06-01	335
Hobart	Jam, strawberry	2011-06-01	331
Hobart	Pork leg	2011-06-01	918
Melbourne	Teabags	2011-06-01	397
Brisbane	Teabags	2011-06-01	406
Adelaide	Teabags	2011-06-01	363
Perth	Teabags	2011-06-01	421
Hobart	Teabags	2011-06-01	400
Darwin	Teabags	2011-06-01	391
Sydney	Coffee, instant	2011-06-01	706
Melbourne	Coffee, instant	2011-06-01	733
Brisbane	Coffee, instant	2011-06-01	697
Adelaide	Coffee, instant	2011-06-01	696
Perth	Coffee, instant	2011-06-01	721
Hobart	Coffee, instant	2011-06-01	698
Darwin	Coffee, instant	2011-06-01	738
Sydney	Tomato sauce	2011-06-01	204
Brisbane	Tomato sauce	2011-06-01	226
Adelaide	Tomato sauce	2011-06-01	237
Perth	Tomato sauce	2011-06-01	206
Hobart	Tomato sauce	2011-06-01	229
Darwin	Tomato sauce	2011-06-01	235
Sydney	Margarine, poly-unsaturated	2011-06-01	319
Melbourne	Margarine, poly-unsaturated	2011-06-01	307
Brisbane	Margarine, poly-unsaturated	2011-06-01	311
Adelaide	Margarine, poly-unsaturated	2011-06-01	308
Perth	Margarine, poly-unsaturated	2011-06-01	306
Hobart	Margarine, poly-unsaturated	2011-06-01	310
Darwin	Margarine, poly-unsaturated	2011-06-01	323
Sydney	Baked beans, in tomato sauce	2011-06-01	158
Brisbane	Baked beans, in tomato sauce	2011-06-01	148
Adelaide	Baked beans, in tomato sauce	2011-06-01	159
Perth	Baked beans, in tomato sauce	2011-06-01	144
Hobart	Baked beans, in tomato sauce	2011-06-01	171
Darwin	Baked beans, in tomato sauce	2011-06-01	166
Sydney	Baby food	2011-06-01	120
Melbourne	Baby food	2011-06-01	122
Brisbane	Baby food	2011-06-01	123
Adelaide	Baby food	2011-06-01	122
Perth	Baby food	2011-06-01	122
Hobart	Baby food	2011-06-01	124
Darwin	Baby food	2011-06-01	129
Sydney	Laundry detergent	2011-06-01	899
Melbourne	Laundry detergent	2011-06-01	954
Brisbane	Laundry detergent	2011-06-01	840
Adelaide	Laundry detergent	2011-06-01	838
Perth	Laundry detergent	2011-06-01	898
Hobart	Laundry detergent	2011-06-01	841
Darwin	Laundry detergent	2011-06-01	936
Sydney	Dishwashing detergent	2011-06-01	327
Melbourne	Dishwashing detergent	2011-06-01	347
Adelaide	Dishwashing detergent	2011-06-01	279
Perth	Dishwashing detergent	2011-06-01	334
Hobart	Dishwashing detergent	2011-06-01	324
Darwin	Dishwashing detergent	2011-06-01	367
Sydney	Facial tissues	2011-06-01	221
Melbourne	Facial tissues	2011-06-01	214
Brisbane	Facial tissues	2011-06-01	214
Adelaide	Facial tissues	2011-06-01	210
Perth	Facial tissues	2011-06-01	209
Hobart	Facial tissues	2011-06-01	214
Darwin	Facial tissues	2011-06-01	224
Sydney	Toilet tissue	2011-06-01	608
Melbourne	Toilet tissue	2011-06-01	640
Brisbane	Toilet tissue	2011-06-01	630
Adelaide	Toilet tissue	2011-06-01	672
Perth	Toilet tissue	2011-06-01	676
Hobart	Toilet tissue	2011-06-01	520
Darwin	Toilet tissue	2011-06-01	520
Sydney	Pet food	2011-06-01	152
Melbourne	Pet food	2011-06-01	159
Brisbane	Pet food	2011-06-01	146
Adelaide	Pet food	2011-06-01	149
Hobart	Pet food	2011-06-01	160
Darwin	Pet food	2011-06-01	170
Sydney	Petrol, unleaded	2011-06-01	143
Melbourne	Petrol, unleaded	2011-06-01	142
Brisbane	Petrol, unleaded	2011-06-01	144
Adelaide	Petrol, unleaded	2011-06-01	141
Perth	Petrol, unleaded	2011-06-01	142
Hobart	Petrol, unleaded	2011-06-01	150
Darwin	Petrol, unleaded	2011-06-01	153
Sydney	Beer, full strength	2011-06-01	3992
Brisbane	Beer, full strength	2011-06-01	4055
Adelaide	Beer, full strength	2011-06-01	4450
Perth	Beer, full strength	2011-06-01	4262
Hobart	Beer, full strength	2011-06-01	4533
Darwin	Beer, full strength	2011-06-01	4809
Sydney	Draught beer, low alcohol, public bar	2011-06-01	302
Melbourne	Draught beer, low alcohol, public bar	2011-06-01	312
Brisbane	Draught beer, low alcohol, public bar	2011-06-01	312
Adelaide	Draught beer, low alcohol, public bar	2011-06-01	388
Perth	Draught beer, low alcohol, public bar	2011-06-01	376
Hobart	Draught beer, low alcohol, public bar	2011-06-01	331
Darwin	Draught beer, low alcohol, public bar	2011-06-01	296
Sydney	Draught beer, full strength, public bar	2011-06-01	342
Melbourne	Draught beer, full strength, public bar	2011-06-01	392
Adelaide	Draught beer, full strength, public bar	2011-06-01	430
Perth	Draught beer, full strength, public bar	2011-06-01	394
Hobart	Draught beer, full strength, public bar	2011-06-01	383
Darwin	Draught beer, full strength, public bar	2011-06-01	391
Sydney	Scotch	2011-06-01	523
Melbourne	Scotch	2011-06-01	640
Brisbane	Scotch	2011-06-01	526
Adelaide	Scotch	2011-06-01	592
Perth	Scotch	2011-06-01	636
Hobart	Scotch	2011-06-01	492
Darwin	Scotch	2011-06-01	515
Sydney	Toilet soap	2011-06-01	401
Melbourne	Toilet soap	2011-06-01	424
Sydney	Teabags	2011-06-01	405
Adelaide	Toilet soap	2011-06-01	387
Perth	Toilet soap	2011-06-01	393
Hobart	Toilet soap	2011-06-01	413
Darwin	Toilet soap	2011-06-01	430
Sydney	Milk	2004-09-01	256
Brisbane	Milk	2004-09-01	276
Canberra	Milk	2004-09-01	241
Canberra	Cheese	2004-09-01	418
Adelaide	Butter	2004-09-01	214
Canberra	Butter	2004-09-01	254
Canberra	Bread white loaf, sliced	2004-09-01	243
Brisbane	Biscuits, dry	2004-09-01	169
Canberra	Biscuits, dry	2004-09-01	184
Canberra	Breakfast cereal	2004-09-01	319
Adelaide	Flour, self raising	2004-09-01	351
Canberra	Flour, self raising	2004-09-01	399
Canberra	Rice	2004-09-01	195
Canberra	Roast beef	2004-09-01	1092
Hobart	Rump steak	2004-09-01	1466
Canberra	Rump steak	2004-09-01	1581
Canberra	T-bone steak, with fillet	2004-09-01	1828
Darwin	Chuck steak	2004-09-01	903
Canberra	Chuck steak	2004-09-01	960
Canberra	Lamb leg	2004-09-01	984
Hobart	Lamb loin chops	2004-09-01	1421
Canberra	Lamb loin chops	2004-09-01	1642
Canberra	Lamb forequarter chops	2004-09-01	854
Canberra	Pork leg	2004-09-01	574
Melbourne	Pork loin chops	2004-09-01	1107
Canberra	Pork loin chops	2004-09-01	1089
Darwin	Chicken, frozen	2004-09-01	413
Canberra	Chicken, frozen	2004-09-01	405
Canberra	Bacon, middle rashers	2004-09-01	419
Darwin	Sausages	2004-09-01	518
Canberra	Sausages	2004-09-01	504
Canberra	Salmon, pink	2004-09-01	279
Canberra	Oranges	2004-09-01	233
Sydney	Bananas	2004-09-01	242
Canberra	Bananas	2004-09-01	236
Canberra	Potatoes	2004-09-01	204
Melbourne	Tomatoes	2004-09-01	270
Canberra	Tomatoes	2004-09-01	269
Canberra	Carrots	2004-09-01	200
Brisbane	Onions	2004-09-01	218
Canberra	Onions	2004-09-01	231
Canberra	Peaches	2004-09-01	260
Melbourne	Pineapple, sliced	2004-09-01	151
Canberra	Pineapple, sliced	2004-09-01	146
Canberra	Peas, frozen	2004-09-01	163
Perth	Chocolate milk	2004-09-01	354
Canberra	Chocolate milk	2004-09-01	338
Canberra	Eggs	2004-09-01	328
Canberra	Sugar, white	2004-09-01	213
Sydney	Jam, strawberry	2004-09-01	256
Canberra	Jam, strawberry	2004-09-01	288
Canberra	Teabags	2004-09-01	355
Adelaide	Coffee, instant	2004-09-01	537
Canberra	Coffee, instant	2004-09-01	582
Brisbane	Tomato sauce	2004-09-01	177
Canberra	Tomato sauce	2004-09-01	169
Darwin	Margarine, poly-unsaturated	2004-09-01	251
Canberra	Margarine, poly-unsaturated	2004-09-01	250
Canberra	Baked beans, in tomato sauce	2004-09-01	121
Canberra	Baby food	2004-09-01	77
Darwin	Laundry detergent	2004-09-01	562
Canberra	Laundry detergent	2004-09-01	553
Canberra	Dishwashing detergent	2004-09-01	338
Canberra	Facial tissues	2004-09-01	214
Brisbane	Toilet paper	2004-09-01	301
Canberra	Toilet paper	2004-09-01	311
Canberra	Pet food	2004-09-01	102
Hobart	Petrol, unleaded	2004-09-01	107
Canberra	Petrol, unleaded	2004-09-01	103
Canberra	Beer, low alcohol	2004-09-01	2317
Canberra	Beer, full strength	2004-09-01	3340
Sydney	Draught beer, low alcohol, public bar	2004-09-01	201
Canberra	Draught beer, low alcohol, public bar	2004-09-01	196
Canberra	Draught beer, full strength, public bar	2004-09-01	225
Canberra	Scotch	2004-09-01	362
Adelaide	Toilet soap	2004-09-01	274
Canberra	Toilet soap	2004-09-01	240
Canberra	Milk	2004-12-01	269
Sydney	Cheese	2004-12-01	411
Canberra	Cheese	2004-12-01	434
Darwin	Butter	2004-12-01	246
Canberra	Butter	2004-12-01	258
Canberra	Bread white loaf, sliced	2004-12-01	244
Hobart	Biscuits, dry	2004-12-01	201
Canberra	Biscuits, dry	2004-12-01	184
Canberra	Breakfast cereal	2004-12-01	346
Canberra	Flour, self raising	2004-12-01	399
Adelaide	Rice	2004-12-01	197
Sydney	Milk	2011-06-01	306
Sydney	Cheese	2011-06-01	527
Adelaide	Breakfast cereal	2011-06-01	390
Melbourne	Roast beef	2011-06-01	1071
Sydney	T-bone steak, with fillet	2011-06-01	1920
Sydney	Lamb loin chops	2011-06-01	2063
Perth	Pork leg	2011-06-01	866
Darwin	Pork leg	2011-06-01	905
Adelaide	Chicken, whole fresh	2011-06-01	577
Adelaide	Salmon, pink	2011-06-01	309
Melbourne	Potatoes	2011-06-01	261
Brisbane	Carrots	2011-06-01	238
Adelaide	Peaches	2011-06-01	377
Brisbane	Peas, frozen	2011-06-01	205
Sydney	Sugar, white	2011-06-01	284
Darwin	Jam, strawberry	2011-06-01	354
Melbourne	Tomato sauce	2011-06-01	226
Melbourne	Baked beans, in tomato sauce	2011-06-01	163
Brisbane	Dishwashing detergent	2011-06-01	365
Perth	Pet food	2011-06-01	157
Brisbane	Draught beer, full strength, public bar	2011-06-01	341
Brisbane	Toilet soap	2011-06-01	416
Canberra	Rice	2004-12-01	197
Canberra	Roast beef	2004-12-01	1184
Perth	Rump steak	2004-12-01	1548
Canberra	Rump steak	2004-12-01	1718
Canberra	T-bone steak, with fillet	2004-12-01	1863
Adelaide	Chuck steak	2004-12-01	956
Canberra	Chuck steak	2004-12-01	946
Canberra	Lamb leg	2004-12-01	844
Darwin	Lamb loin chops	2004-12-01	1625
Canberra	Lamb loin chops	2004-12-01	1584
Canberra	Lamb forequarter chops	2004-12-01	749
Canberra	Pork leg	2004-12-01	698
Brisbane	Pork loin chops	2004-12-01	1194
Canberra	Pork loin chops	2004-12-01	1248
Canberra	Chicken, frozen	2004-12-01	377
Adelaide	Bacon, middle rashers	2004-12-01	367
Canberra	Bacon, middle rashers	2004-12-01	448
Canberra	Sausages	2004-12-01	491
Sydney	Salmon, pink	2004-12-01	252
Canberra	Salmon, pink	2004-12-01	280
Canberra	Oranges	2004-12-01	275
Melbourne	Bananas	2004-12-01	294
Canberra	Bananas	2004-12-01	268
Canberra	Potatoes	2004-12-01	189
Brisbane	Tomatoes	2004-12-01	331
Canberra	Tomatoes	2004-12-01	335
Canberra	Carrots	2004-12-01	199
Adelaide	Onions	2004-12-01	233
Canberra	Onions	2004-12-01	236
Canberra	Peaches	2004-12-01	254
Brisbane	Pineapple, sliced	2004-12-01	153
Canberra	Pineapple, sliced	2004-12-01	145
Canberra	Peas, frozen	2004-12-01	164
Hobart	Chocolate milk	2004-12-01	320
Canberra	Chocolate milk	2004-12-01	319
Canberra	Eggs	2004-12-01	335
Canberra	Sugar, white	2004-12-01	220
Melbourne	Jam, strawberry	2004-12-01	273
Canberra	Jam, strawberry	2004-12-01	280
Canberra	Teabags	2004-12-01	383
Perth	Coffee, instant	2004-12-01	647
Canberra	Coffee, instant	2004-12-01	610
Canberra	Tomato sauce	2004-12-01	177
Sydney	Margarine, poly-unsaturated	2004-12-01	236
Brisbane	Margarine, poly-unsaturated	2004-12-01	242
Canberra	Margarine, poly-unsaturated	2004-12-01	240
Canberra	Baked beans, in tomato sauce	2004-12-01	121
Canberra	Baby food	2004-12-01	75
Darwin	Laundry detergent	2004-12-01	562
Canberra	Laundry detergent	2004-12-01	582
Canberra	Dishwashing detergent	2004-12-01	344
Canberra	Facial tissues	2004-12-01	216
Brisbane	Toilet paper	2004-12-01	286
Canberra	Toilet paper	2004-12-01	309
Canberra	Pet food	2004-12-01	105
Hobart	Petrol, unleaded	2004-12-01	110
Canberra	Petrol, unleaded	2004-12-01	104
Canberra	Beer, low alcohol	2004-12-01	2296
Canberra	Beer, full strength	2004-12-01	3390
Sydney	Draught beer, low alcohol, public bar	2004-12-01	206
Canberra	Draught beer, low alcohol, public bar	2004-12-01	197
Canberra	Draught beer, full strength, public bar	2004-12-01	226
Canberra	Scotch	2004-12-01	363
Adelaide	Toilet soap	2004-12-01	255
Canberra	Toilet soap	2004-12-01	268
Canberra	Milk	2005-03-01	293
Hobart	Cheese	2005-03-01	420
Canberra	Cheese	2005-03-01	428
Canberra	Butter	2005-03-01	274
Sydney	Bread white loaf, sliced	2005-03-01	251
Canberra	Bread white loaf, sliced	2005-03-01	248
Canberra	Biscuits, dry	2005-03-01	184
Canberra	Breakfast cereal	2005-03-01	346
Sydney	Flour, self raising	2005-03-01	346
Canberra	Flour, self raising	2005-03-01	393
Canberra	Rice	2005-03-01	189
Hobart	Roast beef	2005-03-01	1109
Canberra	Roast beef	2005-03-01	1230
Canberra	Rump steak	2005-03-01	1808
Brisbane	T-bone steak, with fillet	2005-03-01	1840
Canberra	T-bone steak, with fillet	2005-03-01	1884
Canberra	Chuck steak	2005-03-01	943
Canberra	Lamb leg	2005-03-01	900
Brisbane	Lamb loin chops	2005-03-01	1628
Canberra	Lamb loin chops	2005-03-01	1675
Canberra	Lamb forequarter chops	2005-03-01	812
Canberra	Pork leg	2005-03-01	716
Sydney	Pork loin chops	2005-03-01	1189
Canberra	Pork loin chops	2005-03-01	1241
Canberra	Chicken, frozen	2005-03-01	378
Sydney	Bacon, middle rashers	2005-03-01	387
Canberra	Bacon, middle rashers	2005-03-01	414
Melbourne	Sausages	2005-03-01	521
Canberra	Sausages	2005-03-01	514
Canberra	Salmon, pink	2005-03-01	272
Melbourne	Oranges	2005-03-01	279
Canberra	Oranges	2005-03-01	280
Canberra	Bananas	2005-03-01	253
Brisbane	Potatoes	2005-03-01	188
Canberra	Potatoes	2005-03-01	184
Canberra	Tomatoes	2005-03-01	316
Adelaide	Carrots	2005-03-01	174
Canberra	Carrots	2005-03-01	216
Canberra	Onions	2005-03-01	223
Perth	Peaches	2005-03-01	272
Canberra	Peaches	2005-03-01	272
Canberra	Pineapple, sliced	2005-03-01	145
Adelaide	Peas, frozen	2005-03-01	152
Canberra	Peas, frozen	2005-03-01	173
Canberra	Chocolate milk	2005-03-01	368
Canberra	Eggs	2005-03-01	321
Melbourne	Sugar, white	2005-03-01	203
Canberra	Sugar, white	2005-03-01	220
Canberra	Jam, strawberry	2005-03-01	299
Perth	Teabags	2005-03-01	360
Canberra	Teabags	2005-03-01	384
Canberra	Coffee, instant	2005-03-01	564
Adelaide	Tomato sauce	2005-03-01	171
Canberra	Tomato sauce	2005-03-01	184
Perth	Margarine, poly-unsaturated	2005-03-01	237
Canberra	Margarine, poly-unsaturated	2005-03-01	248
Brisbane	Pork loin chops	2005-09-01	1334
Canberra	Baked beans, in tomato sauce	2005-03-01	112
Hobart	Baby food	2005-03-01	78
Canberra	Baby food	2005-03-01	74
Canberra	Laundry detergent	2005-03-01	558
Brisbane	Dishwashing detergent	2005-03-01	335
Canberra	Dishwashing detergent	2005-03-01	330
Canberra	Facial tissues	2005-03-01	212
Canberra	Toilet paper	2005-03-01	311
Perth	Pet food	2005-03-01	109
Canberra	Pet food	2005-03-01	99
Canberra	Petrol, unleaded	2005-03-01	102
Adelaide	Beer, low alcohol	2005-03-01	2492
Canberra	Beer, low alcohol	2005-03-01	2275
Canberra	Beer, full strength	2005-03-01	3426
Sydney	Draught beer, low alcohol, public bar	2005-03-01	205
Canberra	Draught beer, low alcohol, public bar	2005-03-01	203
Canberra	Draught beer, full strength, public bar	2005-03-01	232
Canberra	Scotch	2005-03-01	368
Canberra	Toilet soap	2005-03-01	252
Adelaide	Milk	2005-06-01	299
Canberra	Milk	2005-06-01	294
Canberra	Cheese	2005-06-01	431
Adelaide	Butter	2005-06-01	273
Canberra	Butter	2005-06-01	268
Hobart	Bread white loaf, sliced	2005-06-01	262
Canberra	Bread white loaf, sliced	2005-06-01	249
Canberra	Biscuits, dry	2005-06-01	189
Canberra	Breakfast cereal	2005-06-01	346
Adelaide	Flour, self raising	2005-06-01	360
Canberra	Flour, self raising	2005-06-01	379
Canberra	Rice	2005-06-01	195
Canberra	Roast beef	2005-06-01	1203
Hobart	Rump steak	2005-06-01	1776
Canberra	Rump steak	2005-06-01	1829
Canberra	T-bone steak, with fillet	2005-06-01	1923
Darwin	Chuck steak	2005-06-01	1010
Canberra	Chuck steak	2005-06-01	943
Canberra	Lamb leg	2005-06-01	901
Hobart	Lamb loin chops	2005-06-01	1625
Canberra	Lamb loin chops	2005-06-01	1650
Canberra	Lamb forequarter chops	2005-06-01	782
Canberra	Pork leg	2005-06-01	783
Melbourne	Pork loin chops	2005-06-01	1232
Canberra	Pork loin chops	2005-06-01	1396
Canberra	Chicken, frozen	2005-06-01	380
Brisbane	Bacon, middle rashers	2005-06-01	356
Canberra	Bacon, middle rashers	2005-06-01	407
Darwin	Sausages	2005-06-01	492
Canberra	Sausages	2005-06-01	514
Canberra	Salmon, pink	2005-06-01	275
Hobart	Oranges	2005-06-01	256
Canberra	Oranges	2005-06-01	256
Canberra	Bananas	2005-06-01	199
Darwin	Potatoes	2005-06-01	210
Canberra	Potatoes	2005-06-01	191
Canberra	Tomatoes	2005-06-01	356
Canberra	Carrots	2005-06-01	210
Sydney	Onions	2005-06-01	200
Canberra	Onions	2005-06-01	211
Canberra	Peaches	2005-06-01	261
Sydney	Pineapple, sliced	2005-06-01	151
Canberra	Pineapple, sliced	2005-06-01	152
Canberra	Peas, frozen	2005-06-01	159
Brisbane	Chocolate milk	2005-06-01	371
Canberra	Chocolate milk	2005-06-01	372
Canberra	Eggs	2005-06-01	305
Canberra	Sugar, white	2005-06-01	218
Sydney	Jam, strawberry	2005-06-01	255
Canberra	Jam, strawberry	2005-06-01	237
Canberra	Teabags	2005-06-01	379
Melbourne	Coffee, instant	2005-06-01	576
Canberra	Coffee, instant	2005-06-01	601
Canberra	Tomato sauce	2005-06-01	175
Melbourne	Margarine, poly-unsaturated	2005-06-01	254
Canberra	Margarine, poly-unsaturated	2005-06-01	240
Melbourne	Baked beans, in tomato sauce	2005-06-01	124
Canberra	Baked beans, in tomato sauce	2005-06-01	115
Canberra	Baby food	2005-06-01	72
Sydney	Laundry detergent	2005-06-01	559
Canberra	Laundry detergent	2005-06-01	598
Canberra	Dishwashing detergent	2005-06-01	293
Brisbane	Facial tissues	2005-06-01	213
Canberra	Facial tissues	2005-06-01	210
Canberra	Toilet paper	2005-06-01	311
Canberra	Pet food	2005-06-01	109
Sydney	Petrol, unleaded	2005-06-01	109
Canberra	Petrol, unleaded	2005-06-01	109
Canberra	Beer, low alcohol	2005-06-01	2209
Melbourne	Beer, full strength	2005-06-01	3561
Canberra	Beer, full strength	2005-06-01	3474
Canberra	Draught beer, low alcohol, public bar	2005-06-01	214
Sydney	Draught beer, full strength, public bar	2005-06-01	236
Canberra	Draught beer, full strength, public bar	2005-06-01	244
Canberra	Scotch	2005-06-01	381
Canberra	Toilet soap	2005-06-01	296
Canberra	Milk	2005-09-01	294
Adelaide	Cheese	2005-09-01	420
Canberra	Cheese	2005-09-01	440
Canberra	Butter	2005-09-01	278
Sydney	Bread white loaf, sliced	2005-09-01	266
Melbourne	Bread white loaf, sliced	2005-09-01	267
Canberra	Bread white loaf, sliced	2005-09-01	263
Canberra	Biscuits, dry	2005-09-01	191
Sydney	Breakfast cereal	2005-09-01	342
Canberra	Breakfast cereal	2005-09-01	346
Canberra	Flour, self raising	2005-09-01	391
Canberra	Rice	2005-09-01	195
Sydney	Roast beef	2005-09-01	1046
Canberra	Roast beef	2005-09-01	1209
Darwin	Rump steak	2005-09-01	1790
Canberra	Rump steak	2005-09-01	1901
Canberra	T-bone steak, with fillet	2005-09-01	1821
Canberra	Chuck steak	2005-09-01	990
Sydney	Lamb leg	2005-09-01	1001
Canberra	Lamb leg	2005-09-01	936
Darwin	Lamb loin chops	2005-09-01	1771
Canberra	Lamb loin chops	2005-09-01	1783
Canberra	Lamb forequarter chops	2005-09-01	830
Canberra	Pork leg	2005-09-01	797
Canberra	Pork loin chops	2005-09-01	1429
Canberra	Chicken, frozen	2005-09-01	363
Adelaide	Bacon, middle rashers	2005-09-01	388
Canberra	Bacon, middle rashers	2005-09-01	401
Canberra	Sausages	2005-09-01	514
Perth	Salmon, pink	2005-09-01	259
Canberra	Salmon, pink	2005-09-01	277
Canberra	Oranges	2005-09-01	190
Brisbane	Bananas	2005-09-01	271
Canberra	Bananas	2005-09-01	278
Canberra	Potatoes	2005-09-01	197
Adelaide	Tomatoes	2005-09-01	409
Canberra	Tomatoes	2005-09-01	315
Canberra	Carrots	2005-09-01	205
Perth	Onions	2005-09-01	165
Canberra	Onions	2005-09-01	198
Canberra	Peaches	2005-09-01	288
Adelaide	Pineapple, sliced	2005-09-01	139
Canberra	Pineapple, sliced	2005-09-01	152
Canberra	Peas, frozen	2005-09-01	172
Darwin	Chocolate milk	2005-09-01	291
Canberra	Chocolate milk	2005-09-01	325
Canberra	Eggs	2005-09-01	315
Canberra	Sugar, white	2005-09-01	211
Brisbane	Jam, strawberry	2005-09-01	283
Canberra	Jam, strawberry	2005-09-01	269
Canberra	Teabags	2005-09-01	337
Hobart	Coffee, instant	2005-09-01	688
Canberra	Coffee, instant	2005-09-01	578
Canberra	Tomato sauce	2005-09-01	174
Darwin	Margarine, poly-unsaturated	2005-09-01	253
Canberra	Margarine, poly-unsaturated	2005-09-01	246
Hobart	Baked beans, in tomato sauce	2005-09-01	135
Canberra	Baked beans, in tomato sauce	2005-09-01	142
Canberra	Baby food	2005-09-01	74
Canberra	Laundry detergent	2005-09-01	598
Sydney	Dishwashing detergent	2005-09-01	325
Canberra	Dishwashing detergent	2005-09-01	352
Canberra	Facial tissues	2005-09-01	204
Canberra	Toilet paper	2005-09-01	652
Sydney	Pet food	2005-09-01	115
Canberra	Pet food	2005-09-01	108
Darwin	Petrol, unleaded	2005-09-01	123
Canberra	Petrol, unleaded	2005-09-01	122
Canberra	Beer, low alcohol	2005-09-01	2254
Canberra	Beer, full strength	2005-09-01	3518
Sydney	Draught beer, low alcohol, public bar	2005-09-01	211
Canberra	Draught beer, low alcohol, public bar	2005-09-01	218
Canberra	Draught beer, full strength, public bar	2005-09-01	247
Canberra	Scotch	2005-09-01	389
Darwin	Toilet soap	2005-09-01	297
Canberra	Toilet soap	2005-09-01	284
Canberra	Milk	2005-12-01	307
Canberra	Cheese	2005-12-01	460
Sydney	Butter	2005-12-01	304
Canberra	Butter	2005-12-01	286
Perth	Bread white loaf, sliced	2005-12-01	259
Hobart	Bread white loaf, sliced	2005-12-01	256
Canberra	Bread white loaf, sliced	2005-12-01	288
Canberra	Biscuits, dry	2005-12-01	193
Hobart	Breakfast cereal	2005-12-01	384
Canberra	Breakfast cereal	2005-12-01	346
Canberra	Flour, self raising	2005-12-01	378
Canberra	Rice	2005-12-01	197
Melbourne	Roast beef	2005-12-01	1110
Canberra	Roast beef	2005-12-01	1277
Canberra	Rump steak	2005-12-01	1788
Brisbane	T-bone steak, with fillet	2005-12-01	1913
Canberra	T-bone steak, with fillet	2005-12-01	2038
Canberra	Chuck steak	2005-12-01	977
Canberra	Lamb leg	2005-12-01	893
Brisbane	Lamb loin chops	2005-12-01	1670
Canberra	Lamb loin chops	2005-12-01	1703
Canberra	Lamb forequarter chops	2005-12-01	776
Canberra	Pork leg	2005-12-01	708
Sydney	Pork loin chops	2005-12-01	1264
Canberra	Pork loin chops	2005-12-01	1419
Canberra	Chicken, frozen	2005-12-01	373
Sydney	Bacon, middle rashers	2005-12-01	352
Canberra	Bacon, middle rashers	2005-12-01	404
Canberra	Sausages	2005-12-01	514
Canberra	Salmon, pink	2005-12-01	267
Melbourne	Oranges	2005-12-01	218
Brisbane	Oranges	2005-12-01	198
Darwin	Oranges	2005-12-01	342
Canberra	Oranges	2005-12-01	232
Canberra	Bananas	2005-12-01	261
Canberra	Potatoes	2005-12-01	261
Sydney	Tomatoes	2005-12-01	385
Canberra	Tomatoes	2005-12-01	363
Canberra	Carrots	2005-12-01	216
Melbourne	Onions	2005-12-01	259
Canberra	Onions	2005-12-01	271
Canberra	Peaches	2005-12-01	288
Sydney	Pineapple, sliced	2005-12-01	152
Canberra	Pineapple, sliced	2005-12-01	152
Canberra	Peas, frozen	2005-12-01	161
Adelaide	Chocolate milk	2005-12-01	329
Canberra	Chocolate milk	2005-12-01	362
Canberra	Eggs	2005-12-01	334
Canberra	Sugar, white	2005-12-01	204
Sydney	Jam, strawberry	2005-12-01	287
Canberra	Jam, strawberry	2005-12-01	309
Canberra	Teabags	2005-12-01	369
Brisbane	Coffee, instant	2005-12-01	541
Canberra	Coffee, instant	2005-12-01	640
Canberra	Tomato sauce	2005-12-01	181
Melbourne	Margarine, poly-unsaturated	2005-12-01	252
Canberra	Margarine, poly-unsaturated	2005-12-01	269
Canberra	Baked beans, in tomato sauce	2005-12-01	139
Adelaide	Baby food	2005-12-01	80
Canberra	Baby food	2005-12-01	82
Brisbane	Laundry detergent	2005-12-01	560
Canberra	Laundry detergent	2005-12-01	564
Canberra	Dishwashing detergent	2005-12-01	344
Hobart	Facial tissues	2005-12-01	214
Canberra	Facial tissues	2005-12-01	213
Canberra	Toilet paper	2005-12-01	628
Canberra	Pet food	2005-12-01	112
Melbourne	Petrol, unleaded	2005-12-01	117
Canberra	Petrol, unleaded	2005-12-01	123
Canberra	Beer, low alcohol	2005-12-01	2314
Brisbane	Beer, full strength	2005-12-01	3432
Canberra	Beer, full strength	2005-12-01	3501
Canberra	Draught beer, low alcohol, public bar	2005-12-01	221
Adelaide	Draught beer, full strength, public bar	2005-12-01	334
Canberra	Draught beer, full strength, public bar	2005-12-01	250
Canberra	Scotch	2005-12-01	393
Canberra	Toilet soap	2005-12-01	261
Canberra	Milk	2006-03-01	307
Darwin	Cheese	2006-03-01	496
Canberra	Cheese	2006-03-01	449
Canberra	Butter	2006-03-01	302
Adelaide	Bread white loaf, sliced	2006-03-01	269
Canberra	Bread white loaf, sliced	2006-03-01	288
Adelaide	Biscuits, dry	2006-03-01	191
Canberra	Biscuits, dry	2006-03-01	193
Canberra	Breakfast cereal	2006-03-01	345
Sydney	Flour, self raising	2006-03-01	332
Canberra	Flour, self raising	2006-03-01	391
Canberra	Rice	2006-03-01	195
Hobart	Roast beef	2006-03-01	1114
Canberra	Roast beef	2006-03-01	1291
Canberra	Rump steak	2006-03-01	1997
Brisbane	T-bone steak, with fillet	2006-03-01	2121
Canberra	T-bone steak, with fillet	2006-03-01	2054
Canberra	Chuck steak	2006-03-01	990
Canberra	Lamb leg	2006-03-01	866
Brisbane	Lamb loin chops	2006-03-01	1676
Canberra	Lamb loin chops	2006-03-01	1745
Canberra	Lamb forequarter chops	2006-03-01	856
Canberra	Pork leg	2006-03-01	795
Sydney	Pork loin chops	2006-03-01	1399
Canberra	Pork loin chops	2006-03-01	1464
Canberra	Chicken, frozen	2006-03-01	347
Sydney	Bacon, middle rashers	2006-03-01	378
Canberra	Bacon, middle rashers	2006-03-01	398
Canberra	Sausages	2006-03-01	507
Canberra	Salmon, pink	2006-03-01	264
Melbourne	Oranges	2006-03-01	259
Canberra	Oranges	2006-03-01	252
Adelaide	Bananas	2006-03-01	253
Canberra	Bananas	2006-03-01	265
Canberra	Potatoes	2006-03-01	253
Perth	Tomatoes	2006-03-01	399
Canberra	Tomatoes	2006-03-01	356
Canberra	Carrots	2006-03-01	214
Hobart	Onions	2006-03-01	215
Canberra	Onions	2006-03-01	259
Canberra	Peaches	2006-03-01	302
Perth	Pineapple, sliced	2006-03-01	161
Canberra	Pineapple, sliced	2006-03-01	152
Canberra	Peas, frozen	2006-03-01	166
Canberra	Chocolate milk	2006-03-01	372
Brisbane	Eggs	2006-03-01	298
Canberra	Eggs	2006-03-01	338
Canberra	Sugar, white	2006-03-01	202
Melbourne	Jam, strawberry	2006-03-01	308
Canberra	Jam, strawberry	2006-03-01	287
Canberra	Teabags	2006-03-01	384
Perth	Coffee, instant	2006-03-01	647
Canberra	Coffee, instant	2006-03-01	674
Canberra	Tomato sauce	2006-03-01	179
Adelaide	Margarine, poly-unsaturated	2006-03-01	250
Canberra	Margarine, poly-unsaturated	2006-03-01	265
Canberra	Baked beans, in tomato sauce	2006-03-01	133
Canberra	Baby food	2006-03-01	79
Melbourne	Laundry detergent	2006-03-01	566
Adelaide	Laundry detergent	2006-03-01	535
Canberra	Laundry detergent	2006-03-01	564
Canberra	Dishwashing detergent	2006-03-01	344
Darwin	Facial tissues	2006-03-01	212
Canberra	Facial tissues	2006-03-01	207
Canberra	Toilet paper	2006-03-01	632
Canberra	Pet food	2006-03-01	113
Brisbane	Petrol, unleaded	2006-03-01	114
Canberra	Petrol, unleaded	2006-03-01	122
Canberra	Beer, low alcohol	2006-03-01	2272
Adelaide	Beer, full strength	2006-03-01	3566
Canberra	Beer, full strength	2006-03-01	3598
Canberra	Draught beer, low alcohol, public bar	2006-03-01	223
Perth	Draught beer, full strength, public bar	2006-03-01	324
Canberra	Draught beer, full strength, public bar	2006-03-01	251
Canberra	Scotch	2006-03-01	397
Canberra	Toilet soap	2006-03-01	279
Canberra	Milk	2006-06-01	306
Canberra	Cheese	2006-06-01	430
Sydney	Butter	2006-06-01	320
Canberra	Butter	2006-06-01	310
Perth	Bread white loaf, sliced	2006-06-01	264
Canberra	Bread white loaf, sliced	2006-06-01	283
Canberra	Biscuits, dry	2006-06-01	198
Melbourne	Breakfast cereal	2006-06-01	335
Hobart	Breakfast cereal	2006-06-01	388
Canberra	Breakfast cereal	2006-06-01	349
Canberra	Flour, self raising	2006-06-01	399
Canberra	Rice	2006-06-01	195
Melbourne	Roast beef	2006-06-01	1086
Canberra	Roast beef	2006-06-01	1325
Canberra	Rump steak	2006-06-01	1982
Brisbane	T-bone steak, with fillet	2006-06-01	2134
Canberra	T-bone steak, with fillet	2006-06-01	2116
Canberra	Chuck steak	2006-06-01	1025
Canberra	Lamb leg	2006-06-01	985
Brisbane	Lamb loin chops	2006-06-01	1754
Canberra	Lamb loin chops	2006-06-01	1790
Canberra	Lamb forequarter chops	2006-06-01	899
Canberra	Pork leg	2006-06-01	754
Sydney	Pork loin chops	2006-06-01	1376
Canberra	Pork loin chops	2006-06-01	1465
Canberra	Chicken, frozen	2006-06-01	356
Sydney	Bacon, middle rashers	2006-06-01	378
Canberra	Bacon, middle rashers	2006-06-01	409
Canberra	Sausages	2006-06-01	564
Canberra	Salmon, pink	2006-06-01	270
Melbourne	Oranges	2006-06-01	279
Canberra	Oranges	2006-06-01	259
Canberra	Bananas	2006-06-01	952
Sydney	Potatoes	2006-06-01	160
Hobart	Potatoes	2006-06-01	185
Canberra	Potatoes	2006-06-01	290
Canberra	Tomatoes	2006-06-01	414
Darwin	Carrots	2006-06-01	221
Canberra	Carrots	2006-06-01	207
Canberra	Onions	2006-06-01	256
Canberra	Peaches	2006-06-01	293
Sydney	Pineapple, sliced	2006-06-01	157
Canberra	Pineapple, sliced	2006-06-01	158
Canberra	Peas, frozen	2006-06-01	167
Melbourne	Chocolate milk	2006-06-01	390
Canberra	Chocolate milk	2006-06-01	386
Canberra	Eggs	2006-06-01	364
Darwin	Sugar, white	2006-06-01	225
Canberra	Sugar, white	2006-06-01	212
Canberra	Jam, strawberry	2006-06-01	315
Canberra	Teabags	2006-06-01	381
Sydney	Coffee, instant	2006-06-01	644
Canberra	Coffee, instant	2006-06-01	687
Canberra	Tomato sauce	2006-06-01	182
Sydney	Margarine, poly-unsaturated	2006-06-01	264
Canberra	Margarine, poly-unsaturated	2006-06-01	268
Canberra	Baked beans, in tomato sauce	2006-06-01	145
Canberra	Baby food	2006-06-01	82
Sydney	Laundry detergent	2006-06-01	584
Canberra	Laundry detergent	2006-06-01	598
Sydney	Dishwashing detergent	2006-06-01	338
Brisbane	Dishwashing detergent	2006-06-01	349
Canberra	Dishwashing detergent	2006-06-01	367
Canberra	Facial tissues	2006-06-01	213
Canberra	Toilet paper	2006-06-01	660
Perth	Pet food	2006-06-01	117
Canberra	Pet food	2006-06-01	105
Canberra	Petrol, unleaded	2006-06-01	137
Adelaide	Beer, low alcohol	2006-06-01	2502
Canberra	Beer, low alcohol	2006-06-01	2425
Canberra	Beer, full strength	2006-06-01	3661
Sydney	Draught beer, low alcohol, public bar	2006-06-01	220
Canberra	Draught beer, low alcohol, public bar	2006-06-01	226
Canberra	Draught beer, full strength, public bar	2006-06-01	255
Canberra	Scotch	2006-06-01	400
Canberra	Toilet soap	2006-06-01	299
Adelaide	Milk	2006-09-01	315
Canberra	Milk	2006-09-01	306
Canberra	Cheese	2006-09-01	459
Perth	Butter	2006-09-01	309
Canberra	Butter	2006-09-01	310
Canberra	Bread white loaf, sliced	2006-09-01	301
Adelaide	Biscuits, dry	2006-09-01	202
Canberra	Biscuits, dry	2006-09-01	200
Canberra	Breakfast cereal	2006-09-01	375
Sydney	Flour, self raising	2006-09-01	357
Melbourne	Flour, self raising	2006-09-01	392
Canberra	Flour, self raising	2006-09-01	393
Canberra	Rice	2006-09-01	198
Canberra	Roast beef	2006-09-01	1292
Melbourne	Rump steak	2006-09-01	2050
Canberra	Rump steak	2006-09-01	1917
Canberra	T-bone steak, with fillet	2006-09-01	1995
Brisbane	Chuck steak	2006-09-01	950
Canberra	Chuck steak	2006-09-01	1062
Canberra	Lamb leg	2006-09-01	903
Hobart	Lamb loin chops	2006-09-01	1720
Canberra	Lamb loin chops	2006-09-01	1794
Canberra	Lamb forequarter chops	2006-09-01	892
Canberra	Pork leg	2006-09-01	796
Melbourne	Pork loin chops	2006-09-01	1329
Canberra	Pork loin chops	2006-09-01	1385
Canberra	Chicken, frozen	2006-09-01	353
Brisbane	Bacon, middle rashers	2006-09-01	364
Canberra	Bacon, middle rashers	2006-09-01	387
Canberra	Sausages	2006-09-01	554
Canberra	Salmon, pink	2006-09-01	272
Perth	Oranges	2006-09-01	304
Canberra	Oranges	2006-09-01	265
Canberra	Bananas	2006-09-01	1329
Hobart	Potatoes	2006-09-01	179
Canberra	Potatoes	2006-09-01	289
Brisbane	Tomatoes	2006-09-01	346
Canberra	Tomatoes	2006-09-01	321
Canberra	Carrots	2006-09-01	209
Adelaide	Onions	2006-09-01	241
Canberra	Onions	2006-09-01	267
Canberra	Peaches	2006-09-01	317
Brisbane	Pineapple, sliced	2006-09-01	169
Canberra	Pineapple, sliced	2006-09-01	165
Canberra	Peas, frozen	2006-09-01	164
Hobart	Chocolate milk	2006-09-01	373
Canberra	Chocolate milk	2006-09-01	386
Canberra	Eggs	2006-09-01	371
Canberra	Sugar, white	2006-09-01	209
Melbourne	Jam, strawberry	2006-09-01	319
Canberra	Jam, strawberry	2006-09-01	319
Canberra	Teabags	2006-09-01	381
Perth	Coffee, instant	2006-09-01	673
Canberra	Coffee, instant	2006-09-01	650
Canberra	Tomato sauce	2006-09-01	182
Adelaide	Margarine, poly-unsaturated	2006-09-01	267
Canberra	Margarine, poly-unsaturated	2006-09-01	281
Canberra	Baked beans, in tomato sauce	2006-09-01	138
Canberra	Baby food	2006-09-01	82
Canberra	Laundry detergent	2006-09-01	598
Sydney	Dishwashing detergent	2006-09-01	352
Hobart	Dishwashing detergent	2006-09-01	361
Canberra	Dishwashing detergent	2006-09-01	378
Perth	Facial tissues	2006-09-01	213
Canberra	Facial tissues	2006-09-01	219
Canberra	Toilet paper	2006-09-01	660
Canberra	Pet food	2006-09-01	113
Sydney	Petrol, unleaded	2006-09-01	132
Canberra	Petrol, unleaded	2006-09-01	136
Canberra	Beer, low alcohol	2006-09-01	2480
Melbourne	Beer, full strength	2006-09-01	3650
Canberra	Beer, full strength	2006-09-01	3749
Canberra	Draught beer, low alcohol, public bar	2006-09-01	229
Brisbane	Draught beer, full strength, public bar	2006-09-01	254
Canberra	Draught beer, full strength, public bar	2006-09-01	256
Canberra	Scotch	2006-09-01	406
Canberra	Toilet soap	2006-09-01	290
Canberra	Milk	2006-12-01	313
Hobart	Cheese	2006-12-01	436
Canberra	Cheese	2006-12-01	448
Canberra	Butter	2006-12-01	322
Brisbane	Bread white loaf, sliced	2006-12-01	291
Canberra	Bread white loaf, sliced	2006-12-01	295
Canberra	Biscuits, dry	2006-12-01	200
Canberra	Breakfast cereal	2006-12-01	375
Melbourne	Flour, self raising	2006-12-01	419
Hobart	Flour, self raising	2006-12-01	283
Canberra	Flour, self raising	2006-12-01	421
Brisbane	Rice	2006-12-01	198
Canberra	Rice	2006-12-01	209
Canberra	Roast beef	2006-12-01	1221
Melbourne	Rump steak	2006-12-01	1994
Canberra	Rump steak	2006-12-01	1952
Canberra	T-bone steak, with fillet	2006-12-01	1921
Darwin	Chuck steak	2006-12-01	1053
Canberra	Chuck steak	2006-12-01	1041
Canberra	Lamb leg	2006-12-01	933
Hobart	Lamb loin chops	2006-12-01	1669
Canberra	Lamb loin chops	2006-12-01	1775
Canberra	Lamb forequarter chops	2006-12-01	819
Canberra	Pork leg	2006-12-01	734
Melbourne	Pork loin chops	2006-12-01	1326
Canberra	Pork loin chops	2006-12-01	1369
Canberra	Chicken, frozen	2006-12-01	354
Brisbane	Bacon, middle rashers	2006-12-01	378
Canberra	Bacon, middle rashers	2006-12-01	414
Canberra	Sausages	2006-12-01	581
Canberra	Salmon, pink	2006-12-01	266
Perth	Oranges	2006-12-01	410
Canberra	Oranges	2006-12-01	326
Canberra	Bananas	2006-12-01	975
Hobart	Potatoes	2006-12-01	241
Canberra	Potatoes	2006-12-01	329
Darwin	Tomatoes	2006-12-01	505
Canberra	Tomatoes	2006-12-01	330
Sydney	Carrots	2006-12-01	209
Canberra	Carrots	2006-12-01	215
Canberra	Onions	2006-12-01	273
Melbourne	Peaches	2006-12-01	326
Canberra	Peaches	2006-12-01	317
Canberra	Pineapple, sliced	2006-12-01	175
Melbourne	Peas, frozen	2006-12-01	165
Canberra	Peas, frozen	2006-12-01	166
Canberra	Chocolate milk	2006-12-01	377
Canberra	Eggs	2006-12-01	394
Sydney	Sugar, white	2006-12-01	217
Canberra	Sugar, white	2006-12-01	240
Perth	Jam, strawberry	2006-12-01	319
Canberra	Jam, strawberry	2006-12-01	319
Canberra	Teabags	2006-12-01	406
Canberra	Coffee, instant	2006-12-01	689
Melbourne	Tomato sauce	2006-12-01	176
Canberra	Tomato sauce	2006-12-01	176
Canberra	Margarine, poly-unsaturated	2006-12-01	281
Melbourne	Baked beans, in tomato sauce	2006-12-01	126
Canberra	Baked beans, in tomato sauce	2006-12-01	145
Canberra	Baby food	2006-12-01	84
Canberra	Laundry detergent	2006-12-01	598
Melbourne	Dishwashing detergent	2006-12-01	363
Canberra	Dishwashing detergent	2006-12-01	388
Perth	Facial tissues	2006-12-01	215
Canberra	Facial tissues	2006-12-01	229
Brisbane	Toilet paper	2006-12-01	646
Canberra	Toilet paper	2006-12-01	662
Canberra	Pet food	2006-12-01	105
Hobart	Petrol, unleaded	2006-12-01	116
Canberra	Petrol, unleaded	2006-12-01	120
Canberra	Beer, low alcohol	2006-12-01	2506
Canberra	Beer, full strength	2006-12-01	3673
Sydney	Draught beer, low alcohol, public bar	2006-12-01	226
Canberra	Draught beer, low alcohol, public bar	2006-12-01	231
Canberra	Draught beer, full strength, public bar	2006-12-01	259
Canberra	Scotch	2006-12-01	410
Adelaide	Toilet soap	2006-12-01	242
Canberra	Toilet soap	2006-12-01	299
Canberra	Milk	2007-03-01	316
Canberra	Cheese	2007-03-01	480
Melbourne	Butter	2007-03-01	358
Canberra	Butter	2007-03-01	324
Hobart	Bread white loaf, sliced	2007-03-01	267
Canberra	Bread white loaf, sliced	2007-03-01	322
Canberra	Biscuits, dry	2007-03-01	200
Canberra	Breakfast cereal	2007-03-01	374
Adelaide	Flour, self raising	2007-03-01	411
Canberra	Flour, self raising	2007-03-01	436
Hobart	Rice	2007-03-01	230
Canberra	Rice	2007-03-01	203
Sydney	Roast beef	2007-03-01	1105
Canberra	Roast beef	2007-03-01	1304
Darwin	Rump steak	2007-03-01	1614
Canberra	Rump steak	2007-03-01	1924
Canberra	T-bone steak, with fillet	2007-03-01	1937
Canberra	Chuck steak	2007-03-01	1052
Sydney	Lamb leg	2007-03-01	871
Canberra	Lamb leg	2007-03-01	908
Darwin	Lamb loin chops	2007-03-01	1812
Canberra	Lamb loin chops	2007-03-01	1583
Canberra	Lamb forequarter chops	2007-03-01	852
Canberra	Pork leg	2007-03-01	739
Brisbane	Pork loin chops	2007-03-01	1315
Canberra	Pork loin chops	2007-03-01	1486
Canberra	Chicken, frozen	2007-03-01	372
Adelaide	Bacon, middle rashers	2007-03-01	395
Canberra	Bacon, middle rashers	2007-03-01	435
Canberra	Sausages	2007-03-01	656
Canberra	Salmon, pink	2007-03-01	277
Hobart	Oranges	2007-03-01	283
Canberra	Oranges	2007-03-01	327
Canberra	Bananas	2007-03-01	272
Darwin	Potatoes	2007-03-01	263
Canberra	Potatoes	2007-03-01	264
Canberra	Tomatoes	2007-03-01	343
Darwin	Carrots	2007-03-01	253
Canberra	Carrots	2007-03-01	206
Hobart	Onions	2007-03-01	224
Canberra	Onions	2007-03-01	231
Canberra	Peaches	2007-03-01	317
Perth	Pineapple, sliced	2007-03-01	189
Canberra	Pineapple, sliced	2007-03-01	183
Canberra	Peas, frozen	2007-03-01	165
Canberra	Chocolate milk	2007-03-01	371
Brisbane	Eggs	2007-03-01	432
Canberra	Eggs	2007-03-01	424
Canberra	Sugar, white	2007-03-01	240
Melbourne	Jam, strawberry	2007-03-01	316
Canberra	Jam, strawberry	2007-03-01	319
Canberra	Teabags	2007-03-01	388
Perth	Coffee, instant	2007-03-01	691
Canberra	Coffee, instant	2007-03-01	719
Canberra	Tomato sauce	2007-03-01	172
Adelaide	Margarine, poly-unsaturated	2007-03-01	279
Canberra	Margarine, poly-unsaturated	2007-03-01	287
Canberra	Baked beans, in tomato sauce	2007-03-01	137
Canberra	Baby food	2007-03-01	88
Canberra	Laundry detergent	2007-03-01	598
Sydney	Dishwashing detergent	2007-03-01	355
Canberra	Dishwashing detergent	2007-03-01	368
Canberra	Facial tissues	2007-03-01	224
Adelaide	Toilet paper	2007-03-01	640
Canberra	Toilet paper	2007-03-01	627
Sydney	Pet food	2007-03-01	116
Canberra	Pet food	2007-03-01	106
Darwin	Petrol, unleaded	2007-03-01	127
Canberra	Petrol, unleaded	2007-03-01	120
Canberra	Beer, low alcohol	2007-03-01	2530
Canberra	Beer, full strength	2007-03-01	3710
Sydney	Draught beer, low alcohol, public bar	2007-03-01	226
Canberra	Draught beer, low alcohol, public bar	2007-03-01	234
Canberra	Draught beer, full strength, public bar	2007-03-01	261
Canberra	Scotch	2007-03-01	409
Darwin	Toilet soap	2007-03-01	390
Canberra	Toilet soap	2007-03-01	424
Canberra	Milk	2007-06-01	318
Canberra	Cheese	2007-06-01	486
Sydney	Butter	2007-06-01	350
Canberra	Butter	2007-06-01	342
Perth	Bread white loaf, sliced	2007-06-01	304
Canberra	Bread white loaf, sliced	2007-06-01	315
Canberra	Biscuits, dry	2007-06-01	200
Canberra	Breakfast cereal	2007-06-01	327
Brisbane	Flour, self raising	2007-06-01	419
Canberra	Flour, self raising	2007-06-01	465
Canberra	Rice	2007-06-01	202
Hobart	Roast beef	2007-06-01	1202
Canberra	Roast beef	2007-06-01	1347
Canberra	Rump steak	2007-06-01	1938
Brisbane	T-bone steak, with fillet	2007-06-01	2044
Canberra	T-bone steak, with fillet	2007-06-01	1968
Canberra	Chuck steak	2007-06-01	1062
Canberra	Lamb leg	2007-06-01	946
Brisbane	Lamb loin chops	2007-06-01	1679
Canberra	Lamb loin chops	2007-06-01	1697
Canberra	Lamb forequarter chops	2007-06-01	812
Canberra	Pork leg	2007-06-01	789
Sydney	Pork loin chops	2007-06-01	1357
Canberra	Pork loin chops	2007-06-01	1370
Canberra	Chicken, frozen	2007-06-01	400
Sydney	Bacon, middle rashers	2007-06-01	411
Canberra	Bacon, middle rashers	2007-06-01	442
Canberra	Sausages	2007-06-01	691
Canberra	Salmon, pink	2007-06-01	277
Melbourne	Oranges	2007-06-01	330
Canberra	Oranges	2007-06-01	388
Canberra	Bananas	2007-06-01	392
Brisbane	Potatoes	2007-06-01	193
Canberra	Potatoes	2007-06-01	276
Canberra	Tomatoes	2007-06-01	501
Adelaide	Carrots	2007-06-01	191
Canberra	Carrots	2007-06-01	195
Hobart	Onions	2007-06-01	204
Canberra	Onions	2007-06-01	236
Brisbane	Peaches	2007-06-01	330
Canberra	Peaches	2007-06-01	312
Canberra	Pineapple, sliced	2007-06-01	189
Melbourne	Peas, frozen	2007-06-01	172
Canberra	Peas, frozen	2007-06-01	170
Canberra	Chocolate milk	2007-06-01	355
Canberra	Eggs	2007-06-01	428
Sydney	Sugar, white	2007-06-01	236
Canberra	Sugar, white	2007-06-01	250
Hobart	Jam, strawberry	2007-06-01	299
Canberra	Jam, strawberry	2007-06-01	308
Canberra	Teabags	2007-06-01	388
Canberra	Coffee, instant	2007-06-01	706
Melbourne	Tomato sauce	2007-06-01	179
Canberra	Tomato sauce	2007-06-01	173
Canberra	Margarine, poly-unsaturated	2007-06-01	279
Melbourne	Baked beans, in tomato sauce	2007-06-01	135
Canberra	Baked beans, in tomato sauce	2007-06-01	139
Canberra	Baby food	2007-06-01	95
Canberra	Laundry detergent	2007-06-01	598
Brisbane	Dishwashing detergent	2007-06-01	367
Canberra	Dishwashing detergent	2007-06-01	387
Canberra	Facial tissues	2007-06-01	222
Canberra	Toilet paper	2007-06-01	637
Brisbane	Pet food	2007-06-01	108
Perth	Pet food	2007-06-01	113
Canberra	Pet food	2007-06-01	119
Canberra	Petrol, unleaded	2007-06-01	132
Adelaide	Beer, low alcohol	2007-06-01	2747
Canberra	Beer, low alcohol	2007-06-01	2584
Canberra	Beer, full strength	2007-06-01	3782
Sydney	Draught beer, low alcohol, public bar	2007-06-01	237
Canberra	Draught beer, low alcohol, public bar	2007-06-01	238
Canberra	Draught beer, full strength, public bar	2007-06-01	266
Canberra	Scotch	2007-06-01	412
Canberra	Toilet soap	2007-06-01	568
Adelaide	Milk	2007-09-01	320
Canberra	Milk	2007-09-01	334
Canberra	Cheese	2007-09-01	454
Perth	Butter	2007-09-01	346
Canberra	Butter	2007-09-01	280
Canberra	Bread white loaf, sliced	2007-09-01	324
Adelaide	Biscuits, dry	2007-09-01	212
Canberra	Biscuits, dry	2007-09-01	210
Canberra	Breakfast cereal	2007-09-01	374
Darwin	Flour, self raising	2007-09-01	467
Canberra	Flour, self raising	2007-09-01	482
Canberra	Rice	2007-09-01	208
Canberra	Roast beef	2007-09-01	1291
Perth	Rump steak	2007-09-01	1863
Darwin	Rump steak	2007-09-01	1741
Canberra	Rump steak	2007-09-01	1896
Canberra	T-bone steak, with fillet	2007-09-01	1963
Canberra	Chuck steak	2007-09-01	1090
Sydney	Lamb leg	2007-09-01	893
Canberra	Lamb leg	2007-09-01	949
Darwin	Lamb loin chops	2007-09-01	1784
Canberra	Lamb loin chops	2007-09-01	1706
Canberra	Lamb forequarter chops	2007-09-01	783
Canberra	Pork leg	2007-09-01	772
Brisbane	Pork loin chops	2007-09-01	1386
Canberra	Pork loin chops	2007-09-01	1360
Canberra	Chicken, frozen	2007-09-01	411
Adelaide	Bacon, middle rashers	2007-09-01	390
Canberra	Bacon, middle rashers	2007-09-01	444
Canberra	Sausages	2007-09-01	691
Canberra	Salmon, pink	2007-09-01	290
Hobart	Oranges	2007-09-01	280
Canberra	Oranges	2007-09-01	206
Canberra	Bananas	2007-09-01	529
Darwin	Potatoes	2007-09-01	278
Canberra	Potatoes	2007-09-01	266
Canberra	Tomatoes	2007-09-01	495
Canberra	Carrots	2007-09-01	220
Sydney	Onions	2007-09-01	236
Canberra	Onions	2007-09-01	230
Hobart	Peaches	2007-09-01	301
Canberra	Peaches	2007-09-01	335
Canberra	Pineapple, sliced	2007-09-01	195
Melbourne	Peas, frozen	2007-09-01	180
Canberra	Peas, frozen	2007-09-01	183
Canberra	Chocolate milk	2007-09-01	374
Canberra	Eggs	2007-09-01	430
Sydney	Sugar, white	2007-09-01	243
Canberra	Sugar, white	2007-09-01	231
Perth	Jam, strawberry	2007-09-01	312
Canberra	Jam, strawberry	2007-09-01	319
Canberra	Teabags	2007-09-01	346
Canberra	Coffee, instant	2007-09-01	653
Melbourne	Tomato sauce	2007-09-01	178
Canberra	Tomato sauce	2007-09-01	175
Canberra	Margarine, poly-unsaturated	2007-09-01	289
Melbourne	Baked beans, in tomato sauce	2007-09-01	120
Canberra	Baked beans, in tomato sauce	2007-09-01	122
Canberra	Baby food	2007-09-01	106
Canberra	Laundry detergent	2007-09-01	593
Melbourne	Dishwashing detergent	2007-09-01	340
Canberra	Dishwashing detergent	2007-09-01	360
Canberra	Facial tissues	2007-09-01	215
Canberra	Toilet tissue	2007-09-01	631
Adelaide	Pet food	2007-09-01	118
Canberra	Pet food	2007-09-01	110
Melbourne	Petrol, unleaded	2007-09-01	124
Perth	Petrol, unleaded	2007-09-01	124
Canberra	Petrol, unleaded	2007-09-01	125
Canberra	Beer, full strength	2007-09-01	3765
Melbourne	Draught beer, low alcohol, public bar	2007-09-01	291
Canberra	Draught beer, low alcohol, public bar	2007-09-01	248
Canberra	Draught beer, full strength, public bar	2007-09-01	273
Canberra	Scotch	2007-09-01	427
Canberra	Toilet soap	2007-09-01	773
Darwin	Milk	2007-12-01	394
Canberra	Milk	2007-12-01	347
Canberra	Cheese	2007-12-01	435
Adelaide	Butter	2007-12-01	301
Canberra	Butter	2007-12-01	356
Canberra	Bread white loaf, sliced	2007-12-01	330
Brisbane	Biscuits, dry	2007-12-01	188
Canberra	Biscuits, dry	2007-12-01	203
Canberra	Breakfast cereal	2007-12-01	374
Adelaide	Flour, self raising	2007-12-01	350
Canberra	Flour, self raising	2007-12-01	370
Canberra	Rice	2007-12-01	204
Canberra	Roast beef	2007-12-01	1382
Hobart	Rump steak	2007-12-01	1906
Canberra	Rump steak	2007-12-01	1803
Canberra	T-bone steak, with fillet	2007-12-01	1994
Brisbane	Chuck steak	2007-12-01	992
Canberra	Chuck steak	2007-12-01	1090
Canberra	Lamb leg	2007-12-01	918
Melbourne	Lamb loin chops	2007-12-01	1645
Canberra	Lamb loin chops	2007-12-01	1734
Canberra	Lamb forequarter chops	2007-12-01	760
Darwin	Pork leg	2007-12-01	720
Canberra	Pork leg	2007-12-01	717
Canberra	Pork loin chops	2007-12-01	1313
Adelaide	Chicken, whole fresh	2007-12-01	535
Canberra	Chicken, whole fresh	2007-12-01	529
Canberra	Bacon, middle rashers	2007-12-01	438
Canberra	Beef Sausages	2007-12-01	699
Adelaide	Salmon, pink	2007-12-01	261
Canberra	Salmon, pink	2007-12-01	290
Canberra	Oranges	2007-12-01	277
Canberra	Bananas	2007-12-01	259
Melbourne	Potatoes	2007-12-01	264
Canberra	Potatoes	2007-12-01	316
Canberra	Tomatoes	2007-12-01	385
Brisbane	Carrots	2007-12-01	196
Canberra	Carrots	2007-12-01	228
Canberra	Onions	2007-12-01	267
Adelaide	Peaches	2007-12-01	317
Canberra	Peaches	2007-12-01	333
Canberra	Pineapple, sliced	2007-12-01	194
Brisbane	Peas, frozen	2007-12-01	182
Canberra	Peas, frozen	2007-12-01	187
Canberra	Chocolate milk	2007-12-01	388
Canberra	Eggs	2007-12-01	430
Sydney	Sugar, white	2007-12-01	224
Canberra	Sugar, white	2007-12-01	221
Hobart	Jam, strawberry	2007-12-01	297
Canberra	Jam, strawberry	2007-12-01	319
Canberra	Teabags	2007-12-01	381
Canberra	Coffee, instant	2007-12-01	746
Melbourne	Tomato sauce	2007-12-01	175
Canberra	Tomato sauce	2007-12-01	169
Canberra	Margarine, poly-unsaturated	2007-12-01	291
Melbourne	Baked beans, in tomato sauce	2007-12-01	126
Canberra	Baked beans, in tomato sauce	2007-12-01	139
Canberra	Baby food	2007-12-01	108
Canberra	Laundry detergent	2007-12-01	589
Brisbane	Dishwashing detergent	2007-12-01	354
Canberra	Dishwashing detergent	2007-12-01	394
Canberra	Facial tissues	2007-12-01	218
Canberra	Toilet tissue	2007-12-01	630
Perth	Pet food	2007-12-01	115
Canberra	Pet food	2007-12-01	119
Canberra	Petrol, unleaded	2007-12-01	135
Melbourne	Beer, full strength	2007-12-01	3817
Perth	Beer, full strength	2007-12-01	4036
Canberra	Beer, full strength	2007-12-01	3699
Melbourne	Draught beer, low alcohol, public bar	2007-12-01	299
Canberra	Draught beer, low alcohol, public bar	2007-12-01	254
Canberra	Draught beer, full strength, public bar	2007-12-01	280
Canberra	Scotch	2007-12-01	440
Canberra	Toilet soap	2007-12-01	761
Darwin	Milk	2008-03-01	392
Canberra	Milk	2008-03-01	359
Canberra	Cheese	2008-03-01	430
Adelaide	Butter	2008-03-01	312
Canberra	Butter	2008-03-01	374
Canberra	Bread white loaf, sliced	2008-03-01	352
Brisbane	Biscuits, dry	2008-03-01	202
Canberra	Biscuits, dry	2008-03-01	221
Canberra	Breakfast cereal	2008-03-01	377
Adelaide	Flour, self raising	2008-03-01	373
Canberra	Flour, self raising	2008-03-01	404
Canberra	Rice	2008-03-01	205
Canberra	Roast beef	2008-03-01	1229
Hobart	Rump steak	2008-03-01	2025
Canberra	Rump steak	2008-03-01	1974
Canberra	T-bone steak, with fillet	2008-03-01	2022
Darwin	Chuck steak	2008-03-01	1072
Canberra	Chuck steak	2008-03-01	1090
Darwin	Lamb leg	2008-03-01	875
Canberra	Lamb leg	2008-03-01	919
Sydney	Lamb loin chops	2008-03-01	1663
Canberra	Lamb loin chops	2008-03-01	1722
Darwin	Lamb forequarter chops	2008-03-01	1072
Canberra	Lamb forequarter chops	2008-03-01	888
Canberra	Pork leg	2008-03-01	735
Canberra	Pork loin chops	2008-03-01	1427
Darwin	Chicken, whole fresh	2008-03-01	569
Canberra	Chicken, whole fresh	2008-03-01	570
Canberra	Bacon, middle rashers	2008-03-01	440
Canberra	Beef Sausages	2008-03-01	711
Brisbane	Salmon, pink	2008-03-01	253
Canberra	Salmon, pink	2008-03-01	273
Canberra	Oranges	2008-03-01	352
Canberra	Bananas	2008-03-01	258
Sydney	Potatoes	2008-03-01	155
Canberra	Potatoes	2008-03-01	343
Canberra	Tomatoes	2008-03-01	445
Melbourne	Carrots	2008-03-01	215
Canberra	Carrots	2008-03-01	227
Canberra	Onions	2008-03-01	275
Brisbane	Peaches	2008-03-01	328
Canberra	Peaches	2008-03-01	322
Canberra	Pineapple, sliced	2008-03-01	194
Melbourne	Peas, frozen	2008-03-01	188
Canberra	Peas, frozen	2008-03-01	180
Darwin	Chocolate milk	2008-03-01	407
Canberra	Chocolate milk	2008-03-01	423
Canberra	Eggs	2008-03-01	452
Brisbane	Sugar, white	2008-03-01	220
Canberra	Sugar, white	2008-03-01	214
Canberra	Jam, strawberry	2008-03-01	312
Canberra	Teabags	2008-03-01	415
Sydney	Coffee, instant	2008-03-01	738
Canberra	Coffee, instant	2008-03-01	741
Canberra	Tomato sauce	2008-03-01	185
Sydney	Margarine, poly-unsaturated	2008-03-01	286
Canberra	Margarine, poly-unsaturated	2008-03-01	283
Canberra	Baked beans, in tomato sauce	2008-03-01	154
Canberra	Baby food	2008-03-01	115
Sydney	Laundry detergent	2008-03-01	574
Canberra	Laundry detergent	2008-03-01	552
Canberra	Dishwashing detergent	2008-03-01	402
Brisbane	Facial tissues	2008-03-01	227
Canberra	Facial tissues	2008-03-01	236
Canberra	Toilet tissue	2008-03-01	682
Canberra	Pet food	2008-03-01	112
Sydney	Petrol, unleaded	2008-03-01	140
Canberra	Petrol, unleaded	2008-03-01	141
Canberra	Beer, full strength	2008-03-01	3886
Sydney	Draught beer, low alcohol, public bar	2008-03-01	236
Darwin	Draught beer, low alcohol, public bar	2008-03-01	258
Canberra	Draught beer, low alcohol, public bar	2008-03-01	259
Hobart	Draught beer, full strength, public bar	2008-03-01	335
Canberra	Draught beer, full strength, public bar	2008-03-01	283
Canberra	Scotch	2008-03-01	446
Canberra	Toilet soap	2008-03-01	778
Canberra	Milk	2008-06-01	372
Canberra	Cheese	2008-06-01	480
Melbourne	Butter	2008-06-01	370
Canberra	Butter	2008-06-01	407
Hobart	Bread white loaf, sliced	2008-06-01	295
Canberra	Bread white loaf, sliced	2008-06-01	348
Canberra	Biscuits, dry	2008-06-01	229
Canberra	Breakfast cereal	2008-06-01	395
Adelaide	Flour, self raising	2008-06-01	387
Canberra	Flour, self raising	2008-06-01	386
Canberra	Rice	2008-06-01	200
Canberra	Roast beef	2008-06-01	1308
Hobart	Rump steak	2008-06-01	2060
Canberra	Rump steak	2008-06-01	1908
Canberra	T-bone steak, with fillet	2008-06-01	1965
Darwin	Chuck steak	2008-06-01	1070
Canberra	Chuck steak	2008-06-01	1047
Canberra	Lamb leg	2008-06-01	929
Hobart	Lamb loin chops	2008-06-01	1778
Canberra	Lamb loin chops	2008-06-01	1742
Adelaide	Lamb forequarter chops	2008-06-01	996
Canberra	Lamb forequarter chops	2008-06-01	910
Canberra	Pork leg	2008-06-01	710
Adelaide	Pork loin chops	2008-06-01	1483
Canberra	Pork loin chops	2008-06-01	1470
Canberra	Chicken, whole fresh	2008-06-01	571
Hobart	Bacon, middle rashers	2008-06-01	333
Canberra	Bacon, middle rashers	2008-06-01	439
Canberra	Beef Sausages	2008-06-01	675
Canberra	Salmon, pink	2008-06-01	290
Darwin	Oranges	2008-06-01	352
Canberra	Oranges	2008-06-01	300
Canberra	Bananas	2008-06-01	185
Canberra	Potatoes	2008-06-01	298
Sydney	Tomatoes	2008-06-01	384
Canberra	Tomatoes	2008-06-01	322
Canberra	Carrots	2008-06-01	241
Melbourne	Onions	2008-06-01	257
Canberra	Onions	2008-06-01	255
Canberra	Peaches	2008-06-01	341
Sydney	Pineapple, sliced	2008-06-01	203
Canberra	Pineapple, sliced	2008-06-01	206
Canberra	Peas, frozen	2008-06-01	181
Adelaide	Chocolate milk	2008-06-01	377
Canberra	Chocolate milk	2008-06-01	428
Canberra	Eggs	2008-06-01	456
Perth	Sugar, white	2008-06-01	285
Canberra	Sugar, white	2008-06-01	218
Melbourne	Jam, strawberry	2008-06-01	328
Canberra	Jam, strawberry	2008-06-01	340
Canberra	Teabags	2008-06-01	381
Perth	Coffee, instant	2008-06-01	781
Canberra	Coffee, instant	2008-06-01	733
Canberra	Tomato sauce	2008-06-01	186
Adelaide	Margarine, poly-unsaturated	2008-06-01	289
Canberra	Margarine, poly-unsaturated	2008-06-01	298
Canberra	Baked beans, in tomato sauce	2008-06-01	144
Canberra	Baby food	2008-06-01	106
Canberra	Laundry detergent	2008-06-01	547
Sydney	Dishwashing detergent	2008-06-01	343
Canberra	Dishwashing detergent	2008-06-01	297
Canberra	Facial tissues	2008-06-01	229
Hobart	Toilet tissue	2008-06-01	663
Canberra	Toilet tissue	2008-06-01	679
Canberra	Pet food	2008-06-01	109
Canberra	Petrol, unleaded	2008-06-01	153
Melbourne	Beer, full strength	2008-06-01	3937
Canberra	Beer, full strength	2008-06-01	3905
Canberra	Draught beer, low alcohol, public bar	2008-06-01	257
Sydney	Draught beer, full strength, public bar	2008-06-01	286
Canberra	Draught beer, full strength, public bar	2008-06-01	288
Sydney	Scotch	2008-06-01	486
Canberra	Scotch	2008-06-01	465
Melbourne	Toilet soap	2008-06-01	765
Canberra	Toilet soap	2008-06-01	781
Canberra	Milk	2008-09-01	374
Hobart	Cheese	2008-09-01	537
Canberra	Cheese	2008-09-01	483
Canberra	Butter	2008-09-01	411
Brisbane	Bread white loaf, sliced	2008-09-01	354
Canberra	Bread white loaf, sliced	2008-09-01	360
Canberra	Biscuits, dry	2008-09-01	229
Canberra	Breakfast cereal	2008-09-01	396
Melbourne	Flour, self raising	2008-09-01	326
Canberra	Flour, self raising	2008-09-01	384
Canberra	Rice	2008-09-01	227
Canberra	Roast beef	2008-09-01	1292
Melbourne	Rump steak	2008-09-01	2050
Canberra	Rump steak	2008-09-01	2015
Canberra	T-bone steak, with fillet	2008-09-01	1867
Adelaide	Chuck steak	2008-09-01	993
Canberra	Chuck steak	2008-09-01	1093
Canberra	Lamb leg	2008-09-01	998
Darwin	Lamb loin chops	2008-09-01	1830
Canberra	Lamb loin chops	2008-09-01	1742
Canberra	Lamb forequarter chops	2008-09-01	919
Canberra	Pork leg	2008-09-01	723
Sydney	Pork loin chops	2008-09-01	1493
Canberra	Pork loin chops	2008-09-01	1525
Canberra	Chicken, whole fresh	2008-09-01	527
Sydney	Bacon, middle rashers	2008-09-01	385
Canberra	Bacon, middle rashers	2008-09-01	453
Canberra	Beef Sausages	2008-09-01	666
Canberra	Salmon, pink	2008-09-01	290
Sydney	Oranges	2008-09-01	220
Canberra	Oranges	2008-09-01	216
Canberra	Bananas	2008-09-01	333
Melbourne	Potatoes	2008-09-01	247
Canberra	Potatoes	2008-09-01	275
Canberra	Tomatoes	2008-09-01	288
Brisbane	Carrots	2008-09-01	212
Canberra	Carrots	2008-09-01	210
Canberra	Onions	2008-09-01	256
Adelaide	Peaches	2008-09-01	338
Canberra	Peaches	2008-09-01	321
Canberra	Pineapple, sliced	2008-09-01	197
Brisbane	Peas, frozen	2008-09-01	194
Canberra	Peas, frozen	2008-09-01	190
Canberra	Chocolate milk	2008-09-01	406
Canberra	Eggs	2008-09-01	462
Sydney	Sugar, white	2008-09-01	218
Canberra	Sugar, white	2008-09-01	206
Darwin	Jam, strawberry	2008-09-01	352
Canberra	Jam, strawberry	2008-09-01	341
Melbourne	Teabags	2008-09-01	388
Canberra	Teabags	2008-09-01	359
Darwin	Coffee, instant	2008-09-01	851
Canberra	Coffee, instant	2008-09-01	714
Canberra	Tomato sauce	2008-09-01	202
Canberra	Margarine, poly-unsaturated	2008-09-01	315
Sydney	Baked beans, in tomato sauce	2008-09-01	154
Canberra	Baked beans, in tomato sauce	2008-09-01	151
Canberra	Baby food	2008-09-01	106
Canberra	Laundry detergent	2008-09-01	573
Sydney	Dishwashing detergent	2008-09-01	387
Canberra	Dishwashing detergent	2008-09-01	380
Canberra	Facial tissues	2008-09-01	217
Hobart	Toilet tissue	2008-09-01	686
Canberra	Toilet tissue	2008-09-01	699
Canberra	Pet food	2008-09-01	112
Canberra	Petrol, unleaded	2008-09-01	156
Melbourne	Beer, full strength	2008-09-01	3859
Canberra	Beer, full strength	2008-09-01	3903
Canberra	Draught beer, low alcohol, public bar	2008-09-01	263
Sydney	Draught beer, full strength, public bar	2008-09-01	292
Canberra	Draught beer, full strength, public bar	2008-09-01	289
Canberra	Scotch	2008-09-01	471
Perth	Toilet soap	2008-09-01	426
Canberra	Toilet soap	2008-09-01	407
Adelaide	Milk	2008-12-01	369
Canberra	Milk	2008-12-01	388
Canberra	Cheese	2008-12-01	490
Perth	Butter	2008-12-01	450
Canberra	Butter	2008-12-01	424
Canberra	Bread white loaf, sliced	2008-12-01	369
Adelaide	Biscuits, dry	2008-12-01	227
Canberra	Biscuits, dry	2008-12-01	218
Canberra	Breakfast cereal	2008-12-01	401
Darwin	Flour, self raising	2008-12-01	401
Canberra	Flour, self raising	2008-12-01	382
Canberra	Rice	2008-12-01	238
Canberra	Roast beef	2008-12-01	1281
Perth	Rump steak	2008-12-01	1936
Canberra	Rump steak	2008-12-01	1921
Canberra	T-bone steak, with fillet	2008-12-01	2076
Adelaide	Chuck steak	2008-12-01	1011
Canberra	Chuck steak	2008-12-01	1094
Canberra	Lamb leg	2008-12-01	984
Darwin	Lamb loin chops	2008-12-01	1899
Canberra	Lamb loin chops	2008-12-01	1710
Canberra	Lamb forequarter chops	2008-12-01	970
Canberra	Pork leg	2008-12-01	771
Brisbane	Pork loin chops	2008-12-01	1462
Canberra	Pork loin chops	2008-12-01	1514
Adelaide	Chicken, whole fresh	2008-12-01	556
Canberra	Chicken, whole fresh	2008-12-01	565
Canberra	Bacon, middle rashers	2008-12-01	465
Hobart	Beef Sausages	2008-12-01	706
Canberra	Beef Sausages	2008-12-01	692
Canberra	Salmon, pink	2008-12-01	290
Canberra	Oranges	2008-12-01	307
Brisbane	Bananas	2008-12-01	254
Canberra	Bananas	2008-12-01	288
Canberra	Potatoes	2008-12-01	288
Adelaide	Tomatoes	2008-12-01	425
Canberra	Tomatoes	2008-12-01	416
Canberra	Carrots	2008-12-01	226
Perth	Onions	2008-12-01	267
Canberra	Onions	2008-12-01	292
Canberra	Peaches	2008-12-01	308
Adelaide	Pineapple, sliced	2008-12-01	220
Canberra	Pineapple, sliced	2008-12-01	208
Canberra	Peas, frozen	2008-12-01	192
Darwin	Chocolate milk	2008-12-01	446
Canberra	Chocolate milk	2008-12-01	467
Canberra	Eggs	2008-12-01	467
Canberra	Sugar, white	2008-12-01	213
Brisbane	Jam, strawberry	2008-12-01	339
Canberra	Jam, strawberry	2008-12-01	341
Canberra	Teabags	2008-12-01	416
Hobart	Coffee, instant	2008-12-01	779
Canberra	Coffee, instant	2008-12-01	724
Melbourne	Tomato sauce	2008-12-01	200
Canberra	Tomato sauce	2008-12-01	192
Canberra	Margarine, poly-unsaturated	2008-12-01	307
Melbourne	Baked beans, in tomato sauce	2008-12-01	147
Canberra	Baked beans, in tomato sauce	2008-12-01	135
Canberra	Baby food	2008-12-01	116
Canberra	Laundry detergent	2008-12-01	592
Melbourne	Dishwashing detergent	2008-12-01	395
Canberra	Dishwashing detergent	2008-12-01	398
Canberra	Facial tissues	2008-12-01	209
Canberra	Toilet tissue	2008-12-01	699
Adelaide	Pet food	2008-12-01	118
Canberra	Pet food	2008-12-01	112
Canberra	Petrol, unleaded	2008-12-01	125
Melbourne	Beer, full strength	2008-12-01	3900
Canberra	Beer, full strength	2008-12-01	3802
Canberra	Draught beer, low alcohol, public bar	2008-12-01	268
Melbourne	Draught beer, full strength, public bar	2008-12-01	351
Canberra	Draught beer, full strength, public bar	2008-12-01	296
Canberra	Scotch	2008-12-01	478
Canberra	Toilet soap	2008-12-01	412
Canberra	Milk	2009-03-01	386
Adelaide	Cheese	2009-03-01	525
Canberra	Cheese	2009-03-01	490
Canberra	Butter	2009-03-01	436
Sydney	Bread white loaf, sliced	2009-03-01	373
Canberra	Bread white loaf, sliced	2009-03-01	369
Canberra	Biscuits, dry	2009-03-01	218
Adelaide	Breakfast cereal	2009-03-01	391
Canberra	Breakfast cereal	2009-03-01	407
Canberra	Flour, self raising	2009-03-01	389
Canberra	Rice	2009-03-01	256
Melbourne	Roast beef	2009-03-01	1070
Canberra	Roast beef	2009-03-01	1272
Canberra	Rump steak	2009-03-01	1961
Sydney	T-bone steak, with fillet	2009-03-01	2111
Canberra	T-bone steak, with fillet	2009-03-01	1982
Canberra	Chuck steak	2009-03-01	1079
Canberra	Lamb leg	2009-03-01	990
Sydney	Lamb loin chops	2009-03-01	1983
Canberra	Lamb loin chops	2009-03-01	1943
Canberra	Lamb forequarter chops	2009-03-01	1037
Hobart	Pork leg	2009-03-01	927
Canberra	Pork leg	2009-03-01	901
Canberra	Pork loin chops	2009-03-01	1590
Brisbane	Chicken, whole fresh	2009-03-01	576
Canberra	Chicken, whole fresh	2009-03-01	560
Darwin	Bacon, middle rashers	2009-03-01	481
Canberra	Bacon, middle rashers	2009-03-01	452
Canberra	Beef Sausages	2009-03-01	704
Darwin	Salmon, pink	2009-03-01	274
Canberra	Salmon, pink	2009-03-01	289
Canberra	Oranges	2009-03-01	409
Canberra	Bananas	2009-03-01	321
Sydney	Potatoes	2009-03-01	153
Canberra	Potatoes	2009-03-01	285
Canberra	Tomatoes	2009-03-01	460
Melbourne	Carrots	2009-03-01	229
Canberra	Carrots	2009-03-01	232
Canberra	Onions	2009-03-01	270
Brisbane	Peaches	2009-03-01	353
Canberra	Peaches	2009-03-01	330
Canberra	Pineapple, sliced	2009-03-01	219
Melbourne	Peas, frozen	2009-03-01	210
Canberra	Peas, frozen	2009-03-01	198
Canberra	Chocolate milk	2009-03-01	466
Canberra	Eggs	2009-03-01	470
Sydney	Sugar, white	2009-03-01	232
Canberra	Sugar, white	2009-03-01	219
Hobart	Jam, strawberry	2009-03-01	357
Canberra	Jam, strawberry	2009-03-01	329
Canberra	Teabags	2009-03-01	386
Canberra	Coffee, instant	2009-03-01	764
Melbourne	Tomato sauce	2009-03-01	196
Canberra	Tomato sauce	2009-03-01	195
Brisbane	Margarine, poly-unsaturated	2009-03-01	314
Canberra	Margarine, poly-unsaturated	2009-03-01	316
Sydney	Baked beans, in tomato sauce	2009-03-01	157
Canberra	Baked beans, in tomato sauce	2009-03-01	159
Canberra	Baby food	2009-03-01	117
Canberra	Laundry detergent	2009-03-01	618
Sydney	Dishwashing detergent	2009-03-01	367
Canberra	Dishwashing detergent	2009-03-01	398
Canberra	Facial tissues	2009-03-01	219
Hobart	Toilet tissue	2009-03-01	698
Canberra	Toilet tissue	2009-03-01	705
Canberra	Pet food	2009-03-01	126
Canberra	Petrol, unleaded	2009-03-01	119
Melbourne	Beer, full strength	2009-03-01	3896
Canberra	Beer, full strength	2009-03-01	3855
Canberra	Draught beer, low alcohol, public bar	2009-03-01	279
Sydney	Draught beer, full strength, public bar	2009-03-01	300
Canberra	Draught beer, full strength, public bar	2009-03-01	305
Canberra	Scotch	2009-03-01	483
Canberra	Toilet soap	2009-03-01	418
Canberra	Milk	2009-06-01	371
Adelaide	Cheese	2009-06-01	554
Canberra	Cheese	2009-06-01	557
Canberra	Butter	2009-06-01	423
Sydney	Bread white loaf, sliced	2009-06-01	372
Melbourne	Bread white loaf, sliced	2009-06-01	378
Canberra	Bread white loaf, sliced	2009-06-01	364
Darwin	Biscuits, dry	2009-06-01	238
Canberra	Biscuits, dry	2009-06-01	232
Canberra	Breakfast cereal	2009-06-01	401
Canberra	Flour, self raising	2009-06-01	379
Darwin	Rice	2009-06-01	337
Canberra	Rice	2009-06-01	254
Canberra	Roast beef	2009-06-01	1323
Melbourne	Rump steak	2009-06-01	2054
Canberra	Rump steak	2009-06-01	2044
Canberra	T-bone steak, with fillet	2009-06-01	1956
Darwin	Chuck steak	2009-06-01	1058
Canberra	Chuck steak	2009-06-01	1099
Canberra	Lamb leg	2009-06-01	1025
Hobart	Lamb loin chops	2009-06-01	1965
Canberra	Lamb loin chops	2009-06-01	1888
Canberra	Lamb forequarter chops	2009-06-01	889
Canberra	Pork leg	2009-06-01	853
Melbourne	Pork loin chops	2009-06-01	1611
Canberra	Pork loin chops	2009-06-01	1581
Canberra	Chicken, whole fresh	2009-06-01	570
Brisbane	Bacon, middle rashers	2009-06-01	455
Canberra	Bacon, middle rashers	2009-06-01	534
Canberra	Beef Sausages	2009-06-01	711
Adelaide	Salmon, pink	2009-06-01	312
Canberra	Salmon, pink	2009-06-01	329
Canberra	Oranges	2009-06-01	338
Hobart	Bananas	2009-06-01	347
Canberra	Bananas	2009-06-01	296
Canberra	Potatoes	2009-06-01	280
Darwin	Tomatoes	2009-06-01	546
Canberra	Tomatoes	2009-06-01	339
Canberra	Carrots	2009-06-01	211
Canberra	Onions	2009-06-01	222
Sydney	Peaches	2009-06-01	363
Canberra	Peaches	2009-06-01	349
Darwin	Pineapple, sliced	2009-06-01	219
Canberra	Pineapple, sliced	2009-06-01	208
Canberra	Peas, frozen	2009-06-01	194
Canberra	Chocolate milk	2009-06-01	378
Darwin	Eggs	2009-06-01	473
Canberra	Eggs	2009-06-01	465
Canberra	Sugar, white	2009-06-01	221
Melbourne	Jam, strawberry	2009-06-01	339
Canberra	Jam, strawberry	2009-06-01	341
Canberra	Teabags	2009-06-01	456
Perth	Coffee, instant	2009-06-01	825
Canberra	Coffee, instant	2009-06-01	801
Canberra	Tomato sauce	2009-06-01	207
Adelaide	Margarine, poly-unsaturated	2009-06-01	319
Canberra	Margarine, poly-unsaturated	2009-06-01	331
Perth	Baked beans, in tomato sauce	2009-06-01	159
Darwin	Baked beans, in tomato sauce	2009-06-01	171
Canberra	Baked beans, in tomato sauce	2009-06-01	159
Canberra	Baby food	2009-06-01	120
Canberra	Laundry detergent	2009-06-01	572
Hobart	Dishwashing detergent	2009-06-01	356
Canberra	Dishwashing detergent	2009-06-01	334
Canberra	Facial tissues	2009-06-01	224
Canberra	Toilet tissue	2009-06-01	720
Darwin	Pet food	2009-06-01	127
Canberra	Pet food	2009-06-01	123
Canberra	Petrol, unleaded	2009-06-01	123
Adelaide	Beer, full strength	2009-06-01	4205
Canberra	Beer, full strength	2009-06-01	3936
Canberra	Draught beer, low alcohol, public bar	2009-06-01	278
Perth	Draught beer, full strength, public bar	2009-06-01	369
Canberra	Draught beer, full strength, public bar	2009-06-01	313
Canberra	Scotch	2009-06-01	499
Canberra	Toilet soap	2009-06-01	421
Canberra	Milk	2009-09-01	371
Canberra	Cheese	2009-09-01	511
Sydney	Butter	2009-09-01	395
Canberra	Butter	2009-09-01	423
Perth	Bread white loaf, sliced	2009-09-01	342
Canberra	Bread white loaf, sliced	2009-09-01	368
Perth	Biscuits, dry	2009-09-01	238
Canberra	Biscuits, dry	2009-09-01	239
Hobart	Breakfast cereal	2009-09-01	423
Canberra	Breakfast cereal	2009-09-01	391
Canberra	Flour, self raising	2009-09-01	387
Canberra	Rice	2009-09-01	255
Melbourne	Roast beef	2009-09-01	1147
Canberra	Roast beef	2009-09-01	1283
Canberra	Rump steak	2009-09-01	2077
Brisbane	T-bone steak, with fillet	2009-09-01	2184
Canberra	T-bone steak, with fillet	2009-09-01	1967
Canberra	Chuck steak	2009-09-01	1048
Canberra	Lamb leg	2009-09-01	1007
Brisbane	Lamb loin chops	2009-09-01	1918
Canberra	Lamb loin chops	2009-09-01	1916
Canberra	Lamb forequarter chops	2009-09-01	988
Canberra	Pork leg	2009-09-01	858
Sydney	Pork loin chops	2009-09-01	1474
Canberra	Pork loin chops	2009-09-01	1467
Canberra	Chicken, whole fresh	2009-09-01	558
Sydney	Bacon, middle rashers	2009-09-01	444
Canberra	Bacon, middle rashers	2009-09-01	470
Canberra	Beef Sausages	2009-09-01	657
Canberra	Salmon, pink	2009-09-01	370
Melbourne	Oranges	2009-09-01	274
Canberra	Oranges	2009-09-01	213
Adelaide	Bananas	2009-09-01	309
Canberra	Bananas	2009-09-01	282
Canberra	Potatoes	2009-09-01	283
Perth	Tomatoes	2009-09-01	338
Canberra	Tomatoes	2009-09-01	288
Canberra	Carrots	2009-09-01	218
Hobart	Onions	2009-09-01	175
Canberra	Onions	2009-09-01	212
Canberra	Peaches	2009-09-01	289
Perth	Pineapple, sliced	2009-09-01	208
Canberra	Pineapple, sliced	2009-09-01	211
Canberra	Peas, frozen	2009-09-01	201
Canberra	Chocolate milk	2009-09-01	336
Brisbane	Eggs	2009-09-01	433
Canberra	Eggs	2009-09-01	463
Canberra	Sugar, white	2009-09-01	230
Melbourne	Jam, strawberry	2009-09-01	334
Canberra	Jam, strawberry	2009-09-01	341
Canberra	Teabags	2009-09-01	395
Perth	Coffee, instant	2009-09-01	867
Canberra	Coffee, instant	2009-09-01	765
Canberra	Tomato sauce	2009-09-01	211
Adelaide	Margarine, poly-unsaturated	2009-09-01	314
Canberra	Margarine, poly-unsaturated	2009-09-01	321
Canberra	Baked beans, in tomato sauce	2009-09-01	159
Canberra	Baby food	2009-09-01	116
Melbourne	Laundry detergent	2009-09-01	621
Canberra	Laundry detergent	2009-09-01	588
Hobart	Dishwashing detergent	2009-09-01	362
Canberra	Dishwashing detergent	2009-09-01	375
Canberra	Facial tissues	2009-09-01	216
Canberra	Toilet tissue	2009-09-01	672
Canberra	Pet food	2009-09-01	137
Sydney	Petrol, unleaded	2009-09-01	123
Canberra	Petrol, unleaded	2009-09-01	128
Canberra	Beer, full strength	2009-09-01	3988
Sydney	Draught beer, low alcohol, public bar	2009-09-01	271
Canberra	Draught beer, low alcohol, public bar	2009-09-01	283
Canberra	Draught beer, full strength, public bar	2009-09-01	318
Canberra	Scotch	2009-09-01	508
Adelaide	Toilet soap	2009-09-01	409
Canberra	Toilet soap	2009-09-01	451
Brisbane	Milk	2009-12-01	318
Adelaide	Milk	2009-12-01	344
Perth	Milk	2009-12-01	315
Hobart	Milk	2009-12-01	370
Darwin	Milk	2009-12-01	425
Canberra	Milk	2009-12-01	372
Sydney	Cheese	2009-12-01	543
Melbourne	Cheese	2009-12-01	584
Brisbane	Cheese	2009-12-01	535
Adelaide	Cheese	2009-12-01	535
Perth	Cheese	2009-12-01	547
Hobart	Cheese	2009-12-01	567
Darwin	Cheese	2009-12-01	632
Canberra	Cheese	2009-12-01	524
Sydney	Butter	2009-12-01	402
Melbourne	Butter	2009-12-01	357
Brisbane	Butter	2009-12-01	321
Adelaide	Butter	2009-12-01	365
Perth	Butter	2009-12-01	402
Hobart	Butter	2009-12-01	377
Darwin	Butter	2009-12-01	456
Canberra	Butter	2009-12-01	418
Sydney	Bread white loaf, sliced	2009-12-01	379
Melbourne	Bread white loaf, sliced	2009-12-01	386
Brisbane	Bread white loaf, sliced	2009-12-01	346
Adelaide	Bread white loaf, sliced	2009-12-01	366
Perth	Bread white loaf, sliced	2009-12-01	358
Hobart	Bread white loaf, sliced	2009-12-01	319
Darwin	Bread white loaf, sliced	2009-12-01	410
Canberra	Bread white loaf, sliced	2009-12-01	377
Sydney	Biscuits, dry	2009-12-01	251
Melbourne	Biscuits, dry	2009-12-01	249
Brisbane	Biscuits, dry	2009-12-01	250
Adelaide	Biscuits, dry	2009-12-01	248
Perth	Biscuits, dry	2009-12-01	249
Hobart	Biscuits, dry	2009-12-01	249
Darwin	Biscuits, dry	2009-12-01	255
Canberra	Biscuits, dry	2009-12-01	249
Sydney	Breakfast cereal	2009-12-01	368
Melbourne	Breakfast cereal	2009-12-01	363
Brisbane	Breakfast cereal	2009-12-01	364
Adelaide	Breakfast cereal	2009-12-01	365
Perth	Breakfast cereal	2009-12-01	366
Hobart	Breakfast cereal	2009-12-01	425
Darwin	Breakfast cereal	2009-12-01	390
Canberra	Breakfast cereal	2009-12-01	361
Sydney	Flour, self raising	2009-12-01	321
Melbourne	Flour, self raising	2009-12-01	327
Brisbane	Flour, self raising	2009-12-01	340
Adelaide	Flour, self raising	2009-12-01	372
Perth	Flour, self raising	2009-12-01	375
Hobart	Flour, self raising	2009-12-01	389
Darwin	Flour, self raising	2009-12-01	389
Canberra	Flour, self raising	2009-12-01	348
Sydney	Rice	2009-12-01	237
Melbourne	Rice	2009-12-01	303
Brisbane	Rice	2009-12-01	291
Adelaide	Rice	2009-12-01	282
Perth	Rice	2009-12-01	290
Hobart	Rice	2009-12-01	238
Darwin	Rice	2009-12-01	329
Canberra	Rice	2009-12-01	250
Sydney	Roast beef	2009-12-01	1139
Melbourne	Roast beef	2009-12-01	1193
Brisbane	Roast beef	2009-12-01	1214
Adelaide	Roast beef	2009-12-01	1033
Perth	Roast beef	2009-12-01	1147
Hobart	Roast beef	2009-12-01	1174
Darwin	Roast beef	2009-12-01	1163
Canberra	Roast beef	2009-12-01	1202
Sydney	Rump steak	2009-12-01	1932
Melbourne	Rump steak	2009-12-01	1955
Brisbane	Rump steak	2009-12-01	2138
Adelaide	Rump steak	2009-12-01	1953
Perth	Rump steak	2009-12-01	2011
Hobart	Rump steak	2009-12-01	2082
Darwin	Rump steak	2009-12-01	1867
Canberra	Rump steak	2009-12-01	1900
Sydney	T-bone steak, with fillet	2009-12-01	2087
Melbourne	T-bone steak, with fillet	2009-12-01	2123
Brisbane	T-bone steak, with fillet	2009-12-01	2116
Canberra	T-bone steak, with fillet	2009-12-01	2000
Canberra	Chuck steak	2009-12-01	1080
Canberra	Lamb leg	2009-12-01	957
Canberra	Lamb loin chops	2009-12-01	1874
Canberra	Lamb forequarter chops	2009-12-01	934
Canberra	Pork leg	2009-12-01	906
Canberra	Pork loin chops	2009-12-01	1371
Canberra	Chicken, whole fresh	2009-12-01	557
Canberra	Bacon, middle rashers	2009-12-01	545
Canberra	Beef Sausages	2009-12-01	690
Canberra	Salmon, pink	2009-12-01	374
Canberra	Oranges	2009-12-01	233
Canberra	Bananas	2009-12-01	412
Hobart	Potatoes	2009-12-01	254
Canberra	Potatoes	2009-12-01	253
Brisbane	Tomatoes	2009-12-01	332
Canberra	Tomatoes	2009-12-01	380
Canberra	Carrots	2009-12-01	204
Adelaide	Onions	2009-12-01	215
Canberra	Onions	2009-12-01	210
Canberra	Peaches	2009-12-01	370
Brisbane	Pineapple, sliced	2009-12-01	190
Canberra	Pineapple, sliced	2009-12-01	230
Canberra	Peas, frozen	2009-12-01	195
Hobart	Chocolate milk	2009-12-01	355
Canberra	Chocolate milk	2009-12-01	341
Canberra	Eggs	2009-12-01	458
Canberra	Sugar, white	2009-12-01	230
Melbourne	Jam, strawberry	2009-12-01	343
Canberra	Jam, strawberry	2009-12-01	348
Canberra	Teabags	2009-12-01	436
Perth	Coffee, instant	2009-12-01	771
Canberra	Coffee, instant	2009-12-01	759
Canberra	Tomato sauce	2009-12-01	211
Adelaide	Margarine, poly-unsaturated	2009-12-01	314
Canberra	Margarine, poly-unsaturated	2009-12-01	331
Canberra	Baked beans, in tomato sauce	2009-12-01	161
Canberra	Baby food	2009-12-01	123
Canberra	Laundry detergent	2009-12-01	606
Sydney	Dishwashing detergent	2009-12-01	336
Perth	Dishwashing detergent	2009-12-01	317
Canberra	Dishwashing detergent	2009-12-01	324
Hobart	Facial tissues	2009-12-01	221
Canberra	Facial tissues	2009-12-01	220
Canberra	Toilet tissue	2009-12-01	646
Canberra	Pet food	2009-12-01	146
Melbourne	Petrol, unleaded	2009-12-01	121
Canberra	Petrol, unleaded	2009-12-01	126
Canberra	Beer, full strength	2009-12-01	4136
Sydney	Draught beer, low alcohol, public bar	2009-12-01	275
Canberra	Draught beer, low alcohol, public bar	2009-12-01	285
Canberra	Draught beer, full strength, public bar	2009-12-01	320
Canberra	Scotch	2009-12-01	503
Canberra	Toilet soap	2009-12-01	421
Melbourne	Milk	2010-03-01	359
Canberra	Milk	2010-03-01	377
Canberra	Cheese	2010-03-01	563
Brisbane	Butter	2010-03-01	334
Canberra	Butter	2010-03-01	409
Darwin	Bread white loaf, sliced	2010-03-01	412
Canberra	Bread white loaf, sliced	2010-03-01	372
Canberra	Biscuits, dry	2010-03-01	249
Canberra	Breakfast cereal	2010-03-01	369
Darwin	Flour, self raising	2010-03-01	401
Canberra	Flour, self raising	2010-03-01	368
Perth	Rice	2010-03-01	297
Hobart	Rice	2010-03-01	265
Canberra	Rice	2010-03-01	261
Canberra	Roast beef	2010-03-01	1188
Melbourne	Rump steak	2010-03-01	1909
Canberra	Rump steak	2010-03-01	1856
Canberra	T-bone steak, with fillet	2010-03-01	2122
Adelaide	Chuck steak	2010-03-01	1078
Canberra	Chuck steak	2010-03-01	1079
Canberra	Lamb leg	2010-03-01	1056
Darwin	Lamb loin chops	2010-03-01	2095
Canberra	Lamb loin chops	2010-03-01	1791
Canberra	Lamb forequarter chops	2010-03-01	953
Canberra	Pork leg	2010-03-01	854
Brisbane	Pork loin chops	2010-03-01	1544
Canberra	Pork loin chops	2010-03-01	1554
Canberra	Chicken, whole fresh	2010-03-01	573
Adelaide	Bacon, middle rashers	2010-03-01	1057
Canberra	Bacon, middle rashers	2010-03-01	1039
Canberra	Beef Sausages	2010-03-01	687
Canberra	Salmon, pink	2010-03-01	391
Hobart	Oranges	2010-03-01	295
Canberra	Oranges	2010-03-01	319
Canberra	Bananas	2010-03-01	289
Darwin	Potatoes	2010-03-01	307
Canberra	Potatoes	2010-03-01	268
Canberra	Tomatoes	2010-03-01	481
Perth	Carrots	2010-03-01	176
Canberra	Carrots	2010-03-01	206
Hobart	Onions	2010-03-01	187
Canberra	Onions	2010-03-01	242
Canberra	Peaches	2010-03-01	360
Perth	Pineapple, sliced	2010-03-01	223
Canberra	Pineapple, sliced	2010-03-01	217
Canberra	Peas, frozen	2010-03-01	193
Canberra	Chocolate milk	2010-03-01	371
Brisbane	Eggs	2010-03-01	407
Canberra	Eggs	2010-03-01	445
Canberra	Sugar, white	2010-03-01	254
Melbourne	Jam, strawberry	2010-03-01	328
Canberra	Jam, strawberry	2010-03-01	324
Canberra	Teabags	2010-03-01	394
Perth	Coffee, instant	2010-03-01	811
Canberra	Coffee, instant	2010-03-01	788
Canberra	Tomato sauce	2010-03-01	206
Adelaide	Margarine, poly-unsaturated	2010-03-01	320
Canberra	Margarine, poly-unsaturated	2010-03-01	326
Canberra	Baked beans, in tomato sauce	2010-03-01	161
Canberra	Baby food	2010-03-01	123
Canberra	Laundry detergent	2010-03-01	581
Sydney	Dishwashing detergent	2010-03-01	356
Canberra	Dishwashing detergent	2010-03-01	333
Canberra	Facial tissues	2010-03-01	228
Melbourne	Toilet tissue	2010-03-01	665
Canberra	Toilet tissue	2010-03-01	664
Brisbane	Pet food	2010-03-01	132
Canberra	Pet food	2010-03-01	137
Canberra	Petrol, unleaded	2010-03-01	128
Melbourne	Beer, full strength	2010-03-01	3941
Canberra	Beer, full strength	2010-03-01	4221
Canberra	Draught beer, low alcohol, public bar	2010-03-01	289
Sydney	Draught beer, full strength, public bar	2010-03-01	321
Canberra	Draught beer, full strength, public bar	2010-03-01	324
Canberra	Scotch	2010-03-01	524
Canberra	Toilet soap	2010-03-01	392
Canberra	Milk	2010-06-01	388
Adelaide	Cheese	2010-06-01	561
Canberra	Cheese	2010-06-01	599
Canberra	Butter	2010-06-01	422
Sydney	Bread white loaf, sliced	2010-06-01	382
Canberra	Bread white loaf, sliced	2010-06-01	373
Canberra	Biscuits, dry	2010-06-01	240
Canberra	Breakfast cereal	2010-06-01	375
Sydney	Flour, self raising	2010-06-01	313
Canberra	Flour, self raising	2010-06-01	368
Canberra	Rice	2010-06-01	251
Hobart	Roast beef	2010-06-01	1207
Canberra	Roast beef	2010-06-01	1277
Adelaide	Rump steak	2010-06-01	2080
Canberra	Rump steak	2010-06-01	1920
Darwin	T-bone steak, with fillet	2010-06-01	2008
Canberra	T-bone steak, with fillet	2010-06-01	2072
Canberra	Chuck steak	2010-06-01	1123
Canberra	Lamb leg	2010-06-01	1133
Darwin	Lamb loin chops	2010-06-01	1970
Canberra	Lamb loin chops	2010-06-01	1931
Canberra	Lamb forequarter chops	2010-06-01	933
Canberra	Pork leg	2010-06-01	892
Brisbane	Pork loin chops	2010-06-01	1650
Canberra	Pork loin chops	2010-06-01	1481
Canberra	Chicken, whole fresh	2010-06-01	575
Adelaide	Bacon, middle rashers	2010-06-01	911
Canberra	Bacon, middle rashers	2010-06-01	972
Canberra	Beef Sausages	2010-06-01	648
Canberra	Salmon, pink	2010-06-01	370
Hobart	Oranges	2010-06-01	252
Canberra	Oranges	2010-06-01	278
Canberra	Bananas	2010-06-01	225
Darwin	Potatoes	2010-06-01	295
Canberra	Potatoes	2010-06-01	210
Canberra	Tomatoes	2010-06-01	489
Canberra	Carrots	2010-06-01	208
Sydney	Onions	2010-06-01	251
Canberra	Onions	2010-06-01	225
Brisbane	Peaches	2010-06-01	385
Canberra	Peaches	2010-06-01	377
Darwin	Pineapple, sliced	2010-06-01	214
Canberra	Pineapple, sliced	2010-06-01	214
Canberra	Peas, frozen	2010-06-01	182
Canberra	Chocolate milk	2010-06-01	358
Darwin	Eggs	2010-06-01	498
Canberra	Eggs	2010-06-01	446
Canberra	Sugar, white	2010-06-01	251
Melbourne	Jam, strawberry	2010-06-01	335
Canberra	Jam, strawberry	2010-06-01	316
Canberra	Teabags	2010-06-01	398
Perth	Coffee, instant	2010-06-01	777
Canberra	Coffee, instant	2010-06-01	798
Canberra	Tomato sauce	2010-06-01	210
Adelaide	Margarine, poly-unsaturated	2010-06-01	302
Canberra	Margarine, poly-unsaturated	2010-06-01	322
Canberra	Baked beans, in tomato sauce	2010-06-01	161
Canberra	Baby food	2010-06-01	122
Canberra	Laundry detergent	2010-06-01	604
Sydney	Dishwashing detergent	2010-06-01	349
Canberra	Dishwashing detergent	2010-06-01	360
Canberra	Facial tissues	2010-06-01	210
Hobart	Toilet tissue	2010-06-01	688
Canberra	Toilet tissue	2010-06-01	623
Hobart	Pet food	2010-06-01	155
Canberra	Pet food	2010-06-01	151
Adelaide	Petrol, unleaded	2010-06-01	126
Canberra	Petrol, unleaded	2010-06-01	128
Canberra	Beer, full strength	2010-06-01	4152
Sydney	Draught beer, low alcohol, public bar	2010-06-01	281
Canberra	Draught beer, low alcohol, public bar	2010-06-01	293
Canberra	Draught beer, full strength, public bar	2010-06-01	328
Canberra	Scotch	2010-06-01	508
Canberra	Toilet soap	2010-06-01	385
Adelaide	Milk	2010-09-01	359
Canberra	Milk	2010-09-01	389
Canberra	Cheese	2010-09-01	568
Perth	Butter	2010-09-01	388
Canberra	Butter	2010-09-01	413
Canberra	Bread white loaf, sliced	2010-09-01	369
Adelaide	Biscuits, dry	2010-09-01	248
Canberra	Biscuits, dry	2010-09-01	251
Canberra	Breakfast cereal	2010-09-01	419
Darwin	Flour, self raising	2010-09-01	393
Canberra	Flour, self raising	2010-09-01	379
Canberra	Rice	2010-09-01	255
Canberra	Roast beef	2010-09-01	1228
Perth	Rump steak	2010-09-01	1859
Canberra	Rump steak	2010-09-01	1914
Darwin	T-bone steak, with fillet	2010-09-01	2113
Canberra	T-bone steak, with fillet	2010-09-01	2014
Canberra	Chuck steak	2010-09-01	1109
Canberra	Lamb leg	2010-09-01	1151
Sydney	Lamb loin chops	2010-09-01	1892
Canberra	Lamb loin chops	2010-09-01	1844
Darwin	Lamb forequarter chops	2010-09-01	949
Canberra	Lamb forequarter chops	2010-09-01	1051
Canberra	Pork leg	2010-09-01	900
Canberra	Pork loin chops	2010-09-01	1605
Darwin	Chicken, whole fresh	2010-09-01	523
Canberra	Chicken, whole fresh	2010-09-01	569
Canberra	Bacon, middle rashers	2010-09-01	1007
Canberra	Beef Sausages	2010-09-01	634
Brisbane	Salmon, pink	2010-09-01	338
Canberra	Salmon, pink	2010-09-01	384
Canberra	Oranges	2010-09-01	226
Canberra	Bananas	2010-09-01	226
Sydney	Potatoes	2010-09-01	172
Canberra	Potatoes	2010-09-01	198
Canberra	Tomatoes	2010-09-01	353
Melbourne	Carrots	2010-09-01	203
Canberra	Carrots	2010-09-01	199
Canberra	Onions	2010-09-01	252
Brisbane	Peaches	2010-09-01	384
Canberra	Peaches	2010-09-01	386
Darwin	Pineapple, sliced	2010-09-01	206
Canberra	Pineapple, sliced	2010-09-01	207
Darwin	Peas, frozen	2010-09-01	242
Canberra	Peas, frozen	2010-09-01	210
Canberra	Chocolate milk	2010-09-01	425
Canberra	Eggs	2010-09-01	444
Sydney	Sugar, white	2010-09-01	264
Canberra	Sugar, white	2010-09-01	247
Darwin	Jam, strawberry	2010-09-01	335
Canberra	Jam, strawberry	2010-09-01	331
Canberra	Teabags	2010-09-01	399
Canberra	Coffee, instant	2010-09-01	774
Brisbane	Tomato sauce	2010-09-01	207
Canberra	Tomato sauce	2010-09-01	215
Canberra	Margarine, poly-unsaturated	2010-09-01	331
Melbourne	Baked beans, in tomato sauce	2010-09-01	167
Canberra	Baked beans, in tomato sauce	2010-09-01	165
Canberra	Baby food	2010-09-01	121
Canberra	Laundry detergent	2010-09-01	875
Adelaide	Dishwashing detergent	2010-09-01	360
Canberra	Dishwashing detergent	2010-09-01	369
Canberra	Facial tissues	2010-09-01	213
Canberra	Toilet tissue	2010-09-01	713
Hobart	Pet food	2010-09-01	144
Canberra	Pet food	2010-09-01	156
Canberra	Petrol, unleaded	2010-09-01	124
Brisbane	Beer, full strength	2010-09-01	4005
Darwin	Beer, full strength	2010-09-01	4528
Canberra	Beer, full strength	2010-09-01	4132
Canberra	Draught beer, low alcohol, public bar	2010-09-01	297
Adelaide	Draught beer, full strength, public bar	2010-09-01	421
Canberra	Draught beer, full strength, public bar	2010-09-01	333
Canberra	Scotch	2010-09-01	489
Canberra	Toilet soap	2010-09-01	413
Canberra	Milk	2010-12-01	389
Darwin	Cheese	2010-12-01	564
Canberra	Cheese	2010-12-01	551
Canberra	Butter	2010-12-01	424
Adelaide	Bread white loaf, sliced	2010-12-01	364
Canberra	Bread white loaf, sliced	2010-12-01	370
Canberra	Biscuits, dry	2010-12-01	249
Canberra	Breakfast cereal	2010-12-01	419
Melbourne	Flour, self raising	2010-12-01	318
Canberra	Flour, self raising	2010-12-01	368
Canberra	Rice	2010-12-01	262
Canberra	Roast beef	2010-12-01	1115
Melbourne	Rump steak	2010-12-01	1839
Canberra	Rump steak	2010-12-01	1832
Canberra	T-bone steak, with fillet	2010-12-01	2000
Darwin	Chuck steak	2010-12-01	945
Canberra	Chuck steak	2010-12-01	1009
Perth	Lamb leg	2010-12-01	1203
Canberra	Lamb leg	2010-12-01	1256
Sydney	Lamb loin chops	2010-12-01	1951
Canberra	Lamb loin chops	2010-12-01	1854
Canberra	Lamb forequarter chops	2010-12-01	1076
Hobart	Pork leg	2010-12-01	951
Canberra	Pork leg	2010-12-01	963
Canberra	Pork loin chops	2010-12-01	1518
Brisbane	Chicken, whole fresh	2010-12-01	556
Canberra	Chicken, whole fresh	2010-12-01	552
Canberra	Bacon, middle rashers	2010-12-01	988
Canberra	Beef Sausages	2010-12-01	641
Brisbane	Salmon, pink	2010-12-01	327
Canberra	Salmon, pink	2010-12-01	374
Canberra	Oranges	2010-12-01	301
Canberra	Bananas	2010-12-01	257
Sydney	Potatoes	2010-12-01	212
Canberra	Potatoes	2010-12-01	298
Canberra	Tomatoes	2010-12-01	462
Melbourne	Carrots	2010-12-01	216
Canberra	Carrots	2010-12-01	206
Canberra	Onions	2010-12-01	308
Brisbane	Peaches	2010-12-01	380
Canberra	Peaches	2010-12-01	388
Canberra	Pineapple, sliced	2010-12-01	205
Melbourne	Peas, frozen	2010-12-01	205
Canberra	Peas, frozen	2010-12-01	210
Perth	Chocolate milk	2010-12-01	382
Canberra	Chocolate milk	2010-12-01	429
Canberra	Eggs	2010-12-01	552
Sydney	Sugar, white	2010-12-01	255
Canberra	Sugar, white	2010-12-01	241
Hobart	Jam, strawberry	2010-12-01	319
Canberra	Jam, strawberry	2010-12-01	328
Canberra	Teabags	2010-12-01	427
Canberra	Coffee, instant	2010-12-01	794
Melbourne	Tomato sauce	2010-12-01	219
Canberra	Tomato sauce	2010-12-01	215
Canberra	Margarine, poly-unsaturated	2010-12-01	322
Melbourne	Baked beans, in tomato sauce	2010-12-01	159
Canberra	Baked beans, in tomato sauce	2010-12-01	156
Canberra	Baby food	2010-12-01	114
Canberra	Laundry detergent	2010-12-01	769
Brisbane	Dishwashing detergent	2010-12-01	379
Canberra	Dishwashing detergent	2010-12-01	343
Canberra	Facial tissues	2010-12-01	230
Canberra	Toilet tissue	2010-12-01	758
Perth	Pet food	2010-12-01	139
Canberra	Pet food	2010-12-01	135
Canberra	Petrol, unleaded	2010-12-01	128
Melbourne	Beer, full strength	2010-12-01	4240
Canberra	Beer, full strength	2010-12-01	4157
Perth	Draught beer, low alcohol, public bar	2010-12-01	362
Canberra	Draught beer, low alcohol, public bar	2010-12-01	296
Canberra	Draught beer, full strength, public bar	2010-12-01	328
Canberra	Scotch	2010-12-01	448
Melbourne	Toilet soap	2010-12-01	424
Canberra	Toilet soap	2010-12-01	413
Canberra	Milk	2011-03-01	294
Darwin	Cheese	2011-03-01	633
Canberra	Cheese	2011-03-01	595
Canberra	Butter	2011-03-01	466
Adelaide	Bread white loaf, sliced	2011-03-01	358
Canberra	Bread white loaf, sliced	2011-03-01	378
Canberra	Biscuits, dry	2011-03-01	246
Canberra	Breakfast cereal	2011-03-01	374
Melbourne	Flour, self raising	2011-03-01	323
Canberra	Flour, self raising	2011-03-01	368
Canberra	Rice	2011-03-01	257
Canberra	Roast beef	2011-03-01	1142
Melbourne	Rump steak	2011-03-01	1792
Canberra	Rump steak	2011-03-01	1853
Canberra	T-bone steak, with fillet	2011-03-01	1921
Darwin	Chuck steak	2011-03-01	975
Canberra	Chuck steak	2011-03-01	1077
Canberra	Lamb leg	2011-03-01	1219
Hobart	Lamb loin chops	2011-03-01	2040
Canberra	Lamb loin chops	2011-03-01	2022
Melbourne	Lamb forequarter chops	2011-03-01	1159
Canberra	Lamb forequarter chops	2011-03-01	1116
Darwin	Pork leg	2011-03-01	945
Canberra	Pork leg	2011-03-01	944
Canberra	Pork loin chops	2011-03-01	1520
Adelaide	Chicken, whole fresh	2011-03-01	585
Canberra	Chicken, whole fresh	2011-03-01	537
Canberra	Bacon, middle rashers	2011-03-01	1009
Canberra	Beef Sausages	2011-03-01	680
Adelaide	Salmon, pink	2011-03-01	334
Canberra	Salmon, pink	2011-03-01	384
Canberra	Oranges	2011-03-01	401
Canberra	Bananas	2011-03-01	577
Melbourne	Potatoes	2011-03-01	290
Canberra	Potatoes	2011-03-01	313
Canberra	Tomatoes	2011-03-01	523
Brisbane	Carrots	2011-03-01	223
Canberra	Carrots	2011-03-01	226
Canberra	Onions	2011-03-01	344
Adelaide	Peaches	2011-03-01	362
Canberra	Peaches	2011-03-01	360
Canberra	Pineapple, sliced	2011-03-01	217
Brisbane	Peas, frozen	2011-03-01	202
Canberra	Peas, frozen	2011-03-01	212
Canberra	Chocolate milk	2011-03-01	429
Canberra	Eggs	2011-03-01	564
Sydney	Sugar, white	2011-03-01	276
Brisbane	Sugar, white	2011-03-01	274
Canberra	Sugar, white	2011-03-01	243
Canberra	Jam, strawberry	2011-03-01	311
Canberra	Teabags	2011-03-01	427
Sydney	Coffee, instant	2011-03-01	781
Canberra	Coffee, instant	2011-03-01	794
Canberra	Tomato sauce	2011-03-01	220
Sydney	Margarine, poly-unsaturated	2011-03-01	317
Canberra	Margarine, poly-unsaturated	2011-03-01	324
Canberra	Baked beans, in tomato sauce	2011-03-01	144
Canberra	Baby food	2011-03-01	121
Sydney	Laundry detergent	2011-03-01	880
Canberra	Laundry detergent	2011-03-01	822
Canberra	Dishwashing detergent	2011-03-01	368
Brisbane	Facial tissues	2011-03-01	221
Canberra	Facial tissues	2011-03-01	223
Canberra	Toilet tissue	2011-03-01	635
Canberra	Pet food	2011-03-01	143
Sydney	Petrol, unleaded	2011-03-01	138
Canberra	Petrol, unleaded	2011-03-01	137
Canberra	Beer, full strength	2011-03-01	4029
Sydney	Draught beer, low alcohol, public bar	2011-03-01	298
Canberra	Draught beer, low alcohol, public bar	2011-03-01	298
Hobart	Draught beer, full strength, public bar	2011-03-01	380
Canberra	Draught beer, full strength, public bar	2011-03-01	332
Canberra	Scotch	2011-03-01	497
Canberra	Toilet soap	2011-03-01	387
Canberra	Milk	2011-06-01	256
Canberra	Cheese	2011-06-01	594
Canberra	Butter	2011-06-01	438
Sydney	Bread white loaf, sliced	2011-06-01	351
Canberra	Bread white loaf, sliced	2011-06-01	359
Canberra	Biscuits, dry	2011-06-01	260
Canberra	Breakfast cereal	2011-06-01	419
Canberra	Flour, self raising	2011-06-01	357
Canberra	Rice	2011-06-01	261
Canberra	Roast beef	2011-06-01	1154
Canberra	Rump steak	2011-06-01	1859
Canberra	T-bone steak, with fillet	2011-06-01	1842
Canberra	Chuck steak	2011-06-01	1041
Canberra	Lamb leg	2011-06-01	1279
Canberra	Lamb loin chops	2011-06-01	2109
Canberra	Lamb forequarter chops	2011-06-01	1232
Canberra	Pork leg	2011-06-01	935
Sydney	Pork loin chops	2011-06-01	1485
Canberra	Pork loin chops	2011-06-01	1645
Canberra	Chicken, whole fresh	2011-06-01	526
Canberra	Bacon, middle rashers	2011-06-01	1009
Canberra	Beef Sausages	2011-06-01	694
Canberra	Salmon, pink	2011-06-01	365
Canberra	Oranges	2011-06-01	346
Canberra	Bananas	2011-06-01	1311
Canberra	Potatoes	2011-06-01	327
Canberra	Tomatoes	2011-06-01	589
Canberra	Carrots	2011-06-01	226
Canberra	Onions	2011-06-01	306
Canberra	Peaches	2011-06-01	373
Canberra	Pineapple, sliced	2011-06-01	210
Canberra	Peas, frozen	2011-06-01	206
Canberra	Chocolate milk	2011-06-01	425
Canberra	Eggs	2011-06-01	539
Canberra	Sugar, white	2011-06-01	275
Canberra	Jam, strawberry	2011-06-01	344
Canberra	Teabags	2011-06-01	410
Canberra	Coffee, instant	2011-06-01	737
Canberra	Tomato sauce	2011-06-01	212
Canberra	Margarine, poly-unsaturated	2011-06-01	318
Canberra	Baked beans, in tomato sauce	2011-06-01	163
Canberra	Baby food	2011-06-01	121
Canberra	Laundry detergent	2011-06-01	820
Canberra	Dishwashing detergent	2011-06-01	337
Canberra	Facial tissues	2011-06-01	217
Canberra	Toilet tissue	2011-06-01	648
Canberra	Pet food	2011-06-01	161
Canberra	Petrol, unleaded	2011-06-01	143
Melbourne	Beer, full strength	2011-06-01	4017
Canberra	Beer, full strength	2011-06-01	4028
Canberra	Draught beer, low alcohol, public bar	2011-06-01	299
Canberra	Draught beer, full strength, public bar	2011-06-01	333
Canberra	Scotch	2011-06-01	496
Canberra	Toilet soap	2011-06-01	396
\.


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (name);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (name);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (name);


--
-- Name: price price_pkey; Type: CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (location, item, date);


--
-- Name: item item_category_fkey; Type: FK CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.item
    ADD CONSTRAINT item_category_fkey FOREIGN KEY (category) REFERENCES absdata.category(name) MATCH FULL;


--
-- Name: price price_item_fkey; Type: FK CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.price
    ADD CONSTRAINT price_item_fkey FOREIGN KEY (item) REFERENCES absdata.item(name);


--
-- Name: price price_location_fkey; Type: FK CONSTRAINT; Schema: absdata; Owner: postgres
--

ALTER TABLE ONLY absdata.price
    ADD CONSTRAINT price_location_fkey FOREIGN KEY (location) REFERENCES absdata.location(name);


--
-- PostgreSQL database dump complete
--

