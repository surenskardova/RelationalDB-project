--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    artist_id integer NOT NULL,
    artist_name character varying(50)
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country_code character varying(2) NOT NULL,
    country_name character varying(50) NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: performances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.performances (
    song_id integer NOT NULL,
    country character varying(50),
    year integer,
    place character varying(50),
    points integer,
    qualification character varying(50)
);


ALTER TABLE public.performances OWNER TO postgres;

--
-- Name: songartists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.songartists (
    song_id integer NOT NULL,
    artist_id integer NOT NULL
);


ALTER TABLE public.songartists OWNER TO postgres;

--
-- Name: songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.songs (
    song_id integer NOT NULL,
    song_name character varying(255)
);


ALTER TABLE public.songs OWNER TO postgres;

--
-- Name: votes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votes (
    vote_id integer NOT NULL,
    edition_year integer,
    country_code_column character varying(50),
    value integer,
    country_code_row character varying(50),
    vote_type character varying(50)
);


ALTER TABLE public.votes OWNER TO postgres;

--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists (artist_id, artist_name) FROM stdin;
1	Aarzemnieki
2	Adrian Lulgjuraj
3	Advahov Brothers
4	Agathon Iakovidis
5	Agnete
6	Ahez
7	Achille Lauro
8	Aisel
9	Aksel
10	Albina
11	Alekseev
12	Alex Florea
13	Alexander Rybak
14	Alfred
15	Alicja
16	Aliona Moon
17	Alma
18	Alvan
19	Alyona Lanskaya
20	Amaia
21	Amanda Georgiadi Tenfjord
22	Amandine Bourgeois
23	Amber
24	Aminata Savadogo
25	Amir
26	Ana Rucner
27	Ana Soklič
28	András Kállay-Saunders
29	Andrea
30	Andrius Pojavis
31	Andromache
32	Anggun
33	Anita Simoncini
34	Anja
35	Anmary
36	Ann Sophie
37	Anna Odobescu
38	Anouk
39	Anri Jokhadze
40	Anti Social Media
41	Anxhela Peristeri
42	Aram MP3
43	Argo
44	Ari Ólafsson
45	Arilena Ara
46	Artsvik
47	Athena Manoukian
48	AWS
49	Axel Hirsoux
50	Balkanika
51	Barbara Pravi
52	Barei
53	Basim
54	Ben
55	Ben Dolic
56	Benjamin Ingrosso
57	Benny Cristo
58	Bilal Hassani
59	Birgit
60	Blanco
61	Blanche
62	Blas Cantó
63	Bledar Sejko
64	Blind Channel
65	Boggie
66	Bojana Stamenov
67	Bonnie Tyler
68	Brendan Murray
69	Brooke Scullion
70	Buranovskiye Babushki
71	ByeAlex
72	Can Bonomo
73	Can-Linn
74	Carl Espen
75	Carousel
76	Cascada
77	Cesár Sampson
78	Cezar
79	Circus Mircus
80	Citi Zēni
81	Claudia Faniello
82	Cláudia Pascoal
83	Cleo
84	Compact Disco
85	Conan Osíris
86	Conchita Wurst
87	Cornelia Jakobs
88	Cristina Scarlat
89	D mol
90	Daði
91	Dalal
92	Dami Im
93	Damir Kedžo
94	Daniel Kajmakoski
95	Darude
96	Debrah Scarlett
97	Deen
98	Demy
99	Despina Olympiou
100	Destiny
101	Dihaj
102	Dilara Kazimova
103	Dina Garipova
104	Diodato
105	Donatan
106	Donny Montell
107	DoReDos
108	Dorians
109	Douwe Bob
110	Duncan Laurence
111	Eden Alene
112	Eduard Romanyuta
113	Edurne
114	Efendi
115	Elaiza
116	Electro Velvet
117	Eleftheria Eleftheriou
118	Elena Tsagrinou
119	Eleni Foureira
120	Elhaida Dani
121	Elina Born
122	Elina Nechayeva
123	Eliot
124	Elisa
125	Elitsa Todorova
126	Elnur Hüseynov
127	Emma
128	Emma Muscat
129	Emmelie de Forest
130	Eneda Tarifa
131	Engelbert Humperdinck
132	Equinox
133	Ermal Meta
134	ESDM
135	Esma
136	Ester Peony
137	Ethno-Jazz Band Iriao
138	Eugent Bushpepa
139	Eva Boto
140	Eye Cue
141	Eythor Ingi
142	Fabrizio Moro
143	Farid Mammadov
144	Filipa Sousa
145	Firelight
146	Flo Rida
147	Francesca Michielin
148	Francesco Gabbani
149	Franka
150	Frans
151	Freaky Fortune
152	Freddie
153	Fusedmarc
154	Fyr og Flamme
155	Gabriela Gunčíková
156	Gagnamagnið
157	Gaitana
158	Gašper Šantl
159	Genealogy
160	Gianluca
161	Gjon's Tears
162	Go_A
163	Greta Salóme
164	Greta Salóme
165	Gromee
166	Guy Sebastian
167	Hannah
168	Hatari
169	Hersi
170	Highway
171	Hooverphonic
172	Hovi Star
173	Hovig
174	Hurricane
175	Chanel
176	Chingiz
177	Christabelle
178	Ieva Zasimauskaitė
179	Il Volo
180	Ilinca
181	Imri Ziv
182	Intelligent Music Project
183	Ira Losco
184	Iris
185	Isaiah
186	Ivan
187	Iveta Mukuchyan
188	Ivi Adamou
189	Izabo
190	Jacques Houdek
191	Jake
192	Jala
193	Jamala
194	James Newman
195	Jamie-Lee Kriewitz
196	Jana Burčeska
197	Jeangu Macrooy
198	Jedward
199	Jendrik
200	Jenifer Brening
201	Jérémie Makiese
202	Jessica Mauboy
203	Jessika
204	Jimmie Wilson
205	Joan Franka
206	Joci Pápai
207	Joe
208	John Karayiannis
209	John Lundvik
210	Jonida Maliqi
211	Jónsi
212	Jowst
213	Julia Samoylova
214	Jüri Pootsmann
215	Jurij Veklenko
216	Justs
217	Kaliopi
218	Kalush Orchestra
219	Kasey Smith
220	Kasia Moś
221	Kate Miller-Heidke
222	Katerine Duska
223	KEiiNO
224	Klapa s mora
225	Knez
226	Kobi Marimi
227	Koit Toome
228	Konstrakta
229	Koza Mostra
230	Krista Siegfrids
231	Kristian Kostov
232	Kurt Calleja
233	Lake Malawi
234	Laura
235	Laura Rizzotto
236	Laura Tesoro
237	Lea Sirk
238	Leonor Andrade
239	Leonora
240	Lesley Roy
241	Levina
242	Lidia Isac
243	Lighthouse X
244	Lindita
245	Lisa Angell
246	Litesound
247	Little Big
248	Loïc Nottet
249	Loreen
250	Lozano
251	LPS
252	Luca Hänni
253	Lucie Jones
254	Lukas Meijer
255	LUM!X
256	Madame Monsieur
257	Mahmood
258	Mahmood
259	Maimuna
260	Malik Harris
261	Mandinga
262	Manel Navarro
263	Måneskin
264	Manizha
265	Måns Zelmerlöw
266	ManuElla
267	Maraaya
268	Marco Mengoni
269	Margaret Berger
270	Maria Elena Kyriakou
271	María Ólafsdóttir
272	Marius Bear
273	Mariya Yaremchuk
274	Maro
275	Marta Jandová
276	Martina Bárta
277	Max Jason Mai
278	Maya Sar
279	Mei Finegold
280	Mélanie René
281	Mélovin
282	Mia Dimšić
283	Michael Ben David
284	Michael Rice
285	Michael Schulte
286	Michał Szpak
287	Michela
288	Michele Perniola
289	Miki
290	Mikolas Josef
291	Minus One
292	Moje 3
293	Molly
294	Molly Sterling
295	Monika
296	Monika Kuszyńska
297	Monika Liu
298	Montaigne
299	Moran Mazor
300	Mørland
301	Nadav Guedj
302	Nadir Rustamli
303	Natalia Gordienko
304	Natália Kelly
305	Nathan Trent
306	Naviband
307	Netta
308	Nevena Božović
309	Nicky Byrne
310	Nika Kocharov
311	Nina Badrić
312	Nina Kraljić
313	Nina Sublatti
314	Nina Zilli
315	Nodi Tatishvili
316	Norma John
317	O.Torvald
318	OG3NE
319	Ochman
320	Omar Naber
321	Oto Nemsadze
322	Ott Lepland
323	OVI
324	Pænda
325	Pasha Parfeny
326	Pastora Soler
327	Paula Seling
328	PeR
329	Pernilla
330	Pertti Kurikan Nimipäivät
331	Pia Maria
332	Poli Genova
333	Polina Gagarina
334	Pollapönk
335	Rafał
336	Rambo Amadeus
337	Rasmussen
338	Reddi
339	RiskyKidd
340	Roberto Bellarosa
341	Robin Bengtsson
342	Robin Stjernberg
343	Roko
344	Roman Lob
345	Rona Nishliu
346	Ronela Hajati
347	Rosa Linn
348	Roxen
349	Ruth Lorenzo
350	Ryan Dolan
351	Ryan O'Shaughnessy
352	Rykka
353	S!sters
354	S10
355	Saara Aalto
356	Sabina Babayeva
357	Salvador Sobral
358	Sam Ryder
359	Samanta Tīna
360	Samra
361	Sandhja
362	Sandro
363	Sanja Ilić
364	Sanja Vučić ZAA
365	Sanna Nielsen
366	Sarah McTernan
367	Sebalter
368	Sebastian Rejman
369	Senhit
370	Senhit
371	Sennek
372	Sergej Ćetković
373	Sergey Lazarev
374	Serhat
375	Sevak Khanagyan
376	Sheldon Riley
377	Sinplus
378	Slavko Kalezić
379	Sofi Marinova
380	Softengine
381	Soluna Samay
382	Sophie Gelovani
383	Srbuk
384	Stefan
385	Stefania
386	Stig Rästa
387	Stoyan Yankulov
388	Subwoolfer
389	Sunstroke Project
390	SuRie
391	Suzy
392	Svala
393	Systur
394	Takasa
395	Tamara Gachechiladze
396	Tamara Todevska
397	Tamta
398	Tan
399	Tanja
400	Teo
401	The Black Mamba
402	The Common Linnets
403	The Humans
404	The Makemakes
405	The Mamas
406	The Rasmus
407	The Roop
408	The Shin and Mariko
409	Tijana
410	Tijana Bogićević
411	Timebelle
412	Tinkara Kovač
413	TIX
414	Tolmachevy Sisters
415	Tom Leeb
416	Tooji
417	Tornike Kipiani
418	Trackshittaz
419	Triana Park
420	Trijntje Oosterhuis
421	Tulia
422	Tusse
423	TWIN TWIN
424	Uku Suviste
425	Ulrikke
426	Uzari
427	Václav Noid Bárta
428	Vaidas
429	VAL
430	Valentina Monetta
431	Valentina Monetta
432	Vanja Radovanović
433	Vasil
434	Victor Crone
435	Victoria
436	Vilija Matačiūnaitė
437	Vincent Bueno
438	Vladana
439	Voltaj
440	Waylon
441	We Are Domi
442	Who See
443	WRS
444	Yianna Terzi
445	Young Georgian Lolitaz
446	Zala Kralj
447	Zdob şi Zdub
448	Zena
449	Zibbz
450	Zlata Ognevich
451	Zoë
452	Željko Joksimović
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (country_code, country_name) FROM stdin;
al	Albania
ad	Andorra
am	Armenia
au	Australia
at	Austria
az	Azerbaijan
by	Belarus
be	Belgium
ba	Bosnia & Herzegovina
bg	Bulgaria
hr	Croatia
cy	Cyprus
cz	Czech Republic
dk	Denmark
ee	Estonia
fi	Finland
fr	France
ge	Georgia
de	Germany
gr	Greece
hu	Hungary
is	Iceland
ie	Ireland
il	Israel
it	Italy
lv	Latvia
lt	Lithuania
lu	Luxembourg
mt	Malta
md	Moldova
me	Montenegro
nl	Netherlands
mk	North Macedonia
no	Norway
pl	Poland
pt	Portugal
ro	Romania
ru	Russia
sm	San Marino
rs	Serbia
cs	Serbia & Montenegro
sk	Slovakia
si	Slovenia
es	Spain
se	Sweden
ch	Switzerland
tr	Turkey
ua	Ukraine
gb	United Kingdom
yu	Yugoslavia
\.


--
-- Data for Name: performances; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.performances (song_id, country, year, place, points, qualification) FROM stdin;
1	Albania	2012	5	146	#2 in semi-final 1
2	Albania	2013	Didn't qualify	\N	#15 in semi-final 2
3	Albania	2014	Didn't qualify	\N	#15 in semi-final 1
4	Albania	2015	17	34	#10 in semi-final 1
5	Albania	2016	Didn't qualify	\N	#16 in semi-final 2
6	Albania	2017	Didn't qualify	\N	#14 in semi-final 1
7	Albania	2018	11	184	#8 in semi-final 1
8	Albania	2019	17	90	#9 in semi-final 2
9	Albania	2020		\N	cancelled
10	Albania	2021	21	57	#10 in semi-final 2
11	Albania	2022	Didn't qualify	\N	#12 in semi-final 1
12	Armenia	2013	18	41	#7 in semi-final 2
13	Armenia	2014	4	174	#4 in semi-final 1
14	Armenia	2015	16	34	#7 in semi-final 1
15	Armenia	2016	7	249	#2 in semi-final 1
16	Armenia	2017	18	79	#7 in semi-final 1
17	Armenia	2018	Didn't qualify	\N	#15 in semi-final 1
18	Armenia	2019	Didn't qualify	\N	#16 in semi-final 2
19	Armenia	2020		\N	cancelled
20	Armenia	2022	20	61	#5 in semi-final 1
21	Australia	2015	5	196	Special guest
22	Australia	2016	2	511	#1 in semi-final 2
23	Australia	2017	9	173	#6 in semi-final 1
24	Australia	2018	20	99	#4 in semi-final 2
25	Australia	2019	9	284	#1 in semi-final 1
26	Australia	2020		\N	cancelled
27	Australia	2021	Didn't qualify	\N	#14 in semi-final 1
28	Australia	2022	15	125	#2 in semi-final 2
29	Austria	2012	Didn't qualify	\N	#18 in semi-final 1
30	Austria	2013	Didn't qualify	\N	#14 in semi-final 1
31	Austria	2014	#1	290	#1 in semi-final 2
32	Austria	2015	26	0	winner 2014
33	Austria	2016	13	151	#7 in semi-final 1
34	Austria	2017	16	93	#7 in semi-final 2
35	Austria	2018	3	342	#4 in semi-final 1
36	Austria	2019	Didn't qualify	\N	#17 in semi-final 2
37	Austria	2020		\N	cancelled
38	Austria	2021	Didn't qualify	\N	#12 in semi-final 2
39	Austria	2022	Didn't qualify	\N	#15 in semi-final 1
40	Azerbaijan	2012	4	150	winner 2011
41	Azerbaijan	2013	2	234	#1 in semi-final 2
42	Azerbaijan	2014	22	33	#9 in semi-final 1
43	Azerbaijan	2015	12	49	#10 in semi-final 2
44	Azerbaijan	2016	17	117	#6 in semi-final 1
45	Azerbaijan	2017	14	120	#8 in semi-final 1
46	Azerbaijan	2018	Didn't qualify	\N	#11 in semi-final 1
47	Azerbaijan	2019	8	302	#5 in semi-final 2
48	Azerbaijan	2020		\N	cancelled
49	Azerbaijan	2021	20	65	#8 in semi-final 1
50	Azerbaijan	2022	16	106	#10 in semi-final 2
51	Belarus	2012	Didn't qualify	\N	#16 in semi-final 2
52	Belarus	2013	16	48	#7 in semi-final 1
53	Belarus	2014	16	43	#5 in semi-final 2
54	Belarus	2015	Didn't qualify	\N	#12 in semi-final 1
55	Belarus	2016	Didn't qualify	\N	#12 in semi-final 2
56	Belarus	2017	17	83	#9 in semi-final 2
57	Belarus	2018	Didn't qualify	\N	#16 in semi-final 1
58	Belarus	2019	24	31	#10 in semi-final 1
59	Belarus	2020		\N	cancelled
60	Belgium	2012	Didn't qualify	\N	#17 in semi-final 1
61	Belgium	2013	12	71	#5 in semi-final 1
62	Belgium	2014	Didn't qualify	\N	#14 in semi-final 1
63	Belgium	2015	4	217	#2 in semi-final 1
64	Belgium	2016	10	181	#3 in semi-final 2
65	Belgium	2017	4	363	#4 in semi-final 1
66	Belgium	2018	Didn't qualify	\N	#12 in semi-final 1
67	Belgium	2019	Didn't qualify	\N	#13 in semi-final 1
68	Belgium	2020		\N	cancelled
69	Belgium	2021	19	74	#9 in semi-final 1
70	Belgium	2022	19	64	#8 in semi-final 2
71	Bosnia & Herzegovina	2012	18	55	#6 in semi-final 2
72	Bosnia & Herzegovina	2016	Didn't qualify	\N	#11 in semi-final 1
73	Bulgaria	2012	Didn't qualify	\N	#11 in semi-final 2
74	Bulgaria	2013	Didn't qualify	\N	#12 in semi-final 2
75	Bulgaria	2016	4	307	#5 in semi-final 2
76	Bulgaria	2017	2	615	#1 in semi-final 2
77	Bulgaria	2018	14	166	#7 in semi-final 1
78	Bulgaria	2020		\N	cancelled
79	Bulgaria	2021	11	170	#3 in semi-final 2
80	Bulgaria	2022	Didn't qualify	\N	#16 in semi-final 1
81	Croatia	2012	Didn't qualify	\N	#12 in semi-final 2
82	Croatia	2013	Didn't qualify	\N	#13 in semi-final 1
83	Croatia	2016	23	73	#10 in semi-final 1
84	Croatia	2017	13	128	#8 in semi-final 2
85	Croatia	2018	Didn't qualify	\N	#17 in semi-final 1
86	Croatia	2019	Didn't qualify	\N	#14 in semi-final 2
87	Croatia	2020		\N	cancelled
88	Croatia	2021	Didn't qualify	\N	#11 in semi-final 1
89	Croatia	2022	Didn't qualify	\N	#11 in semi-final 1
90	Cyprus	2012	16	65	#7 in semi-final 1
91	Cyprus	2013	Didn't qualify	\N	#15 in semi-final 1
92	Cyprus	2015	22	11	#6 in semi-final 2
93	Cyprus	2016	21	96	#8 in semi-final 1
94	Cyprus	2017	21	68	#5 in semi-final 1
95	Cyprus	2018	2	436	#2 in semi-final 1
96	Cyprus	2019	13	109	#9 in semi-final 1
97	Cyprus	2020		\N	cancelled
98	Cyprus	2021	16	94	#6 in semi-final 1
99	Cyprus	2022	Didn't qualify	\N	#12 in semi-final 2
100	Czech Republic	2015	Didn't qualify	\N	#13 in semi-final 2
101	Czech Republic	2016	25	41	#9 in semi-final 1
102	Czech Republic	2017	Didn't qualify	\N	#13 in semi-final 1
103	Czech Republic	2018	6	281	#3 in semi-final 1
104	Czech Republic	2019	11	157	#2 in semi-final 1
105	Czech Republic	2020		\N	cancelled
106	Czech Republic	2021	Didn't qualify	\N	#15 in semi-final 2
107	Czech Republic	2022	22	38	#4 in semi-final 2
108	Denmark	2012	23	21	#9 in semi-final 1
109	Denmark	2013	#1	281	#1 in semi-final 1
110	Denmark	2014	9	74	winner 2013
111	Denmark	2015	Didn't qualify	\N	#13 in semi-final 1
112	Denmark	2016	Didn't qualify	\N	#17 in semi-final 2
113	Denmark	2017	20	77	#10 in semi-final 2
114	Denmark	2018	9	226	#5 in semi-final 2
115	Denmark	2019	12	120	#10 in semi-final 2
116	Denmark	2020		\N	cancelled
117	Denmark	2021	Didn't qualify	\N	#11 in semi-final 2
118	Denmark	2022	Didn't qualify	\N	#13 in semi-final 1
119	Estonia	2012	6	120	#4 in semi-final 2
120	Estonia	2013	20	19	#10 in semi-final 1
121	Estonia	2014	Didn't qualify	\N	#12 in semi-final 1
122	Estonia	2015	7	106	#3 in semi-final 1
123	Estonia	2016	Didn't qualify	\N	#18 in semi-final 1
124	Estonia	2017	Didn't qualify	\N	#14 in semi-final 2
125	Estonia	2018	8	245	#5 in semi-final 1
126	Estonia	2019	20	76	#4 in semi-final 1
127	Estonia	2020		\N	cancelled
128	Estonia	2021	Didn't qualify	\N	#13 in semi-final 2
129	Estonia	2022	13	141	#5 in semi-final 2
130	Finland	2012	Didn't qualify	\N	#12 in semi-final 1
131	Finland	2013	24	13	#9 in semi-final 2
132	Finland	2014	11	72	#3 in semi-final 2
133	Finland	2015	Didn't qualify	\N	#16 in semi-final 1
134	Finland	2016	Didn't qualify	\N	#15 in semi-final 1
135	Finland	2017	Didn't qualify	\N	#12 in semi-final 1
136	Finland	2018	25	46	#10 in semi-final 1
137	Finland	2019	Didn't qualify	\N	#17 in semi-final 1
138	Finland	2020		\N	cancelled
139	Finland	2021	6	301	#5 in semi-final 2
140	Finland	2022	21	38	#7 in semi-final 2
141	France	2012	22	21	Big 5
142	France	2013	23	14	Big 5
143	France	2014	26	2	Big 5
144	France	2015	25	4	Big 5
145	France	2016	6	257	Big 5
146	France	2017	12	135	Big 5
147	France	2018	13	173	Big 5
148	France	2019	16	105	Big 5
149	France	2020		\N	cancelled
150	France	2021	2	499	Big 5
151	France	2022	24	17	Big 5
152	Georgia	2012	Didn't qualify	\N	#14 in semi-final 2
153	Georgia	2013	15	50	#10 in semi-final 2
154	Georgia	2014	Didn't qualify	\N	#15 in semi-final 2
155	Georgia	2015	11	51	#4 in semi-final 1
156	Georgia	2016	20	104	#9 in semi-final 2
157	Georgia	2017	Didn't qualify	\N	#11 in semi-final 1
158	Georgia	2018	Didn't qualify	\N	#18 in semi-final 2
159	Georgia	2019	Didn't qualify	\N	#14 in semi-final 1
160	Georgia	2020		\N	cancelled
161	Georgia	2021	Didn't qualify	\N	#16 in semi-final 2
162	Georgia	2022	Didn't qualify	\N	#18 in semi-final 2
163	Germany	2012	8	110	Big 5
164	Germany	2013	21	18	Big 5
165	Germany	2014	18	39	Big 5
166	Germany	2015	27	0	Big 5
167	Germany	2016	26	11	Big 5
168	Germany	2017	25	6	Big 5
169	Germany	2018	4	340	Big 5
170	Germany	2019	25	24	Big 5
171	Germany	2020		\N	cancelled
172	Germany	2021	25	3	Big 5
173	Germany	2022	25	6	Big 5
174	Greece	2012	17	64	#4 in semi-final 1
175	Greece	2013	6	152	#2 in semi-final 2
176	Greece	2014	20	35	#7 in semi-final 2
177	Greece	2015	19	23	#6 in semi-final 1
178	Greece	2016	Didn't qualify	\N	#16 in semi-final 1
179	Greece	2017	19	77	#10 in semi-final 1
180	Greece	2018	Didn't qualify	\N	#14 in semi-final 1
181	Greece	2019	21	74	#5 in semi-final 1
182	Greece	2020		\N	cancelled
183	Greece	2021	10	170	#6 in semi-final 2
184	Greece	2022	8	215	#3 in semi-final 1
185	Hungary	2012	24	19	#10 in semi-final 1
186	Hungary	2013	10	84	#8 in semi-final 2
187	Hungary	2014	5	143	#3 in semi-final 1
188	Hungary	2015	20	19	#8 in semi-final 1
189	Hungary	2016	19	108	#4 in semi-final 1
190	Hungary	2017	8	200	#2 in semi-final 2
191	Hungary	2018	21	93	#10 in semi-final 2
192	Hungary	2019	Didn't qualify	\N	#12 in semi-final 1
193	Iceland	2012	20	46	#8 in semi-final 1
194	Iceland	2013	17	47	#6 in semi-final 2
195	Iceland	2014	15	58	#8 in semi-final 1
196	Iceland	2015	Didn't qualify	\N	#15 in semi-final 2
197	Iceland	2016	Didn't qualify	\N	#14 in semi-final 1
198	Iceland	2017	Didn't qualify	\N	#15 in semi-final 1
199	Iceland	2018	Didn't qualify	\N	#19 in semi-final 1
200	Iceland	2019	10	232	#3 in semi-final 1
201	Iceland	2020		\N	cancelled
202	Iceland	2021	4	378	#2 in semi-final 2
203	Iceland	2022	23	20	#10 in semi-final 1
204	Ireland	2012	19	46	#6 in semi-final 1
205	Ireland	2013	26	5	#8 in semi-final 1
206	Ireland	2014	Didn't qualify	\N	#12 in semi-final 2
207	Ireland	2015	Didn't qualify	\N	#12 in semi-final 2
208	Ireland	2016	Didn't qualify	\N	#15 in semi-final 2
209	Ireland	2017	Didn't qualify	\N	#13 in semi-final 2
210	Ireland	2018	16	136	#6 in semi-final 1
211	Ireland	2019	Didn't qualify	\N	#18 in semi-final 2
212	Ireland	2020		\N	cancelled
213	Ireland	2021	Didn't qualify	\N	#16 in semi-final 1
214	Ireland	2022	Didn't qualify	\N	#15 in semi-final 2
215	Israel	2012	Didn't qualify	\N	#13 in semi-final 1
216	Israel	2013	Didn't qualify	\N	#14 in semi-final 2
217	Israel	2014	Didn't qualify	\N	#14 in semi-final 2
218	Israel	2015	9	97	#3 in semi-final 2
219	Israel	2016	14	135	#7 in semi-final 2
220	Israel	2017	23	39	#3 in semi-final 2
221	Israel	2018	#1	529	#1 in semi-final 1
222	Israel	2019	23	35	winner 2018
223	Israel	2020		\N	cancelled
224	Israel	2021	17	93	#5 in semi-final 1
225	Israel	2022	Didn't qualify	\N	#13 in semi-final 2
226	Italy	2012	9	101	Big 5
227	Italy	2013	7	126	Big 5
228	Italy	2014	21	33	Big 5
229	Italy	2015	3	292	Big 5
230	Italy	2016	16	124	Big 5
231	Italy	2017	6	334	Big 5
232	Italy	2018	5	308	Big 5
233	Italy	2019	2	472	Big 5
234	Italy	2020		\N	cancelled
235	Italy	2021	#1	524	Big 5
236	Italy	2022	6	268	Big 5
237	Latvia	2012	Didn't qualify	\N	#16 in semi-final 1
238	Latvia	2013	Didn't qualify	\N	#17 in semi-final 2
239	Latvia	2014	Didn't qualify	\N	#13 in semi-final 1
240	Latvia	2015	6	186	#2 in semi-final 2
241	Latvia	2016	15	132	#8 in semi-final 2
242	Latvia	2017	Didn't qualify	\N	#18 in semi-final 1
243	Latvia	2018	Didn't qualify	\N	#12 in semi-final 2
244	Latvia	2019	Didn't qualify	\N	#15 in semi-final 2
245	Latvia	2020		\N	cancelled
246	Latvia	2021	Didn't qualify	\N	#17 in semi-final 2
247	Latvia	2022	Didn't qualify	\N	#14 in semi-final 1
248	Lithuania	2012	14	70	#3 in semi-final 2
249	Lithuania	2013	22	17	#9 in semi-final 1
250	Lithuania	2014	Didn't qualify	\N	#11 in semi-final 2
251	Lithuania	2015	18	30	#7 in semi-final 2
252	Lithuania	2016	9	200	#4 in semi-final 2
253	Lithuania	2017	Didn't qualify	\N	#17 in semi-final 2
254	Lithuania	2018	12	181	#9 in semi-final 1
255	Lithuania	2019	Didn't qualify	\N	#11 in semi-final 2
256	Lithuania	2020		\N	cancelled
257	Lithuania	2021	8	220	#4 in semi-final 1
258	Lithuania	2022	14	128	#7 in semi-final 1
259	Malta	2012	21	41	#7 in semi-final 2
260	Malta	2013	8	120	#4 in semi-final 2
261	Malta	2014	23	32	#9 in semi-final 2
262	Malta	2015	Didn't qualify	\N	#11 in semi-final 2
263	Malta	2016	12	153	#3 in semi-final 1
264	Malta	2017	Didn't qualify	\N	#16 in semi-final 2
265	Malta	2018	Didn't qualify	\N	#13 in semi-final 2
266	Malta	2019	14	107	#8 in semi-final 2
267	Malta	2020		\N	cancelled
268	Malta	2021	7	255	#1 in semi-final 1
269	Malta	2022	Didn't qualify	\N	#16 in semi-final 2
270	Moldova	2012	11	81	#5 in semi-final 1
271	Moldova	2013	11	71	#4 in semi-final 1
272	Moldova	2014	Didn't qualify	\N	#16 in semi-final 1
273	Moldova	2015	Didn't qualify	\N	#11 in semi-final 1
274	Moldova	2016	Didn't qualify	\N	#17 in semi-final 1
275	Moldova	2017	3	374	#2 in semi-final 1
276	Moldova	2018	10	209	#3 in semi-final 2
277	Moldova	2019	Didn't qualify	\N	#12 in semi-final 2
278	Moldova	2020		\N	cancelled
279	Moldova	2021	13	115	#7 in semi-final 2
280	Moldova	2022	7	253	#8 in semi-final 1
281	Montenegro	2012	Didn't qualify	\N	#15 in semi-final 1
282	Montenegro	2013	Didn't qualify	\N	#12 in semi-final 1
283	Montenegro	2014	19	37	#7 in semi-final 1
284	Montenegro	2015	13	44	#9 in semi-final 2
285	Montenegro	2016	Didn't qualify	\N	#13 in semi-final 1
286	Montenegro	2017	Didn't qualify	\N	#16 in semi-final 1
287	Montenegro	2018	Didn't qualify	\N	#16 in semi-final 2
288	Montenegro	2019	Didn't qualify	\N	#16 in semi-final 1
289	Montenegro	2022	Didn't qualify	\N	#17 in semi-final 2
290	Netherlands	2012	Didn't qualify	\N	#15 in semi-final 2
291	Netherlands	2013	9	114	#6 in semi-final 1
292	Netherlands	2014	2	238	#1 in semi-final 1
293	Netherlands	2015	Didn't qualify	\N	#14 in semi-final 1
294	Netherlands	2016	11	153	#5 in semi-final 1
295	Netherlands	2017	11	150	#4 in semi-final 2
296	Netherlands	2018	18	121	#7 in semi-final 2
297	Netherlands	2019	#1	498	#1 in semi-final 2
298	Netherlands	2020		\N	cancelled
299	Netherlands	2021	23	11	winner 2019
300	Netherlands	2022	11	171	#2 in semi-final 1
301	North Macedonia	2012	13	71	#9 in semi-final 2
302	North Macedonia	2013	Didn't qualify	\N	#16 in semi-final 2
303	North Macedonia	2014	Didn't qualify	\N	#13 in semi-final 2
304	North Macedonia	2015	Didn't qualify	\N	#15 in semi-final 1
305	North Macedonia	2016	Didn't qualify	\N	#11 in semi-final 2
306	North Macedonia	2017	Didn't qualify	\N	#15 in semi-final 2
307	North Macedonia	2018	Didn't qualify	\N	#18 in semi-final 1
308	North Macedonia	2019	7	305	#2 in semi-final 2
309	North Macedonia	2020		\N	cancelled
310	North Macedonia	2021	Didn't qualify	\N	#15 in semi-final 1
311	North Macedonia	2022	Didn't qualify	\N	#11 in semi-final 2
312	Norway	2012	26	7	#10 in semi-final 2
313	Norway	2013	4	191	#3 in semi-final 2
314	Norway	2014	8	88	#6 in semi-final 2
315	Norway	2015	8	102	#4 in semi-final 2
316	Norway	2016	Didn't qualify	\N	#13 in semi-final 2
317	Norway	2017	10	158	#5 in semi-final 2
318	Norway	2018	15	144	#1 in semi-final 2
319	Norway	2019	6	331	#7 in semi-final 2
320	Norway	2020		\N	cancelled
321	Norway	2021	18	75	#10 in semi-final 1
322	Norway	2022	10	182	#6 in semi-final 1
323	Poland	2014	14	62	#8 in semi-final 2
324	Poland	2015	23	10	#8 in semi-final 2
325	Poland	2016	8	229	#6 in semi-final 2
326	Poland	2017	22	64	#9 in semi-final 1
327	Poland	2018	Didn't qualify	\N	#14 in semi-final 2
328	Poland	2019	Didn't qualify	\N	#11 in semi-final 1
329	Poland	2020		\N	cancelled
330	Poland	2021	Didn't qualify	\N	#14 in semi-final 2
331	Poland	2022	12	151	#6 in semi-final 2
332	Portugal	2012	Didn't qualify	\N	#13 in semi-final 2
333	Portugal	2014	Didn't qualify	\N	#11 in semi-final 1
334	Portugal	2015	Didn't qualify	\N	#14 in semi-final 2
335	Portugal	2017	#1	758	#1 in semi-final 1
336	Portugal	2018	26	39	winner 2017
337	Portugal	2019	Didn't qualify	\N	#15 in semi-final 1
338	Portugal	2020		\N	cancelled
339	Portugal	2021	12	153	#4 in semi-final 2
340	Portugal	2022	9	207	#4 in semi-final 1
341	Romania	2012	12	71	#3 in semi-final 1
342	Romania	2013	13	65	#5 in semi-final 2
343	Romania	2014	12	72	#2 in semi-final 2
344	Romania	2015	15	35	#5 in semi-final 1
345	Romania	2017	7	282	#6 in semi-final 2
346	Romania	2018	Didn't qualify	\N	#11 in semi-final 2
347	Romania	2019	Didn't qualify	\N	#13 in semi-final 2
348	Romania	2020		\N	cancelled
349	Romania	2021	Didn't qualify	\N	#12 in semi-final 1
350	Romania	2022	18	65	#9 in semi-final 2
351	Russia	2012	2	259	#1 in semi-final 1
352	Russia	2013	5	174	#2 in semi-final 1
353	Russia	2014	7	89	#6 in semi-final 1
354	Russia	2015	2	303	#1 in semi-final 1
355	Russia	2016	3	491	#1 in semi-final 1
356	Russia	2018	Didn't qualify	\N	#15 in semi-final 2
357	Russia	2019	3	370	#6 in semi-final 2
358	Russia	2020		\N	cancelled
359	Russia	2021	9	204	#3 in semi-final 1
360	San Marino	2012	Didn't qualify	\N	#14 in semi-final 1
361	San Marino	2013	Didn't qualify	\N	#11 in semi-final 2
362	San Marino	2014	24	14	#10 in semi-final 1
363	San Marino	2015	Didn't qualify	\N	#16 in semi-final 2
364	San Marino	2016	Didn't qualify	\N	#12 in semi-final 1
365	San Marino	2017	Didn't qualify	\N	#18 in semi-final 2
366	San Marino	2018	Didn't qualify	\N	#17 in semi-final 2
367	San Marino	2019	19	77	#8 in semi-final 1
368	San Marino	2020		\N	cancelled
369	San Marino	2021	22	50	#9 in semi-final 2
370	San Marino	2022	Didn't qualify	\N	#14 in semi-final 2
371	Serbia	2012	3	214	#2 in semi-final 2
372	Serbia	2013	Didn't qualify	\N	#11 in semi-final 1
373	Serbia	2015	10	53	#9 in semi-final 1
374	Serbia	2016	18	115	#10 in semi-final 2
375	Serbia	2017	Didn't qualify	\N	#11 in semi-final 2
376	Serbia	2018	19	113	#9 in semi-final 2
377	Serbia	2019	18	89	#7 in semi-final 1
378	Serbia	2020		\N	cancelled
379	Serbia	2021	15	102	#8 in semi-final 2
380	Serbia	2022	5	312	#3 in semi-final 2
381	Slovakia	2012	Didn't qualify	\N	#18 in semi-final 2
382	Slovenia	2012	Didn't qualify	\N	#17 in semi-final 2
383	Slovenia	2013	Didn't qualify	\N	#16 in semi-final 1
384	Slovenia	2014	25	9	#10 in semi-final 2
385	Slovenia	2015	14	39	#5 in semi-final 2
386	Slovenia	2016	Didn't qualify	\N	#14 in semi-final 2
387	Slovenia	2017	Didn't qualify	\N	#17 in semi-final 1
388	Slovenia	2018	22	64	#8 in semi-final 2
389	Slovenia	2019	15	105	#6 in semi-final 1
390	Slovenia	2020		\N	cancelled
391	Slovenia	2021	Didn't qualify	\N	#13 in semi-final 1
392	Slovenia	2022	Didn't qualify	\N	#17 in semi-final 1
393	Spain	2012	10	97	Big 5
394	Spain	2013	25	8	Big 5
395	Spain	2014	10	74	Big 5
396	Spain	2015	21	15	Big 5
397	Spain	2016	22	77	Big 5
398	Spain	2017	26	5	Big 5
399	Spain	2018	23	61	Big 5
400	Spain	2019	22	54	Big 5
401	Spain	2020		\N	cancelled
402	Spain	2021	24	6	Big 5
403	Spain	2022	3	459	Big 5
404	Sweden	2012	#1	372	#1 in semi-final 2
405	Sweden	2013	14	62	winner 2012
406	Sweden	2014	3	218	#2 in semi-final 1
407	Sweden	2015	#1	365	#1 in semi-final 2
408	Sweden	2016	5	261	winner 2015
409	Sweden	2017	5	344	#3 in semi-final 1
410	Sweden	2018	7	274	#2 in semi-final 2
411	Sweden	2019	5	334	#3 in semi-final 2
412	Sweden	2020		\N	cancelled
413	Sweden	2021	14	109	#7 in semi-final 1
414	Sweden	2022	4	438	#1 in semi-final 2
415	Switzerland	2012	Didn't qualify	\N	#11 in semi-final 1
416	Switzerland	2013	Didn't qualify	\N	#13 in semi-final 2
417	Switzerland	2014	13	64	#4 in semi-final 2
418	Switzerland	2015	Didn't qualify	\N	#17 in semi-final 2
419	Switzerland	2016	Didn't qualify	\N	#18 in semi-final 2
420	Switzerland	2017	Didn't qualify	\N	#12 in semi-final 2
421	Switzerland	2018	Didn't qualify	\N	#13 in semi-final 1
422	Switzerland	2019	4	364	#4 in semi-final 2
423	Switzerland	2020		\N	cancelled
424	Switzerland	2021	3	432	#1 in semi-final 2
425	Switzerland	2022	17	78	#9 in semi-final 1
426	Turkey	2012	7	112	#5 in semi-final 2
427	Ukraine	2012	15	65	#8 in semi-final 2
428	Ukraine	2013	3	214	#3 in semi-final 1
429	Ukraine	2014	6	113	#5 in semi-final 1
430	Ukraine	2016	#1	534	#2 in semi-final 2
431	Ukraine	2017	24	36	winner 2016
432	Ukraine	2018	17	130	#6 in semi-final 2
433	Ukraine	2020		\N	cancelled
434	Ukraine	2021	5	364	#2 in semi-final 1
435	Ukraine	2022	#1	631	#1 in semi-final 1
436	United Kingdom	2012	25	12	Big 5
437	United Kingdom	2013	19	23	Big 5
438	United Kingdom	2014	17	40	Big 5
439	United Kingdom	2015	24	5	Big 5
440	United Kingdom	2016	24	62	Big 5
441	United Kingdom	2017	15	111	Big 5
442	United Kingdom	2018	24	48	Big 5
443	United Kingdom	2019	26	11	Big 5
444	United Kingdom	2020		\N	cancelled
445	United Kingdom	2021	26	0	Big 5
446	United Kingdom	2022	2	466	Big 5
\.


--
-- Data for Name: songartists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songartists (song_id, artist_id) FROM stdin;
1	345
2	2
2	63
3	169
4	120
5	130
6	244
7	138
8	210
9	45
10	41
11	346
12	108
13	42
14	159
15	187
16	46
17	375
18	383
19	47
20	347
21	166
22	92
23	185
24	202
25	221
26	298
27	298
28	376
29	418
30	304
31	86
32	404
33	451
34	305
35	77
36	324
37	437
38	437
39	255
39	331
40	356
41	143
42	102
43	126
44	360
45	101
46	8
47	176
48	114
49	114
50	302
51	246
52	19
53	400
54	426
54	259
55	186
56	306
57	11
58	448
59	429
60	184
61	340
62	49
63	248
64	236
65	61
66	371
67	123
68	171
69	171
70	201
71	278
72	91
72	97
72	26
72	192
73	379
74	125
74	387
75	332
76	231
77	132
78	435
79	435
80	182
81	311
82	224
83	312
84	190
85	149
86	343
87	93
88	10
89	282
90	188
91	99
92	208
93	291
94	173
95	119
96	397
97	362
98	118
99	31
100	275
100	427
101	155
102	276
103	290
104	233
105	57
106	57
107	441
108	381
109	129
110	53
111	40
112	243
113	34
114	337
115	239
116	54
116	398
117	154
118	338
119	322
120	59
121	399
122	121
122	386
123	214
124	227
124	234
125	122
126	434
127	424
128	424
129	384
130	329
131	230
132	380
133	330
134	361
135	316
136	355
137	95
137	368
138	9
139	64
140	406
141	32
142	22
143	423
144	245
145	25
146	17
147	256
148	58
149	415
150	51
151	18
151	6
152	39
153	315
153	382
154	408
155	313
156	310
156	445
157	395
158	137
159	321
160	417
161	417
162	79
163	344
164	76
165	115
166	36
167	195
168	241
169	285
170	353
171	55
172	199
173	260
174	117
175	229
175	4
176	151
176	339
177	270
178	43
179	98
180	444
181	222
182	385
183	385
184	21
185	84
186	71
187	28
188	65
189	152
190	206
191	48
192	206
193	163
193	164
193	211
194	141
195	334
196	271
197	163
197	164
198	392
199	44
200	168
201	90
201	156
202	90
202	156
203	393
204	198
205	350
206	73
206	219
207	294
208	309
209	68
210	351
211	366
212	240
213	240
214	69
215	189
216	299
217	279
218	301
219	172
220	181
221	307
222	226
223	111
224	111
225	283
226	314
227	268
228	127
229	179
230	147
231	148
232	133
232	142
233	257
233	258
234	104
235	263
236	257
236	258
236	60
237	35
238	328
239	1
240	24
241	216
242	419
243	235
244	75
245	359
246	359
247	80
248	106
249	30
250	436
251	295
251	428
252	106
253	153
254	178
255	215
256	407
257	407
258	297
259	232
260	160
261	145
262	23
263	183
264	81
265	177
266	287
267	100
268	100
269	128
270	325
271	16
272	88
273	112
274	242
275	389
276	107
277	37
278	303
279	303
280	447
280	3
281	336
282	442
283	372
284	225
285	170
286	378
287	432
288	89
289	438
290	205
291	38
292	402
293	420
294	109
295	318
296	440
297	110
298	197
299	197
300	354
301	217
302	135
302	250
303	409
304	94
305	217
306	196
307	140
308	396
309	433
310	433
311	29
312	416
313	269
314	74
315	300
315	96
316	5
317	212
318	13
319	223
320	425
321	413
322	388
323	105
323	83
324	296
325	286
326	220
327	165
327	254
328	421
329	15
330	335
331	319
332	144
333	391
334	238
335	357
336	82
337	85
338	124
339	401
340	274
341	261
342	78
343	327
343	323
344	439
345	180
345	12
346	403
347	136
348	348
349	348
350	443
351	70
352	103
353	414
354	333
355	373
356	213
357	373
358	247
359	264
360	430
360	431
361	430
361	431
362	430
362	431
363	288
363	33
364	374
365	430
365	431
365	204
366	203
366	200
367	374
368	369
368	370
369	369
369	370
369	146
370	7
371	452
372	292
373	66
374	364
375	410
376	363
376	50
377	308
378	174
379	174
380	228
381	277
382	139
383	167
384	412
385	267
386	266
387	320
388	237
389	446
389	158
390	27
391	27
392	251
393	326
394	134
395	349
396	113
397	52
398	262
399	20
399	14
400	289
401	62
402	62
403	175
404	249
405	342
406	365
407	265
408	150
409	341
410	56
411	209
412	405
413	422
414	87
415	377
416	394
417	367
418	280
419	352
420	411
421	449
422	252
423	161
424	161
425	272
426	72
427	157
428	450
429	273
430	193
431	317
432	281
433	162
434	162
435	218
436	131
437	67
438	293
439	116
440	207
440	191
441	253
442	390
443	284
444	194
445	194
446	358
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songs (song_id, song_name) FROM stdin;
1	Suus
2	Identitet
3	One Night's Anger
4	I'm Alive
5	Fairytale
6	World
7	Mall
8	Ktheju Tokës
9	Fall From The Sky
10	Karma
11	Sekret
12	Lonely Planet
13	Not Alone
14	Face The Shadow
15	LoveWave
16	Fly With Me
17	Qami
18	Walking Out
19	Chains On You
20	Snap
21	Tonight Again
22	Sound of Silence
23	Don't Come Easy
24	We Got Love
25	Zero Gravity
26	Don't Break Me
27	Technicolour
28	Not the Same
29	Woki Mit Deim Popo
30	Shine
31	Rise Like a Phoenix
32	I Am Yours
33	Loin d'ici
34	Running On Air
35	Nobody But You
36	Limits
37	Alive
38	Amen
39	Halo
40	When The Music Dies
41	Hold Me
42	Start A Fire
43	Hour Of The Wolf
44	Miracle
45	Skeletons
46	X My Heart
47	Truth
48	Cleopatra
49	Mata Hari
50	Fade To Black
51	We Are The Heroes
52	Solayoh
53	Cheesecake
54	Time
55	Help You Fly
56	Historyja majho žyccia
57	Forever
58	Like It
59	Da vidna
60	Would You?
61	Love Kills
62	Mother
63	Rhythm Inside
64	What's the Pressure
65	City Lights
66	A Matter of Time
67	Wake Up
68	Release Me
69	The Wrong Place
70	Miss You
71	Korake Ti Znam
72	Ljubav Je
73	Love Unlimited
74	Samo Shampioni
75	If Love Was a Crime
76	Beautiful Mess
77	Bones
78	Tears Getting Sober
79	Growing Up Is Getting Old
80	Intention
81	Nebo
82	Mižerja
83	Lighthouse
84	My Friend
85	Crazy
86	The Dream
87	Divlji vjetre
88	Tick-Tock
89	Guilty Pleasure
90	La La Love
91	An Me Thimasai
92	One Thing I Should Have Done
93	Alter Ego
94	Gravity
95	Fuego
96	Replay
97	Running
98	El Diablo
99	Ela
100	Hope Never Dies
101	I Stand
102	My Turn
103	Lie To Me
104	Friend of a Friend
105	Kemama
106	Omaga
107	Lights Off
108	Should've Known Better
109	Only Teardrops
110	Cliche Love Song
111	The Way You Are
112	Soldiers of Love
113	Where I Am
114	Higher Ground
115	Love Is Forever
116	Yes
117	Øve os på hinanden
118	The Show
119	Kuula
120	Et Uus Saaks Alguse
121	Amazing
122	Goodbye to Yesterday
123	Play
124	Verona
125	La Forza
126	Storm
127	What Love Is
128	The Lucky One
129	Hope
130	När Jag Blundar
131	Marry Me
132	Something Better
133	Aina Mun Pitää
134	Sing It Away
135	Blackbird
136	Monsters
137	Look Away
138	Looking Back
139	Dark Side
140	Jezebel
141	Echo (You And I)
142	L'enfer Et Moi
143	Moustache
144	N’oubliez pas
145	J'ai Cherché
146	Requiem
147	Mercy
148	Roi
149	The Best in Me
150	Voilà
151	Fulenn
152	I'm A Joker
153	Waterfall
154	Three Minutes To Earth
155	Warrior
156	Midnight Gold
157	Keep The Faith
158	For You
159	Keep on Going
160	Take Me As I Am
161	You
162	Lock Me In
163	Standing Still
164	Glorious
165	Is It Right
166	Black Smoke
167	Ghost
168	Perfect Life
169	You Let Me Walk Alone
170	Sister
171	Violent Thing
172	I Don't Feel Hate
173	Rockstars
174	Aphrodisiac
175	Alcohol Is Free
176	Rise Up
177	One Last Breath
178	Utopian Land
179	This is Love
180	Oniro Mou
181	Better Love
182	Superg!rl
183	Last Dance
184	Die Together
185	Sound Of Our Hearts
186	Kedvesem
187	Running
188	Wars For Nothing
189	Pioneer
190	Origo
191	Viszlát Nyár
192	Az én apám
193	Never Forget
194	Ég Á Líf
195	No Prejudice
196	Unbroken
197	Hear Them Calling
198	Paper
199	Our Choice
200	Hatrið mun sigra
201	Think About Things
202	10 Years
203	Með hækkandi sól
204	Waterline
205	Only Love Survives
206	Heartbeat
207	Playing With Numbers
208	Sunlight
209	Dying To Try
210	Together
211	22
212	Story Of My Life
213	Maps
214	That's Rich
215	Time
216	Rak Bishvilo
217	Same Heart
218	Golden Boy
219	Made of Stars
220	I Feel Alive
221	Toy
222	Home
223	Feker Libi
224	Set Me Free
225	I.M
226	L'Amore È Femmina (Out Of Love)
227	L'Essenziale
228	La Mia Città
229	Grande Amore
230	No Degree of Separation
231	Occidentali's Karma
232	Non Mi Avete Fatto Niente
233	Soldi
234	Fai rumore
235	Zitti e buoni
236	Brividi
237	Beautiful Song
238	Here We Go
239	Cake To Bake
240	Love Injected
241	Heartbeat
242	Line
243	Funny Girl
244	That Night
245	Still Breathing
246	The Moon Is Rising
247	Eat Your Salad
248	Love Is Blind
249	Something
250	Attention
251	This Time
252	I've Been Waiting for This Night
253	Rain Of Revolution
254	When We're Old
255	Run with the Lions
256	On Fire
257	Discoteque
258	Sentimentai
259	This Is The Night
260	Tomorrow
261	Coming Home
262	Warrior
263	Walk on Water
264	Breathlessly
265	Taboo
266	Chameleon
267	All Of My Love
268	Je Me Casse
269	I Am What I Am
270	Lăutar
271	O Mie
272	Wild Soul
273	I Want Your Love
274	Falling Stars
275	Hey Mamma
276	My Lucky Day
277	Stay
278	Prison
279	Sugar
280	Trenuleţul
281	Euro Neuro
282	Igranka
283	Moj Svijet
284	Adio
285	The Real Thing
286	Space
287	Inje
288	Heaven
289	Breathe
290	You And Me
291	Birds
292	Calm After The Storm
293	Walk Along
294	Slow Down
295	Lights And Shadows
296	Outlaw In 'Em
297	Arcade
298	Grow
299	Birth Of A New Age
300	De Diepte
301	Crno I Belo
302	Pred Da Se Razdeni
303	To the Sky
304	Autumn Leaves
305	Dona
306	Dance Alone
307	Lost And Found
308	Proud
309	You
310	Here I Stand
311	Circles
312	Stay
313	I Feed You My Love
314	Silent Storm
315	A Monster Like Me
316	Icebreaker
317	Grab the Moment
318	That's How You Write a Song
319	Spirit in the Sky
320	Attention
321	Fallen Angel
322	Give That Wolf a Banana
323	My Słowianie - We Are Slavic
324	In The Name Of Love
325	Color of Your Life
326	Flashlight
327	Light Me Up
328	Pali się
329	Empires
330	The Ride
331	River
332	Vida Minha
333	Quero Ser Tua
334	Há um mar que nos Separa
335	Amar Pelos Dois
336	O Jardim
337	Telemóveis
338	Medo de sentir
339	Love Is On My Side
340	Saudade, saudade
341	Zaleilah
342	It's My Life
343	Miracle
344	De La Capăt / All Over Again
345	Yodel It!
346	Goodbye
347	On a Sunday
348	Alcohol You
349	Amnesia
350	Llámame
351	Party For Everybody
352	What If
353	Shine
354	A Million Voices
355	You Are the Only One
356	I Won't Break
357	Scream
358	Uno
359	Russian Woman
360	The Social Network Song (Oh Oh – Uh - Oh Oh)
361	Crisalide (Vola)
362	Maybe (Forse)
363	Chain Of Lights
364	I Didn't Know
365	Spirit Of The Night
366	Who We Are
367	Say Na Na Na
368	Freaky!
369	Adrenalina
370	Stripper
371	Nije Ljubav Stvar
372	Ljubav Je Svuda
373	Beauty Never Lies
374	Goodbye (Shelter)
375	In Too Deep
376	Nova Deca
377	Kruna
378	Hasta la vista
379	Loco Loco
380	In Corpore Sano
381	Don't Close Your Eyes
382	Verjamem
383	Straight Into Love
384	Round and Round
385	Here for You
386	Blue and Red
387	On My Way
388	Hvala, ne!
389	Sebi
390	Voda
391	Amen
392	Disko
393	Quédate Conmigo
394	Contigo Hasta El Final
395	Dancing in the rain
396	Amanecer
397	Say Yay!
398	Do It for Your Lover
399	Tu Canción
400	La Venda
401	Universo
402	Voy A Quedarme
403	SloMo
404	Euphoria
405	You
406	Undo
407	Heroes
408	If I Were Sorry
409	I Can't Go On
410	Dance You Off
411	Too Late for Love
412	Move
413	Voices
414	Hold Me Closer
415	Unbreakable
416	You And Me
417	Hunter Of Stars
418	Time To Shine
419	The Last of Our Kind
420	Apollo
421	Stones
422	She Got Me
423	Répondez-moi
424	Tout l'univers
425	Boys Do Cry
426	Love Me Back
427	Be My Guest
428	Gravity
429	Tick - Tock
430	1944
431	Time
432	Under the Ladder
433	Solovey
434	Shum
435	Stefania
436	Love Will Set You Free
437	Believe In Me
438	Children of the Universe
439	Still in Love with You
440	You're Not Alone
441	Never Give Up on You
442	Storm
443	Bigger Than Us
444	My Last Breath
445	Embers
446	Space Man
\.


--
-- Data for Name: votes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votes (vote_id, edition_year, country_code_column, value, country_code_row, vote_type) FROM stdin;
1	2022	al	12	ua	Tele
2	2022	am	12	ua	Tele
3	2022	au	12	ua	Tele
4	2022	at	12	ua	Tele
5	2022	az	12	ua	Tele
6	2022	be	10	ua	Tele
7	2022	bg	12	ua	Tele
8	2022	hr	12	ua	Tele
9	2022	cy	12	ua	Tele
10	2022	cz	12	ua	Tele
11	2022	dk	12	ua	Tele
12	2022	ee	12	ua	Tele
13	2022	fi	12	ua	Tele
14	2022	fr	12	ua	Tele
15	2022	ge	10	ua	Tele
16	2022	de	12	ua	Tele
17	2022	gr	12	ua	Tele
18	2022	is	12	ua	Tele
19	2022	ie	12	ua	Tele
20	2022	il	12	ua	Tele
21	2022	it	12	ua	Tele
22	2022	lv	8	ua	Tele
23	2022	lt	12	ua	Tele
24	2022	mt	10	ua	Tele
25	2022	md	12	ua	Tele
26	2022	me	8	ua	Tele
27	2022	nl	12	ua	Tele
28	2022	mk	12	ua	Tele
29	2022	no	12	ua	Tele
30	2022	pl	10	ua	Tele
31	2022	pt	12	ua	Tele
32	2022	ro	7	ua	Tele
33	2022	sm	10	ua	Tele
34	2022	rs	12	ua	Tele
35	2022	si	12	ua	Tele
36	2022	es	10	ua	Tele
37	2022	se	12	ua	Tele
38	2022	ch	10	ua	Tele
39	2022	al	4	md	Tele
40	2022	am	7	md	Tele
41	2022	au	8	md	Tele
42	2022	at	7	md	Tele
43	2022	az	8	md	Tele
44	2022	be	8	md	Tele
45	2022	bg	5	md	Tele
46	2022	hr	6	md	Tele
47	2022	cy	5	md	Tele
48	2022	cz	10	md	Tele
49	2022	dk	8	md	Tele
50	2022	ee	10	md	Tele
51	2022	fi	3	md	Tele
52	2022	fr	6	md	Tele
53	2022	ge	7	md	Tele
54	2022	de	6	md	Tele
55	2022	gr	10	md	Tele
56	2022	is	7	md	Tele
57	2022	ie	5	md	Tele
58	2022	il	7	md	Tele
59	2022	it	10	md	Tele
60	2022	lv	7	md	Tele
61	2022	lt	4	md	Tele
62	2022	mt	7	md	Tele
63	2022	md	8	md	Tele
64	2022	me	12	md	Tele
65	2022	nl	4	md	Tele
66	2022	mk	12	md	Tele
67	2022	no	7	md	Tele
68	2022	pl	7	md	Tele
69	2022	pt	4	md	Tele
70	2022	ro	6	md	Tele
71	2022	sm	8	md	Tele
72	2022	al	6	es	Tele
73	2022	am	1	es	Tele
74	2022	au	10	es	Tele
75	2022	at	6	es	Tele
76	2022	az	8	es	Tele
77	2022	be	7	es	Tele
78	2022	bg	8	es	Tele
79	2022	hr	6	es	Tele
80	2022	cy	1	es	Tele
81	2022	cz	1	es	Tele
82	2022	dk	3	es	Tele
83	2022	ee	7	es	Tele
84	2022	fi	6	es	Tele
85	2022	fr	2	es	Tele
86	2022	ge	12	es	Tele
87	2022	de	3	es	Tele
88	2022	gr	5	es	Tele
89	2022	is	8	es	Tele
90	2022	ie	4	es	Tele
91	2022	il	6	es	Tele
92	2022	it	7	es	Tele
93	2022	lv	8	es	Tele
94	2022	lt	8	es	Tele
95	2022	mt	7	es	Tele
96	2022	md	10	es	Tele
97	2022	me	1	es	Tele
98	2022	nl	6	es	Tele
99	2022	mk	10	es	Tele
100	2022	no	8	es	Tele
101	2022	pl	10	es	Tele
102	2022	pt	10	es	Tele
103	2022	ro	4	es	Tele
104	2022	sm	2	es	Tele
105	2022	rs	6	es	Tele
106	2022	si	1	es	Tele
107	2022	es	5	es	Tele
108	2022	al	8	rs	Tele
109	2022	am	10	rs	Tele
110	2022	au	6	rs	Tele
111	2022	at	2	rs	Tele
112	2022	az	10	rs	Tele
113	2022	be	12	rs	Tele
114	2022	bg	7	rs	Tele
115	2022	hr	10	rs	Tele
116	2022	cy	7	rs	Tele
117	2022	cz	8	rs	Tele
118	2022	dk	7	rs	Tele
119	2022	ee	7	rs	Tele
120	2022	fi	8	rs	Tele
121	2022	fr	1	rs	Tele
122	2022	ge	1	rs	Tele
123	2022	de	7	rs	Tele
124	2022	gr	7	rs	Tele
125	2022	is	2	rs	Tele
126	2022	ie	6	rs	Tele
127	2022	il	12	rs	Tele
128	2022	it	3	rs	Tele
129	2022	lv	12	rs	Tele
130	2022	lt	3	rs	Tele
131	2022	mt	5	rs	Tele
132	2022	md	5	rs	Tele
133	2022	me	7	rs	Tele
134	2022	nl	8	rs	Tele
135	2022	mk	12	rs	Tele
136	2022	no	2	rs	Tele
137	2022	pl	8	rs	Tele
138	2022	pt	12	rs	Tele
139	2022	ro	1	rs	Tele
140	2022	al	7	gb	Tele
141	2022	am	8	gb	Tele
142	2022	au	8	gb	Tele
143	2022	at	3	gb	Tele
144	2022	az	3	gb	Tele
145	2022	be	6	gb	Tele
146	2022	bg	2	gb	Tele
147	2022	hr	6	gb	Tele
148	2022	cy	5	gb	Tele
149	2022	cz	4	gb	Tele
150	2022	dk	2	gb	Tele
151	2022	ee	4	gb	Tele
152	2022	fi	6	gb	Tele
153	2022	fr	5	gb	Tele
154	2022	ge	7	gb	Tele
155	2022	de	6	gb	Tele
156	2022	gr	10	gb	Tele
157	2022	is	6	gb	Tele
158	2022	ie	3	gb	Tele
159	2022	il	4	gb	Tele
160	2022	it	12	gb	Tele
161	2022	lv	3	gb	Tele
162	2022	lt	8	gb	Tele
163	2022	mt	6	gb	Tele
164	2022	md	3	gb	Tele
165	2022	me	6	gb	Tele
166	2022	nl	3	gb	Tele
167	2022	mk	6	gb	Tele
168	2022	no	8	gb	Tele
169	2022	pl	6	gb	Tele
170	2022	pt	5	gb	Tele
171	2022	ro	7	gb	Tele
172	2022	al	6	se	Tele
173	2022	am	4	se	Tele
174	2022	au	5	se	Tele
175	2022	at	4	se	Tele
176	2022	az	5	se	Tele
177	2022	be	10	se	Tele
178	2022	bg	10	se	Tele
179	2022	hr	8	se	Tele
180	2022	cy	5	se	Tele
181	2022	cz	4	se	Tele
182	2022	dk	8	se	Tele
183	2022	ee	3	se	Tele
184	2022	fi	5	se	Tele
185	2022	fr	5	se	Tele
186	2022	ge	6	se	Tele
187	2022	de	10	se	Tele
188	2022	gr	5	se	Tele
189	2022	is	5	se	Tele
190	2022	ie	1	se	Tele
191	2022	il	2	se	Tele
192	2022	it	4	se	Tele
193	2022	lv	8	se	Tele
194	2022	lt	10	se	Tele
195	2022	mt	7	se	Tele
196	2022	md	6	se	Tele
197	2022	me	3	se	Tele
198	2022	nl	1	se	Tele
199	2022	mk	5	se	Tele
200	2022	no	6	se	Tele
201	2022	pl	3	se	Tele
202	2022	pt	4	se	Tele
203	2022	al	7	no	Tele
204	2022	am	1	no	Tele
205	2022	au	5	no	Tele
206	2022	at	3	no	Tele
207	2022	az	8	no	Tele
208	2022	be	4	no	Tele
209	2022	bg	6	no	Tele
210	2022	hr	1	no	Tele
211	2022	cy	6	no	Tele
212	2022	cz	10	no	Tele
213	2022	dk	4	no	Tele
214	2022	ee	4	no	Tele
215	2022	fi	4	no	Tele
216	2022	fr	5	no	Tele
217	2022	ge	2	no	Tele
218	2022	de	4	no	Tele
219	2022	gr	6	no	Tele
220	2022	is	2	no	Tele
221	2022	ie	5	no	Tele
222	2022	il	2	no	Tele
223	2022	it	4	no	Tele
224	2022	lv	2	no	Tele
225	2022	lt	2	no	Tele
226	2022	mt	2	no	Tele
227	2022	md	8	no	Tele
228	2022	me	3	no	Tele
229	2022	nl	3	no	Tele
230	2022	mk	10	no	Tele
231	2022	no	2	no	Tele
232	2022	pl	6	no	Tele
233	2022	al	3	it	Tele
234	2022	am	5	it	Tele
235	2022	au	4	it	Tele
236	2022	at	2	it	Tele
237	2022	az	6	it	Tele
238	2022	be	5	it	Tele
239	2022	bg	3	it	Tele
240	2022	hr	3	it	Tele
241	2022	cy	7	it	Tele
242	2022	cz	3	it	Tele
243	2022	dk	3	it	Tele
244	2022	ee	10	it	Tele
245	2022	fi	6	it	Tele
246	2022	fr	6	it	Tele
247	2022	ge	3	it	Tele
248	2022	de	4	it	Tele
249	2022	gr	5	it	Tele
250	2022	is	4	it	Tele
251	2022	ie	6	it	Tele
252	2022	il	5	it	Tele
253	2022	it	8	it	Tele
254	2022	al	1	pl	Tele
255	2022	am	7	pl	Tele
256	2022	au	3	pl	Tele
257	2022	at	7	pl	Tele
258	2022	az	4	pl	Tele
259	2022	be	4	pl	Tele
260	2022	bg	8	pl	Tele
261	2022	hr	4	pl	Tele
262	2022	cy	10	pl	Tele
263	2022	cz	1	pl	Tele
264	2022	dk	3	pl	Tele
265	2022	ee	2	pl	Tele
266	2022	fi	4	pl	Tele
267	2022	fr	6	pl	Tele
268	2022	ge	5	pl	Tele
269	2022	de	1	pl	Tele
270	2022	gr	5	pl	Tele
271	2022	is	1	pl	Tele
272	2022	ie	12	pl	Tele
273	2022	il	10	pl	Tele
274	2022	al	2	ee	Tele
275	2022	am	4	ee	Tele
276	2022	au	3	ee	Tele
277	2022	at	10	ee	Tele
278	2022	az	8	ee	Tele
279	2022	be	8	ee	Tele
280	2022	bg	7	ee	Tele
281	2022	hr	3	ee	Tele
282	2022	cy	1	ee	Tele
283	2022	cz	3	ee	Tele
284	2022	dk	2	ee	Tele
285	2022	ee	8	ee	Tele
286	2022	fi	5	ee	Tele
287	2022	fr	6	ee	Tele
288	2022	ge	4	ee	Tele
289	2022	de	5	ee	Tele
290	2022	gr	2	ee	Tele
291	2022	al	3	lt	Tele
292	2022	am	2	lt	Tele
293	2022	au	7	lt	Tele
294	2022	at	7	lt	Tele
295	2022	az	2	lt	Tele
296	2022	be	5	lt	Tele
297	2022	bg	2	lt	Tele
298	2022	hr	8	lt	Tele
299	2022	cy	10	lt	Tele
300	2022	cz	4	lt	Tele
301	2022	dk	1	lt	Tele
302	2022	ee	10	lt	Tele
303	2022	fi	2	lt	Tele
304	2022	fr	1	lt	Tele
305	2022	ge	3	lt	Tele
306	2022	de	2	lt	Tele
307	2022	gr	3	lt	Tele
308	2022	is	10	lt	Tele
309	2022	ie	7	lt	Tele
310	2022	al	3	gr	Tele
311	2022	am	6	gr	Tele
312	2022	au	10	gr	Tele
313	2022	at	1	gr	Tele
314	2022	az	7	gr	Tele
315	2022	be	7	gr	Tele
316	2022	bg	8	gr	Tele
317	2022	al	1	ro	Tele
318	2022	am	2	ro	Tele
319	2022	au	2	ro	Tele
320	2022	at	8	ro	Tele
321	2022	az	3	ro	Tele
322	2022	be	10	ro	Tele
323	2022	bg	1	ro	Tele
324	2022	hr	5	ro	Tele
325	2022	cy	10	ro	Tele
326	2022	cz	3	ro	Tele
327	2022	al	3	nl	Tele
328	2022	am	4	nl	Tele
329	2022	au	5	nl	Tele
330	2022	at	2	nl	Tele
331	2022	az	2	nl	Tele
332	2022	be	1	nl	Tele
333	2022	bg	4	nl	Tele
334	2022	hr	1	nl	Tele
335	2022	cy	1	nl	Tele
336	2022	cz	3	nl	Tele
337	2022	al	6	pt	Tele
338	2022	am	1	pt	Tele
339	2022	au	7	pt	Tele
340	2022	at	5	pt	Tele
341	2022	az	1	pt	Tele
342	2022	be	4	pt	Tele
343	2022	bg	7	pt	Tele
344	2022	al	8	fi	Tele
345	2022	am	2	fi	Tele
346	2022	au	1	fi	Tele
347	2022	at	1	fi	Tele
348	2022	az	7	fi	Tele
349	2022	be	4	fi	Tele
350	2022	al	5	am	Tele
351	2022	am	10	am	Tele
352	2022	al	1	fr	Tele
353	2022	am	2	fr	Tele
354	2022	au	1	fr	Tele
355	2022	at	2	fr	Tele
356	2022	al	2	de	Tele
357	2022	al	12	gb	Jury
358	2022	am	12	gb	Jury
359	2022	au	10	gb	Jury
360	2022	at	3	gb	Jury
361	2022	az	12	gb	Jury
362	2022	be	6	gb	Jury
363	2022	bg	4	gb	Jury
364	2022	hr	10	gb	Jury
365	2022	cy	12	gb	Jury
366	2022	cz	12	gb	Jury
367	2022	dk	12	gb	Jury
368	2022	ee	7	gb	Jury
369	2022	fi	8	gb	Jury
370	2022	fr	10	gb	Jury
371	2022	ge	6	gb	Jury
372	2022	de	8	gb	Jury
373	2022	gr	10	gb	Jury
374	2022	is	8	gb	Jury
375	2022	ie	10	gb	Jury
376	2022	il	5	gb	Jury
377	2022	it	4	gb	Jury
378	2022	lv	8	gb	Jury
379	2022	lt	6	gb	Jury
380	2022	mt	8	gb	Jury
381	2022	md	10	gb	Jury
382	2022	me	8	gb	Jury
383	2022	nl	8	gb	Jury
384	2022	mk	1	gb	Jury
385	2022	no	2	gb	Jury
386	2022	pl	3	gb	Jury
387	2022	pt	8	gb	Jury
388	2022	ro	6	gb	Jury
389	2022	sm	12	gb	Jury
390	2022	al	10	se	Jury
391	2022	am	7	se	Jury
392	2022	au	8	se	Jury
393	2022	at	7	se	Jury
394	2022	az	5	se	Jury
395	2022	be	5	se	Jury
396	2022	bg	10	se	Jury
397	2022	hr	7	se	Jury
398	2022	cy	12	se	Jury
399	2022	cz	12	se	Jury
400	2022	dk	8	se	Jury
401	2022	ee	7	se	Jury
402	2022	fi	12	se	Jury
403	2022	fr	10	se	Jury
404	2022	ge	12	se	Jury
405	2022	de	10	se	Jury
406	2022	gr	3	se	Jury
407	2022	is	10	se	Jury
408	2022	ie	8	se	Jury
409	2022	il	7	se	Jury
410	2022	it	1	se	Jury
411	2022	lv	6	se	Jury
412	2022	lt	8	se	Jury
413	2022	mt	10	se	Jury
414	2022	md	10	se	Jury
415	2022	me	5	se	Jury
416	2022	nl	5	se	Jury
417	2022	mk	7	se	Jury
418	2022	no	7	se	Jury
419	2022	pl	4	se	Jury
420	2022	pt	12	se	Jury
421	2022	al	12	es	Jury
422	2022	am	2	es	Jury
423	2022	au	5	es	Jury
424	2022	at	10	es	Jury
425	2022	az	8	es	Jury
426	2022	be	6	es	Jury
427	2022	bg	6	es	Jury
428	2022	hr	7	es	Jury
429	2022	cy	4	es	Jury
430	2022	cz	5	es	Jury
431	2022	dk	5	es	Jury
432	2022	ee	8	es	Jury
433	2022	fi	5	es	Jury
434	2022	fr	3	es	Jury
435	2022	ge	12	es	Jury
436	2022	de	3	es	Jury
437	2022	gr	5	es	Jury
438	2022	is	12	es	Jury
439	2022	ie	3	es	Jury
440	2022	il	8	es	Jury
441	2022	it	5	es	Jury
442	2022	lv	12	es	Jury
443	2022	lt	7	es	Jury
444	2022	mt	1	es	Jury
445	2022	md	12	es	Jury
446	2022	me	1	es	Jury
447	2022	nl	12	es	Jury
448	2022	mk	4	es	Jury
449	2022	no	1	es	Jury
450	2022	pl	12	es	Jury
451	2022	pt	8	es	Jury
452	2022	ro	10	es	Jury
453	2022	al	7	ua	Jury
454	2022	am	6	ua	Jury
455	2022	au	6	ua	Jury
456	2022	at	8	ua	Jury
457	2022	az	7	ua	Jury
458	2022	be	4	ua	Jury
459	2022	bg	5	ua	Jury
460	2022	hr	10	ua	Jury
461	2022	cy	6	ua	Jury
462	2022	cz	10	ua	Jury
463	2022	dk	10	ua	Jury
464	2022	ee	3	ua	Jury
465	2022	fi	7	ua	Jury
466	2022	fr	12	ua	Jury
467	2022	ge	12	ua	Jury
468	2022	de	12	ua	Jury
469	2022	gr	6	ua	Jury
470	2022	is	3	ua	Jury
471	2022	ie	12	ua	Jury
472	2022	il	8	ua	Jury
473	2022	it	12	ua	Jury
474	2022	lv	2	ua	Jury
475	2022	lt	8	ua	Jury
476	2022	mt	3	ua	Jury
477	2022	al	6	pt	Jury
478	2022	am	10	pt	Jury
479	2022	au	7	pt	Jury
480	2022	at	5	pt	Jury
481	2022	az	4	pt	Jury
482	2022	be	10	pt	Jury
483	2022	bg	5	pt	Jury
484	2022	hr	8	pt	Jury
485	2022	cy	7	pt	Jury
486	2022	cz	1	pt	Jury
487	2022	dk	7	pt	Jury
488	2022	ee	3	pt	Jury
489	2022	fi	5	pt	Jury
490	2022	fr	4	pt	Jury
491	2022	ge	6	pt	Jury
492	2022	de	8	pt	Jury
493	2022	gr	2	pt	Jury
494	2022	is	4	pt	Jury
495	2022	ie	8	pt	Jury
496	2022	il	10	pt	Jury
497	2022	it	7	pt	Jury
498	2022	lv	7	pt	Jury
499	2022	lt	7	pt	Jury
500	2022	mt	3	pt	Jury
501	2022	md	5	pt	Jury
502	2022	me	10	pt	Jury
503	2022	nl	3	pt	Jury
504	2022	al	3	it	Jury
505	2022	am	3	it	Jury
506	2022	au	10	it	Jury
507	2022	at	8	it	Jury
508	2022	az	1	it	Jury
509	2022	be	4	it	Jury
510	2022	bg	1	it	Jury
511	2022	hr	10	it	Jury
512	2022	cy	2	it	Jury
513	2022	cz	10	it	Jury
514	2022	dk	1	it	Jury
515	2022	ee	6	it	Jury
516	2022	fi	6	it	Jury
517	2022	fr	8	it	Jury
518	2022	ge	4	it	Jury
519	2022	de	7	it	Jury
520	2022	gr	10	it	Jury
521	2022	is	7	it	Jury
522	2022	ie	4	it	Jury
523	2022	il	4	it	Jury
524	2022	it	3	it	Jury
525	2022	lv	12	it	Jury
526	2022	lt	10	it	Jury
527	2022	mt	2	it	Jury
528	2022	al	3	gr	Jury
529	2022	am	12	gr	Jury
530	2022	au	3	gr	Jury
531	2022	at	12	gr	Jury
532	2022	az	3	gr	Jury
533	2022	be	12	gr	Jury
534	2022	bg	6	gr	Jury
535	2022	hr	6	gr	Jury
536	2022	cy	3	gr	Jury
537	2022	cz	3	gr	Jury
538	2022	dk	10	gr	Jury
539	2022	ee	7	gr	Jury
540	2022	fi	1	gr	Jury
541	2022	fr	12	gr	Jury
542	2022	ge	12	gr	Jury
543	2022	de	2	gr	Jury
544	2022	gr	4	gr	Jury
545	2022	is	2	gr	Jury
546	2022	ie	10	gr	Jury
547	2022	il	4	gr	Jury
548	2022	it	2	gr	Jury
549	2022	lv	12	gr	Jury
550	2022	lt	7	gr	Jury
551	2022	mt	4	gr	Jury
552	2022	al	8	nl	Jury
553	2022	am	4	nl	Jury
554	2022	au	2	nl	Jury
555	2022	at	10	nl	Jury
556	2022	az	1	nl	Jury
557	2022	be	5	nl	Jury
558	2022	bg	4	nl	Jury
559	2022	hr	4	nl	Jury
560	2022	cy	4	nl	Jury
561	2022	cz	4	nl	Jury
562	2022	dk	4	nl	Jury
563	2022	ee	1	nl	Jury
564	2022	fi	12	nl	Jury
565	2022	fr	4	nl	Jury
566	2022	ge	6	nl	Jury
567	2022	de	3	nl	Jury
568	2022	gr	5	nl	Jury
569	2022	is	3	nl	Jury
570	2022	ie	7	nl	Jury
571	2022	il	3	nl	Jury
572	2022	it	7	nl	Jury
573	2022	lv	10	nl	Jury
574	2022	lt	8	nl	Jury
575	2022	al	1	au	Jury
576	2022	am	8	au	Jury
577	2022	au	8	au	Jury
578	2022	at	5	au	Jury
579	2022	az	8	au	Jury
580	2022	be	2	au	Jury
581	2022	bg	5	au	Jury
582	2022	hr	2	au	Jury
583	2022	cy	2	au	Jury
584	2022	cz	6	au	Jury
585	2022	dk	6	au	Jury
586	2022	ee	7	au	Jury
587	2022	fi	5	au	Jury
588	2022	fr	6	au	Jury
589	2022	ge	6	au	Jury
590	2022	de	6	au	Jury
591	2022	gr	8	au	Jury
592	2022	is	10	au	Jury
593	2022	ie	4	au	Jury
594	2022	il	3	au	Jury
595	2022	it	6	au	Jury
596	2022	al	3	az	Jury
597	2022	am	3	az	Jury
598	2022	au	10	az	Jury
599	2022	at	3	az	Jury
600	2022	az	3	az	Jury
601	2022	be	6	az	Jury
602	2022	bg	12	az	Jury
603	2022	hr	2	az	Jury
604	2022	cy	1	az	Jury
605	2022	cz	1	az	Jury
606	2022	dk	4	az	Jury
607	2022	ee	7	az	Jury
608	2022	fi	12	az	Jury
609	2022	fr	12	az	Jury
610	2022	ge	7	az	Jury
611	2022	de	5	az	Jury
612	2022	gr	7	az	Jury
613	2022	al	12	rs	Jury
614	2022	am	4	rs	Jury
615	2022	au	7	rs	Jury
616	2022	at	5	rs	Jury
617	2022	az	4	rs	Jury
618	2022	be	1	rs	Jury
619	2022	bg	12	rs	Jury
620	2022	hr	10	rs	Jury
621	2022	cy	3	rs	Jury
622	2022	cz	6	rs	Jury
623	2022	dk	6	rs	Jury
624	2022	ee	4	rs	Jury
625	2022	fi	1	rs	Jury
626	2022	al	1	ch	Jury
627	2022	am	6	ch	Jury
628	2022	au	2	ch	Jury
629	2022	at	2	ch	Jury
630	2022	az	3	ch	Jury
631	2022	be	3	ch	Jury
632	2022	bg	7	ch	Jury
633	2022	hr	7	ch	Jury
634	2022	cy	10	ch	Jury
635	2022	cz	1	ch	Jury
636	2022	dk	1	ch	Jury
637	2022	ee	5	ch	Jury
638	2022	fi	2	ch	Jury
639	2022	fr	5	ch	Jury
640	2022	ge	1	ch	Jury
641	2022	de	5	ch	Jury
642	2022	gr	1	ch	Jury
643	2022	is	6	ch	Jury
644	2022	ie	2	ch	Jury
645	2022	al	6	be	Jury
646	2022	am	2	be	Jury
647	2022	au	6	be	Jury
648	2022	at	4	be	Jury
649	2022	az	7	be	Jury
650	2022	be	4	be	Jury
651	2022	bg	6	be	Jury
652	2022	hr	3	be	Jury
653	2022	cy	8	be	Jury
654	2022	cz	5	be	Jury
655	2022	dk	1	be	Jury
656	2022	al	2	pl	Jury
657	2022	am	10	pl	Jury
658	2022	au	6	pl	Jury
659	2022	at	4	pl	Jury
660	2022	az	2	pl	Jury
661	2022	be	4	pl	Jury
662	2022	bg	8	pl	Jury
663	2022	al	8	ee	Jury
664	2022	am	5	ee	Jury
665	2022	au	5	ee	Jury
666	2022	at	10	ee	Jury
667	2022	az	6	ee	Jury
668	2022	be	5	ee	Jury
669	2022	al	5	am	Jury
670	2022	am	1	am	Jury
671	2022	au	7	am	Jury
672	2022	at	8	am	Jury
673	2022	az	4	am	Jury
674	2022	be	1	am	Jury
675	2022	bg	2	am	Jury
676	2022	hr	2	am	Jury
677	2022	al	2	no	Jury
678	2022	am	4	no	Jury
679	2022	au	3	no	Jury
680	2022	at	8	no	Jury
681	2022	az	5	no	Jury
682	2022	be	3	no	Jury
683	2022	bg	3	no	Jury
684	2022	hr	1	no	Jury
685	2022	al	2	lt	Jury
686	2022	am	1	lt	Jury
687	2022	au	1	lt	Jury
688	2022	at	2	lt	Jury
689	2022	az	2	lt	Jury
690	2022	be	5	lt	Jury
691	2022	bg	2	lt	Jury
692	2022	hr	10	lt	Jury
693	2022	al	2	cz	Jury
694	2022	am	2	cz	Jury
695	2022	au	2	cz	Jury
696	2022	at	7	cz	Jury
697	2022	az	2	cz	Jury
698	2022	be	3	cz	Jury
699	2022	bg	3	cz	Jury
700	2022	hr	5	cz	Jury
701	2022	cy	1	cz	Jury
702	2022	al	5	md	Jury
703	2022	am	2	md	Jury
704	2022	al	4	ro	Jury
705	2022	al	6	fi	Jury
706	2022	al	2	is	Jury
707	2022	am	6	is	Jury
708	2022	al	1	fr	Jury
709	2021	al	8	it	Tele
710	2021	au	10	it	Tele
711	2021	at	8	it	Tele
712	2021	az	12	it	Tele
713	2021	be	10	it	Tele
714	2021	bg	10	it	Tele
715	2021	hr	6	it	Tele
716	2021	cy	5	it	Tele
717	2021	cz	8	it	Tele
718	2021	dk	8	it	Tele
719	2021	ee	10	it	Tele
720	2021	fi	8	it	Tele
721	2021	fr	7	it	Tele
722	2021	ge	10	it	Tele
723	2021	de	5	it	Tele
724	2021	gr	6	it	Tele
725	2021	is	7	it	Tele
726	2021	ie	7	it	Tele
727	2021	il	10	it	Tele
728	2021	it	12	it	Tele
729	2021	lv	8	it	Tele
730	2021	lt	2	it	Tele
731	2021	mt	8	it	Tele
732	2021	md	7	it	Tele
733	2021	nl	10	it	Tele
734	2021	mk	7	it	Tele
735	2021	no	10	it	Tele
736	2021	pl	10	it	Tele
737	2021	pt	12	it	Tele
738	2021	ro	12	it	Tele
739	2021	ru	10	it	Tele
740	2021	sm	10	it	Tele
741	2021	rs	3	it	Tele
742	2021	si	10	it	Tele
743	2021	es	12	it	Tele
744	2021	se	3	it	Tele
745	2021	al	7	ua	Tele
746	2021	au	8	ua	Tele
747	2021	at	10	ua	Tele
748	2021	az	6	ua	Tele
749	2021	be	8	ua	Tele
750	2021	bg	6	ua	Tele
751	2021	hr	10	ua	Tele
752	2021	cy	1	ua	Tele
753	2021	cz	5	ua	Tele
754	2021	dk	10	ua	Tele
755	2021	ee	12	ua	Tele
756	2021	fi	6	ua	Tele
757	2021	fr	4	ua	Tele
758	2021	ge	5	ua	Tele
759	2021	de	8	ua	Tele
760	2021	gr	8	ua	Tele
761	2021	is	12	ua	Tele
762	2021	ie	12	ua	Tele
763	2021	il	6	ua	Tele
764	2021	it	12	ua	Tele
765	2021	lv	1	ua	Tele
766	2021	lt	10	ua	Tele
767	2021	mt	5	ua	Tele
768	2021	md	4	ua	Tele
769	2021	nl	5	ua	Tele
770	2021	mk	12	ua	Tele
771	2021	no	10	ua	Tele
772	2021	pl	7	ua	Tele
773	2021	pt	7	ua	Tele
774	2021	ro	5	ua	Tele
775	2021	ru	8	ua	Tele
776	2021	sm	7	ua	Tele
777	2021	rs	6	ua	Tele
778	2021	si	4	ua	Tele
779	2021	es	2	ua	Tele
780	2021	se	4	ua	Tele
781	2021	al	6	fr	Tele
782	2021	au	2	fr	Tele
783	2021	at	12	fr	Tele
784	2021	az	10	fr	Tele
785	2021	be	7	fr	Tele
786	2021	bg	8	fr	Tele
787	2021	hr	2	fr	Tele
788	2021	cy	3	fr	Tele
789	2021	cz	7	fr	Tele
790	2021	dk	6	fr	Tele
791	2021	ee	5	fr	Tele
792	2021	fi	10	fr	Tele
793	2021	fr	8	fr	Tele
794	2021	ge	7	fr	Tele
795	2021	de	7	fr	Tele
796	2021	gr	8	fr	Tele
797	2021	is	1	fr	Tele
798	2021	ie	3	fr	Tele
799	2021	il	8	fr	Tele
800	2021	it	3	fr	Tele
801	2021	lv	6	fr	Tele
802	2021	lt	12	fr	Tele
803	2021	mt	5	fr	Tele
804	2021	md	4	fr	Tele
805	2021	nl	5	fr	Tele
806	2021	mk	12	fr	Tele
807	2021	no	8	fr	Tele
808	2021	pl	6	fr	Tele
809	2021	pt	10	fr	Tele
810	2021	ro	10	fr	Tele
811	2021	ru	6	fr	Tele
812	2021	sm	12	fr	Tele
813	2021	rs	6	fr	Tele
814	2021	si	6	fr	Tele
815	2021	es	5	fr	Tele
816	2021	se	5	fr	Tele
817	2021	al	4	fi	Tele
818	2021	au	5	fi	Tele
819	2021	at	6	fi	Tele
820	2021	az	8	fi	Tele
821	2021	be	6	fi	Tele
822	2021	bg	4	fi	Tele
823	2021	hr	4	fi	Tele
824	2021	cy	7	fi	Tele
825	2021	cz	12	fi	Tele
826	2021	dk	1	fi	Tele
827	2021	ee	8	fi	Tele
828	2021	fi	6	fi	Tele
829	2021	fr	12	fi	Tele
830	2021	ge	5	fi	Tele
831	2021	de	4	fi	Tele
832	2021	gr	8	fi	Tele
833	2021	is	8	fi	Tele
834	2021	ie	7	fi	Tele
835	2021	il	7	fi	Tele
836	2021	it	5	fi	Tele
837	2021	lv	4	fi	Tele
838	2021	lt	2	fi	Tele
839	2021	mt	6	fi	Tele
840	2021	md	6	fi	Tele
841	2021	nl	5	fi	Tele
842	2021	mk	6	fi	Tele
843	2021	no	8	fi	Tele
844	2021	pl	4	fi	Tele
845	2021	pt	7	fi	Tele
846	2021	ro	4	fi	Tele
847	2021	ru	2	fi	Tele
848	2021	sm	12	fi	Tele
849	2021	rs	4	fi	Tele
850	2021	si	8	fi	Tele
851	2021	es	7	fi	Tele
852	2021	al	5	is	Tele
853	2021	au	4	is	Tele
854	2021	at	7	is	Tele
855	2021	az	12	is	Tele
856	2021	be	3	is	Tele
857	2021	bg	12	is	Tele
858	2021	hr	4	is	Tele
859	2021	cy	1	is	Tele
860	2021	cz	6	is	Tele
861	2021	dk	10	is	Tele
862	2021	ee	1	is	Tele
863	2021	fi	6	is	Tele
864	2021	fr	5	is	Tele
865	2021	ge	3	is	Tele
866	2021	de	5	is	Tele
867	2021	gr	8	is	Tele
868	2021	is	10	is	Tele
869	2021	ie	8	is	Tele
870	2021	il	3	is	Tele
871	2021	it	1	is	Tele
872	2021	lv	5	is	Tele
873	2021	lt	3	is	Tele
874	2021	mt	5	is	Tele
875	2021	md	10	is	Tele
876	2021	nl	5	is	Tele
877	2021	mk	6	is	Tele
878	2021	no	10	is	Tele
879	2021	al	5	ch	Tele
880	2021	au	4	ch	Tele
881	2021	at	4	ch	Tele
882	2021	az	3	ch	Tele
883	2021	be	5	ch	Tele
884	2021	bg	3	ch	Tele
885	2021	hr	6	ch	Tele
886	2021	cy	2	ch	Tele
887	2021	cz	7	ch	Tele
888	2021	dk	6	ch	Tele
889	2021	ee	2	ch	Tele
890	2021	fi	4	ch	Tele
891	2021	fr	6	ch	Tele
892	2021	ge	3	ch	Tele
893	2021	de	6	ch	Tele
894	2021	gr	4	ch	Tele
895	2021	is	6	ch	Tele
896	2021	ie	4	ch	Tele
897	2021	il	7	ch	Tele
898	2021	it	7	ch	Tele
899	2021	lv	2	ch	Tele
900	2021	lt	7	ch	Tele
901	2021	mt	6	ch	Tele
902	2021	md	5	ch	Tele
903	2021	nl	5	ch	Tele
904	2021	mk	3	ch	Tele
905	2021	no	1	ch	Tele
906	2021	pl	5	ch	Tele
907	2021	pt	7	ch	Tele
908	2021	ro	5	ch	Tele
909	2021	ru	7	ch	Tele
910	2021	sm	1	ch	Tele
911	2021	al	7	lt	Tele
912	2021	au	5	lt	Tele
913	2021	at	1	lt	Tele
914	2021	az	4	lt	Tele
915	2021	be	10	lt	Tele
916	2021	bg	5	lt	Tele
917	2021	hr	10	lt	Tele
918	2021	cy	12	lt	Tele
919	2021	cz	4	lt	Tele
920	2021	dk	12	lt	Tele
921	2021	ee	3	lt	Tele
922	2021	fi	5	lt	Tele
923	2021	fr	12	lt	Tele
924	2021	ge	6	lt	Tele
925	2021	de	2	lt	Tele
926	2021	gr	3	lt	Tele
927	2021	is	12	lt	Tele
928	2021	ie	4	lt	Tele
929	2021	il	3	lt	Tele
930	2021	it	2	lt	Tele
931	2021	lv	4	lt	Tele
932	2021	lt	7	lt	Tele
933	2021	mt	1	lt	Tele
934	2021	md	10	lt	Tele
935	2021	nl	12	lt	Tele
936	2021	al	3	ru	Tele
937	2021	au	3	ru	Tele
938	2021	at	5	ru	Tele
939	2021	az	6	ru	Tele
940	2021	be	1	ru	Tele
941	2021	bg	4	ru	Tele
942	2021	hr	5	ru	Tele
943	2021	cy	1	ru	Tele
944	2021	cz	10	ru	Tele
945	2021	dk	7	ru	Tele
946	2021	ee	10	ru	Tele
947	2021	fi	4	ru	Tele
948	2021	fr	12	ru	Tele
949	2021	ge	1	ru	Tele
950	2021	de	2	ru	Tele
951	2021	gr	1	ru	Tele
952	2021	is	1	ru	Tele
953	2021	ie	6	ru	Tele
954	2021	il	1	ru	Tele
955	2021	it	4	ru	Tele
956	2021	al	5	rs	Tele
957	2021	au	12	rs	Tele
958	2021	at	3	rs	Tele
959	2021	az	3	rs	Tele
960	2021	be	4	rs	Tele
961	2021	bg	4	rs	Tele
962	2021	hr	12	rs	Tele
963	2021	cy	12	rs	Tele
964	2021	cz	1	rs	Tele
965	2021	dk	12	rs	Tele
966	2021	al	12	gr	Tele
967	2021	au	8	gr	Tele
968	2021	at	12	gr	Tele
969	2021	az	7	gr	Tele
970	2021	be	10	gr	Tele
971	2021	bg	2	gr	Tele
972	2021	hr	7	gr	Tele
973	2021	cy	3	gr	Tele
974	2021	cz	8	gr	Tele
975	2021	al	1	se	Tele
976	2021	au	10	se	Tele
977	2021	at	1	se	Tele
978	2021	az	3	se	Tele
979	2021	be	2	se	Tele
980	2021	bg	10	se	Tele
981	2021	hr	1	se	Tele
982	2021	cy	1	se	Tele
983	2021	cz	1	se	Tele
984	2021	dk	8	se	Tele
985	2021	ee	3	se	Tele
986	2021	fi	8	se	Tele
987	2021	fr	1	se	Tele
988	2021	ge	4	se	Tele
989	2021	de	3	se	Tele
990	2021	gr	2	se	Tele
991	2021	al	12	md	Tele
992	2021	au	2	md	Tele
993	2021	at	7	md	Tele
994	2021	az	2	md	Tele
995	2021	be	2	md	Tele
996	2021	bg	8	md	Tele
997	2021	hr	12	md	Tele
998	2021	cy	3	md	Tele
999	2021	cz	6	md	Tele
1000	2021	al	7	no	Tele
1001	2021	au	1	no	Tele
1002	2021	at	8	no	Tele
1003	2021	az	4	no	Tele
1004	2021	be	4	no	Tele
1005	2021	bg	1	no	Tele
1006	2021	hr	1	no	Tele
1007	2021	cy	2	no	Tele
1008	2021	cz	5	no	Tele
1009	2021	dk	10	no	Tele
1010	2021	ee	3	no	Tele
1011	2021	fi	2	no	Tele
1012	2021	fr	8	no	Tele
1013	2021	ge	2	no	Tele
1014	2021	al	2	mt	Tele
1015	2021	au	1	mt	Tele
1016	2021	at	2	mt	Tele
1017	2021	az	3	mt	Tele
1018	2021	be	3	mt	Tele
1019	2021	bg	4	mt	Tele
1020	2021	hr	5	mt	Tele
1021	2021	cy	1	mt	Tele
1022	2021	cz	3	mt	Tele
1023	2021	dk	2	mt	Tele
1024	2021	ee	3	mt	Tele
1025	2021	fi	2	mt	Tele
1026	2021	fr	6	mt	Tele
1027	2021	al	2	cy	Tele
1028	2021	au	6	cy	Tele
1029	2021	at	12	cy	Tele
1030	2021	az	8	cy	Tele
1031	2021	be	2	cy	Tele
1032	2021	al	10	al	Tele
1033	2021	au	10	al	Tele
1034	2021	at	7	al	Tele
1035	2021	al	3	az	Tele
1036	2021	au	2	az	Tele
1037	2021	at	2	az	Tele
1038	2021	az	1	az	Tele
1039	2021	be	3	az	Tele
1040	2021	bg	1	az	Tele
1041	2021	hr	4	az	Tele
1042	2021	cy	4	az	Tele
1043	2021	cz	4	az	Tele
1044	2021	dk	3	az	Tele
1045	2021	al	2	bg	Tele
1046	2021	au	8	bg	Tele
1047	2021	at	8	bg	Tele
1048	2021	al	2	pt	Tele
1049	2021	au	6	pt	Tele
1050	2021	at	1	pt	Tele
1051	2021	az	8	pt	Tele
1052	2021	al	5	il	Tele
1053	2021	au	1	il	Tele
1054	2021	al	3	sm	Tele
1055	2021	al	10	ch	Jury
1056	2021	au	12	ch	Jury
1057	2021	at	8	ch	Jury
1058	2021	az	2	ch	Jury
1059	2021	be	5	ch	Jury
1060	2021	bg	12	ch	Jury
1061	2021	hr	12	ch	Jury
1062	2021	cy	12	ch	Jury
1063	2021	cz	7	ch	Jury
1064	2021	dk	10	ch	Jury
1065	2021	ee	10	ch	Jury
1066	2021	fi	12	ch	Jury
1067	2021	fr	5	ch	Jury
1068	2021	ge	12	ch	Jury
1069	2021	de	12	ch	Jury
1070	2021	gr	8	ch	Jury
1071	2021	is	10	ch	Jury
1072	2021	ie	3	ch	Jury
1073	2021	il	5	ch	Jury
1074	2021	it	6	ch	Jury
1075	2021	lv	7	ch	Jury
1076	2021	lt	7	ch	Jury
1077	2021	mt	7	ch	Jury
1078	2021	md	7	ch	Jury
1079	2021	nl	1	ch	Jury
1080	2021	mk	4	ch	Jury
1081	2021	no	1	ch	Jury
1082	2021	pl	7	ch	Jury
1083	2021	pt	10	ch	Jury
1084	2021	ro	5	ch	Jury
1085	2021	ru	8	ch	Jury
1086	2021	sm	8	ch	Jury
1087	2021	al	8	fr	Jury
1088	2021	au	4	fr	Jury
1089	2021	at	7	fr	Jury
1090	2021	az	6	fr	Jury
1091	2021	be	7	fr	Jury
1092	2021	bg	10	fr	Jury
1093	2021	hr	10	fr	Jury
1094	2021	cy	7	fr	Jury
1095	2021	cz	12	fr	Jury
1096	2021	dk	5	fr	Jury
1097	2021	ee	6	fr	Jury
1098	2021	fi	12	fr	Jury
1099	2021	fr	8	fr	Jury
1100	2021	ge	3	fr	Jury
1101	2021	de	3	fr	Jury
1102	2021	gr	5	fr	Jury
1103	2021	is	3	fr	Jury
1104	2021	ie	4	fr	Jury
1105	2021	il	12	fr	Jury
1106	2021	it	7	fr	Jury
1107	2021	lv	4	fr	Jury
1108	2021	lt	6	fr	Jury
1109	2021	mt	4	fr	Jury
1110	2021	md	12	fr	Jury
1111	2021	nl	12	fr	Jury
1112	2021	mk	2	fr	Jury
1113	2021	no	12	fr	Jury
1114	2021	pl	6	fr	Jury
1115	2021	pt	12	fr	Jury
1116	2021	ro	10	fr	Jury
1117	2021	ru	12	fr	Jury
1118	2021	al	4	mt	Jury
1119	2021	au	7	mt	Jury
1120	2021	at	5	mt	Jury
1121	2021	az	5	mt	Jury
1122	2021	be	3	mt	Jury
1123	2021	bg	10	mt	Jury
1124	2021	hr	7	mt	Jury
1125	2021	cy	4	mt	Jury
1126	2021	cz	1	mt	Jury
1127	2021	dk	1	mt	Jury
1128	2021	ee	1	mt	Jury
1129	2021	fi	8	mt	Jury
1130	2021	fr	6	mt	Jury
1131	2021	ge	1	mt	Jury
1132	2021	de	10	mt	Jury
1133	2021	gr	5	mt	Jury
1134	2021	is	7	mt	Jury
1135	2021	ie	2	mt	Jury
1136	2021	il	3	mt	Jury
1137	2021	it	7	mt	Jury
1138	2021	lv	7	mt	Jury
1139	2021	lt	5	mt	Jury
1140	2021	mt	12	mt	Jury
1141	2021	md	4	mt	Jury
1142	2021	nl	4	mt	Jury
1143	2021	mk	12	mt	Jury
1144	2021	no	4	mt	Jury
1145	2021	pl	7	mt	Jury
1146	2021	pt	5	mt	Jury
1147	2021	ro	8	mt	Jury
1148	2021	ru	12	mt	Jury
1149	2021	sm	6	mt	Jury
1150	2021	rs	5	mt	Jury
1151	2021	al	6	it	Jury
1152	2021	au	2	it	Jury
1153	2021	at	10	it	Jury
1154	2021	az	12	it	Jury
1155	2021	be	8	it	Jury
1156	2021	bg	6	it	Jury
1157	2021	hr	3	it	Jury
1158	2021	cy	6	it	Jury
1159	2021	cz	12	it	Jury
1160	2021	dk	6	it	Jury
1161	2021	ee	4	it	Jury
1162	2021	fi	7	it	Jury
1163	2021	fr	8	it	Jury
1164	2021	ge	10	it	Jury
1165	2021	de	10	it	Jury
1166	2021	gr	5	it	Jury
1167	2021	is	5	it	Jury
1168	2021	ie	3	it	Jury
1169	2021	il	3	it	Jury
1170	2021	it	10	it	Jury
1171	2021	lv	10	it	Jury
1172	2021	lt	8	it	Jury
1173	2021	mt	12	it	Jury
1174	2021	md	10	it	Jury
1175	2021	nl	8	it	Jury
1176	2021	mk	12	it	Jury
1177	2021	al	3	is	Jury
1178	2021	au	10	is	Jury
1179	2021	at	8	is	Jury
1180	2021	az	10	is	Jury
1181	2021	be	8	is	Jury
1182	2021	bg	8	is	Jury
1183	2021	hr	3	is	Jury
1184	2021	cy	6	is	Jury
1185	2021	cz	3	is	Jury
1186	2021	dk	8	is	Jury
1187	2021	ee	8	is	Jury
1188	2021	fi	10	is	Jury
1189	2021	fr	4	is	Jury
1190	2021	ge	5	is	Jury
1191	2021	de	10	is	Jury
1192	2021	gr	4	is	Jury
1193	2021	is	2	is	Jury
1194	2021	ie	10	is	Jury
1195	2021	il	8	is	Jury
1196	2021	it	7	is	Jury
1197	2021	lv	10	is	Jury
1198	2021	lt	7	is	Jury
1199	2021	mt	7	is	Jury
1200	2021	md	5	is	Jury
1201	2021	nl	4	is	Jury
1202	2021	mk	10	is	Jury
1203	2021	al	1	bg	Jury
1204	2021	au	6	bg	Jury
1205	2021	at	5	bg	Jury
1206	2021	az	4	bg	Jury
1207	2021	be	6	bg	Jury
1208	2021	bg	6	bg	Jury
1209	2021	hr	10	bg	Jury
1210	2021	cy	4	bg	Jury
1211	2021	cz	8	bg	Jury
1212	2021	dk	8	bg	Jury
1213	2021	ee	1	bg	Jury
1214	2021	fi	1	bg	Jury
1215	2021	fr	5	bg	Jury
1216	2021	ge	2	bg	Jury
1217	2021	de	12	bg	Jury
1218	2021	gr	6	bg	Jury
1219	2021	is	12	bg	Jury
1220	2021	ie	2	bg	Jury
1221	2021	il	6	bg	Jury
1222	2021	it	3	bg	Jury
1223	2021	lv	6	bg	Jury
1224	2021	lt	4	bg	Jury
1225	2021	mt	10	bg	Jury
1226	2021	md	5	bg	Jury
1227	2021	al	1	pt	Jury
1228	2021	au	6	pt	Jury
1229	2021	at	1	pt	Jury
1230	2021	az	1	pt	Jury
1231	2021	be	12	pt	Jury
1232	2021	bg	5	pt	Jury
1233	2021	hr	8	pt	Jury
1234	2021	cy	8	pt	Jury
1235	2021	cz	10	pt	Jury
1236	2021	dk	6	pt	Jury
1237	2021	ee	6	pt	Jury
1238	2021	fi	7	pt	Jury
1239	2021	fr	2	pt	Jury
1240	2021	ge	8	pt	Jury
1241	2021	de	10	pt	Jury
1242	2021	gr	5	pt	Jury
1243	2021	is	5	pt	Jury
1244	2021	ie	7	pt	Jury
1245	2021	il	2	pt	Jury
1246	2021	it	7	pt	Jury
1247	2021	al	7	ru	Jury
1248	2021	au	4	ru	Jury
1249	2021	at	6	ru	Jury
1250	2021	az	2	ru	Jury
1251	2021	be	4	ru	Jury
1252	2021	bg	10	ru	Jury
1253	2021	hr	2	ru	Jury
1254	2021	cy	2	ru	Jury
1255	2021	cz	2	ru	Jury
1256	2021	dk	7	ru	Jury
1257	2021	ee	1	ru	Jury
1258	2021	fi	10	ru	Jury
1259	2021	fr	8	ru	Jury
1260	2021	ge	1	ru	Jury
1261	2021	de	1	ru	Jury
1262	2021	gr	10	ru	Jury
1263	2021	is	8	ru	Jury
1264	2021	ie	3	ru	Jury
1265	2021	il	3	ru	Jury
1266	2021	al	10	ua	Jury
1267	2021	au	4	ua	Jury
1268	2021	at	7	ua	Jury
1269	2021	az	5	ua	Jury
1270	2021	be	1	ua	Jury
1271	2021	bg	3	ua	Jury
1272	2021	hr	6	ua	Jury
1273	2021	cy	4	ua	Jury
1274	2021	cz	1	ua	Jury
1275	2021	dk	7	ua	Jury
1276	2021	ee	12	ua	Jury
1277	2021	fi	5	ua	Jury
1278	2021	fr	3	ua	Jury
1279	2021	ge	3	ua	Jury
1280	2021	de	2	ua	Jury
1281	2021	gr	5	ua	Jury
1282	2021	is	8	ua	Jury
1283	2021	al	8	gr	Jury
1284	2021	au	12	gr	Jury
1285	2021	at	2	gr	Jury
1286	2021	az	12	gr	Jury
1287	2021	be	4	gr	Jury
1288	2021	bg	6	gr	Jury
1289	2021	hr	8	gr	Jury
1290	2021	cy	1	gr	Jury
1291	2021	cz	7	gr	Jury
1292	2021	dk	8	gr	Jury
1293	2021	ee	3	gr	Jury
1294	2021	fi	3	gr	Jury
1295	2021	fr	1	gr	Jury
1296	2021	al	8	fi	Jury
1297	2021	au	1	fi	Jury
1298	2021	at	3	fi	Jury
1299	2021	az	1	fi	Jury
1300	2021	be	8	fi	Jury
1301	2021	bg	7	fi	Jury
1302	2021	hr	5	fi	Jury
1303	2021	cy	10	fi	Jury
1304	2021	cz	4	fi	Jury
1305	2021	dk	2	fi	Jury
1306	2021	ee	2	fi	Jury
1307	2021	fi	8	fi	Jury
1308	2021	fr	1	fi	Jury
1309	2021	ge	10	fi	Jury
1310	2021	de	4	fi	Jury
1311	2021	gr	1	fi	Jury
1312	2021	is	4	fi	Jury
1313	2021	al	1	il	Jury
1314	2021	au	5	il	Jury
1315	2021	at	4	il	Jury
1316	2021	az	1	il	Jury
1317	2021	be	4	il	Jury
1318	2021	bg	8	il	Jury
1319	2021	hr	8	il	Jury
1320	2021	cy	6	il	Jury
1321	2021	cz	5	il	Jury
1322	2021	dk	2	il	Jury
1323	2021	ee	1	il	Jury
1324	2021	fi	3	il	Jury
1325	2021	fr	4	il	Jury
1326	2021	ge	7	il	Jury
1327	2021	de	6	il	Jury
1328	2021	al	3	be	Jury
1329	2021	au	6	be	Jury
1330	2021	at	3	be	Jury
1331	2021	az	3	be	Jury
1332	2021	be	6	be	Jury
1333	2021	bg	5	be	Jury
1334	2021	hr	7	be	Jury
1335	2021	cy	6	be	Jury
1336	2021	cz	3	be	Jury
1337	2021	dk	5	be	Jury
1338	2021	ee	3	be	Jury
1339	2021	fi	6	be	Jury
1340	2021	fr	1	be	Jury
1341	2021	ge	6	be	Jury
1342	2021	de	1	be	Jury
1343	2021	al	3	lt	Jury
1344	2021	au	3	lt	Jury
1345	2021	at	1	lt	Jury
1346	2021	az	4	lt	Jury
1347	2021	be	10	lt	Jury
1348	2021	bg	12	lt	Jury
1349	2021	hr	6	lt	Jury
1350	2021	cy	6	lt	Jury
1351	2021	cz	2	lt	Jury
1352	2021	dk	4	lt	Jury
1353	2021	al	10	md	Jury
1354	2021	au	6	md	Jury
1355	2021	at	12	md	Jury
1356	2021	az	5	md	Jury
1357	2021	al	2	cy	Jury
1358	2021	au	7	cy	Jury
1359	2021	at	12	cy	Jury
1360	2021	az	3	cy	Jury
1361	2021	be	4	cy	Jury
1362	2021	bg	1	cy	Jury
1363	2021	hr	2	cy	Jury
1364	2021	cy	2	cy	Jury
1365	2021	cz	6	cy	Jury
1366	2021	al	2	se	Jury
1367	2021	au	5	se	Jury
1368	2021	at	1	se	Jury
1369	2021	az	4	se	Jury
1370	2021	be	8	se	Jury
1371	2021	bg	3	se	Jury
1372	2021	hr	10	se	Jury
1373	2021	cy	4	se	Jury
1374	2021	al	4	sm	Jury
1375	2021	au	7	sm	Jury
1376	2021	at	1	sm	Jury
1377	2021	az	12	sm	Jury
1378	2021	be	3	sm	Jury
1379	2021	al	2	az	Jury
1380	2021	au	2	az	Jury
1381	2021	at	6	az	Jury
1382	2021	az	2	az	Jury
1383	2021	be	8	az	Jury
1384	2021	bg	2	az	Jury
1385	2021	hr	3	az	Jury
1386	2021	al	1	al	Jury
1387	2021	au	2	al	Jury
1388	2021	al	12	rs	Jury
1389	2021	al	2	no	Jury
1390	2021	au	2	no	Jury
1391	2021	at	1	no	Jury
1392	2021	al	2	nl	Jury
1393	2021	au	2	nl	Jury
1394	2021	at	1	nl	Jury
1395	2019	al	12	no	Tele
1396	2019	am	8	no	Tele
1397	2019	au	1	no	Tele
1398	2019	at	8	no	Tele
1399	2019	az	7	no	Tele
1400	2019	by	5	no	Tele
1401	2019	be	1	no	Tele
1402	2019	hr	10	no	Tele
1403	2019	cy	12	no	Tele
1404	2019	cz	10	no	Tele
1405	2019	dk	10	no	Tele
1406	2019	ee	8	no	Tele
1407	2019	fi	12	no	Tele
1408	2019	fr	10	no	Tele
1409	2019	ge	12	no	Tele
1410	2019	de	12	no	Tele
1411	2019	gr	10	no	Tele
1412	2019	hu	10	no	Tele
1413	2019	is	8	no	Tele
1414	2019	ie	8	no	Tele
1415	2019	il	7	no	Tele
1416	2019	it	3	no	Tele
1417	2019	lv	12	no	Tele
1418	2019	lt	5	no	Tele
1419	2019	mt	8	no	Tele
1420	2019	md	6	no	Tele
1421	2019	me	4	no	Tele
1422	2019	nl	10	no	Tele
1423	2019	mk	3	no	Tele
1424	2019	no	4	no	Tele
1425	2019	pl	6	no	Tele
1426	2019	pt	7	no	Tele
1427	2019	ro	12	no	Tele
1428	2019	ru	8	no	Tele
1429	2019	sm	12	no	Tele
1430	2019	al	6	nl	Tele
1431	2019	am	7	nl	Tele
1432	2019	au	7	nl	Tele
1433	2019	at	10	nl	Tele
1434	2019	az	12	nl	Tele
1435	2019	by	4	nl	Tele
1436	2019	be	6	nl	Tele
1437	2019	hr	4	nl	Tele
1438	2019	cy	7	nl	Tele
1439	2019	cz	8	nl	Tele
1440	2019	dk	5	nl	Tele
1441	2019	ee	5	nl	Tele
1442	2019	fi	5	nl	Tele
1443	2019	fr	7	nl	Tele
1444	2019	ge	6	nl	Tele
1445	2019	de	8	nl	Tele
1446	2019	gr	5	nl	Tele
1447	2019	hu	8	nl	Tele
1448	2019	is	2	nl	Tele
1449	2019	ie	5	nl	Tele
1450	2019	il	5	nl	Tele
1451	2019	it	7	nl	Tele
1452	2019	lv	10	nl	Tele
1453	2019	lt	6	nl	Tele
1454	2019	mt	1	nl	Tele
1455	2019	md	7	nl	Tele
1456	2019	me	8	nl	Tele
1457	2019	nl	10	nl	Tele
1458	2019	mk	8	nl	Tele
1459	2019	no	12	nl	Tele
1460	2019	pl	5	nl	Tele
1461	2019	pt	6	nl	Tele
1462	2019	ro	3	nl	Tele
1463	2019	ru	5	nl	Tele
1464	2019	sm	8	nl	Tele
1465	2019	rs	6	nl	Tele
1466	2019	si	6	nl	Tele
1467	2019	es	4	nl	Tele
1468	2019	al	5	it	Tele
1469	2019	am	10	it	Tele
1470	2019	au	6	it	Tele
1471	2019	at	3	it	Tele
1472	2019	az	8	it	Tele
1473	2019	by	12	it	Tele
1474	2019	be	8	it	Tele
1475	2019	hr	2	it	Tele
1476	2019	cy	3	it	Tele
1477	2019	cz	3	it	Tele
1478	2019	dk	10	it	Tele
1479	2019	ee	1	it	Tele
1480	2019	fi	6	it	Tele
1481	2019	fr	10	it	Tele
1482	2019	ge	4	it	Tele
1483	2019	de	6	it	Tele
1484	2019	gr	4	it	Tele
1485	2019	hu	8	it	Tele
1486	2019	is	3	it	Tele
1487	2019	ie	10	it	Tele
1488	2019	il	12	it	Tele
1489	2019	it	5	it	Tele
1490	2019	lv	5	it	Tele
1491	2019	lt	10	it	Tele
1492	2019	mt	3	it	Tele
1493	2019	md	7	it	Tele
1494	2019	me	7	it	Tele
1495	2019	nl	7	it	Tele
1496	2019	mk	8	it	Tele
1497	2019	no	1	it	Tele
1498	2019	pl	8	it	Tele
1499	2019	pt	7	it	Tele
1500	2019	ro	8	it	Tele
1501	2019	ru	12	it	Tele
1502	2019	sm	4	it	Tele
1503	2019	rs	12	it	Tele
1504	2019	al	5	ru	Tele
1505	2019	am	12	ru	Tele
1506	2019	au	12	ru	Tele
1507	2019	at	1	ru	Tele
1508	2019	az	10	ru	Tele
1509	2019	by	12	ru	Tele
1510	2019	be	12	ru	Tele
1511	2019	hr	4	ru	Tele
1512	2019	cy	3	ru	Tele
1513	2019	cz	8	ru	Tele
1514	2019	dk	8	ru	Tele
1515	2019	ee	8	ru	Tele
1516	2019	fi	7	ru	Tele
1517	2019	fr	5	ru	Tele
1518	2019	ge	12	ru	Tele
1519	2019	de	8	ru	Tele
1520	2019	gr	12	ru	Tele
1521	2019	hu	12	ru	Tele
1522	2019	is	4	ru	Tele
1523	2019	ie	12	ru	Tele
1524	2019	il	10	ru	Tele
1525	2019	it	1	ru	Tele
1526	2019	lv	3	ru	Tele
1527	2019	lt	10	ru	Tele
1528	2019	mt	7	ru	Tele
1529	2019	md	12	ru	Tele
1530	2019	me	8	ru	Tele
1531	2019	nl	2	ru	Tele
1532	2019	al	7	ch	Tele
1533	2019	am	12	ch	Tele
1534	2019	au	8	ch	Tele
1535	2019	at	4	ch	Tele
1536	2019	az	5	ch	Tele
1537	2019	by	6	ch	Tele
1538	2019	be	7	ch	Tele
1539	2019	hr	5	ch	Tele
1540	2019	cy	6	ch	Tele
1541	2019	cz	4	ch	Tele
1542	2019	dk	2	ch	Tele
1543	2019	ee	2	ch	Tele
1544	2019	fi	10	ch	Tele
1545	2019	fr	7	ch	Tele
1546	2019	ge	5	ch	Tele
1547	2019	de	7	ch	Tele
1548	2019	gr	7	ch	Tele
1549	2019	hu	7	ch	Tele
1550	2019	is	3	ch	Tele
1551	2019	ie	1	ch	Tele
1552	2019	il	2	ch	Tele
1553	2019	it	8	ch	Tele
1554	2019	lv	4	ch	Tele
1555	2019	lt	6	ch	Tele
1556	2019	mt	4	ch	Tele
1557	2019	md	6	ch	Tele
1558	2019	me	5	ch	Tele
1559	2019	nl	5	ch	Tele
1560	2019	mk	10	ch	Tele
1561	2019	no	2	ch	Tele
1562	2019	pl	5	ch	Tele
1563	2019	pt	6	ch	Tele
1564	2019	ro	4	ch	Tele
1565	2019	ru	10	ch	Tele
1566	2019	sm	1	ch	Tele
1567	2019	rs	7	ch	Tele
1568	2019	al	6	is	Tele
1569	2019	am	7	is	Tele
1570	2019	au	3	is	Tele
1571	2019	at	3	is	Tele
1572	2019	az	6	is	Tele
1573	2019	by	4	is	Tele
1574	2019	be	5	is	Tele
1575	2019	hr	12	is	Tele
1576	2019	cy	1	is	Tele
1577	2019	cz	3	is	Tele
1578	2019	dk	2	is	Tele
1579	2019	ee	2	is	Tele
1580	2019	fi	12	is	Tele
1581	2019	fr	6	is	Tele
1582	2019	ge	7	is	Tele
1583	2019	de	7	is	Tele
1584	2019	gr	6	is	Tele
1585	2019	hu	1	is	Tele
1586	2019	is	1	is	Tele
1587	2019	ie	2	is	Tele
1588	2019	il	7	is	Tele
1589	2019	it	10	is	Tele
1590	2019	lv	12	is	Tele
1591	2019	lt	3	is	Tele
1592	2019	mt	5	is	Tele
1593	2019	md	7	is	Tele
1594	2019	me	2	is	Tele
1595	2019	nl	5	is	Tele
1596	2019	mk	7	is	Tele
1597	2019	no	3	is	Tele
1598	2019	pl	8	is	Tele
1599	2019	pt	8	is	Tele
1600	2019	al	3	au	Tele
1601	2019	am	2	au	Tele
1602	2019	au	4	au	Tele
1603	2019	at	2	au	Tele
1604	2019	az	8	au	Tele
1605	2019	by	2	au	Tele
1606	2019	be	2	au	Tele
1607	2019	hr	6	au	Tele
1608	2019	cy	6	au	Tele
1609	2019	cz	5	au	Tele
1610	2019	dk	3	au	Tele
1611	2019	ee	10	au	Tele
1612	2019	fi	10	au	Tele
1613	2019	fr	6	au	Tele
1614	2019	ge	6	au	Tele
1615	2019	de	6	au	Tele
1616	2019	gr	1	au	Tele
1617	2019	hu	3	au	Tele
1618	2019	is	2	au	Tele
1619	2019	ie	4	au	Tele
1620	2019	il	6	au	Tele
1621	2019	it	4	au	Tele
1622	2019	lv	2	au	Tele
1623	2019	lt	4	au	Tele
1624	2019	mt	2	au	Tele
1625	2019	md	5	au	Tele
1626	2019	me	5	au	Tele
1627	2019	nl	10	au	Tele
1628	2019	al	1	az	Tele
1629	2019	am	6	az	Tele
1630	2019	au	7	az	Tele
1631	2019	at	5	az	Tele
1632	2019	az	1	az	Tele
1633	2019	by	7	az	Tele
1634	2019	be	2	az	Tele
1635	2019	hr	3	az	Tele
1636	2019	cy	1	az	Tele
1637	2019	cz	4	az	Tele
1638	2019	dk	5	az	Tele
1639	2019	ee	2	az	Tele
1640	2019	fi	10	az	Tele
1641	2019	fr	3	az	Tele
1642	2019	ge	4	az	Tele
1643	2019	de	1	az	Tele
1644	2019	gr	3	az	Tele
1645	2019	hu	2	az	Tele
1646	2019	is	6	az	Tele
1647	2019	ie	12	az	Tele
1648	2019	il	4	az	Tele
1649	2019	it	1	az	Tele
1650	2019	lv	3	az	Tele
1651	2019	lt	3	az	Tele
1652	2019	al	2	se	Tele
1653	2019	am	10	se	Tele
1654	2019	au	3	se	Tele
1655	2019	at	7	se	Tele
1656	2019	az	6	se	Tele
1657	2019	by	1	se	Tele
1658	2019	be	8	se	Tele
1659	2019	hr	2	se	Tele
1660	2019	cy	3	se	Tele
1661	2019	cz	6	se	Tele
1662	2019	dk	8	se	Tele
1663	2019	ee	12	se	Tele
1664	2019	fi	6	se	Tele
1665	2019	fr	4	se	Tele
1666	2019	ge	5	se	Tele
1667	2019	al	1	sm	Tele
1668	2019	am	2	sm	Tele
1669	2019	au	10	sm	Tele
1670	2019	at	6	sm	Tele
1671	2019	az	1	sm	Tele
1672	2019	by	8	sm	Tele
1673	2019	be	8	sm	Tele
1674	2019	hr	8	sm	Tele
1675	2019	cy	1	sm	Tele
1676	2019	al	10	si	Tele
1677	2019	am	7	si	Tele
1678	2019	au	1	si	Tele
1679	2019	at	3	si	Tele
1680	2019	az	3	si	Tele
1681	2019	by	2	si	Tele
1682	2019	be	4	si	Tele
1683	2019	hr	2	si	Tele
1684	2019	cy	4	si	Tele
1685	2019	cz	6	si	Tele
1686	2019	dk	10	si	Tele
1687	2019	al	7	mk	Tele
1688	2019	am	2	mk	Tele
1689	2019	au	5	mk	Tele
1690	2019	at	6	mk	Tele
1691	2019	az	1	mk	Tele
1692	2019	by	12	mk	Tele
1693	2019	be	12	mk	Tele
1694	2019	hr	2	mk	Tele
1695	2019	cy	2	mk	Tele
1696	2019	al	12	rs	Tele
1697	2019	am	10	rs	Tele
1698	2019	au	3	rs	Tele
1699	2019	at	10	rs	Tele
1700	2019	az	7	rs	Tele
1701	2019	al	4	es	Tele
1702	2019	am	1	es	Tele
1703	2019	au	7	es	Tele
1704	2019	at	4	es	Tele
1705	2019	az	5	es	Tele
1706	2019	by	3	es	Tele
1707	2019	be	12	es	Tele
1708	2019	hr	2	es	Tele
1709	2019	cy	5	es	Tele
1710	2019	cz	2	es	Tele
1711	2019	al	4	dk	Tele
1712	2019	am	4	dk	Tele
1713	2019	au	1	dk	Tele
1714	2019	at	4	dk	Tele
1715	2019	az	5	dk	Tele
1716	2019	by	5	dk	Tele
1717	2019	be	1	dk	Tele
1718	2019	hr	3	dk	Tele
1719	2019	cy	7	dk	Tele
1720	2019	cz	1	dk	Tele
1721	2019	dk	6	dk	Tele
1722	2019	al	8	ee	Tele
1723	2019	am	3	ee	Tele
1724	2019	au	1	ee	Tele
1725	2019	at	10	ee	Tele
1726	2019	az	4	ee	Tele
1727	2019	by	2	ee	Tele
1728	2019	be	1	ee	Tele
1729	2019	hr	10	ee	Tele
1730	2019	al	12	al	Tele
1731	2019	am	7	al	Tele
1732	2019	au	12	al	Tele
1733	2019	at	10	al	Tele
1734	2019	al	10	fr	Tele
1735	2019	am	3	fr	Tele
1736	2019	au	1	fr	Tele
1737	2019	at	1	fr	Tele
1738	2019	az	4	fr	Tele
1739	2019	by	2	fr	Tele
1740	2019	be	2	fr	Tele
1741	2019	hr	1	fr	Tele
1742	2019	cy	4	fr	Tele
1743	2019	cz	3	fr	Tele
1744	2019	al	12	il	Tele
1745	2019	am	4	il	Tele
1746	2019	au	7	il	Tele
1747	2019	at	3	il	Tele
1748	2019	az	1	il	Tele
1749	2019	al	7	cy	Tele
1750	2019	am	1	cy	Tele
1751	2019	al	10	gr	Tele
1752	2019	al	4	mt	Tele
1753	2019	am	6	mt	Tele
1754	2019	al	2	cz	Tele
1755	2019	am	1	cz	Tele
1756	2019	al	7	mk	Jury
1757	2019	am	12	mk	Jury
1758	2019	au	8	mk	Jury
1759	2019	at	10	mk	Jury
1760	2019	az	10	mk	Jury
1761	2019	by	7	mk	Jury
1762	2019	be	10	mk	Jury
1763	2019	hr	7	mk	Jury
1764	2019	cy	7	mk	Jury
1765	2019	cz	7	mk	Jury
1766	2019	dk	1	mk	Jury
1767	2019	ee	10	mk	Jury
1768	2019	fi	8	mk	Jury
1769	2019	fr	5	mk	Jury
1770	2019	ge	10	mk	Jury
1771	2019	de	8	mk	Jury
1772	2019	gr	3	mk	Jury
1773	2019	hu	12	mk	Jury
1774	2019	is	7	mk	Jury
1775	2019	ie	3	mk	Jury
1776	2019	il	10	mk	Jury
1777	2019	it	8	mk	Jury
1778	2019	lv	5	mk	Jury
1779	2019	lt	7	mk	Jury
1780	2019	mt	4	mk	Jury
1781	2019	md	1	mk	Jury
1782	2019	me	12	mk	Jury
1783	2019	nl	2	mk	Jury
1784	2019	mk	12	mk	Jury
1785	2019	no	12	mk	Jury
1786	2019	al	12	se	Jury
1787	2019	am	6	se	Jury
1788	2019	au	2	se	Jury
1789	2019	at	5	se	Jury
1790	2019	az	7	se	Jury
1791	2019	by	12	se	Jury
1792	2019	be	12	se	Jury
1793	2019	hr	12	se	Jury
1794	2019	cy	12	se	Jury
1795	2019	cz	10	se	Jury
1796	2019	dk	2	se	Jury
1797	2019	ee	2	se	Jury
1798	2019	fi	4	se	Jury
1799	2019	fr	12	se	Jury
1800	2019	ge	12	se	Jury
1801	2019	de	6	se	Jury
1802	2019	gr	2	se	Jury
1803	2019	hu	10	se	Jury
1804	2019	is	8	se	Jury
1805	2019	ie	5	se	Jury
1806	2019	il	2	se	Jury
1807	2019	it	12	se	Jury
1808	2019	lv	8	se	Jury
1809	2019	lt	2	se	Jury
1810	2019	mt	1	se	Jury
1811	2019	md	8	se	Jury
1812	2019	me	7	se	Jury
1813	2019	nl	12	se	Jury
1814	2019	mk	8	se	Jury
1815	2019	no	10	se	Jury
1816	2019	al	8	nl	Jury
1817	2019	am	6	nl	Jury
1818	2019	au	6	nl	Jury
1819	2019	at	6	nl	Jury
1820	2019	az	5	nl	Jury
1821	2019	by	6	nl	Jury
1822	2019	be	7	nl	Jury
1823	2019	hr	7	nl	Jury
1824	2019	cy	8	nl	Jury
1825	2019	cz	12	nl	Jury
1826	2019	dk	8	nl	Jury
1827	2019	ee	8	nl	Jury
1828	2019	fi	1	nl	Jury
1829	2019	fr	7	nl	Jury
1830	2019	ge	8	nl	Jury
1831	2019	de	12	nl	Jury
1832	2019	gr	12	nl	Jury
1833	2019	hu	12	nl	Jury
1834	2019	is	7	nl	Jury
1835	2019	ie	3	nl	Jury
1836	2019	il	7	nl	Jury
1837	2019	it	7	nl	Jury
1838	2019	lv	12	nl	Jury
1839	2019	lt	5	nl	Jury
1840	2019	mt	3	nl	Jury
1841	2019	md	6	nl	Jury
1842	2019	me	8	nl	Jury
1843	2019	nl	12	nl	Jury
1844	2019	mk	10	nl	Jury
1845	2019	no	6	nl	Jury
1846	2019	al	7	it	Jury
1847	2019	am	5	it	Jury
1848	2019	au	7	it	Jury
1849	2019	at	12	it	Jury
1850	2019	az	12	it	Jury
1851	2019	by	8	it	Jury
1852	2019	be	8	it	Jury
1853	2019	hr	1	it	Jury
1854	2019	cy	5	it	Jury
1855	2019	cz	8	it	Jury
1856	2019	dk	12	it	Jury
1857	2019	ee	7	it	Jury
1858	2019	fi	7	it	Jury
1859	2019	fr	3	it	Jury
1860	2019	ge	1	it	Jury
1861	2019	de	10	it	Jury
1862	2019	gr	2	it	Jury
1863	2019	hu	3	it	Jury
1864	2019	is	12	it	Jury
1865	2019	ie	2	it	Jury
1866	2019	il	6	it	Jury
1867	2019	it	12	it	Jury
1868	2019	lv	3	it	Jury
1869	2019	lt	6	it	Jury
1870	2019	mt	12	it	Jury
1871	2019	md	10	it	Jury
1872	2019	me	8	it	Jury
1873	2019	nl	4	it	Jury
1874	2019	mk	8	it	Jury
1875	2019	no	5	it	Jury
1876	2019	al	4	az	Jury
1877	2019	am	5	az	Jury
1878	2019	au	6	az	Jury
1879	2019	at	5	az	Jury
1880	2019	az	4	az	Jury
1881	2019	by	5	az	Jury
1882	2019	be	2	az	Jury
1883	2019	hr	6	az	Jury
1884	2019	cy	10	az	Jury
1885	2019	cz	8	az	Jury
1886	2019	dk	5	az	Jury
1887	2019	ee	4	az	Jury
1888	2019	fi	7	az	Jury
1889	2019	fr	7	az	Jury
1890	2019	ge	7	az	Jury
1891	2019	de	6	az	Jury
1892	2019	gr	10	az	Jury
1893	2019	hu	8	az	Jury
1894	2019	is	6	az	Jury
1895	2019	ie	4	az	Jury
1896	2019	il	5	az	Jury
1897	2019	it	2	az	Jury
1898	2019	lv	8	az	Jury
1899	2019	lt	10	az	Jury
1900	2019	mt	12	az	Jury
1901	2019	md	4	az	Jury
1902	2019	me	3	az	Jury
1903	2019	nl	10	az	Jury
1904	2019	mk	7	az	Jury
1905	2019	no	5	az	Jury
1906	2019	pl	7	az	Jury
1907	2019	al	4	au	Jury
1908	2019	am	10	au	Jury
1909	2019	au	4	au	Jury
1910	2019	at	10	au	Jury
1911	2019	az	2	au	Jury
1912	2019	by	10	au	Jury
1913	2019	be	4	au	Jury
1914	2019	hr	5	au	Jury
1915	2019	cy	6	au	Jury
1916	2019	cz	2	au	Jury
1917	2019	dk	10	au	Jury
1918	2019	ee	4	au	Jury
1919	2019	fi	2	au	Jury
1920	2019	fr	10	au	Jury
1921	2019	ge	12	au	Jury
1922	2019	de	7	au	Jury
1923	2019	gr	12	au	Jury
1924	2019	hu	7	au	Jury
1925	2019	is	10	au	Jury
1926	2019	ie	6	au	Jury
1927	2019	il	4	au	Jury
1928	2019	it	8	au	Jury
1929	2019	al	10	ch	Jury
1930	2019	am	4	ch	Jury
1931	2019	au	7	ch	Jury
1932	2019	at	8	ch	Jury
1933	2019	az	1	ch	Jury
1934	2019	by	6	ch	Jury
1935	2019	be	10	ch	Jury
1936	2019	hr	3	ch	Jury
1937	2019	cy	2	ch	Jury
1938	2019	cz	3	ch	Jury
1939	2019	dk	6	ch	Jury
1940	2019	ee	3	ch	Jury
1941	2019	fi	5	ch	Jury
1942	2019	fr	10	ch	Jury
1943	2019	ge	3	ch	Jury
1944	2019	de	10	ch	Jury
1945	2019	gr	3	ch	Jury
1946	2019	hu	6	ch	Jury
1947	2019	is	1	ch	Jury
1948	2019	ie	4	ch	Jury
1949	2019	il	2	ch	Jury
1950	2019	it	5	ch	Jury
1951	2019	lv	5	ch	Jury
1952	2019	lt	3	ch	Jury
1953	2019	mt	10	ch	Jury
1954	2019	md	5	ch	Jury
1955	2019	al	3	cz	Jury
1956	2019	am	5	cz	Jury
1957	2019	au	7	cz	Jury
1958	2019	at	8	cz	Jury
1959	2019	az	4	cz	Jury
1960	2019	by	3	cz	Jury
1961	2019	be	12	cz	Jury
1962	2019	hr	12	cz	Jury
1963	2019	cy	6	cz	Jury
1964	2019	cz	1	cz	Jury
1965	2019	dk	4	cz	Jury
1966	2019	ee	3	cz	Jury
1967	2019	fi	7	cz	Jury
1968	2019	fr	8	cz	Jury
1969	2019	ge	1	cz	Jury
1970	2019	de	4	cz	Jury
1971	2019	gr	12	cz	Jury
1972	2019	hu	10	cz	Jury
1973	2019	is	8	cz	Jury
1974	2019	ie	4	cz	Jury
1975	2019	il	12	cz	Jury
1976	2019	it	6	cz	Jury
1977	2019	lv	1	cz	Jury
1978	2019	lt	1	cz	Jury
1979	2019	al	4	ru	Jury
1980	2019	am	12	ru	Jury
1981	2019	au	1	ru	Jury
1982	2019	at	2	ru	Jury
1983	2019	az	10	ru	Jury
1984	2019	by	3	ru	Jury
1985	2019	be	6	ru	Jury
1986	2019	hr	10	ru	Jury
1987	2019	cy	3	ru	Jury
1988	2019	cz	4	ru	Jury
1989	2019	dk	1	ru	Jury
1990	2019	ee	10	ru	Jury
1991	2019	fi	5	ru	Jury
1992	2019	fr	10	ru	Jury
1993	2019	ge	5	ru	Jury
1994	2019	de	6	ru	Jury
1995	2019	gr	6	ru	Jury
1996	2019	hu	10	ru	Jury
1997	2019	is	2	ru	Jury
1998	2019	ie	3	ru	Jury
1999	2019	il	3	ru	Jury
2000	2019	it	4	ru	Jury
2001	2019	al	12	mt	Jury
2002	2019	am	3	mt	Jury
2003	2019	au	3	mt	Jury
2004	2019	at	1	mt	Jury
2005	2019	az	3	mt	Jury
2006	2019	by	5	mt	Jury
2007	2019	be	4	mt	Jury
2008	2019	hr	8	mt	Jury
2009	2019	cy	1	mt	Jury
2010	2019	cz	1	mt	Jury
2011	2019	dk	6	mt	Jury
2012	2019	ee	8	mt	Jury
2013	2019	fi	5	mt	Jury
2014	2019	fr	4	mt	Jury
2015	2019	ge	6	mt	Jury
2016	2019	de	1	mt	Jury
2017	2019	gr	2	mt	Jury
2018	2019	al	8	cy	Jury
2019	2019	am	2	cy	Jury
2020	2019	au	6	cy	Jury
2021	2019	at	12	cy	Jury
2022	2019	az	6	cy	Jury
2023	2019	by	5	cy	Jury
2024	2019	be	1	cy	Jury
2025	2019	hr	1	cy	Jury
2026	2019	cy	1	cy	Jury
2027	2019	cz	8	cy	Jury
2028	2019	dk	5	cy	Jury
2029	2019	ee	5	cy	Jury
2030	2019	fi	7	cy	Jury
2031	2019	al	1	dk	Jury
2032	2019	am	7	dk	Jury
2033	2019	au	1	dk	Jury
2034	2019	at	6	dk	Jury
2035	2019	az	12	dk	Jury
2036	2019	by	7	dk	Jury
2037	2019	be	4	dk	Jury
2038	2019	hr	3	dk	Jury
2039	2019	cy	7	dk	Jury
2040	2019	cz	4	dk	Jury
2041	2019	dk	5	dk	Jury
2042	2019	ee	2	dk	Jury
2043	2019	fi	4	dk	Jury
2044	2019	fr	3	dk	Jury
2045	2019	al	5	fr	Jury
2046	2019	am	8	fr	Jury
2047	2019	au	3	fr	Jury
2048	2019	at	4	fr	Jury
2049	2019	az	2	fr	Jury
2050	2019	by	3	fr	Jury
2051	2019	be	5	fr	Jury
2052	2019	hr	4	fr	Jury
2053	2019	cy	1	fr	Jury
2054	2019	cz	2	fr	Jury
2055	2019	dk	3	fr	Jury
2056	2019	ee	6	fr	Jury
2057	2019	fi	1	fr	Jury
2058	2019	fr	3	fr	Jury
2059	2019	ge	2	fr	Jury
2060	2019	de	2	fr	Jury
2061	2019	al	3	gr	Jury
2062	2019	am	3	gr	Jury
2063	2019	au	12	gr	Jury
2064	2019	at	4	gr	Jury
2065	2019	az	10	gr	Jury
2066	2019	by	8	gr	Jury
2067	2019	al	4	is	Jury
2068	2019	am	5	is	Jury
2069	2019	au	6	is	Jury
2070	2019	at	2	is	Jury
2071	2019	az	3	is	Jury
2072	2019	by	2	is	Jury
2073	2019	be	6	is	Jury
2074	2019	al	6	si	Jury
2075	2019	am	4	si	Jury
2076	2019	au	4	si	Jury
2077	2019	at	4	si	Jury
2078	2019	az	10	si	Jury
2079	2019	by	3	si	Jury
2080	2019	be	1	si	Jury
2081	2019	al	3	al	Jury
2082	2019	am	1	al	Jury
2083	2019	au	2	al	Jury
2084	2019	at	8	al	Jury
2085	2019	az	8	al	Jury
2086	2019	by	2	al	Jury
2087	2019	be	3	al	Jury
2088	2019	hr	7	al	Jury
2089	2019	al	5	no	Jury
2090	2019	am	6	no	Jury
2091	2019	au	7	no	Jury
2092	2019	at	1	no	Jury
2093	2019	az	4	no	Jury
2094	2019	by	4	no	Jury
2095	2019	be	7	no	Jury
2096	2019	al	4	rs	Jury
2097	2019	am	4	rs	Jury
2098	2019	au	2	rs	Jury
2099	2019	at	12	rs	Jury
2100	2019	az	7	rs	Jury
2101	2019	by	3	rs	Jury
2102	2019	al	2	ee	Jury
2103	2019	am	8	ee	Jury
2104	2019	au	5	ee	Jury
2105	2019	at	5	ee	Jury
2106	2019	az	6	ee	Jury
2107	2019	al	2	de	Jury
2108	2019	am	5	de	Jury
2109	2019	au	6	de	Jury
2110	2019	al	1	by	Jury
2111	2019	am	8	by	Jury
2112	2019	au	7	by	Jury
2113	2019	al	5	sm	Jury
2114	2019	al	2	gb	Jury
2115	2019	am	2	gb	Jury
2116	2019	au	1	gb	Jury
2117	2018	al	12	il	Tele
2118	2018	am	7	il	Tele
2119	2018	au	12	il	Tele
2120	2018	at	8	il	Tele
2121	2018	az	10	il	Tele
2122	2018	by	10	il	Tele
2123	2018	be	6	il	Tele
2124	2018	bg	10	il	Tele
2125	2018	hr	10	il	Tele
2126	2018	cy	7	il	Tele
2127	2018	cz	12	il	Tele
2128	2018	dk	12	il	Tele
2129	2018	ee	10	il	Tele
2130	2018	fi	6	il	Tele
2131	2018	fr	10	il	Tele
2132	2018	ge	7	il	Tele
2133	2018	de	6	il	Tele
2134	2018	gr	7	il	Tele
2135	2018	hu	8	il	Tele
2136	2018	is	1	il	Tele
2137	2018	ie	8	il	Tele
2138	2018	il	12	il	Tele
2139	2018	it	1	il	Tele
2140	2018	lv	10	il	Tele
2141	2018	lt	3	il	Tele
2142	2018	mt	7	il	Tele
2143	2018	md	10	il	Tele
2144	2018	me	1	il	Tele
2145	2018	nl	8	il	Tele
2146	2018	mk	10	il	Tele
2147	2018	no	12	il	Tele
2148	2018	pl	7	il	Tele
2149	2018	pt	12	il	Tele
2150	2018	ro	10	il	Tele
2151	2018	ru	5	il	Tele
2152	2018	sm	12	il	Tele
2153	2018	rs	7	il	Tele
2154	2018	al	7	cy	Tele
2155	2018	am	1	cy	Tele
2156	2018	au	10	cy	Tele
2157	2018	at	3	cy	Tele
2158	2018	az	7	cy	Tele
2159	2018	by	12	cy	Tele
2160	2018	be	8	cy	Tele
2161	2018	bg	8	cy	Tele
2162	2018	hr	1	cy	Tele
2163	2018	cy	4	cy	Tele
2164	2018	cz	1	cy	Tele
2165	2018	dk	3	cy	Tele
2166	2018	ee	10	cy	Tele
2167	2018	fi	6	cy	Tele
2168	2018	fr	12	cy	Tele
2169	2018	ge	7	cy	Tele
2170	2018	de	1	cy	Tele
2171	2018	gr	5	cy	Tele
2172	2018	hu	2	cy	Tele
2173	2018	is	5	cy	Tele
2174	2018	ie	1	cy	Tele
2175	2018	il	6	cy	Tele
2176	2018	it	10	cy	Tele
2177	2018	lv	7	cy	Tele
2178	2018	lt	5	cy	Tele
2179	2018	mt	5	cy	Tele
2180	2018	md	8	cy	Tele
2181	2018	me	2	cy	Tele
2182	2018	nl	8	cy	Tele
2183	2018	mk	5	cy	Tele
2184	2018	no	7	cy	Tele
2185	2018	pl	4	cy	Tele
2186	2018	pt	7	cy	Tele
2187	2018	ro	10	cy	Tele
2188	2018	ru	6	cy	Tele
2189	2018	sm	8	cy	Tele
2190	2018	rs	4	cy	Tele
2191	2018	si	3	cy	Tele
2192	2018	es	4	cy	Tele
2193	2018	se	8	cy	Tele
2194	2018	al	10	it	Tele
2195	2018	am	5	it	Tele
2196	2018	au	4	it	Tele
2197	2018	at	6	it	Tele
2198	2018	az	6	it	Tele
2199	2018	by	10	it	Tele
2200	2018	be	7	it	Tele
2201	2018	bg	2	it	Tele
2202	2018	hr	7	it	Tele
2203	2018	cy	6	it	Tele
2204	2018	cz	10	it	Tele
2205	2018	dk	5	it	Tele
2206	2018	ee	12	it	Tele
2207	2018	fi	8	it	Tele
2208	2018	fr	6	it	Tele
2209	2018	ge	5	it	Tele
2210	2018	de	6	it	Tele
2211	2018	gr	7	it	Tele
2212	2018	hu	12	it	Tele
2213	2018	is	8	it	Tele
2214	2018	ie	8	it	Tele
2215	2018	il	7	it	Tele
2216	2018	it	6	it	Tele
2217	2018	lv	5	it	Tele
2218	2018	lt	10	it	Tele
2219	2018	mt	6	it	Tele
2220	2018	md	6	it	Tele
2221	2018	me	8	it	Tele
2222	2018	nl	6	it	Tele
2223	2018	mk	10	it	Tele
2224	2018	no	7	it	Tele
2225	2018	pl	8	it	Tele
2226	2018	pt	5	it	Tele
2227	2018	al	12	cz	Tele
2228	2018	am	6	cz	Tele
2229	2018	au	5	cz	Tele
2230	2018	at	1	cz	Tele
2231	2018	az	3	cz	Tele
2232	2018	by	5	cz	Tele
2233	2018	be	8	cz	Tele
2234	2018	bg	6	cz	Tele
2235	2018	hr	5	cz	Tele
2236	2018	cy	5	cz	Tele
2237	2018	cz	8	cz	Tele
2238	2018	dk	7	cz	Tele
2239	2018	ee	8	cz	Tele
2240	2018	fi	10	cz	Tele
2241	2018	fr	7	cz	Tele
2242	2018	ge	12	cz	Tele
2243	2018	de	4	cz	Tele
2244	2018	gr	8	cz	Tele
2245	2018	hu	3	cz	Tele
2246	2018	is	6	cz	Tele
2247	2018	ie	6	cz	Tele
2248	2018	il	5	cz	Tele
2249	2018	it	4	cz	Tele
2250	2018	lv	4	cz	Tele
2251	2018	lt	3	cz	Tele
2252	2018	mt	2	cz	Tele
2253	2018	md	10	cz	Tele
2254	2018	me	5	cz	Tele
2255	2018	nl	8	cz	Tele
2256	2018	mk	10	cz	Tele
2257	2018	no	3	cz	Tele
2258	2018	pl	10	cz	Tele
2259	2018	pt	5	cz	Tele
2260	2018	al	7	dk	Tele
2261	2018	am	5	dk	Tele
2262	2018	au	2	dk	Tele
2263	2018	at	7	dk	Tele
2264	2018	az	8	dk	Tele
2265	2018	by	10	dk	Tele
2266	2018	be	2	dk	Tele
2267	2018	bg	2	dk	Tele
2268	2018	hr	3	dk	Tele
2269	2018	cy	12	dk	Tele
2270	2018	cz	12	dk	Tele
2271	2018	dk	2	dk	Tele
2272	2018	ee	4	dk	Tele
2273	2018	fi	4	dk	Tele
2274	2018	fr	5	dk	Tele
2275	2018	ge	10	dk	Tele
2276	2018	de	2	dk	Tele
2277	2018	gr	8	dk	Tele
2278	2018	hu	10	dk	Tele
2279	2018	is	6	dk	Tele
2280	2018	ie	2	dk	Tele
2281	2018	il	2	dk	Tele
2282	2018	it	7	dk	Tele
2283	2018	lv	6	dk	Tele
2284	2018	lt	4	dk	Tele
2285	2018	mt	7	dk	Tele
2286	2018	md	12	dk	Tele
2287	2018	me	2	dk	Tele
2288	2018	nl	8	dk	Tele
2289	2018	mk	2	dk	Tele
2290	2018	al	6	de	Tele
2291	2018	am	3	de	Tele
2292	2018	au	2	de	Tele
2293	2018	at	3	de	Tele
2294	2018	az	3	de	Tele
2295	2018	by	3	de	Tele
2296	2018	be	12	de	Tele
2297	2018	bg	2	de	Tele
2298	2018	hr	1	de	Tele
2299	2018	cy	8	de	Tele
2300	2018	cz	8	de	Tele
2301	2018	dk	3	de	Tele
2302	2018	ee	3	de	Tele
2303	2018	fi	2	de	Tele
2304	2018	fr	4	de	Tele
2305	2018	ge	4	de	Tele
2306	2018	de	12	de	Tele
2307	2018	gr	6	de	Tele
2308	2018	hu	1	de	Tele
2309	2018	is	8	de	Tele
2310	2018	ie	4	de	Tele
2311	2018	il	4	de	Tele
2312	2018	it	4	de	Tele
2313	2018	lv	6	de	Tele
2314	2018	lt	5	de	Tele
2315	2018	mt	6	de	Tele
2316	2018	md	3	de	Tele
2317	2018	al	12	ua	Tele
2318	2018	am	1	ua	Tele
2319	2018	au	2	ua	Tele
2320	2018	at	12	ua	Tele
2321	2018	az	4	ua	Tele
2322	2018	by	8	ua	Tele
2323	2018	be	7	ua	Tele
2324	2018	bg	8	ua	Tele
2325	2018	hr	3	ua	Tele
2326	2018	cy	10	ua	Tele
2327	2018	cz	7	ua	Tele
2328	2018	dk	4	ua	Tele
2329	2018	ee	12	ua	Tele
2330	2018	fi	4	ua	Tele
2331	2018	fr	8	ua	Tele
2332	2018	ge	5	ua	Tele
2333	2018	al	4	md	Tele
2334	2018	am	6	md	Tele
2335	2018	au	8	md	Tele
2336	2018	at	6	md	Tele
2337	2018	az	1	md	Tele
2338	2018	by	6	md	Tele
2339	2018	be	3	md	Tele
2340	2018	bg	1	md	Tele
2341	2018	hr	2	md	Tele
2342	2018	cy	1	md	Tele
2343	2018	cz	10	md	Tele
2344	2018	dk	10	md	Tele
2345	2018	ee	7	md	Tele
2346	2018	fi	1	md	Tele
2347	2018	fr	6	md	Tele
2348	2018	ge	12	md	Tele
2349	2018	de	12	md	Tele
2350	2018	gr	2	md	Tele
2351	2018	hu	1	md	Tele
2352	2018	is	6	md	Tele
2353	2018	ie	4	md	Tele
2354	2018	al	2	ee	Tele
2355	2018	am	4	ee	Tele
2356	2018	au	5	ee	Tele
2357	2018	at	12	ee	Tele
2358	2018	az	7	ee	Tele
2359	2018	by	6	ee	Tele
2360	2018	be	4	ee	Tele
2361	2018	bg	4	ee	Tele
2362	2018	hr	8	ee	Tele
2363	2018	cy	6	ee	Tele
2364	2018	cz	10	ee	Tele
2365	2018	dk	12	ee	Tele
2366	2018	ee	1	ee	Tele
2367	2018	fi	7	ee	Tele
2368	2018	fr	3	ee	Tele
2369	2018	ge	2	ee	Tele
2370	2018	de	3	ee	Tele
2371	2018	al	7	lt	Tele
2372	2018	am	4	lt	Tele
2373	2018	au	12	lt	Tele
2374	2018	at	12	lt	Tele
2375	2018	az	5	lt	Tele
2376	2018	by	12	lt	Tele
2377	2018	be	7	lt	Tele
2378	2018	bg	2	lt	Tele
2379	2018	hr	12	lt	Tele
2380	2018	al	7	no	Tele
2381	2018	am	10	no	Tele
2382	2018	au	5	no	Tele
2383	2018	at	8	no	Tele
2384	2018	az	2	no	Tele
2385	2018	by	3	no	Tele
2386	2018	be	5	no	Tele
2387	2018	bg	4	no	Tele
2388	2018	hr	2	no	Tele
2389	2018	cy	5	no	Tele
2390	2018	cz	1	no	Tele
2391	2018	dk	5	no	Tele
2392	2018	ee	3	no	Tele
2393	2018	fi	5	no	Tele
2394	2018	fr	3	no	Tele
2395	2018	ge	8	no	Tele
2396	2018	al	12	rs	Tele
2397	2018	am	1	rs	Tele
2398	2018	au	1	rs	Tele
2399	2018	at	12	rs	Tele
2400	2018	az	10	rs	Tele
2401	2018	by	12	rs	Tele
2402	2018	be	12	rs	Tele
2403	2018	al	3	at	Tele
2404	2018	am	4	at	Tele
2405	2018	au	10	at	Tele
2406	2018	at	6	at	Tele
2407	2018	az	3	at	Tele
2408	2018	by	1	at	Tele
2409	2018	be	5	at	Tele
2410	2018	bg	3	at	Tele
2411	2018	hr	5	at	Tele
2412	2018	cy	1	at	Tele
2413	2018	cz	3	at	Tele
2414	2018	dk	3	at	Tele
2415	2018	ee	8	at	Tele
2416	2018	fi	2	at	Tele
2417	2018	fr	2	at	Tele
2418	2018	ge	4	at	Tele
2419	2018	al	1	bg	Tele
2420	2018	am	1	bg	Tele
2421	2018	au	12	bg	Tele
2422	2018	at	1	bg	Tele
2423	2018	az	5	bg	Tele
2424	2018	by	7	bg	Tele
2425	2018	be	3	bg	Tele
2426	2018	bg	4	bg	Tele
2427	2018	hr	7	bg	Tele
2428	2018	cy	5	bg	Tele
2429	2018	cz	2	bg	Tele
2430	2018	dk	5	bg	Tele
2431	2018	ee	6	bg	Tele
2432	2018	al	5	hu	Tele
2433	2018	am	3	hu	Tele
2434	2018	au	8	hu	Tele
2435	2018	at	2	hu	Tele
2436	2018	az	2	hu	Tele
2437	2018	by	2	hu	Tele
2438	2018	be	3	hu	Tele
2439	2018	bg	2	hu	Tele
2440	2018	hr	7	hu	Tele
2441	2018	cy	10	hu	Tele
2442	2018	cz	12	hu	Tele
2443	2018	dk	3	hu	Tele
2444	2018	ee	1	hu	Tele
2445	2018	al	4	ie	Tele
2446	2018	am	4	ie	Tele
2447	2018	au	4	ie	Tele
2448	2018	at	4	ie	Tele
2449	2018	az	7	ie	Tele
2450	2018	by	4	ie	Tele
2451	2018	be	2	ie	Tele
2452	2018	bg	3	ie	Tele
2453	2018	hr	1	ie	Tele
2454	2018	cy	3	ie	Tele
2455	2018	cz	1	ie	Tele
2456	2018	dk	10	ie	Tele
2457	2018	al	8	fr	Tele
2458	2018	am	1	fr	Tele
2459	2018	au	4	fr	Tele
2460	2018	at	4	fr	Tele
2461	2018	az	6	fr	Tele
2462	2018	by	6	fr	Tele
2463	2018	be	5	fr	Tele
2464	2018	bg	1	fr	Tele
2465	2018	hr	3	fr	Tele
2466	2018	cy	4	fr	Tele
2467	2018	cz	7	fr	Tele
2468	2018	al	10	al	Tele
2469	2018	am	12	al	Tele
2470	2018	au	10	al	Tele
2471	2018	at	12	al	Tele
2472	2018	az	1	al	Tele
2473	2018	by	7	al	Tele
2474	2018	al	2	nl	Tele
2475	2018	am	4	nl	Tele
2476	2018	au	3	nl	Tele
2477	2018	at	5	nl	Tele
2478	2018	az	1	nl	Tele
2479	2018	al	3	gb	Tele
2480	2018	am	1	gb	Tele
2481	2018	au	10	gb	Tele
2482	2018	at	1	gb	Tele
2483	2018	az	1	gb	Tele
2484	2018	al	2	si	Tele
2485	2018	am	8	si	Tele
2486	2018	al	3	fi	Tele
2487	2018	am	6	fi	Tele
2488	2018	al	2	se	Tele
2489	2018	am	4	se	Tele
2490	2018	au	2	se	Tele
2491	2018	at	3	se	Tele
2492	2018	az	1	se	Tele
2493	2018	al	1	es	Tele
2494	2018	al	1	au	Tele
2495	2018	al	10	at	Jury
2496	2018	am	12	at	Jury
2497	2018	au	12	at	Jury
2498	2018	at	2	at	Jury
2499	2018	az	5	at	Jury
2500	2018	by	8	at	Jury
2501	2018	be	12	at	Jury
2502	2018	bg	7	at	Jury
2503	2018	hr	7	at	Jury
2504	2018	cy	8	at	Jury
2505	2018	cz	10	at	Jury
2506	2018	dk	8	at	Jury
2507	2018	ee	12	at	Jury
2508	2018	fi	5	at	Jury
2509	2018	fr	12	at	Jury
2510	2018	ge	7	at	Jury
2511	2018	de	7	at	Jury
2512	2018	gr	12	at	Jury
2513	2018	hu	1	at	Jury
2514	2018	is	3	at	Jury
2515	2018	ie	10	at	Jury
2516	2018	il	8	at	Jury
2517	2018	it	12	at	Jury
2518	2018	lv	8	at	Jury
2519	2018	lt	12	at	Jury
2520	2018	mt	4	at	Jury
2521	2018	md	10	at	Jury
2522	2018	me	8	at	Jury
2523	2018	nl	10	at	Jury
2524	2018	mk	4	at	Jury
2525	2018	no	7	at	Jury
2526	2018	pl	12	at	Jury
2527	2018	al	12	se	Jury
2528	2018	am	8	se	Jury
2529	2018	au	1	se	Jury
2530	2018	at	8	se	Jury
2531	2018	az	2	se	Jury
2532	2018	by	12	se	Jury
2533	2018	be	8	se	Jury
2534	2018	bg	4	se	Jury
2535	2018	hr	5	se	Jury
2536	2018	cy	8	se	Jury
2537	2018	cz	5	se	Jury
2538	2018	dk	12	se	Jury
2539	2018	ee	12	se	Jury
2540	2018	fi	8	se	Jury
2541	2018	fr	1	se	Jury
2542	2018	ge	5	se	Jury
2543	2018	de	10	se	Jury
2544	2018	gr	1	se	Jury
2545	2018	hu	12	se	Jury
2546	2018	is	8	se	Jury
2547	2018	ie	7	se	Jury
2548	2018	il	8	se	Jury
2549	2018	it	7	se	Jury
2550	2018	lv	10	se	Jury
2551	2018	lt	6	se	Jury
2552	2018	mt	10	se	Jury
2553	2018	md	8	se	Jury
2554	2018	me	12	se	Jury
2555	2018	nl	12	se	Jury
2556	2018	mk	2	se	Jury
2557	2018	no	5	se	Jury
2558	2018	pl	6	se	Jury
2559	2018	pt	2	se	Jury
2560	2018	al	6	il	Jury
2561	2018	am	12	il	Jury
2562	2018	au	1	il	Jury
2563	2018	at	6	il	Jury
2564	2018	az	4	il	Jury
2565	2018	by	10	il	Jury
2566	2018	be	12	il	Jury
2567	2018	bg	3	il	Jury
2568	2018	hr	12	il	Jury
2569	2018	cy	12	il	Jury
2570	2018	cz	3	il	Jury
2571	2018	dk	1	il	Jury
2572	2018	ee	4	il	Jury
2573	2018	fi	6	il	Jury
2574	2018	fr	8	il	Jury
2575	2018	ge	7	il	Jury
2576	2018	de	2	il	Jury
2577	2018	gr	6	il	Jury
2578	2018	hu	6	il	Jury
2579	2018	is	10	il	Jury
2580	2018	ie	5	il	Jury
2581	2018	il	1	il	Jury
2582	2018	it	1	il	Jury
2583	2018	lv	8	il	Jury
2584	2018	lt	12	il	Jury
2585	2018	mt	2	il	Jury
2586	2018	md	1	il	Jury
2587	2018	me	10	il	Jury
2588	2018	nl	7	il	Jury
2589	2018	mk	1	il	Jury
2590	2018	no	10	il	Jury
2591	2018	pl	10	il	Jury
2592	2018	al	10	de	Jury
2593	2018	am	10	de	Jury
2594	2018	au	2	de	Jury
2595	2018	at	5	de	Jury
2596	2018	az	6	de	Jury
2597	2018	by	12	de	Jury
2598	2018	be	6	de	Jury
2599	2018	bg	1	de	Jury
2600	2018	hr	8	de	Jury
2601	2018	cy	7	de	Jury
2602	2018	cz	6	de	Jury
2603	2018	dk	8	de	Jury
2604	2018	ee	5	de	Jury
2605	2018	fi	10	de	Jury
2606	2018	fr	3	de	Jury
2607	2018	ge	5	de	Jury
2608	2018	de	4	de	Jury
2609	2018	gr	12	de	Jury
2610	2018	hu	3	de	Jury
2611	2018	is	12	de	Jury
2612	2018	ie	10	de	Jury
2613	2018	il	4	de	Jury
2614	2018	it	4	de	Jury
2615	2018	lv	10	de	Jury
2616	2018	lt	10	de	Jury
2617	2018	mt	7	de	Jury
2618	2018	md	1	de	Jury
2619	2018	me	12	de	Jury
2620	2018	al	4	cy	Jury
2621	2018	am	12	cy	Jury
2622	2018	au	4	cy	Jury
2623	2018	at	3	cy	Jury
2624	2018	az	5	cy	Jury
2625	2018	by	8	cy	Jury
2626	2018	be	6	cy	Jury
2627	2018	bg	3	cy	Jury
2628	2018	hr	12	cy	Jury
2629	2018	cy	2	cy	Jury
2630	2018	cz	12	cy	Jury
2631	2018	dk	3	cy	Jury
2632	2018	ee	1	cy	Jury
2633	2018	fi	12	cy	Jury
2634	2018	fr	6	cy	Jury
2635	2018	ge	1	cy	Jury
2636	2018	de	6	cy	Jury
2637	2018	gr	10	cy	Jury
2638	2018	hu	5	cy	Jury
2639	2018	is	5	cy	Jury
2640	2018	ie	7	cy	Jury
2641	2018	il	8	cy	Jury
2642	2018	it	12	cy	Jury
2643	2018	lv	12	cy	Jury
2644	2018	lt	7	cy	Jury
2645	2018	al	3	ee	Jury
2646	2018	am	1	ee	Jury
2647	2018	au	7	ee	Jury
2648	2018	at	10	ee	Jury
2649	2018	az	2	ee	Jury
2650	2018	by	3	ee	Jury
2651	2018	be	7	ee	Jury
2652	2018	bg	3	ee	Jury
2653	2018	hr	4	ee	Jury
2654	2018	cy	8	ee	Jury
2655	2018	cz	12	ee	Jury
2656	2018	dk	5	ee	Jury
2657	2018	ee	4	ee	Jury
2658	2018	fi	12	ee	Jury
2659	2018	fr	12	ee	Jury
2660	2018	ge	3	ee	Jury
2661	2018	de	6	ee	Jury
2662	2018	gr	5	ee	Jury
2663	2018	hu	3	ee	Jury
2664	2018	is	5	ee	Jury
2665	2018	ie	1	ee	Jury
2666	2018	il	10	ee	Jury
2667	2018	it	1	ee	Jury
2668	2018	lv	6	ee	Jury
2669	2018	al	7	al	Jury
2670	2018	am	2	al	Jury
2671	2018	au	7	al	Jury
2672	2018	at	1	al	Jury
2673	2018	az	6	al	Jury
2674	2018	by	6	al	Jury
2675	2018	be	4	al	Jury
2676	2018	bg	7	al	Jury
2677	2018	hr	10	al	Jury
2678	2018	cy	10	al	Jury
2679	2018	cz	2	al	Jury
2680	2018	dk	10	al	Jury
2681	2018	ee	6	al	Jury
2682	2018	fi	7	al	Jury
2683	2018	fr	10	al	Jury
2684	2018	ge	1	al	Jury
2685	2018	de	4	al	Jury
2686	2018	gr	7	al	Jury
2687	2018	al	3	fr	Jury
2688	2018	am	5	fr	Jury
2689	2018	au	6	fr	Jury
2690	2018	at	3	fr	Jury
2691	2018	az	2	fr	Jury
2692	2018	by	5	fr	Jury
2693	2018	be	5	fr	Jury
2694	2018	bg	3	fr	Jury
2695	2018	hr	4	fr	Jury
2696	2018	cy	10	fr	Jury
2697	2018	cz	10	fr	Jury
2698	2018	dk	8	fr	Jury
2699	2018	ee	7	fr	Jury
2700	2018	fi	5	fr	Jury
2701	2018	fr	2	fr	Jury
2702	2018	ge	2	fr	Jury
2703	2018	de	6	fr	Jury
2704	2018	gr	5	fr	Jury
2705	2018	hu	12	fr	Jury
2706	2018	al	5	bg	Jury
2707	2018	am	7	bg	Jury
2708	2018	au	4	bg	Jury
2709	2018	at	1	bg	Jury
2710	2018	az	7	bg	Jury
2711	2018	by	10	bg	Jury
2712	2018	be	6	bg	Jury
2713	2018	bg	10	bg	Jury
2714	2018	hr	1	bg	Jury
2715	2018	cy	2	bg	Jury
2716	2018	cz	8	bg	Jury
2717	2018	dk	2	bg	Jury
2718	2018	ee	7	bg	Jury
2719	2018	fi	6	bg	Jury
2720	2018	fr	2	bg	Jury
2721	2018	ge	8	bg	Jury
2722	2018	al	2	md	Jury
2723	2018	am	7	md	Jury
2724	2018	au	8	md	Jury
2725	2018	at	10	md	Jury
2726	2018	az	10	md	Jury
2727	2018	by	8	md	Jury
2728	2018	be	7	md	Jury
2729	2018	bg	12	md	Jury
2730	2018	hr	7	md	Jury
2731	2018	cy	5	md	Jury
2732	2018	cz	6	md	Jury
2733	2018	al	10	lt	Jury
2734	2018	am	12	lt	Jury
2735	2018	au	1	lt	Jury
2736	2018	at	10	lt	Jury
2737	2018	az	2	lt	Jury
2738	2018	by	4	lt	Jury
2739	2018	be	5	lt	Jury
2740	2018	bg	4	lt	Jury
2741	2018	hr	7	lt	Jury
2742	2018	cy	3	lt	Jury
2743	2018	cz	1	lt	Jury
2744	2018	dk	6	lt	Jury
2745	2018	ee	6	lt	Jury
2746	2018	fi	3	lt	Jury
2747	2018	fr	8	lt	Jury
2748	2018	al	10	au	Jury
2749	2018	am	10	au	Jury
2750	2018	au	7	au	Jury
2751	2018	at	7	au	Jury
2752	2018	az	7	au	Jury
2753	2018	by	6	au	Jury
2754	2018	be	3	au	Jury
2755	2018	bg	7	au	Jury
2756	2018	hr	6	au	Jury
2757	2018	cy	4	au	Jury
2758	2018	cz	2	au	Jury
2759	2018	dk	5	au	Jury
2760	2018	ee	2	au	Jury
2761	2018	fi	8	au	Jury
2762	2018	fr	2	au	Jury
2763	2018	al	10	nl	Jury
2764	2018	am	1	nl	Jury
2765	2018	au	6	nl	Jury
2766	2018	at	5	nl	Jury
2767	2018	az	5	nl	Jury
2768	2018	by	4	nl	Jury
2769	2018	be	5	nl	Jury
2770	2018	bg	3	nl	Jury
2771	2018	hr	1	nl	Jury
2772	2018	cy	3	nl	Jury
2773	2018	cz	4	nl	Jury
2774	2018	dk	8	nl	Jury
2775	2018	ee	8	nl	Jury
2776	2018	fi	7	nl	Jury
2777	2018	fr	7	nl	Jury
2778	2018	ge	8	nl	Jury
2779	2018	al	1	ie	Jury
2780	2018	am	3	ie	Jury
2781	2018	au	10	ie	Jury
2782	2018	at	2	ie	Jury
2783	2018	az	1	ie	Jury
2784	2018	by	8	ie	Jury
2785	2018	be	3	ie	Jury
2786	2018	bg	4	ie	Jury
2787	2018	hr	5	ie	Jury
2788	2018	cy	4	ie	Jury
2789	2018	cz	1	ie	Jury
2790	2018	dk	5	ie	Jury
2791	2018	ee	1	ie	Jury
2792	2018	fi	5	ie	Jury
2793	2018	fr	4	ie	Jury
2794	2018	ge	6	ie	Jury
2795	2018	de	3	ie	Jury
2796	2018	al	1	cz	Jury
2797	2018	am	3	cz	Jury
2798	2018	au	6	cz	Jury
2799	2018	at	7	cz	Jury
2800	2018	az	8	cz	Jury
2801	2018	by	4	cz	Jury
2802	2018	be	5	cz	Jury
2803	2018	bg	4	cz	Jury
2804	2018	hr	1	cz	Jury
2805	2018	cy	5	cz	Jury
2806	2018	cz	4	cz	Jury
2807	2018	dk	3	cz	Jury
2808	2018	ee	4	cz	Jury
2809	2018	fi	4	cz	Jury
2810	2018	al	4	no	Jury
2811	2018	am	2	no	Jury
2812	2018	au	12	no	Jury
2813	2018	at	4	no	Jury
2814	2018	az	2	no	Jury
2815	2018	by	7	no	Jury
2816	2018	be	3	no	Jury
2817	2018	bg	6	no	Jury
2818	2018	hr	2	no	Jury
2819	2018	cy	5	no	Jury
2820	2018	al	4	it	Jury
2821	2018	am	1	it	Jury
2822	2018	au	10	it	Jury
2823	2018	at	4	it	Jury
2824	2018	az	4	it	Jury
2825	2018	by	1	it	Jury
2826	2018	be	4	it	Jury
2827	2018	bg	8	it	Jury
2828	2018	hr	3	it	Jury
2829	2018	al	7	es	Jury
2830	2018	am	6	es	Jury
2831	2018	au	6	es	Jury
2832	2018	at	1	es	Jury
2833	2018	az	2	es	Jury
2834	2018	by	2	es	Jury
2835	2018	be	10	es	Jury
2836	2018	bg	1	es	Jury
2837	2018	al	7	si	Jury
2838	2018	am	2	si	Jury
2839	2018	au	4	si	Jury
2840	2018	at	1	si	Jury
2841	2018	az	1	si	Jury
2842	2018	by	2	si	Jury
2843	2018	be	3	si	Jury
2844	2018	bg	1	si	Jury
2845	2018	hr	6	si	Jury
2846	2018	cy	5	si	Jury
2847	2018	al	1	dk	Jury
2848	2018	am	12	dk	Jury
2849	2018	au	2	dk	Jury
2850	2018	at	8	dk	Jury
2851	2018	az	6	dk	Jury
2852	2018	by	3	dk	Jury
2853	2018	al	2	rs	Jury
2854	2018	am	12	rs	Jury
2855	2018	au	8	rs	Jury
2856	2018	at	3	rs	Jury
2857	2018	al	2	hu	Jury
2858	2018	am	6	hu	Jury
2859	2018	au	3	hu	Jury
2860	2018	at	2	hu	Jury
2861	2018	az	3	hu	Jury
2862	2018	al	8	gb	Jury
2863	2018	am	6	gb	Jury
2864	2018	au	2	gb	Jury
2865	2018	at	2	gb	Jury
2866	2018	al	6	fi	Jury
2867	2018	am	5	fi	Jury
2868	2018	au	3	fi	Jury
2869	2018	at	4	fi	Jury
2870	2018	al	7	pt	Jury
2871	2018	am	2	pt	Jury
2872	2018	au	3	pt	Jury
2873	2017	al	7	pt	Tele
2874	2017	am	12	pt	Tele
2875	2017	au	8	pt	Tele
2876	2017	at	7	pt	Tele
2877	2017	az	12	pt	Tele
2878	2017	by	7	pt	Tele
2879	2017	be	10	pt	Tele
2880	2017	bg	7	pt	Tele
2881	2017	hr	8	pt	Tele
2882	2017	cy	5	pt	Tele
2883	2017	cz	10	pt	Tele
2884	2017	dk	12	pt	Tele
2885	2017	ee	12	pt	Tele
2886	2017	fi	8	pt	Tele
2887	2017	fr	12	pt	Tele
2888	2017	ge	8	pt	Tele
2889	2017	de	7	pt	Tele
2890	2017	gr	12	pt	Tele
2891	2017	hu	10	pt	Tele
2892	2017	is	12	pt	Tele
2893	2017	ie	5	pt	Tele
2894	2017	il	10	pt	Tele
2895	2017	it	12	pt	Tele
2896	2017	lv	8	pt	Tele
2897	2017	lt	6	pt	Tele
2898	2017	mt	8	pt	Tele
2899	2017	md	12	pt	Tele
2900	2017	me	7	pt	Tele
2901	2017	nl	12	pt	Tele
2902	2017	mk	10	pt	Tele
2903	2017	no	7	pt	Tele
2904	2017	pl	7	pt	Tele
2905	2017	pt	8	pt	Tele
2906	2017	ro	8	pt	Tele
2907	2017	sm	12	pt	Tele
2908	2017	rs	10	pt	Tele
2909	2017	si	12	pt	Tele
2910	2017	es	10	pt	Tele
2911	2017	se	8	pt	Tele
2912	2017	al	5	bg	Tele
2913	2017	am	7	bg	Tele
2914	2017	au	12	bg	Tele
2915	2017	at	12	bg	Tele
2916	2017	az	8	bg	Tele
2917	2017	by	8	bg	Tele
2918	2017	be	10	bg	Tele
2919	2017	bg	12	bg	Tele
2920	2017	hr	10	bg	Tele
2921	2017	cy	7	bg	Tele
2922	2017	cz	7	bg	Tele
2923	2017	dk	4	bg	Tele
2924	2017	ee	7	bg	Tele
2925	2017	fi	5	bg	Tele
2926	2017	fr	10	bg	Tele
2927	2017	ge	12	bg	Tele
2928	2017	de	4	bg	Tele
2929	2017	gr	6	bg	Tele
2930	2017	hu	10	bg	Tele
2931	2017	is	8	bg	Tele
2932	2017	ie	7	bg	Tele
2933	2017	il	7	bg	Tele
2934	2017	it	10	bg	Tele
2935	2017	lv	8	bg	Tele
2936	2017	lt	6	bg	Tele
2937	2017	mt	8	bg	Tele
2938	2017	md	12	bg	Tele
2939	2017	me	8	bg	Tele
2940	2017	nl	8	bg	Tele
2941	2017	mk	8	bg	Tele
2942	2017	no	8	bg	Tele
2943	2017	pl	12	bg	Tele
2944	2017	pt	10	bg	Tele
2945	2017	ro	7	bg	Tele
2946	2017	sm	10	bg	Tele
2947	2017	rs	7	bg	Tele
2948	2017	si	6	bg	Tele
2949	2017	es	2	bg	Tele
2950	2017	se	12	bg	Tele
2951	2017	al	3	md	Tele
2952	2017	am	10	md	Tele
2953	2017	au	10	md	Tele
2954	2017	at	7	md	Tele
2955	2017	az	10	md	Tele
2956	2017	by	4	md	Tele
2957	2017	be	6	md	Tele
2958	2017	bg	5	md	Tele
2959	2017	hr	8	md	Tele
2960	2017	cy	4	md	Tele
2961	2017	cz	5	md	Tele
2962	2017	dk	7	md	Tele
2963	2017	ee	7	md	Tele
2964	2017	fi	6	md	Tele
2965	2017	fr	10	md	Tele
2966	2017	ge	6	md	Tele
2967	2017	de	8	md	Tele
2968	2017	gr	5	md	Tele
2969	2017	hu	12	md	Tele
2970	2017	is	8	md	Tele
2971	2017	ie	8	md	Tele
2972	2017	il	1	md	Tele
2973	2017	it	3	md	Tele
2974	2017	lv	5	md	Tele
2975	2017	lt	2	md	Tele
2976	2017	mt	6	md	Tele
2977	2017	md	6	md	Tele
2978	2017	me	12	md	Tele
2979	2017	nl	12	md	Tele
2980	2017	mk	8	md	Tele
2981	2017	no	7	md	Tele
2982	2017	pl	3	md	Tele
2983	2017	pt	6	md	Tele
2984	2017	ro	8	md	Tele
2985	2017	sm	12	md	Tele
2986	2017	rs	6	md	Tele
2987	2017	al	4	be	Tele
2988	2017	am	8	be	Tele
2989	2017	au	4	be	Tele
2990	2017	at	6	be	Tele
2991	2017	az	4	be	Tele
2992	2017	by	5	be	Tele
2993	2017	be	2	be	Tele
2994	2017	bg	4	be	Tele
2995	2017	hr	6	be	Tele
2996	2017	cy	12	be	Tele
2997	2017	cz	10	be	Tele
2998	2017	dk	8	be	Tele
2999	2017	ee	10	be	Tele
3000	2017	fi	5	be	Tele
3001	2017	fr	8	be	Tele
3002	2017	ge	10	be	Tele
3003	2017	de	5	be	Tele
3004	2017	gr	6	be	Tele
3005	2017	hu	2	be	Tele
3006	2017	is	12	be	Tele
3007	2017	ie	10	be	Tele
3008	2017	il	5	be	Tele
3009	2017	it	2	be	Tele
3010	2017	lv	4	be	Tele
3011	2017	lt	10	be	Tele
3012	2017	mt	4	be	Tele
3013	2017	md	7	be	Tele
3014	2017	me	12	be	Tele
3015	2017	nl	10	be	Tele
3016	2017	mk	5	be	Tele
3017	2017	no	5	be	Tele
3018	2017	pl	3	be	Tele
3019	2017	pt	6	be	Tele
3020	2017	ro	4	be	Tele
3021	2017	sm	12	be	Tele
3022	2017	rs	7	be	Tele
3023	2017	si	5	be	Tele
3024	2017	es	3	be	Tele
3025	2017	al	10	ro	Tele
3026	2017	am	10	ro	Tele
3027	2017	au	2	ro	Tele
3028	2017	at	2	ro	Tele
3029	2017	az	6	ro	Tele
3030	2017	by	8	ro	Tele
3031	2017	be	6	ro	Tele
3032	2017	bg	4	ro	Tele
3033	2017	hr	6	ro	Tele
3034	2017	cy	4	ro	Tele
3035	2017	cz	6	ro	Tele
3036	2017	dk	3	ro	Tele
3037	2017	ee	10	ro	Tele
3038	2017	fi	6	ro	Tele
3039	2017	fr	1	ro	Tele
3040	2017	ge	6	ro	Tele
3041	2017	de	5	ro	Tele
3042	2017	gr	12	ro	Tele
3043	2017	hu	7	ro	Tele
3044	2017	is	10	ro	Tele
3045	2017	ie	5	ro	Tele
3046	2017	il	4	ro	Tele
3047	2017	it	6	ro	Tele
3048	2017	lv	12	ro	Tele
3049	2017	lt	7	ro	Tele
3050	2017	mt	10	ro	Tele
3051	2017	md	7	ro	Tele
3052	2017	me	7	ro	Tele
3053	2017	nl	6	ro	Tele
3054	2017	mk	4	ro	Tele
3055	2017	no	2	ro	Tele
3056	2017	pl	7	ro	Tele
3057	2017	pt	3	ro	Tele
3058	2017	ro	4	ro	Tele
3059	2017	sm	3	ro	Tele
3060	2017	rs	7	ro	Tele
3061	2017	al	2	it	Tele
3062	2017	am	6	it	Tele
3063	2017	au	6	it	Tele
3064	2017	at	5	it	Tele
3065	2017	az	7	it	Tele
3066	2017	by	8	it	Tele
3067	2017	be	1	it	Tele
3068	2017	bg	5	it	Tele
3069	2017	hr	8	it	Tele
3070	2017	cy	5	it	Tele
3071	2017	cz	5	it	Tele
3072	2017	dk	4	it	Tele
3073	2017	ee	7	it	Tele
3074	2017	fi	4	it	Tele
3075	2017	fr	7	it	Tele
3076	2017	ge	1	it	Tele
3077	2017	de	8	it	Tele
3078	2017	gr	3	it	Tele
3079	2017	hu	5	it	Tele
3080	2017	is	12	it	Tele
3081	2017	ie	4	it	Tele
3082	2017	il	10	it	Tele
3083	2017	it	2	it	Tele
3084	2017	lv	8	it	Tele
3085	2017	lt	2	it	Tele
3086	2017	mt	4	it	Tele
3087	2017	md	6	it	Tele
3088	2017	me	10	it	Tele
3089	2017	nl	6	it	Tele
3090	2017	mk	10	it	Tele
3091	2017	no	8	it	Tele
3092	2017	pl	1	it	Tele
3093	2017	pt	10	it	Tele
3094	2017	ro	2	it	Tele
3095	2017	al	7	hu	Tele
3096	2017	am	8	hu	Tele
3097	2017	au	1	hu	Tele
3098	2017	at	6	hu	Tele
3099	2017	az	12	hu	Tele
3100	2017	by	3	hu	Tele
3101	2017	be	8	hu	Tele
3102	2017	bg	4	hu	Tele
3103	2017	hr	2	hu	Tele
3104	2017	cy	3	hu	Tele
3105	2017	cz	2	hu	Tele
3106	2017	dk	2	hu	Tele
3107	2017	ee	1	hu	Tele
3108	2017	fi	4	hu	Tele
3109	2017	fr	2	hu	Tele
3110	2017	ge	2	hu	Tele
3111	2017	de	2	hu	Tele
3112	2017	gr	7	hu	Tele
3113	2017	hu	6	hu	Tele
3114	2017	is	3	hu	Tele
3115	2017	ie	4	hu	Tele
3116	2017	il	5	hu	Tele
3117	2017	it	2	hu	Tele
3118	2017	lv	10	hu	Tele
3119	2017	lt	4	hu	Tele
3120	2017	mt	12	hu	Tele
3121	2017	md	5	hu	Tele
3122	2017	me	4	hu	Tele
3123	2017	nl	5	hu	Tele
3124	2017	mk	4	hu	Tele
3125	2017	no	1	hu	Tele
3126	2017	al	6	se	Tele
3127	2017	am	1	se	Tele
3128	2017	au	3	se	Tele
3129	2017	at	3	se	Tele
3130	2017	az	2	se	Tele
3131	2017	by	2	se	Tele
3132	2017	be	2	se	Tele
3133	2017	bg	5	se	Tele
3134	2017	hr	12	se	Tele
3135	2017	cy	3	se	Tele
3136	2017	cz	6	se	Tele
3137	2017	dk	1	se	Tele
3138	2017	ee	3	se	Tele
3139	2017	fi	3	se	Tele
3140	2017	fr	8	se	Tele
3141	2017	ge	3	se	Tele
3142	2017	de	4	se	Tele
3143	2017	gr	3	se	Tele
3144	2017	hu	7	se	Tele
3145	2017	is	3	se	Tele
3146	2017	ie	4	se	Tele
3147	2017	il	5	se	Tele
3148	2017	it	5	se	Tele
3149	2017	lv	3	se	Tele
3150	2017	lt	1	se	Tele
3151	2017	mt	2	se	Tele
3152	2017	md	2	se	Tele
3153	2017	me	1	se	Tele
3154	2017	nl	1	se	Tele
3155	2017	mk	5	se	Tele
3156	2017	no	1	se	Tele
3157	2017	pl	7	se	Tele
3158	2017	pt	4	se	Tele
3159	2017	al	4	hr	Tele
3160	2017	am	1	hr	Tele
3161	2017	au	8	hr	Tele
3162	2017	at	5	hr	Tele
3163	2017	az	3	hr	Tele
3164	2017	by	6	hr	Tele
3165	2017	be	3	hr	Tele
3166	2017	bg	12	hr	Tele
3167	2017	hr	3	hr	Tele
3168	2017	cy	10	hr	Tele
3169	2017	cz	1	hr	Tele
3170	2017	dk	1	hr	Tele
3171	2017	ee	3	hr	Tele
3172	2017	fi	3	hr	Tele
3173	2017	fr	5	hr	Tele
3174	2017	ge	12	hr	Tele
3175	2017	de	2	hr	Tele
3176	2017	gr	8	hr	Tele
3177	2017	hu	5	hr	Tele
3178	2017	al	5	fr	Tele
3179	2017	am	4	fr	Tele
3180	2017	au	3	fr	Tele
3181	2017	at	12	fr	Tele
3182	2017	az	3	fr	Tele
3183	2017	by	3	fr	Tele
3184	2017	be	1	fr	Tele
3185	2017	bg	1	fr	Tele
3186	2017	hr	3	fr	Tele
3187	2017	cy	4	fr	Tele
3188	2017	cz	1	fr	Tele
3189	2017	dk	4	fr	Tele
3190	2017	ee	1	fr	Tele
3191	2017	fi	5	fr	Tele
3192	2017	fr	2	fr	Tele
3193	2017	ge	6	fr	Tele
3194	2017	de	6	fr	Tele
3195	2017	gr	4	fr	Tele
3196	2017	hu	2	fr	Tele
3197	2017	is	3	fr	Tele
3198	2017	ie	2	fr	Tele
3199	2017	il	6	fr	Tele
3200	2017	al	10	az	Tele
3201	2017	am	5	az	Tele
3202	2017	au	1	az	Tele
3203	2017	at	4	az	Tele
3204	2017	al	1	pl	Tele
3205	2017	am	2	pl	Tele
3206	2017	au	3	pl	Tele
3207	2017	at	7	pl	Tele
3208	2017	az	3	pl	Tele
3209	2017	by	1	pl	Tele
3210	2017	be	3	pl	Tele
3211	2017	bg	5	pl	Tele
3212	2017	hr	10	pl	Tele
3213	2017	al	6	by	Tele
3214	2017	am	2	by	Tele
3215	2017	au	6	by	Tele
3216	2017	at	1	by	Tele
3217	2017	az	1	by	Tele
3218	2017	by	4	by	Tele
3219	2017	be	8	by	Tele
3220	2017	al	2	cy	Tele
3221	2017	am	12	cy	Tele
3222	2017	au	2	cy	Tele
3223	2017	at	1	cy	Tele
3224	2017	al	2	no	Tele
3225	2017	am	1	no	Tele
3226	2017	au	1	no	Tele
3227	2017	at	6	no	Tele
3228	2017	az	6	no	Tele
3229	2017	by	1	no	Tele
3230	2017	al	5	gr	Tele
3231	2017	am	12	gr	Tele
3232	2017	au	7	gr	Tele
3233	2017	at	1	gr	Tele
3234	2017	al	4	ua	Tele
3235	2017	am	7	ua	Tele
3236	2017	au	2	ua	Tele
3237	2017	at	3	ua	Tele
3238	2017	al	6	am	Tele
3239	2017	am	10	am	Tele
3240	2017	au	2	am	Tele
3241	2017	al	1	nl	Tele
3242	2017	am	1	nl	Tele
3243	2017	au	2	nl	Tele
3244	2017	al	4	gb	Tele
3245	2017	am	1	gb	Tele
3246	2017	al	1	il	Tele
3247	2017	al	7	pt	Jury
3248	2017	am	8	pt	Jury
3249	2017	au	8	pt	Jury
3250	2017	at	10	pt	Jury
3251	2017	az	8	pt	Jury
3252	2017	by	7	pt	Jury
3253	2017	be	8	pt	Jury
3254	2017	bg	12	pt	Jury
3255	2017	hr	10	pt	Jury
3256	2017	cy	8	pt	Jury
3257	2017	cz	8	pt	Jury
3258	2017	dk	12	pt	Jury
3259	2017	ee	12	pt	Jury
3260	2017	fi	10	pt	Jury
3261	2017	fr	5	pt	Jury
3262	2017	ge	12	pt	Jury
3263	2017	de	12	pt	Jury
3264	2017	gr	5	pt	Jury
3265	2017	hu	12	pt	Jury
3266	2017	is	5	pt	Jury
3267	2017	ie	12	pt	Jury
3268	2017	il	12	pt	Jury
3269	2017	it	10	pt	Jury
3270	2017	lv	7	pt	Jury
3271	2017	lt	12	pt	Jury
3272	2017	mt	10	pt	Jury
3273	2017	md	10	pt	Jury
3274	2017	me	12	pt	Jury
3275	2017	nl	6	pt	Jury
3276	2017	mk	12	pt	Jury
3277	2017	no	12	pt	Jury
3278	2017	pl	12	pt	Jury
3279	2017	pt	12	pt	Jury
3280	2017	ro	12	pt	Jury
3281	2017	sm	12	pt	Jury
3282	2017	rs	10	pt	Jury
3283	2017	si	12	pt	Jury
3284	2017	al	10	bg	Jury
3285	2017	am	2	bg	Jury
3286	2017	au	12	bg	Jury
3287	2017	at	10	bg	Jury
3288	2017	az	10	bg	Jury
3289	2017	by	7	bg	Jury
3290	2017	be	2	bg	Jury
3291	2017	bg	4	bg	Jury
3292	2017	hr	12	bg	Jury
3293	2017	cy	6	bg	Jury
3294	2017	cz	5	bg	Jury
3295	2017	dk	6	bg	Jury
3296	2017	ee	8	bg	Jury
3297	2017	fi	2	bg	Jury
3298	2017	fr	10	bg	Jury
3299	2017	ge	6	bg	Jury
3300	2017	de	10	bg	Jury
3301	2017	gr	7	bg	Jury
3302	2017	hu	2	bg	Jury
3303	2017	is	8	bg	Jury
3304	2017	ie	7	bg	Jury
3305	2017	il	8	bg	Jury
3306	2017	it	10	bg	Jury
3307	2017	lv	2	bg	Jury
3308	2017	lt	10	bg	Jury
3309	2017	mt	12	bg	Jury
3310	2017	md	12	bg	Jury
3311	2017	me	6	bg	Jury
3312	2017	nl	10	bg	Jury
3313	2017	mk	2	bg	Jury
3314	2017	no	6	bg	Jury
3315	2017	pl	8	bg	Jury
3316	2017	pt	6	bg	Jury
3317	2017	ro	7	bg	Jury
3318	2017	sm	8	bg	Jury
3319	2017	rs	7	bg	Jury
3320	2017	al	4	se	Jury
3321	2017	am	8	se	Jury
3322	2017	au	12	se	Jury
3323	2017	at	4	se	Jury
3324	2017	az	6	se	Jury
3325	2017	by	7	se	Jury
3326	2017	be	12	se	Jury
3327	2017	bg	3	se	Jury
3328	2017	hr	12	se	Jury
3329	2017	cy	8	se	Jury
3330	2017	cz	8	se	Jury
3331	2017	dk	4	se	Jury
3332	2017	ee	1	se	Jury
3333	2017	fi	8	se	Jury
3334	2017	fr	6	se	Jury
3335	2017	ge	10	se	Jury
3336	2017	de	10	se	Jury
3337	2017	gr	6	se	Jury
3338	2017	hu	8	se	Jury
3339	2017	is	7	se	Jury
3340	2017	ie	6	se	Jury
3341	2017	il	1	se	Jury
3342	2017	it	6	se	Jury
3343	2017	lv	4	se	Jury
3344	2017	lt	7	se	Jury
3345	2017	mt	7	se	Jury
3346	2017	md	2	se	Jury
3347	2017	me	6	se	Jury
3348	2017	nl	5	se	Jury
3349	2017	mk	10	se	Jury
3350	2017	no	8	se	Jury
3351	2017	al	6	au	Jury
3352	2017	am	6	au	Jury
3353	2017	au	4	au	Jury
3354	2017	at	10	au	Jury
3355	2017	az	8	au	Jury
3356	2017	by	7	au	Jury
3357	2017	be	10	au	Jury
3358	2017	bg	2	au	Jury
3359	2017	hr	5	au	Jury
3360	2017	cy	7	au	Jury
3361	2017	cz	10	au	Jury
3362	2017	dk	5	au	Jury
3363	2017	ee	1	au	Jury
3364	2017	fi	4	au	Jury
3365	2017	fr	4	au	Jury
3366	2017	ge	8	au	Jury
3367	2017	de	3	au	Jury
3368	2017	gr	7	au	Jury
3369	2017	hu	5	au	Jury
3370	2017	is	4	au	Jury
3371	2017	ie	3	au	Jury
3372	2017	il	7	au	Jury
3373	2017	it	8	au	Jury
3374	2017	lv	10	au	Jury
3375	2017	lt	4	au	Jury
3376	2017	mt	2	au	Jury
3377	2017	md	10	au	Jury
3378	2017	al	5	nl	Jury
3379	2017	am	10	nl	Jury
3380	2017	au	8	nl	Jury
3381	2017	at	8	nl	Jury
3382	2017	az	5	nl	Jury
3383	2017	by	4	nl	Jury
3384	2017	be	4	nl	Jury
3385	2017	bg	1	nl	Jury
3386	2017	hr	7	nl	Jury
3387	2017	cy	8	nl	Jury
3388	2017	cz	4	nl	Jury
3389	2017	dk	2	nl	Jury
3390	2017	ee	4	nl	Jury
3391	2017	fi	8	nl	Jury
3392	2017	fr	3	nl	Jury
3393	2017	ge	12	nl	Jury
3394	2017	de	7	nl	Jury
3395	2017	gr	1	nl	Jury
3396	2017	hu	1	nl	Jury
3397	2017	is	3	nl	Jury
3398	2017	ie	7	nl	Jury
3399	2017	il	3	nl	Jury
3400	2017	it	4	nl	Jury
3401	2017	al	6	no	Jury
3402	2017	am	7	no	Jury
3403	2017	au	2	no	Jury
3404	2017	at	6	no	Jury
3405	2017	az	10	no	Jury
3406	2017	by	1	no	Jury
3407	2017	be	7	no	Jury
3408	2017	bg	7	no	Jury
3409	2017	hr	12	no	Jury
3410	2017	cy	6	no	Jury
3411	2017	cz	1	no	Jury
3412	2017	dk	2	no	Jury
3413	2017	ee	5	no	Jury
3414	2017	fi	3	no	Jury
3415	2017	fr	7	no	Jury
3416	2017	ge	10	no	Jury
3417	2017	de	7	no	Jury
3418	2017	gr	2	no	Jury
3419	2017	hu	3	no	Jury
3420	2017	is	2	no	Jury
3421	2017	ie	10	no	Jury
3422	2017	il	5	no	Jury
3423	2017	al	6	it	Jury
3424	2017	am	10	it	Jury
3425	2017	au	7	it	Jury
3426	2017	at	10	it	Jury
3427	2017	az	2	it	Jury
3428	2017	by	4	it	Jury
3429	2017	be	5	it	Jury
3430	2017	bg	2	it	Jury
3431	2017	hr	8	it	Jury
3432	2017	cy	12	it	Jury
3433	2017	cz	8	it	Jury
3434	2017	dk	7	it	Jury
3435	2017	ee	3	it	Jury
3436	2017	fi	8	it	Jury
3437	2017	fr	2	it	Jury
3438	2017	ge	10	it	Jury
3439	2017	de	6	it	Jury
3440	2017	gr	2	it	Jury
3441	2017	al	10	md	Jury
3442	2017	am	3	md	Jury
3443	2017	au	3	md	Jury
3444	2017	at	3	md	Jury
3445	2017	az	7	md	Jury
3446	2017	by	3	md	Jury
3447	2017	be	8	md	Jury
3448	2017	bg	1	md	Jury
3449	2017	hr	6	md	Jury
3450	2017	cy	2	md	Jury
3451	2017	cz	6	md	Jury
3452	2017	dk	8	md	Jury
3453	2017	ee	7	md	Jury
3454	2017	fi	7	md	Jury
3455	2017	fr	8	md	Jury
3456	2017	ge	4	md	Jury
3457	2017	de	6	md	Jury
3458	2017	al	2	be	Jury
3459	2017	am	2	be	Jury
3460	2017	au	2	be	Jury
3461	2017	at	12	be	Jury
3462	2017	az	8	be	Jury
3463	2017	by	7	be	Jury
3464	2017	be	10	be	Jury
3465	2017	bg	4	be	Jury
3466	2017	hr	6	be	Jury
3467	2017	cy	2	be	Jury
3468	2017	cz	10	be	Jury
3469	2017	dk	8	be	Jury
3470	2017	ee	8	be	Jury
3471	2017	fi	5	be	Jury
3472	2017	fr	4	be	Jury
3473	2017	ge	1	be	Jury
3474	2017	de	6	be	Jury
3475	2017	gr	1	be	Jury
3476	2017	hu	5	be	Jury
3477	2017	al	12	gb	Jury
3478	2017	am	1	gb	Jury
3479	2017	au	2	gb	Jury
3480	2017	at	5	gb	Jury
3481	2017	az	5	gb	Jury
3482	2017	by	6	gb	Jury
3483	2017	be	2	gb	Jury
3484	2017	bg	3	gb	Jury
3485	2017	hr	6	gb	Jury
3486	2017	cy	1	gb	Jury
3487	2017	cz	3	gb	Jury
3488	2017	dk	7	gb	Jury
3489	2017	ee	4	gb	Jury
3490	2017	fi	5	gb	Jury
3491	2017	fr	3	gb	Jury
3492	2017	ge	1	gb	Jury
3493	2017	de	5	gb	Jury
3494	2017	gr	6	gb	Jury
3495	2017	hu	10	gb	Jury
3496	2017	al	4	at	Jury
3497	2017	am	3	at	Jury
3498	2017	au	12	at	Jury
3499	2017	at	1	at	Jury
3500	2017	az	4	at	Jury
3501	2017	by	7	at	Jury
3502	2017	be	1	at	Jury
3503	2017	bg	5	at	Jury
3504	2017	hr	2	at	Jury
3505	2017	cy	7	at	Jury
3506	2017	cz	1	at	Jury
3507	2017	dk	6	at	Jury
3508	2017	ee	5	at	Jury
3509	2017	fi	2	at	Jury
3510	2017	fr	1	at	Jury
3511	2017	ge	3	at	Jury
3512	2017	de	10	at	Jury
3513	2017	gr	1	at	Jury
3514	2017	hu	4	at	Jury
3515	2017	is	3	at	Jury
3516	2017	ie	4	at	Jury
3517	2017	il	3	at	Jury
3518	2017	al	5	az	Jury
3519	2017	am	1	az	Jury
3520	2017	au	10	az	Jury
3521	2017	at	10	az	Jury
3522	2017	az	4	az	Jury
3523	2017	by	1	az	Jury
3524	2017	be	12	az	Jury
3525	2017	bg	5	az	Jury
3526	2017	hr	1	az	Jury
3527	2017	cy	12	az	Jury
3528	2017	cz	5	az	Jury
3529	2017	dk	6	az	Jury
3530	2017	al	3	dk	Jury
3531	2017	am	6	dk	Jury
3532	2017	au	5	dk	Jury
3533	2017	at	4	dk	Jury
3534	2017	az	5	dk	Jury
3535	2017	by	3	dk	Jury
3536	2017	be	8	dk	Jury
3537	2017	bg	7	dk	Jury
3538	2017	hr	8	dk	Jury
3539	2017	cy	5	dk	Jury
3540	2017	cz	5	dk	Jury
3541	2017	dk	2	dk	Jury
3542	2017	al	3	ro	Jury
3543	2017	am	6	ro	Jury
3544	2017	au	8	ro	Jury
3545	2017	at	3	ro	Jury
3546	2017	az	5	ro	Jury
3547	2017	by	12	ro	Jury
3548	2017	be	10	ro	Jury
3549	2017	bg	1	ro	Jury
3550	2017	hr	4	ro	Jury
3551	2017	al	4	am	Jury
3552	2017	am	1	am	Jury
3553	2017	au	3	am	Jury
3554	2017	at	8	am	Jury
3555	2017	az	2	am	Jury
3556	2017	by	4	am	Jury
3557	2017	be	3	am	Jury
3558	2017	bg	1	am	Jury
3559	2017	hr	6	am	Jury
3560	2017	cy	4	am	Jury
3561	2017	cz	2	am	Jury
3562	2017	dk	4	am	Jury
3563	2017	ee	5	am	Jury
3564	2017	fi	3	am	Jury
3565	2017	al	2	by	Jury
3566	2017	am	5	by	Jury
3567	2017	au	3	by	Jury
3568	2017	at	1	by	Jury
3569	2017	az	2	by	Jury
3570	2017	by	2	by	Jury
3571	2017	be	3	by	Jury
3572	2017	bg	12	by	Jury
3573	2017	hr	1	by	Jury
3574	2017	al	1	hu	Jury
3575	2017	am	1	hu	Jury
3576	2017	au	4	hu	Jury
3577	2017	at	3	hu	Jury
3578	2017	az	1	hu	Jury
3579	2017	by	10	hu	Jury
3580	2017	be	3	hu	Jury
3581	2017	bg	8	hu	Jury
3582	2017	al	5	gr	Jury
3583	2017	am	6	gr	Jury
3584	2017	au	12	gr	Jury
3585	2017	at	12	gr	Jury
3586	2017	az	2	gr	Jury
3587	2017	al	1	fr	Jury
3588	2017	am	2	fr	Jury
3589	2017	au	6	fr	Jury
3590	2017	at	6	fr	Jury
3591	2017	az	4	fr	Jury
3592	2017	by	3	fr	Jury
3593	2017	be	5	fr	Jury
3594	2017	bg	4	fr	Jury
3595	2017	hr	1	fr	Jury
3596	2017	cy	5	fr	Jury
3597	2017	al	5	cy	Jury
3598	2017	am	4	cy	Jury
3599	2017	au	12	cy	Jury
3600	2017	at	1	cy	Jury
3601	2017	az	2	cy	Jury
3602	2017	al	8	il	Jury
3603	2017	am	6	il	Jury
3604	2017	au	7	il	Jury
3605	2017	at	5	il	Jury
3606	2017	az	2	il	Jury
3607	2017	by	1	il	Jury
3608	2017	al	6	hr	Jury
3609	2017	am	5	hr	Jury
3610	2017	au	3	hr	Jury
3611	2017	at	7	hr	Jury
3612	2017	al	2	pl	Jury
3613	2017	am	7	pl	Jury
3614	2017	au	1	pl	Jury
3615	2017	at	1	pl	Jury
3616	2017	az	4	pl	Jury
3617	2017	al	4	ua	Jury
3618	2016	al	5	ru	Tele
3619	2016	am	8	ru	Tele
3620	2016	au	12	ru	Tele
3621	2016	at	12	ru	Tele
3622	2016	az	6	ru	Tele
3623	2016	by	6	ru	Tele
3624	2016	be	12	ru	Tele
3625	2016	ba	8	ru	Tele
3626	2016	bg	10	ru	Tele
3627	2016	hr	10	ru	Tele
3628	2016	cy	4	ru	Tele
3629	2016	cz	12	ru	Tele
3630	2016	dk	8	ru	Tele
3631	2016	ee	6	ru	Tele
3632	2016	fi	8	ru	Tele
3633	2016	fr	12	ru	Tele
3634	2016	ge	10	ru	Tele
3635	2016	de	10	ru	Tele
3636	2016	gr	7	ru	Tele
3637	2016	hu	8	ru	Tele
3638	2016	is	10	ru	Tele
3639	2016	ie	8	ru	Tele
3640	2016	il	12	ru	Tele
3641	2016	it	8	ru	Tele
3642	2016	lv	10	ru	Tele
3643	2016	lt	12	ru	Tele
3644	2016	mt	10	ru	Tele
3645	2016	md	3	ru	Tele
3646	2016	me	8	ru	Tele
3647	2016	nl	6	ru	Tele
3648	2016	mk	8	ru	Tele
3649	2016	no	10	ru	Tele
3650	2016	pl	12	ru	Tele
3651	2016	ru	10	ru	Tele
3652	2016	sm	8	ru	Tele
3653	2016	rs	8	ru	Tele
3654	2016	si	6	ru	Tele
3655	2016	es	12	ru	Tele
3656	2016	se	7	ru	Tele
3657	2016	al	8	ua	Tele
3658	2016	am	10	ua	Tele
3659	2016	au	10	ua	Tele
3660	2016	at	10	ua	Tele
3661	2016	az	2	ua	Tele
3662	2016	by	7	ua	Tele
3663	2016	be	10	ua	Tele
3664	2016	ba	10	ua	Tele
3665	2016	bg	7	ua	Tele
3666	2016	hr	12	ua	Tele
3667	2016	cy	3	ua	Tele
3668	2016	cz	8	ua	Tele
3669	2016	dk	12	ua	Tele
3670	2016	ee	10	ua	Tele
3671	2016	fi	10	ua	Tele
3672	2016	fr	6	ua	Tele
3673	2016	ge	6	ua	Tele
3674	2016	de	12	ua	Tele
3675	2016	gr	4	ua	Tele
3676	2016	hu	8	ua	Tele
3677	2016	is	12	ua	Tele
3678	2016	ie	10	ua	Tele
3679	2016	il	10	ua	Tele
3680	2016	it	4	ua	Tele
3681	2016	lv	10	ua	Tele
3682	2016	lt	8	ua	Tele
3683	2016	mt	7	ua	Tele
3684	2016	md	6	ua	Tele
3685	2016	me	4	ua	Tele
3686	2016	nl	12	ua	Tele
3687	2016	mk	10	ua	Tele
3688	2016	no	12	ua	Tele
3689	2016	pl	7	ua	Tele
3690	2016	ru	7	ua	Tele
3691	2016	sm	7	ua	Tele
3692	2016	rs	7	ua	Tele
3693	2016	si	4	ua	Tele
3694	2016	es	5	ua	Tele
3695	2016	al	12	pl	Tele
3696	2016	am	3	pl	Tele
3697	2016	au	6	pl	Tele
3698	2016	at	12	pl	Tele
3699	2016	az	6	pl	Tele
3700	2016	by	4	pl	Tele
3701	2016	be	2	pl	Tele
3702	2016	ba	7	pl	Tele
3703	2016	bg	5	pl	Tele
3704	2016	hr	1	pl	Tele
3705	2016	cy	5	pl	Tele
3706	2016	cz	7	pl	Tele
3707	2016	dk	4	pl	Tele
3708	2016	ee	10	pl	Tele
3709	2016	fi	3	pl	Tele
3710	2016	fr	8	pl	Tele
3711	2016	ge	10	pl	Tele
3712	2016	de	10	pl	Tele
3713	2016	gr	4	pl	Tele
3714	2016	hu	10	pl	Tele
3715	2016	is	5	pl	Tele
3716	2016	ie	6	pl	Tele
3717	2016	il	10	pl	Tele
3718	2016	it	2	pl	Tele
3719	2016	lv	10	pl	Tele
3720	2016	lt	5	pl	Tele
3721	2016	mt	7	pl	Tele
3722	2016	md	4	pl	Tele
3723	2016	me	5	pl	Tele
3724	2016	nl	10	pl	Tele
3725	2016	mk	5	pl	Tele
3726	2016	no	8	pl	Tele
3727	2016	pl	10	pl	Tele
3728	2016	al	2	au	Tele
3729	2016	am	1	au	Tele
3730	2016	au	4	au	Tele
3731	2016	at	3	au	Tele
3732	2016	az	5	au	Tele
3733	2016	by	5	au	Tele
3734	2016	be	5	au	Tele
3735	2016	ba	1	au	Tele
3736	2016	bg	10	au	Tele
3737	2016	hr	4	au	Tele
3738	2016	cy	7	au	Tele
3739	2016	cz	1	au	Tele
3740	2016	dk	5	au	Tele
3741	2016	ee	5	au	Tele
3742	2016	fi	3	au	Tele
3743	2016	fr	8	au	Tele
3744	2016	ge	6	au	Tele
3745	2016	de	5	au	Tele
3746	2016	gr	6	au	Tele
3747	2016	hu	5	au	Tele
3748	2016	is	12	au	Tele
3749	2016	ie	5	au	Tele
3750	2016	il	5	au	Tele
3751	2016	it	3	au	Tele
3752	2016	lv	8	au	Tele
3753	2016	lt	7	au	Tele
3754	2016	mt	4	au	Tele
3755	2016	md	5	au	Tele
3756	2016	me	6	au	Tele
3757	2016	nl	3	au	Tele
3758	2016	mk	4	au	Tele
3759	2016	no	12	au	Tele
3760	2016	pl	1	au	Tele
3761	2016	ru	4	au	Tele
3762	2016	sm	6	au	Tele
3763	2016	al	5	bg	Tele
3764	2016	am	8	bg	Tele
3765	2016	au	4	bg	Tele
3766	2016	at	5	bg	Tele
3767	2016	az	2	bg	Tele
3768	2016	by	1	bg	Tele
3769	2016	be	12	bg	Tele
3770	2016	ba	5	bg	Tele
3771	2016	bg	4	bg	Tele
3772	2016	hr	5	bg	Tele
3773	2016	cy	3	bg	Tele
3774	2016	cz	4	bg	Tele
3775	2016	dk	7	bg	Tele
3776	2016	ee	4	bg	Tele
3777	2016	fi	5	bg	Tele
3778	2016	fr	7	bg	Tele
3779	2016	ge	7	bg	Tele
3780	2016	de	1	bg	Tele
3781	2016	gr	8	bg	Tele
3782	2016	hu	2	bg	Tele
3783	2016	is	5	bg	Tele
3784	2016	ie	1	bg	Tele
3785	2016	il	10	bg	Tele
3786	2016	it	5	bg	Tele
3787	2016	lv	3	bg	Tele
3788	2016	lt	3	bg	Tele
3789	2016	mt	8	bg	Tele
3790	2016	md	2	bg	Tele
3791	2016	me	12	bg	Tele
3792	2016	nl	4	bg	Tele
3793	2016	mk	2	bg	Tele
3794	2016	no	8	bg	Tele
3795	2016	al	7	se	Tele
3796	2016	am	2	se	Tele
3797	2016	au	1	se	Tele
3798	2016	at	3	se	Tele
3799	2016	az	7	se	Tele
3800	2016	by	1	se	Tele
3801	2016	be	2	se	Tele
3802	2016	ba	12	se	Tele
3803	2016	bg	10	se	Tele
3804	2016	hr	10	se	Tele
3805	2016	cy	2	se	Tele
3806	2016	cz	8	se	Tele
3807	2016	dk	7	se	Tele
3808	2016	ee	12	se	Tele
3809	2016	fi	2	se	Tele
3810	2016	fr	7	se	Tele
3811	2016	ge	7	se	Tele
3812	2016	de	2	se	Tele
3813	2016	gr	7	se	Tele
3814	2016	hu	10	se	Tele
3815	2016	is	2	se	Tele
3816	2016	ie	4	se	Tele
3817	2016	il	1	se	Tele
3818	2016	it	5	se	Tele
3819	2016	lv	1	se	Tele
3820	2016	lt	1	se	Tele
3821	2016	mt	1	se	Tele
3822	2016	al	7	am	Tele
3823	2016	am	8	am	Tele
3824	2016	au	8	am	Tele
3825	2016	at	8	am	Tele
3826	2016	az	12	am	Tele
3827	2016	by	12	am	Tele
3828	2016	be	2	am	Tele
3829	2016	ba	8	am	Tele
3830	2016	bg	6	am	Tele
3831	2016	hr	1	am	Tele
3832	2016	cy	7	am	Tele
3833	2016	cz	8	am	Tele
3834	2016	dk	7	am	Tele
3835	2016	ee	2	am	Tele
3836	2016	fi	12	am	Tele
3837	2016	fr	2	am	Tele
3838	2016	ge	2	am	Tele
3839	2016	de	6	am	Tele
3840	2016	gr	7	am	Tele
3841	2016	al	3	at	Tele
3842	2016	am	5	at	Tele
3843	2016	au	4	at	Tele
3844	2016	at	6	at	Tele
3845	2016	az	4	at	Tele
3846	2016	by	1	at	Tele
3847	2016	be	6	at	Tele
3848	2016	ba	6	at	Tele
3849	2016	bg	8	at	Tele
3850	2016	hr	7	at	Tele
3851	2016	cy	1	at	Tele
3852	2016	cz	6	at	Tele
3853	2016	dk	2	at	Tele
3854	2016	ee	1	at	Tele
3855	2016	fi	3	at	Tele
3856	2016	fr	4	at	Tele
3857	2016	ge	1	at	Tele
3858	2016	de	4	at	Tele
3859	2016	gr	6	at	Tele
3860	2016	hu	4	at	Tele
3861	2016	is	8	at	Tele
3862	2016	ie	6	at	Tele
3863	2016	il	2	at	Tele
3864	2016	it	5	at	Tele
3865	2016	lv	10	at	Tele
3866	2016	al	1	fr	Tele
3867	2016	am	4	fr	Tele
3868	2016	au	8	fr	Tele
3869	2016	at	4	fr	Tele
3870	2016	az	2	fr	Tele
3871	2016	by	6	fr	Tele
3872	2016	be	2	fr	Tele
3873	2016	ba	2	fr	Tele
3874	2016	bg	3	fr	Tele
3875	2016	hr	4	fr	Tele
3876	2016	cy	1	fr	Tele
3877	2016	cz	5	fr	Tele
3878	2016	dk	12	fr	Tele
3879	2016	ee	5	fr	Tele
3880	2016	fi	3	fr	Tele
3881	2016	fr	2	fr	Tele
3882	2016	ge	6	fr	Tele
3883	2016	de	1	fr	Tele
3884	2016	gr	4	fr	Tele
3885	2016	hu	1	fr	Tele
3886	2016	is	3	fr	Tele
3887	2016	ie	10	fr	Tele
3888	2016	il	3	fr	Tele
3889	2016	it	3	fr	Tele
3890	2016	al	3	lt	Tele
3891	2016	am	6	lt	Tele
3892	2016	au	5	lt	Tele
3893	2016	at	5	lt	Tele
3894	2016	az	4	lt	Tele
3895	2016	by	12	lt	Tele
3896	2016	be	2	lt	Tele
3897	2016	ba	8	lt	Tele
3898	2016	bg	3	lt	Tele
3899	2016	hr	2	lt	Tele
3900	2016	cy	12	lt	Tele
3901	2016	cz	8	lt	Tele
3902	2016	dk	6	lt	Tele
3903	2016	ee	3	lt	Tele
3904	2016	fi	12	lt	Tele
3905	2016	al	12	rs	Tele
3906	2016	am	4	rs	Tele
3907	2016	au	12	rs	Tele
3908	2016	at	12	rs	Tele
3909	2016	az	12	rs	Tele
3910	2016	by	12	rs	Tele
3911	2016	al	1	az	Tele
3912	2016	am	6	az	Tele
3913	2016	au	7	az	Tele
3914	2016	at	1	az	Tele
3915	2016	az	2	az	Tele
3916	2016	by	3	az	Tele
3917	2016	be	6	az	Tele
3918	2016	ba	8	az	Tele
3919	2016	bg	7	az	Tele
3920	2016	hr	6	az	Tele
3921	2016	cy	10	az	Tele
3922	2016	al	2	lv	Tele
3923	2016	am	6	lv	Tele
3924	2016	au	7	lv	Tele
3925	2016	at	12	lv	Tele
3926	2016	az	1	lv	Tele
3927	2016	by	3	lv	Tele
3928	2016	be	5	lv	Tele
3929	2016	ba	1	lv	Tele
3930	2016	bg	6	lv	Tele
3931	2016	hr	5	lv	Tele
3932	2016	cy	3	lv	Tele
3933	2016	al	7	hu	Tele
3934	2016	am	3	hu	Tele
3935	2016	au	1	hu	Tele
3936	2016	at	3	hu	Tele
3937	2016	az	4	hu	Tele
3938	2016	by	3	hu	Tele
3939	2016	be	2	hu	Tele
3940	2016	ba	2	hu	Tele
3941	2016	bg	2	hu	Tele
3942	2016	hr	5	hu	Tele
3943	2016	cy	3	hu	Tele
3944	2016	cz	6	hu	Tele
3945	2016	dk	1	hu	Tele
3946	2016	ee	10	hu	Tele
3947	2016	al	3	cy	Tele
3948	2016	am	1	cy	Tele
3949	2016	au	12	cy	Tele
3950	2016	at	5	cy	Tele
3951	2016	az	6	cy	Tele
3952	2016	by	1	cy	Tele
3953	2016	be	7	cy	Tele
3954	2016	ba	3	cy	Tele
3955	2016	bg	2	cy	Tele
3956	2016	al	4	be	Tele
3957	2016	am	3	be	Tele
3958	2016	au	1	be	Tele
3959	2016	at	12	be	Tele
3960	2016	az	4	be	Tele
3961	2016	by	2	be	Tele
3962	2016	be	5	be	Tele
3963	2016	al	7	nl	Tele
3964	2016	am	3	nl	Tele
3965	2016	au	2	nl	Tele
3966	2016	at	6	nl	Tele
3967	2016	az	3	nl	Tele
3968	2016	by	2	nl	Tele
3969	2016	al	7	it	Tele
3970	2016	am	4	it	Tele
3971	2016	au	1	it	Tele
3972	2016	at	1	it	Tele
3973	2016	az	3	it	Tele
3974	2016	by	7	it	Tele
3975	2016	al	5	hr	Tele
3976	2016	am	4	hr	Tele
3977	2016	au	8	hr	Tele
3978	2016	al	3	ge	Tele
3979	2016	am	2	ge	Tele
3980	2016	au	4	ge	Tele
3981	2016	at	6	ge	Tele
3982	2016	al	5	mt	Tele
3983	2016	al	3	il	Tele
3984	2016	al	1	es	Tele
3985	2016	am	2	es	Tele
3986	2016	au	4	es	Tele
3987	2016	al	1	gb	Tele
3988	2016	al	12	au	Jury
3989	2016	am	7	au	Jury
3990	2016	au	6	au	Jury
3991	2016	at	12	au	Jury
3992	2016	az	10	au	Jury
3993	2016	by	8	au	Jury
3994	2016	be	12	au	Jury
3995	2016	ba	10	au	Jury
3996	2016	bg	10	au	Jury
3997	2016	hr	10	au	Jury
3998	2016	cy	8	au	Jury
3999	2016	cz	6	au	Jury
4000	2016	dk	8	au	Jury
4001	2016	ee	6	au	Jury
4002	2016	fi	7	au	Jury
4003	2016	fr	12	au	Jury
4004	2016	ge	10	au	Jury
4005	2016	de	10	au	Jury
4006	2016	gr	6	au	Jury
4007	2016	hu	5	au	Jury
4008	2016	is	12	au	Jury
4009	2016	ie	3	au	Jury
4010	2016	il	10	au	Jury
4011	2016	it	4	au	Jury
4012	2016	lv	12	au	Jury
4013	2016	lt	8	au	Jury
4014	2016	mt	10	au	Jury
4015	2016	md	10	au	Jury
4016	2016	me	2	au	Jury
4017	2016	nl	6	au	Jury
4018	2016	mk	6	au	Jury
4019	2016	no	8	au	Jury
4020	2016	pl	12	au	Jury
4021	2016	ru	12	au	Jury
4022	2016	sm	5	au	Jury
4023	2016	rs	8	au	Jury
4024	2016	al	7	ua	Jury
4025	2016	am	3	ua	Jury
4026	2016	au	12	ua	Jury
4027	2016	at	12	ua	Jury
4028	2016	az	7	ua	Jury
4029	2016	by	12	ua	Jury
4030	2016	be	7	ua	Jury
4031	2016	ba	2	ua	Jury
4032	2016	bg	12	ua	Jury
4033	2016	hr	10	ua	Jury
4034	2016	cy	12	ua	Jury
4035	2016	cz	8	ua	Jury
4036	2016	dk	12	ua	Jury
4037	2016	ee	3	ua	Jury
4038	2016	fi	12	ua	Jury
4039	2016	fr	4	ua	Jury
4040	2016	ge	12	ua	Jury
4041	2016	de	12	ua	Jury
4042	2016	gr	12	ua	Jury
4043	2016	hu	12	ua	Jury
4044	2016	is	6	ua	Jury
4045	2016	ie	10	ua	Jury
4046	2016	al	6	fr	Jury
4047	2016	am	7	fr	Jury
4048	2016	au	8	fr	Jury
4049	2016	at	7	fr	Jury
4050	2016	az	8	fr	Jury
4051	2016	by	7	fr	Jury
4052	2016	be	5	fr	Jury
4053	2016	ba	1	fr	Jury
4054	2016	bg	1	fr	Jury
4055	2016	hr	4	fr	Jury
4056	2016	cy	6	fr	Jury
4057	2016	cz	2	fr	Jury
4058	2016	dk	3	fr	Jury
4059	2016	ee	8	fr	Jury
4060	2016	fi	7	fr	Jury
4061	2016	fr	1	fr	Jury
4062	2016	ge	6	fr	Jury
4063	2016	de	5	fr	Jury
4064	2016	gr	5	fr	Jury
4065	2016	hu	1	fr	Jury
4066	2016	is	7	fr	Jury
4067	2016	ie	7	fr	Jury
4068	2016	il	8	fr	Jury
4069	2016	it	6	fr	Jury
4070	2016	al	10	mt	Jury
4071	2016	am	6	mt	Jury
4072	2016	au	5	mt	Jury
4073	2016	at	7	mt	Jury
4074	2016	az	6	mt	Jury
4075	2016	by	6	mt	Jury
4076	2016	be	2	mt	Jury
4077	2016	ba	5	mt	Jury
4078	2016	bg	4	mt	Jury
4079	2016	hr	4	mt	Jury
4080	2016	cy	10	mt	Jury
4081	2016	cz	4	mt	Jury
4082	2016	dk	5	mt	Jury
4083	2016	ee	4	mt	Jury
4084	2016	fi	3	mt	Jury
4085	2016	fr	12	mt	Jury
4086	2016	ge	8	mt	Jury
4087	2016	de	3	mt	Jury
4088	2016	gr	10	mt	Jury
4089	2016	hu	6	mt	Jury
4090	2016	is	7	mt	Jury
4091	2016	al	3	ru	Jury
4092	2016	am	12	ru	Jury
4093	2016	au	12	ru	Jury
4094	2016	at	5	ru	Jury
4095	2016	az	6	ru	Jury
4096	2016	by	6	ru	Jury
4097	2016	be	12	ru	Jury
4098	2016	ba	1	ru	Jury
4099	2016	bg	12	ru	Jury
4100	2016	hr	8	ru	Jury
4101	2016	cy	7	ru	Jury
4102	2016	cz	4	ru	Jury
4103	2016	dk	7	ru	Jury
4104	2016	ee	8	ru	Jury
4105	2016	fi	7	ru	Jury
4106	2016	fr	1	ru	Jury
4107	2016	ge	4	ru	Jury
4108	2016	de	6	ru	Jury
4109	2016	al	5	be	Jury
4110	2016	am	4	be	Jury
4111	2016	au	10	be	Jury
4112	2016	at	2	be	Jury
4113	2016	az	8	be	Jury
4114	2016	by	10	be	Jury
4115	2016	be	5	be	Jury
4116	2016	ba	3	be	Jury
4117	2016	bg	12	be	Jury
4118	2016	hr	6	be	Jury
4119	2016	cy	5	be	Jury
4120	2016	cz	3	be	Jury
4121	2016	dk	4	be	Jury
4122	2016	ee	4	be	Jury
4123	2016	fi	5	be	Jury
4124	2016	fr	8	be	Jury
4125	2016	ge	10	be	Jury
4126	2016	de	10	be	Jury
4127	2016	al	8	bg	Jury
4128	2016	am	8	bg	Jury
4129	2016	au	1	bg	Jury
4130	2016	at	6	bg	Jury
4131	2016	az	3	bg	Jury
4132	2016	by	6	bg	Jury
4133	2016	be	10	bg	Jury
4134	2016	ba	10	bg	Jury
4135	2016	bg	7	bg	Jury
4136	2016	hr	1	bg	Jury
4137	2016	cy	2	bg	Jury
4138	2016	cz	10	bg	Jury
4139	2016	dk	2	bg	Jury
4140	2016	ee	10	bg	Jury
4141	2016	fi	8	bg	Jury
4142	2016	fr	3	bg	Jury
4143	2016	ge	4	bg	Jury
4144	2016	de	10	bg	Jury
4145	2016	gr	1	bg	Jury
4146	2016	hu	1	bg	Jury
4147	2016	is	5	bg	Jury
4148	2016	al	3	il	Jury
4149	2016	am	2	il	Jury
4150	2016	au	7	il	Jury
4151	2016	at	5	il	Jury
4152	2016	az	2	il	Jury
4153	2016	by	7	il	Jury
4154	2016	be	3	il	Jury
4155	2016	ba	12	il	Jury
4156	2016	bg	4	il	Jury
4157	2016	hr	8	il	Jury
4158	2016	cy	2	il	Jury
4159	2016	cz	6	il	Jury
4160	2016	dk	1	il	Jury
4161	2016	ee	7	il	Jury
4162	2016	fi	5	il	Jury
4163	2016	fr	3	il	Jury
4164	2016	ge	7	il	Jury
4165	2016	de	7	il	Jury
4166	2016	gr	2	il	Jury
4167	2016	hu	1	il	Jury
4168	2016	is	8	il	Jury
4169	2016	ie	6	il	Jury
4170	2016	il	3	il	Jury
4171	2016	al	12	se	Jury
4172	2016	am	4	se	Jury
4173	2016	au	12	se	Jury
4174	2016	at	12	se	Jury
4175	2016	az	5	se	Jury
4176	2016	by	6	se	Jury
4177	2016	be	10	se	Jury
4178	2016	ba	4	se	Jury
4179	2016	bg	6	se	Jury
4180	2016	hr	5	se	Jury
4181	2016	cy	2	se	Jury
4182	2016	cz	8	se	Jury
4183	2016	dk	6	se	Jury
4184	2016	ee	10	se	Jury
4185	2016	fi	4	se	Jury
4186	2016	al	2	am	Jury
4187	2016	am	12	am	Jury
4188	2016	au	4	am	Jury
4189	2016	at	8	am	Jury
4190	2016	az	2	am	Jury
4191	2016	by	10	am	Jury
4192	2016	be	1	am	Jury
4193	2016	ba	2	am	Jury
4194	2016	bg	6	am	Jury
4195	2016	hr	4	am	Jury
4196	2016	cy	7	am	Jury
4197	2016	cz	5	am	Jury
4198	2016	dk	10	am	Jury
4199	2016	ee	2	am	Jury
4200	2016	fi	12	am	Jury
4201	2016	fr	3	am	Jury
4202	2016	ge	4	am	Jury
4203	2016	de	12	am	Jury
4204	2016	gr	4	am	Jury
4205	2016	al	2	nl	Jury
4206	2016	am	7	nl	Jury
4207	2016	au	7	nl	Jury
4208	2016	at	6	nl	Jury
4209	2016	az	10	nl	Jury
4210	2016	by	7	nl	Jury
4211	2016	be	4	nl	Jury
4212	2016	ba	6	nl	Jury
4213	2016	bg	12	nl	Jury
4214	2016	hr	8	nl	Jury
4215	2016	cy	4	nl	Jury
4216	2016	cz	3	nl	Jury
4217	2016	dk	2	nl	Jury
4218	2016	ee	6	nl	Jury
4219	2016	fi	4	nl	Jury
4220	2016	fr	5	nl	Jury
4221	2016	ge	1	nl	Jury
4222	2016	de	3	nl	Jury
4223	2016	gr	5	nl	Jury
4224	2016	hu	5	nl	Jury
4225	2016	al	5	lt	Jury
4226	2016	am	10	lt	Jury
4227	2016	au	1	lt	Jury
4228	2016	at	3	lt	Jury
4229	2016	az	5	lt	Jury
4230	2016	by	5	lt	Jury
4231	2016	be	6	lt	Jury
4232	2016	ba	5	lt	Jury
4233	2016	bg	1	lt	Jury
4234	2016	hr	3	lt	Jury
4235	2016	cy	1	lt	Jury
4236	2016	cz	10	lt	Jury
4237	2016	dk	4	lt	Jury
4238	2016	ee	2	lt	Jury
4239	2016	fi	2	lt	Jury
4240	2016	fr	8	lt	Jury
4241	2016	ge	2	lt	Jury
4242	2016	de	7	lt	Jury
4243	2016	gr	12	lt	Jury
4244	2016	hu	4	lt	Jury
4245	2016	al	3	it	Jury
4246	2016	am	3	it	Jury
4247	2016	au	2	it	Jury
4248	2016	at	12	it	Jury
4249	2016	az	3	it	Jury
4250	2016	by	6	it	Jury
4251	2016	be	8	it	Jury
4252	2016	ba	6	it	Jury
4253	2016	bg	12	it	Jury
4254	2016	hr	10	it	Jury
4255	2016	cy	5	it	Jury
4256	2016	cz	2	it	Jury
4257	2016	al	3	ge	Jury
4258	2016	am	8	ge	Jury
4259	2016	au	5	ge	Jury
4260	2016	at	3	ge	Jury
4261	2016	az	10	ge	Jury
4262	2016	by	8	ge	Jury
4263	2016	be	5	ge	Jury
4264	2016	ba	6	ge	Jury
4265	2016	bg	3	ge	Jury
4266	2016	hr	12	ge	Jury
4267	2016	al	7	lv	Jury
4268	2016	am	2	lv	Jury
4269	2016	au	8	lv	Jury
4270	2016	at	1	lv	Jury
4271	2016	az	5	lv	Jury
4272	2016	by	7	lv	Jury
4273	2016	be	3	lv	Jury
4274	2016	ba	6	lv	Jury
4275	2016	bg	3	lv	Jury
4276	2016	hr	7	lv	Jury
4277	2016	cy	3	lv	Jury
4278	2016	cz	8	lv	Jury
4279	2016	al	5	es	Jury
4280	2016	am	1	es	Jury
4281	2016	au	4	es	Jury
4282	2016	at	1	es	Jury
4283	2016	az	3	es	Jury
4284	2016	by	5	es	Jury
4285	2016	be	4	es	Jury
4286	2016	ba	12	es	Jury
4287	2016	bg	2	es	Jury
4288	2016	hr	8	es	Jury
4289	2016	cy	7	es	Jury
4290	2016	cz	5	es	Jury
4291	2016	dk	1	es	Jury
4292	2016	al	4	gb	Jury
4293	2016	am	3	gb	Jury
4294	2016	au	3	gb	Jury
4295	2016	at	7	gb	Jury
4296	2016	az	12	gb	Jury
4297	2016	by	6	gb	Jury
4298	2016	be	8	gb	Jury
4299	2016	ba	2	gb	Jury
4300	2016	al	5	hu	Jury
4301	2016	am	4	hu	Jury
4302	2016	au	10	hu	Jury
4303	2016	at	3	hu	Jury
4304	2016	az	7	hu	Jury
4305	2016	by	1	hu	Jury
4306	2016	be	2	hu	Jury
4307	2016	ba	3	hu	Jury
4308	2016	bg	10	hu	Jury
4309	2016	hr	2	hu	Jury
4310	2016	al	2	az	Jury
4311	2016	am	1	az	Jury
4312	2016	au	7	az	Jury
4313	2016	at	1	az	Jury
4314	2016	az	1	az	Jury
4315	2016	by	10	az	Jury
4316	2016	be	2	az	Jury
4317	2016	ba	10	az	Jury
4318	2016	bg	7	az	Jury
4319	2016	al	4	cy	Jury
4320	2016	am	8	cy	Jury
4321	2016	au	1	cy	Jury
4322	2016	at	5	cy	Jury
4323	2016	az	2	cy	Jury
4324	2016	by	4	cy	Jury
4325	2016	be	5	cy	Jury
4326	2016	ba	7	cy	Jury
4327	2016	al	1	cz	Jury
4328	2016	am	6	cz	Jury
4329	2016	au	10	cz	Jury
4330	2016	at	3	cz	Jury
4331	2016	az	2	cz	Jury
4332	2016	by	5	cz	Jury
4333	2016	be	2	cz	Jury
4334	2016	ba	4	cz	Jury
4335	2016	bg	3	cz	Jury
4336	2016	al	4	hr	Jury
4337	2016	am	1	hr	Jury
4338	2016	au	8	hr	Jury
4339	2016	at	2	hr	Jury
4340	2016	az	7	hr	Jury
4341	2016	by	3	hr	Jury
4342	2016	be	1	hr	Jury
4343	2016	ba	6	hr	Jury
4344	2016	bg	1	hr	Jury
4345	2016	al	2	rs	Jury
4346	2016	am	6	rs	Jury
4347	2016	au	7	rs	Jury
4348	2016	at	5	rs	Jury
4349	2016	az	2	rs	Jury
4350	2016	al	8	at	Jury
4351	2016	am	1	at	Jury
4352	2016	au	8	at	Jury
4353	2016	at	1	at	Jury
4354	2016	az	4	at	Jury
4355	2016	al	1	pl	Jury
4356	2016	am	1	pl	Jury
4357	2015	al	12	se	Total
4358	2015	am	7	se	Total
4359	2015	au	6	se	Total
4360	2015	at	10	se	Total
4361	2015	az	12	se	Total
4362	2015	by	10	se	Total
4363	2015	be	10	se	Total
4364	2015	cy	12	se	Total
4365	2015	cz	10	se	Total
4366	2015	dk	12	se	Total
4367	2015	ee	8	se	Total
4368	2015	fi	7	se	Total
4369	2015	fr	10	se	Total
4370	2015	ge	4	se	Total
4371	2015	de	10	se	Total
4372	2015	gr	12	se	Total
4373	2015	hu	10	se	Total
4374	2015	is	10	se	Total
4375	2015	ie	12	se	Total
4376	2015	il	12	se	Total
4377	2015	it	10	se	Total
4378	2015	lv	10	se	Total
4379	2015	lt	8	se	Total
4380	2015	mt	5	se	Total
4381	2015	md	10	se	Total
4382	2015	me	5	se	Total
4383	2015	nl	12	se	Total
4384	2015	mk	12	se	Total
4385	2015	no	8	se	Total
4386	2015	pl	8	se	Total
4387	2015	pt	8	se	Total
4388	2015	ro	7	se	Total
4389	2015	ru	8	se	Total
4390	2015	sm	12	se	Total
4391	2015	rs	8	se	Total
4392	2015	si	12	se	Total
4393	2015	es	12	se	Total
4394	2015	al	10	ru	Total
4395	2015	am	8	ru	Total
4396	2015	au	12	ru	Total
4397	2015	at	12	ru	Total
4398	2015	az	10	ru	Total
4399	2015	by	5	ru	Total
4400	2015	be	8	ru	Total
4401	2015	cy	10	ru	Total
4402	2015	cz	12	ru	Total
4403	2015	dk	8	ru	Total
4404	2015	ee	10	ru	Total
4405	2015	fi	5	ru	Total
4406	2015	fr	12	ru	Total
4407	2015	ge	8	ru	Total
4408	2015	de	6	ru	Total
4409	2015	gr	3	ru	Total
4410	2015	hu	8	ru	Total
4411	2015	is	8	ru	Total
4412	2015	ie	10	ru	Total
4413	2015	il	10	ru	Total
4414	2015	it	7	ru	Total
4415	2015	lv	10	ru	Total
4416	2015	lt	7	ru	Total
4417	2015	mt	6	ru	Total
4418	2015	md	6	ru	Total
4419	2015	me	2	ru	Total
4420	2015	nl	6	ru	Total
4421	2015	mk	10	ru	Total
4422	2015	no	10	ru	Total
4423	2015	pl	10	ru	Total
4424	2015	pt	5	ru	Total
4425	2015	ro	10	ru	Total
4426	2015	ru	6	ru	Total
4427	2015	sm	7	ru	Total
4428	2015	rs	6	ru	Total
4429	2015	al	8	it	Total
4430	2015	am	10	it	Total
4431	2015	au	8	it	Total
4432	2015	at	1	it	Total
4433	2015	az	8	it	Total
4434	2015	by	12	it	Total
4435	2015	be	7	it	Total
4436	2015	cy	5	it	Total
4437	2015	cz	3	it	Total
4438	2015	dk	2	it	Total
4439	2015	ee	6	it	Total
4440	2015	fi	8	it	Total
4441	2015	fr	3	it	Total
4442	2015	ge	12	it	Total
4443	2015	de	2	it	Total
4444	2015	gr	6	it	Total
4445	2015	hu	6	it	Total
4446	2015	is	12	it	Total
4447	2015	ie	8	it	Total
4448	2015	il	1	it	Total
4449	2015	it	12	it	Total
4450	2015	lv	7	it	Total
4451	2015	lt	6	it	Total
4452	2015	mt	7	it	Total
4453	2015	md	7	it	Total
4454	2015	me	5	it	Total
4455	2015	nl	7	it	Total
4456	2015	mk	12	it	Total
4457	2015	no	12	it	Total
4458	2015	pl	12	it	Total
4459	2015	pt	10	it	Total
4460	2015	ro	7	it	Total
4461	2015	ru	8	it	Total
4462	2015	sm	12	it	Total
4463	2015	rs	8	it	Total
4464	2015	si	6	it	Total
4465	2015	es	8	it	Total
4466	2015	al	6	be	Total
4467	2015	am	5	be	Total
4468	2015	au	8	be	Total
4469	2015	at	7	be	Total
4470	2015	az	6	be	Total
4471	2015	by	7	be	Total
4472	2015	be	7	be	Total
4473	2015	cy	7	be	Total
4474	2015	cz	12	be	Total
4475	2015	dk	6	be	Total
4476	2015	ee	8	be	Total
4477	2015	fi	7	be	Total
4478	2015	fr	12	be	Total
4479	2015	ge	4	be	Total
4480	2015	de	2	be	Total
4481	2015	gr	4	be	Total
4482	2015	hu	7	be	Total
4483	2015	is	4	be	Total
4484	2015	ie	7	be	Total
4485	2015	il	6	be	Total
4486	2015	it	12	be	Total
4487	2015	lv	1	be	Total
4488	2015	lt	7	be	Total
4489	2015	mt	5	be	Total
4490	2015	md	5	be	Total
4491	2015	me	7	be	Total
4492	2015	nl	10	be	Total
4493	2015	mk	5	be	Total
4494	2015	no	4	be	Total
4495	2015	pl	3	be	Total
4496	2015	pt	6	be	Total
4497	2015	ro	10	be	Total
4498	2015	ru	2	be	Total
4499	2015	sm	3	be	Total
4500	2015	al	12	au	Total
4501	2015	am	6	au	Total
4502	2015	au	4	au	Total
4503	2015	at	4	au	Total
4504	2015	az	8	au	Total
4505	2015	by	5	au	Total
4506	2015	be	5	au	Total
4507	2015	cy	2	au	Total
4508	2015	cz	7	au	Total
4509	2015	dk	5	au	Total
4510	2015	ee	8	au	Total
4511	2015	fi	8	au	Total
4512	2015	fr	5	au	Total
4513	2015	ge	7	au	Total
4514	2015	de	6	au	Total
4515	2015	gr	5	au	Total
4516	2015	hu	3	au	Total
4517	2015	is	6	au	Total
4518	2015	ie	4	au	Total
4519	2015	il	8	au	Total
4520	2015	it	10	au	Total
4521	2015	lv	8	au	Total
4522	2015	lt	2	au	Total
4523	2015	mt	4	au	Total
4524	2015	md	8	au	Total
4525	2015	me	3	au	Total
4526	2015	nl	2	au	Total
4527	2015	mk	7	au	Total
4528	2015	no	12	au	Total
4529	2015	pl	8	au	Total
4530	2015	pt	10	au	Total
4531	2015	al	1	lv	Total
4532	2015	am	5	lv	Total
4533	2015	au	5	lv	Total
4534	2015	at	7	lv	Total
4535	2015	az	3	lv	Total
4536	2015	by	5	lv	Total
4537	2015	be	4	lv	Total
4538	2015	cy	6	lv	Total
4539	2015	cz	6	lv	Total
4540	2015	dk	7	lv	Total
4541	2015	ee	4	lv	Total
4542	2015	fi	6	lv	Total
4543	2015	fr	3	lv	Total
4544	2015	ge	5	lv	Total
4545	2015	de	7	lv	Total
4546	2015	gr	12	lv	Total
4547	2015	hu	4	lv	Total
4548	2015	is	12	lv	Total
4549	2015	ie	4	lv	Total
4550	2015	il	2	lv	Total
4551	2015	it	2	lv	Total
4552	2015	lv	8	lv	Total
4553	2015	lt	10	lv	Total
4554	2015	mt	2	lv	Total
4555	2015	md	5	lv	Total
4556	2015	me	2	lv	Total
4557	2015	nl	12	lv	Total
4558	2015	mk	1	lv	Total
4559	2015	no	7	lv	Total
4560	2015	pl	4	lv	Total
4561	2015	pt	5	lv	Total
4562	2015	ro	4	lv	Total
4563	2015	ru	7	lv	Total
4564	2015	al	6	ee	Total
4565	2015	am	4	ee	Total
4566	2015	au	7	ee	Total
4567	2015	at	2	ee	Total
4568	2015	az	2	ee	Total
4569	2015	by	6	ee	Total
4570	2015	be	10	ee	Total
4571	2015	cy	2	ee	Total
4572	2015	cz	2	ee	Total
4573	2015	dk	7	ee	Total
4574	2015	ee	1	ee	Total
4575	2015	fi	3	ee	Total
4576	2015	fr	2	ee	Total
4577	2015	ge	6	ee	Total
4578	2015	de	8	ee	Total
4579	2015	gr	3	ee	Total
4580	2015	hu	1	ee	Total
4581	2015	is	4	ee	Total
4582	2015	ie	2	ee	Total
4583	2015	il	3	ee	Total
4584	2015	it	2	ee	Total
4585	2015	lv	1	ee	Total
4586	2015	lt	7	ee	Total
4587	2015	mt	2	ee	Total
4588	2015	md	3	ee	Total
4589	2015	me	3	ee	Total
4590	2015	al	3	no	Total
4591	2015	am	4	no	Total
4592	2015	au	4	no	Total
4593	2015	at	4	no	Total
4594	2015	az	4	no	Total
4595	2015	by	10	no	Total
4596	2015	be	4	no	Total
4597	2015	cy	5	no	Total
4598	2015	cz	2	no	Total
4599	2015	dk	5	no	Total
4600	2015	ee	2	no	Total
4601	2015	fi	3	no	Total
4602	2015	fr	3	no	Total
4603	2015	ge	6	no	Total
4604	2015	de	6	no	Total
4605	2015	gr	6	no	Total
4606	2015	hu	4	no	Total
4607	2015	is	2	no	Total
4608	2015	ie	7	no	Total
4609	2015	il	10	no	Total
4610	2015	al	2	il	Total
4611	2015	am	7	il	Total
4612	2015	au	2	il	Total
4613	2015	at	6	il	Total
4614	2015	az	3	il	Total
4615	2015	by	1	il	Total
4616	2015	be	5	il	Total
4617	2015	cy	5	il	Total
4618	2015	cz	8	il	Total
4619	2015	dk	1	il	Total
4620	2015	ee	5	il	Total
4621	2015	fi	3	il	Total
4622	2015	fr	5	il	Total
4623	2015	ge	4	il	Total
4624	2015	de	4	il	Total
4625	2015	gr	7	il	Total
4626	2015	hu	1	il	Total
4627	2015	is	2	il	Total
4628	2015	ie	6	il	Total
4629	2015	il	1	il	Total
4630	2015	it	4	il	Total
4631	2015	lv	3	il	Total
4632	2015	lt	5	il	Total
4633	2015	al	3	rs	Total
4634	2015	am	3	rs	Total
4635	2015	au	2	rs	Total
4636	2015	at	3	rs	Total
4637	2015	az	12	rs	Total
4638	2015	by	1	rs	Total
4639	2015	be	10	rs	Total
4640	2015	cy	6	rs	Total
4641	2015	cz	5	rs	Total
4642	2015	dk	1	rs	Total
4643	2015	al	10	ge	Total
4644	2015	am	3	ge	Total
4645	2015	au	1	ge	Total
4646	2015	at	4	ge	Total
4647	2015	az	1	ge	Total
4648	2015	by	2	ge	Total
4649	2015	be	3	ge	Total
4650	2015	cy	6	ge	Total
4651	2015	cz	5	ge	Total
4652	2015	dk	5	ge	Total
4653	2015	al	2	az	Total
4654	2015	am	8	az	Total
4655	2015	au	3	az	Total
4656	2015	at	8	az	Total
4657	2015	az	3	az	Total
4658	2015	by	3	az	Total
4659	2015	al	2	me	Total
4660	2015	am	4	me	Total
4661	2015	au	12	me	Total
4662	2015	at	10	me	Total
4663	2015	az	2	me	Total
4664	2015	al	2	si	Total
4665	2015	am	6	si	Total
4666	2015	au	3	si	Total
4667	2015	at	4	si	Total
4668	2015	az	4	si	Total
4669	2015	by	8	si	Total
4670	2015	be	1	si	Total
4671	2015	cy	1	si	Total
4672	2015	cz	5	si	Total
4673	2015	dk	1	si	Total
4674	2015	al	2	ro	Total
4675	2015	am	1	ro	Total
4676	2015	au	5	ro	Total
4677	2015	at	12	ro	Total
4678	2015	az	4	ro	Total
4679	2015	by	5	ro	Total
4680	2015	al	2	am	Total
4681	2015	am	3	am	Total
4682	2015	au	12	am	Total
4683	2015	at	1	am	Total
4684	2015	az	3	am	Total
4685	2015	by	6	am	Total
4686	2015	al	10	al	Total
4687	2015	am	12	al	Total
4688	2015	al	3	lt	Total
4689	2015	am	7	lt	Total
4690	2015	au	7	lt	Total
4691	2015	at	6	lt	Total
4692	2015	az	4	lt	Total
4693	2015	al	8	gr	Total
4694	2015	al	1	hu	Total
4695	2015	am	1	hu	Total
4696	2015	au	4	hu	Total
4697	2015	at	4	hu	Total
4698	2015	al	1	es	Total
4699	2015	am	1	es	Total
4700	2015	au	2	es	Total
4701	2015	at	3	es	Total
4702	2015	az	1	es	Total
4703	2015	by	1	es	Total
4704	2015	al	1	pl	Total
4705	2015	am	2	pl	Total
4706	2015	al	3	gb	Total
4707	2012	al	7	se	Total
4708	2012	at	6	se	Total
4709	2012	az	12	se	Total
4710	2012	by	8	se	Total
4711	2012	be	8	se	Total
4712	2012	ba	7	se	Total
4713	2012	bg	10	se	Total
4714	2012	hr	12	se	Total
4715	2012	cy	12	se	Total
4716	2012	dk	12	se	Total
4717	2012	ee	12	se	Total
4718	2012	fi	8	se	Total
4719	2012	fr	12	se	Total
4720	2012	ge	6	se	Total
4721	2012	de	12	se	Total
4722	2012	gr	12	se	Total
4723	2012	hu	12	se	Total
4724	2012	is	12	se	Total
4725	2012	ie	12	se	Total
4726	2012	il	10	se	Total
4727	2012	it	6	se	Total
4728	2012	lv	7	se	Total
4729	2012	lt	7	se	Total
4730	2012	mt	12	se	Total
4731	2012	md	6	se	Total
4732	2012	me	12	se	Total
4733	2012	nl	3	se	Total
4734	2012	mk	10	se	Total
4735	2012	no	12	se	Total
4736	2012	pt	3	se	Total
4737	2012	ro	10	se	Total
4738	2012	ru	12	se	Total
4739	2012	sm	10	se	Total
4740	2012	rs	12	se	Total
4741	2012	sk	7	se	Total
4742	2012	si	6	se	Total
4743	2012	es	6	se	Total
4744	2012	se	12	se	Total
4745	2012	al	10	ru	Total
4746	2012	at	12	ru	Total
4747	2012	az	8	ru	Total
4748	2012	by	3	ru	Total
4749	2012	be	6	ru	Total
4750	2012	ba	6	ru	Total
4751	2012	bg	5	ru	Total
4752	2012	hr	8	ru	Total
4753	2012	cy	8	ru	Total
4754	2012	dk	8	ru	Total
4755	2012	ee	4	ru	Total
4756	2012	fi	5	ru	Total
4757	2012	fr	7	ru	Total
4758	2012	ge	4	ru	Total
4759	2012	de	7	ru	Total
4760	2012	gr	7	ru	Total
4761	2012	hu	6	ru	Total
4762	2012	is	7	ru	Total
4763	2012	ie	10	ru	Total
4764	2012	il	10	ru	Total
4765	2012	it	6	ru	Total
4766	2012	lv	3	ru	Total
4767	2012	lt	6	ru	Total
4768	2012	mt	4	ru	Total
4769	2012	md	4	ru	Total
4770	2012	me	4	ru	Total
4771	2012	nl	8	ru	Total
4772	2012	mk	8	ru	Total
4773	2012	no	4	ru	Total
4774	2012	pt	10	ru	Total
4775	2012	ro	7	ru	Total
4776	2012	ru	3	ru	Total
4777	2012	sm	8	ru	Total
4778	2012	rs	8	ru	Total
4779	2012	sk	7	ru	Total
4780	2012	si	7	ru	Total
4781	2012	es	10	ru	Total
4782	2012	se	3	ru	Total
4783	2012	al	5	rs	Total
4784	2012	at	10	rs	Total
4785	2012	az	12	rs	Total
4786	2012	by	12	rs	Total
4787	2012	be	7	rs	Total
4788	2012	ba	2	rs	Total
4789	2012	bg	8	rs	Total
4790	2012	hr	10	rs	Total
4791	2012	cy	8	rs	Total
4792	2012	dk	4	rs	Total
4793	2012	ee	3	rs	Total
4794	2012	fi	6	rs	Total
4795	2012	fr	5	rs	Total
4796	2012	ge	5	rs	Total
4797	2012	de	3	rs	Total
4798	2012	gr	12	rs	Total
4799	2012	hu	10	rs	Total
4800	2012	is	10	rs	Total
4801	2012	ie	10	rs	Total
4802	2012	il	5	rs	Total
4803	2012	it	5	rs	Total
4804	2012	lv	4	rs	Total
4805	2012	lt	6	rs	Total
4806	2012	mt	7	rs	Total
4807	2012	md	12	rs	Total
4808	2012	me	10	rs	Total
4809	2012	nl	10	rs	Total
4810	2012	mk	2	rs	Total
4811	2012	al	7	az	Total
4812	2012	at	10	az	Total
4813	2012	az	8	az	Total
4814	2012	by	10	az	Total
4815	2012	be	5	az	Total
4816	2012	ba	1	az	Total
4817	2012	bg	8	az	Total
4818	2012	hr	12	az	Total
4819	2012	cy	12	az	Total
4820	2012	dk	10	az	Total
4821	2012	ee	5	az	Total
4822	2012	fi	2	az	Total
4823	2012	fr	10	az	Total
4824	2012	ge	4	az	Total
4825	2012	de	3	az	Total
4826	2012	gr	6	az	Total
4827	2012	hu	12	az	Total
4828	2012	is	12	az	Total
4829	2012	ie	2	az	Total
4830	2012	al	6	al	Total
4831	2012	at	4	al	Total
4832	2012	az	5	al	Total
4833	2012	by	4	al	Total
4834	2012	be	5	al	Total
4835	2012	ba	6	al	Total
4836	2012	bg	3	al	Total
4837	2012	hr	6	al	Total
4838	2012	cy	10	al	Total
4839	2012	dk	8	al	Total
4840	2012	ee	12	al	Total
4841	2012	fi	1	al	Total
4842	2012	fr	1	al	Total
4843	2012	ge	10	al	Total
4844	2012	de	12	al	Total
4845	2012	gr	1	al	Total
4846	2012	hu	12	al	Total
4847	2012	is	1	al	Total
4848	2012	ie	3	al	Total
4849	2012	il	1	al	Total
4850	2012	it	12	al	Total
4851	2012	lv	5	al	Total
4852	2012	al	10	ee	Total
4853	2012	at	4	ee	Total
4854	2012	az	10	ee	Total
4855	2012	by	8	ee	Total
4856	2012	be	8	ee	Total
4857	2012	ba	8	ee	Total
4858	2012	bg	2	ee	Total
4859	2012	hr	7	ee	Total
4860	2012	cy	7	ee	Total
4861	2012	dk	7	ee	Total
4862	2012	ee	6	ee	Total
4863	2012	fi	10	ee	Total
4864	2012	fr	6	ee	Total
4865	2012	ge	8	ee	Total
4866	2012	de	1	ee	Total
4867	2012	gr	4	ee	Total
4868	2012	al	12	tr	Total
4869	2012	at	7	tr	Total
4870	2012	az	4	tr	Total
4871	2012	by	7	tr	Total
4872	2012	be	2	tr	Total
4873	2012	ba	5	tr	Total
4874	2012	bg	7	tr	Total
4875	2012	hr	8	tr	Total
4876	2012	cy	3	tr	Total
4877	2012	dk	1	tr	Total
4878	2012	ee	1	tr	Total
4879	2012	fi	8	tr	Total
4880	2012	fr	8	tr	Total
4881	2012	ge	8	tr	Total
4882	2012	de	3	tr	Total
4883	2012	gr	5	tr	Total
4884	2012	hu	6	tr	Total
4885	2012	is	3	tr	Total
4886	2012	ie	1	tr	Total
4887	2012	al	4	de	Total
4888	2012	at	10	de	Total
4889	2012	az	10	de	Total
4890	2012	by	1	de	Total
4891	2012	be	7	de	Total
4892	2012	ba	2	de	Total
4893	2012	bg	10	de	Total
4894	2012	hr	10	de	Total
4895	2012	cy	8	de	Total
4896	2012	dk	7	de	Total
4897	2012	ee	3	de	Total
4898	2012	fi	2	de	Total
4899	2012	fr	2	de	Total
4900	2012	ge	3	de	Total
4901	2012	de	10	de	Total
4902	2012	gr	2	de	Total
4903	2012	hu	3	de	Total
4904	2012	is	4	de	Total
4905	2012	ie	6	de	Total
4906	2012	al	2	it	Total
4907	2012	at	3	it	Total
4908	2012	az	7	it	Total
4909	2012	by	1	it	Total
4910	2012	be	4	it	Total
4911	2012	ba	2	it	Total
4912	2012	bg	3	it	Total
4913	2012	hr	5	it	Total
4914	2012	cy	2	it	Total
4915	2012	dk	4	it	Total
4916	2012	ee	4	it	Total
4917	2012	fi	10	it	Total
4918	2012	fr	5	it	Total
4919	2012	ge	2	it	Total
4920	2012	de	5	it	Total
4921	2012	gr	4	it	Total
4922	2012	hu	2	it	Total
4923	2012	is	7	it	Total
4924	2012	ie	5	it	Total
4925	2012	il	5	it	Total
4926	2012	it	1	it	Total
4927	2012	lv	5	it	Total
4928	2012	lt	4	it	Total
4929	2012	al	5	es	Total
4930	2012	at	3	es	Total
4931	2012	az	6	es	Total
4932	2012	by	4	es	Total
4933	2012	be	3	es	Total
4934	2012	ba	6	es	Total
4935	2012	bg	1	es	Total
4936	2012	hr	2	es	Total
4937	2012	cy	10	es	Total
4938	2012	dk	6	es	Total
4939	2012	ee	12	es	Total
4940	2012	fi	6	es	Total
4941	2012	fr	1	es	Total
4942	2012	ge	4	es	Total
4943	2012	de	8	es	Total
4944	2012	gr	8	es	Total
4945	2012	al	1	md	Total
4946	2012	at	7	md	Total
4947	2012	az	2	md	Total
4948	2012	by	2	md	Total
4949	2012	be	5	md	Total
4950	2012	ba	4	md	Total
4951	2012	bg	3	md	Total
4952	2012	hr	6	md	Total
4953	2012	cy	12	md	Total
4954	2012	dk	7	md	Total
4955	2012	ee	8	md	Total
4956	2012	fi	1	md	Total
4957	2012	fr	7	md	Total
4958	2012	ge	2	md	Total
4959	2012	de	8	md	Total
4960	2012	al	3	ro	Total
4961	2012	at	1	ro	Total
4962	2012	az	2	ro	Total
4963	2012	by	7	ro	Total
4964	2012	be	5	ro	Total
4965	2012	ba	6	ro	Total
4966	2012	bg	7	ro	Total
4967	2012	hr	12	ro	Total
4968	2012	cy	4	ro	Total
4969	2012	dk	1	ro	Total
4970	2012	ee	10	ro	Total
4971	2012	fi	4	ro	Total
4972	2012	al	12	mk	Total
4973	2012	at	2	mk	Total
4974	2012	az	8	mk	Total
4975	2012	by	1	mk	Total
4976	2012	be	8	mk	Total
4977	2012	ba	12	mk	Total
4978	2012	bg	1	mk	Total
4979	2012	hr	6	mk	Total
4980	2012	cy	8	mk	Total
4981	2012	dk	3	mk	Total
4982	2012	al	5	lt	Total
4983	2012	at	3	lt	Total
4984	2012	az	3	lt	Total
4985	2012	by	12	lt	Total
4986	2012	be	7	lt	Total
4987	2012	ba	4	lt	Total
4988	2012	bg	4	lt	Total
4989	2012	hr	1	lt	Total
4990	2012	cy	1	lt	Total
4991	2012	dk	6	lt	Total
4992	2012	ee	5	lt	Total
4993	2012	fi	7	lt	Total
4994	2012	al	1	ua	Total
4995	2012	at	6	ua	Total
4996	2012	az	1	ua	Total
4997	2012	by	3	ua	Total
4998	2012	be	3	ua	Total
4999	2012	ba	6	ua	Total
5000	2012	bg	2	ua	Total
5001	2012	hr	7	ua	Total
5002	2012	cy	8	ua	Total
5003	2012	dk	3	ua	Total
5004	2012	ee	1	ua	Total
5005	2012	fi	1	ua	Total
5006	2012	fr	8	ua	Total
5007	2012	ge	2	ua	Total
5008	2012	al	12	cy	Total
5009	2012	at	8	cy	Total
5010	2012	az	3	cy	Total
5011	2012	by	5	cy	Total
5012	2012	be	2	cy	Total
5013	2012	ba	2	cy	Total
5014	2012	bg	8	cy	Total
5015	2012	hr	5	cy	Total
5016	2012	cy	12	cy	Total
5017	2012	al	2	gr	Total
5018	2012	at	1	gr	Total
5019	2012	az	1	gr	Total
5020	2012	by	12	gr	Total
5021	2012	be	1	gr	Total
5022	2012	ba	1	gr	Total
5023	2012	bg	2	gr	Total
5024	2012	hr	4	gr	Total
5025	2012	cy	8	gr	Total
5026	2012	dk	3	gr	Total
5027	2012	ee	4	gr	Total
5028	2012	fi	3	gr	Total
5029	2012	fr	5	gr	Total
5030	2012	al	6	ba	Total
5031	2012	at	7	ba	Total
5032	2012	az	5	ba	Total
5033	2012	by	2	ba	Total
5034	2012	be	7	ba	Total
5035	2012	ba	1	ba	Total
5036	2012	bg	10	ba	Total
5037	2012	al	4	ie	Total
5038	2012	at	3	ie	Total
5039	2012	az	4	ie	Total
5040	2012	by	4	ie	Total
5041	2012	be	4	ie	Total
5042	2012	ba	5	ie	Total
5043	2012	bg	5	ie	Total
5044	2012	hr	5	ie	Total
5045	2012	cy	10	ie	Total
5046	2012	al	6	is	Total
5047	2012	at	7	is	Total
5048	2012	az	3	is	Total
5049	2012	by	6	is	Total
5050	2012	be	5	is	Total
5051	2012	ba	4	is	Total
5052	2012	bg	4	is	Total
5053	2012	hr	4	is	Total
5054	2012	al	7	mt	Total
5055	2012	at	1	mt	Total
5056	2012	az	2	mt	Total
5057	2012	by	6	mt	Total
5058	2012	be	2	mt	Total
5059	2012	ba	7	mt	Total
5060	2012	bg	5	mt	Total
5061	2012	al	6	fr	Total
5062	2012	at	3	fr	Total
5063	2012	az	2	fr	Total
5064	2012	by	6	fr	Total
5065	2012	al	5	dk	Total
5066	2012	at	5	dk	Total
5067	2012	az	2	dk	Total
5068	2012	by	2	dk	Total
5069	2012	al	2	hu	Total
5070	2012	at	8	hu	Total
5071	2012	az	1	hu	Total
5072	2012	al	4	gb	Total
5073	2012	at	2	gb	Total
5074	2012	al	3	no	Total
5075	2014	al	12	at	Total
5076	2014	am	8	at	Total
5077	2014	at	4	at	Total
5078	2014	az	12	at	Total
5079	2014	by	10	at	Total
5080	2014	be	10	at	Total
5081	2014	dk	7	at	Total
5082	2014	ee	12	at	Total
5083	2014	fi	10	at	Total
5084	2014	fr	10	at	Total
5085	2014	ge	12	at	Total
5086	2014	de	12	at	Total
5087	2014	gr	12	at	Total
5088	2014	hu	6	at	Total
5089	2014	is	10	at	Total
5090	2014	ie	10	at	Total
5091	2014	il	7	at	Total
5092	2014	it	2	at	Total
5093	2014	lv	12	at	Total
5094	2014	lt	3	at	Total
5095	2014	mt	10	at	Total
5096	2014	md	12	at	Total
5097	2014	me	8	at	Total
5098	2014	nl	5	at	Total
5099	2014	mk	12	at	Total
5100	2014	no	12	at	Total
5101	2014	pl	12	at	Total
5102	2014	pt	12	at	Total
5103	2014	ro	8	at	Total
5104	2014	ru	12	at	Total
5105	2014	al	2	nl	Total
5106	2014	am	8	nl	Total
5107	2014	at	10	nl	Total
5108	2014	az	12	nl	Total
5109	2014	by	8	nl	Total
5110	2014	be	8	nl	Total
5111	2014	dk	12	nl	Total
5112	2014	ee	8	nl	Total
5113	2014	fi	12	nl	Total
5114	2014	fr	12	nl	Total
5115	2014	ge	10	nl	Total
5116	2014	de	4	nl	Total
5117	2014	gr	12	nl	Total
5118	2014	hu	12	nl	Total
5119	2014	is	7	nl	Total
5120	2014	ie	12	nl	Total
5121	2014	il	12	nl	Total
5122	2014	it	10	nl	Total
5123	2014	lv	3	nl	Total
5124	2014	lt	3	nl	Total
5125	2014	mt	2	nl	Total
5126	2014	md	10	nl	Total
5127	2014	me	7	nl	Total
5128	2014	nl	10	nl	Total
5129	2014	mk	10	nl	Total
5130	2014	no	8	nl	Total
5131	2014	al	10	se	Total
5132	2014	am	12	se	Total
5133	2014	at	10	se	Total
5134	2014	az	10	se	Total
5135	2014	by	4	se	Total
5136	2014	be	2	se	Total
5137	2014	dk	2	se	Total
5138	2014	ee	8	se	Total
5139	2014	fi	7	se	Total
5140	2014	fr	4	se	Total
5141	2014	ge	10	se	Total
5142	2014	de	8	se	Total
5143	2014	gr	7	se	Total
5144	2014	hu	7	se	Total
5145	2014	is	6	se	Total
5146	2014	ie	3	se	Total
5147	2014	il	8	se	Total
5148	2014	it	8	se	Total
5149	2014	lv	4	se	Total
5150	2014	lt	8	se	Total
5151	2014	mt	12	se	Total
5152	2014	md	2	se	Total
5153	2014	me	10	se	Total
5154	2014	nl	8	se	Total
5155	2014	mk	10	se	Total
5156	2014	no	6	se	Total
5157	2014	pl	12	se	Total
5158	2014	pt	7	se	Total
5159	2014	al	2	am	Total
5160	2014	am	5	am	Total
5161	2014	at	4	am	Total
5162	2014	az	12	am	Total
5163	2014	by	12	am	Total
5164	2014	be	6	am	Total
5165	2014	dk	7	am	Total
5166	2014	ee	7	am	Total
5167	2014	fi	2	am	Total
5168	2014	fr	6	am	Total
5169	2014	ge	10	am	Total
5170	2014	de	6	am	Total
5171	2014	gr	3	am	Total
5172	2014	hu	10	am	Total
5173	2014	is	7	am	Total
5174	2014	ie	8	am	Total
5175	2014	il	1	am	Total
5176	2014	it	4	am	Total
5177	2014	lv	7	am	Total
5178	2014	lt	8	am	Total
5179	2014	mt	6	am	Total
5180	2014	md	4	am	Total
5181	2014	me	5	am	Total
5182	2014	nl	10	am	Total
5183	2014	al	8	hu	Total
5184	2014	am	5	hu	Total
5185	2014	at	7	hu	Total
5186	2014	az	3	hu	Total
5187	2014	by	7	hu	Total
5188	2014	be	5	hu	Total
5189	2014	dk	6	hu	Total
5190	2014	ee	6	hu	Total
5191	2014	fi	1	hu	Total
5192	2014	fr	7	hu	Total
5193	2014	ge	1	hu	Total
5194	2014	de	4	hu	Total
5195	2014	gr	12	hu	Total
5196	2014	hu	4	hu	Total
5197	2014	is	10	hu	Total
5198	2014	ie	6	hu	Total
5199	2014	il	10	hu	Total
5200	2014	it	6	hu	Total
5201	2014	lv	7	hu	Total
5202	2014	lt	2	hu	Total
5203	2014	mt	7	hu	Total
5204	2014	md	1	hu	Total
5205	2014	me	3	hu	Total
5206	2014	al	8	ua	Total
5207	2014	am	4	ua	Total
5208	2014	at	1	ua	Total
5209	2014	az	8	ua	Total
5210	2014	by	2	ua	Total
5211	2014	be	6	ua	Total
5212	2014	dk	5	ua	Total
5213	2014	ee	2	ua	Total
5214	2014	fi	5	ua	Total
5215	2014	fr	10	ua	Total
5216	2014	ge	7	ua	Total
5217	2014	de	5	ua	Total
5218	2014	gr	10	ua	Total
5219	2014	hu	7	ua	Total
5220	2014	is	5	ua	Total
5221	2014	ie	7	ua	Total
5222	2014	il	6	ua	Total
5223	2014	al	12	ru	Total
5224	2014	am	1	ru	Total
5225	2014	at	8	ru	Total
5226	2014	az	10	ru	Total
5227	2014	by	3	ru	Total
5228	2014	be	2	ru	Total
5229	2014	dk	6	ru	Total
5230	2014	ee	5	ru	Total
5231	2014	fi	8	ru	Total
5232	2014	fr	6	ru	Total
5233	2014	ge	2	ru	Total
5234	2014	de	4	ru	Total
5235	2014	al	6	no	Total
5236	2014	am	3	no	Total
5237	2014	at	7	no	Total
5238	2014	az	2	no	Total
5239	2014	by	5	no	Total
5240	2014	be	3	no	Total
5241	2014	dk	1	no	Total
5242	2014	ee	7	no	Total
5243	2014	fi	5	no	Total
5244	2014	fr	8	no	Total
5245	2014	ge	2	no	Total
5246	2014	de	10	no	Total
5247	2014	gr	7	no	Total
5248	2014	hu	3	no	Total
5249	2014	is	1	no	Total
5250	2014	ie	5	no	Total
5251	2014	il	3	no	Total
5252	2014	it	5	no	Total
5253	2014	al	6	dk	Total
5254	2014	am	3	dk	Total
5255	2014	at	8	dk	Total
5256	2014	az	8	dk	Total
5257	2014	by	1	dk	Total
5258	2014	be	1	dk	Total
5259	2014	dk	1	dk	Total
5260	2014	ee	6	dk	Total
5261	2014	fi	5	dk	Total
5262	2014	fr	4	dk	Total
5263	2014	ge	1	dk	Total
5264	2014	de	6	dk	Total
5265	2014	gr	3	dk	Total
5266	2014	hu	8	dk	Total
5267	2014	is	3	dk	Total
5268	2014	ie	3	dk	Total
5269	2014	al	2	es	Total
5270	2014	am	2	es	Total
5271	2014	at	6	es	Total
5272	2014	az	1	es	Total
5273	2014	by	6	es	Total
5274	2014	be	4	es	Total
5275	2014	dk	4	es	Total
5276	2014	ee	4	es	Total
5277	2014	fi	5	es	Total
5278	2014	fr	2	es	Total
5279	2014	ge	5	es	Total
5280	2014	de	4	es	Total
5281	2014	gr	8	es	Total
5282	2014	hu	2	es	Total
5283	2014	is	5	es	Total
5284	2014	al	4	fi	Total
5285	2014	am	6	fi	Total
5286	2014	at	4	fi	Total
5287	2014	az	6	fi	Total
5288	2014	by	5	fi	Total
5289	2014	be	6	fi	Total
5290	2014	dk	3	fi	Total
5291	2014	ee	2	fi	Total
5292	2014	fi	7	fi	Total
5293	2014	fr	3	fi	Total
5294	2014	ge	3	fi	Total
5295	2014	de	6	fi	Total
5296	2014	gr	4	fi	Total
5297	2014	hu	6	fi	Total
5298	2014	al	1	ro	Total
5299	2014	am	5	ro	Total
5300	2014	at	2	ro	Total
5301	2014	az	8	ro	Total
5302	2014	by	5	ro	Total
5303	2014	be	8	ro	Total
5304	2014	dk	12	ro	Total
5305	2014	ee	4	ro	Total
5306	2014	fi	4	ro	Total
5307	2014	fr	1	ro	Total
5308	2014	ge	8	ro	Total
5309	2014	al	1	ch	Total
5310	2014	am	3	ch	Total
5311	2014	at	4	ch	Total
5312	2014	az	1	ch	Total
5313	2014	by	5	ch	Total
5314	2014	be	2	ch	Total
5315	2014	dk	2	ch	Total
5316	2014	ee	3	ch	Total
5317	2014	fi	5	ch	Total
5318	2014	fr	3	ch	Total
5319	2014	ge	10	ch	Total
5320	2014	de	7	ch	Total
5321	2014	gr	6	ch	Total
5322	2014	hu	3	ch	Total
5323	2014	is	1	ch	Total
5324	2014	al	5	pl	Total
5325	2014	am	10	pl	Total
5326	2014	at	1	pl	Total
5327	2014	az	3	pl	Total
5328	2014	by	3	pl	Total
5329	2014	be	8	pl	Total
5330	2014	dk	2	pl	Total
5331	2014	ee	4	pl	Total
5332	2014	fi	5	pl	Total
5333	2014	fr	2	pl	Total
5334	2014	ge	1	pl	Total
5335	2014	de	2	pl	Total
5336	2014	gr	7	pl	Total
5337	2014	al	7	is	Total
5338	2014	am	2	is	Total
5339	2014	at	5	is	Total
5340	2014	az	7	is	Total
5341	2014	by	6	is	Total
5342	2014	be	6	is	Total
5343	2014	dk	1	is	Total
5344	2014	ee	8	is	Total
5345	2014	fi	1	is	Total
5346	2014	fr	4	is	Total
5347	2014	ge	4	is	Total
5348	2014	al	1	by	Total
5349	2014	am	3	by	Total
5350	2014	at	5	by	Total
5351	2014	az	1	by	Total
5352	2014	by	12	by	Total
5353	2014	be	6	by	Total
5354	2014	al	3	gb	Total
5355	2014	am	4	gb	Total
5356	2014	at	8	gb	Total
5357	2014	az	4	gb	Total
5358	2014	by	3	gb	Total
5359	2014	be	5	gb	Total
5360	2014	dk	5	gb	Total
5361	2014	al	5	de	Total
5362	2014	am	8	de	Total
5363	2014	at	2	de	Total
5364	2014	az	2	de	Total
5365	2014	by	7	de	Total
5366	2014	be	5	de	Total
5367	2014	al	12	me	Total
5368	2014	am	7	me	Total
5369	2014	al	4	gr	Total
5370	2014	am	6	gr	Total
5371	2014	at	4	gr	Total
5372	2014	az	2	gr	Total
5373	2014	by	3	gr	Total
5374	2014	be	1	gr	Total
5375	2014	dk	4	gr	Total
5376	2014	ee	2	gr	Total
5377	2014	al	12	it	Total
5378	2014	am	6	it	Total
5379	2014	at	2	it	Total
5380	2014	az	2	it	Total
5381	2014	al	10	az	Total
5382	2014	am	12	az	Total
5383	2014	at	1	az	Total
5384	2014	al	3	mt	Total
5385	2014	am	3	mt	Total
5386	2014	at	1	mt	Total
5387	2014	az	5	mt	Total
5388	2014	by	4	mt	Total
5389	2014	be	10	mt	Total
5390	2014	al	3	sm	Total
5391	2014	am	4	sm	Total
5392	2014	at	1	sm	Total
5393	2013	al	5	dk	Total
5394	2013	am	5	dk	Total
5395	2013	at	1	dk	Total
5396	2013	az	10	dk	Total
5397	2013	by	2	dk	Total
5398	2013	be	10	dk	Total
5399	2013	bg	7	dk	Total
5400	2013	hr	8	dk	Total
5401	2013	cy	7	dk	Total
5402	2013	dk	12	dk	Total
5403	2013	ee	7	dk	Total
5404	2013	fi	10	dk	Total
5405	2013	fr	7	dk	Total
5406	2013	ge	10	dk	Total
5407	2013	de	12	dk	Total
5408	2013	gr	12	dk	Total
5409	2013	hu	8	dk	Total
5410	2013	is	12	dk	Total
5411	2013	ie	6	dk	Total
5412	2013	il	2	dk	Total
5413	2013	it	6	dk	Total
5414	2013	lv	6	dk	Total
5415	2013	lt	10	dk	Total
5416	2013	mt	10	dk	Total
5417	2013	md	12	dk	Total
5418	2013	me	7	dk	Total
5419	2013	nl	6	dk	Total
5420	2013	mk	4	dk	Total
5421	2013	no	12	dk	Total
5422	2013	ro	12	dk	Total
5423	2013	ru	8	dk	Total
5424	2013	sm	10	dk	Total
5425	2013	rs	3	dk	Total
5426	2013	si	5	dk	Total
5427	2013	es	12	dk	Total
5428	2013	al	10	az	Total
5429	2013	am	5	az	Total
5430	2013	at	12	az	Total
5431	2013	az	7	az	Total
5432	2013	by	8	az	Total
5433	2013	be	8	az	Total
5434	2013	bg	12	az	Total
5435	2013	hr	4	az	Total
5436	2013	cy	12	az	Total
5437	2013	dk	12	az	Total
5438	2013	ee	7	az	Total
5439	2013	fi	2	az	Total
5440	2013	fr	12	az	Total
5441	2013	ge	3	az	Total
5442	2013	de	12	az	Total
5443	2013	gr	12	az	Total
5444	2013	hu	8	az	Total
5445	2013	is	12	az	Total
5446	2013	ie	2	az	Total
5447	2013	il	10	az	Total
5448	2013	it	12	az	Total
5449	2013	lv	2	az	Total
5450	2013	lt	5	az	Total
5451	2013	mt	3	az	Total
5452	2013	md	7	az	Total
5453	2013	me	6	az	Total
5454	2013	nl	10	az	Total
5455	2013	al	12	ua	Total
5456	2013	am	12	ua	Total
5457	2013	at	8	ua	Total
5458	2013	az	10	ua	Total
5459	2013	by	12	ua	Total
5460	2013	be	10	ua	Total
5461	2013	bg	3	ua	Total
5462	2013	hr	10	ua	Total
5463	2013	cy	8	ua	Total
5464	2013	dk	8	ua	Total
5465	2013	ee	7	ua	Total
5466	2013	fi	3	ua	Total
5467	2013	fr	8	ua	Total
5468	2013	ge	10	ua	Total
5469	2013	de	5	ua	Total
5470	2013	gr	7	ua	Total
5471	2013	hu	10	ua	Total
5472	2013	is	10	ua	Total
5473	2013	ie	12	ua	Total
5474	2013	il	5	ua	Total
5475	2013	it	1	ua	Total
5476	2013	lv	4	ua	Total
5477	2013	lt	1	ua	Total
5478	2013	mt	10	ua	Total
5479	2013	md	10	ua	Total
5480	2013	me	5	ua	Total
5481	2013	al	2	no	Total
5482	2013	am	3	no	Total
5483	2013	at	7	no	Total
5484	2013	az	1	no	Total
5485	2013	by	3	no	Total
5486	2013	be	4	no	Total
5487	2013	bg	12	no	Total
5488	2013	hr	3	no	Total
5489	2013	cy	12	no	Total
5490	2013	dk	4	no	Total
5491	2013	ee	7	no	Total
5492	2013	fi	4	no	Total
5493	2013	fr	2	no	Total
5494	2013	ge	10	no	Total
5495	2013	de	6	no	Total
5496	2013	gr	8	no	Total
5497	2013	hu	8	no	Total
5498	2013	is	6	no	Total
5499	2013	ie	3	no	Total
5500	2013	il	2	no	Total
5501	2013	it	4	no	Total
5502	2013	lv	6	no	Total
5503	2013	lt	8	no	Total
5504	2013	mt	8	no	Total
5505	2013	md	7	no	Total
5506	2013	me	7	no	Total
5507	2013	nl	7	no	Total
5508	2013	mk	5	no	Total
5509	2013	no	5	no	Total
5510	2013	ro	12	no	Total
5511	2013	ru	7	no	Total
5512	2013	sm	3	no	Total
5513	2013	al	4	ru	Total
5514	2013	am	5	ru	Total
5515	2013	at	6	ru	Total
5516	2013	az	5	ru	Total
5517	2013	by	7	ru	Total
5518	2013	be	12	ru	Total
5519	2013	bg	2	ru	Total
5520	2013	hr	6	ru	Total
5521	2013	cy	6	ru	Total
5522	2013	dk	2	ru	Total
5523	2013	ee	1	ru	Total
5524	2013	fi	10	ru	Total
5525	2013	fr	7	ru	Total
5526	2013	ge	12	ru	Total
5527	2013	de	7	ru	Total
5528	2013	gr	7	ru	Total
5529	2013	hu	7	ru	Total
5530	2013	is	4	ru	Total
5531	2013	ie	6	ru	Total
5532	2013	il	8	ru	Total
5533	2013	it	10	ru	Total
5534	2013	lv	6	ru	Total
5535	2013	lt	5	ru	Total
5536	2013	mt	4	ru	Total
5537	2013	md	10	ru	Total
5538	2013	al	7	gr	Total
5539	2013	am	4	gr	Total
5540	2013	at	6	gr	Total
5541	2013	az	2	gr	Total
5542	2013	by	7	gr	Total
5543	2013	be	5	gr	Total
5544	2013	bg	12	gr	Total
5545	2013	hr	6	gr	Total
5546	2013	cy	1	gr	Total
5547	2013	dk	6	gr	Total
5548	2013	ee	1	gr	Total
5549	2013	fi	2	gr	Total
5550	2013	fr	7	gr	Total
5551	2013	ge	1	gr	Total
5552	2013	de	4	gr	Total
5553	2013	gr	8	gr	Total
5554	2013	hu	1	gr	Total
5555	2013	is	4	gr	Total
5556	2013	ie	5	gr	Total
5557	2013	il	7	gr	Total
5558	2013	it	10	gr	Total
5559	2013	lv	12	gr	Total
5560	2013	lt	8	gr	Total
5561	2013	mt	8	gr	Total
5562	2013	al	10	it	Total
5563	2013	am	6	it	Total
5564	2013	at	8	it	Total
5565	2013	az	6	it	Total
5566	2013	by	10	it	Total
5567	2013	be	2	it	Total
5568	2013	bg	6	it	Total
5569	2013	hr	8	it	Total
5570	2013	cy	6	it	Total
5571	2013	dk	10	it	Total
5572	2013	ee	1	it	Total
5573	2013	fi	4	it	Total
5574	2013	fr	4	it	Total
5575	2013	ge	8	it	Total
5576	2013	de	12	it	Total
5577	2013	gr	12	it	Total
5578	2013	al	7	mt	Total
5579	2013	am	3	mt	Total
5580	2013	at	4	mt	Total
5581	2013	az	5	mt	Total
5582	2013	by	2	mt	Total
5583	2013	be	3	mt	Total
5584	2013	bg	5	mt	Total
5585	2013	hr	3	mt	Total
5586	2013	cy	8	mt	Total
5587	2013	dk	5	mt	Total
5588	2013	ee	10	mt	Total
5589	2013	fi	5	mt	Total
5590	2013	fr	8	mt	Total
5591	2013	ge	3	mt	Total
5592	2013	de	10	mt	Total
5593	2013	gr	5	mt	Total
5594	2013	hu	10	mt	Total
5595	2013	is	1	mt	Total
5596	2013	ie	2	mt	Total
5597	2013	il	7	mt	Total
5598	2013	al	12	nl	Total
5599	2013	am	2	nl	Total
5600	2013	at	10	nl	Total
5601	2013	az	7	nl	Total
5602	2013	by	8	nl	Total
5603	2013	be	5	nl	Total
5604	2013	bg	8	nl	Total
5605	2013	hr	6	nl	Total
5606	2013	cy	4	nl	Total
5607	2013	dk	2	nl	Total
5608	2013	ee	8	nl	Total
5609	2013	fi	2	nl	Total
5610	2013	fr	3	nl	Total
5611	2013	ge	7	nl	Total
5612	2013	de	8	nl	Total
5613	2013	gr	4	nl	Total
5614	2013	hu	6	nl	Total
5615	2013	al	4	hu	Total
5616	2013	am	4	hu	Total
5617	2013	at	10	hu	Total
5618	2013	az	12	hu	Total
5619	2013	by	2	hu	Total
5620	2013	be	3	hu	Total
5621	2013	bg	5	hu	Total
5622	2013	hr	7	hu	Total
5623	2013	cy	2	hu	Total
5624	2013	dk	6	hu	Total
5625	2013	ee	2	hu	Total
5626	2013	fi	3	hu	Total
5627	2013	fr	10	hu	Total
5628	2013	al	4	md	Total
5629	2013	am	3	md	Total
5630	2013	at	3	md	Total
5631	2013	az	4	md	Total
5632	2013	by	3	md	Total
5633	2013	be	1	md	Total
5634	2013	bg	4	md	Total
5635	2013	hr	5	md	Total
5636	2013	cy	7	md	Total
5637	2013	dk	12	md	Total
5638	2013	ee	6	md	Total
5639	2013	fi	6	md	Total
5640	2013	fr	2	md	Total
5641	2013	ge	8	md	Total
5642	2013	al	2	be	Total
5643	2013	am	3	be	Total
5644	2013	at	5	be	Total
5645	2013	az	4	be	Total
5646	2013	by	4	be	Total
5647	2013	be	2	be	Total
5648	2013	bg	12	be	Total
5649	2013	hr	3	be	Total
5650	2013	cy	8	be	Total
5651	2013	dk	5	be	Total
5652	2013	ee	3	be	Total
5653	2013	fi	2	be	Total
5654	2013	fr	7	be	Total
5655	2013	ge	3	be	Total
5656	2013	al	6	ro	Total
5657	2013	am	1	ro	Total
5658	2013	at	10	ro	Total
5659	2013	az	6	ro	Total
5660	2013	by	1	ro	Total
5661	2013	be	7	ro	Total
5662	2013	bg	10	ro	Total
5663	2013	hr	1	ro	Total
5664	2013	cy	6	ro	Total
5665	2013	dk	4	ro	Total
5666	2013	ee	4	ro	Total
5667	2013	al	1	se	Total
5668	2013	am	8	se	Total
5669	2013	at	1	se	Total
5670	2013	az	4	se	Total
5671	2013	by	3	se	Total
5672	2013	be	4	se	Total
5673	2013	bg	5	se	Total
5674	2013	hr	4	se	Total
5675	2013	cy	5	se	Total
5676	2013	dk	3	se	Total
5677	2013	ee	12	se	Total
5678	2013	fi	1	se	Total
5679	2013	fr	6	se	Total
5680	2013	al	5	ge	Total
5681	2013	am	8	ge	Total
5682	2013	at	3	ge	Total
5683	2013	az	2	ge	Total
5684	2013	by	5	ge	Total
5685	2013	be	7	ge	Total
5686	2013	al	5	by	Total
5687	2013	am	1	by	Total
5688	2013	at	3	by	Total
5689	2013	az	1	by	Total
5690	2013	by	2	by	Total
5691	2013	be	4	by	Total
5692	2013	bg	3	by	Total
5693	2013	hr	5	by	Total
5694	2013	cy	12	by	Total
5695	2013	al	5	is	Total
5696	2013	am	8	is	Total
5697	2013	at	6	is	Total
5698	2013	az	4	is	Total
5699	2013	by	4	is	Total
5700	2013	be	6	is	Total
5701	2013	bg	5	is	Total
5702	2013	hr	2	is	Total
5703	2013	al	7	am	Total
5704	2013	am	10	am	Total
5705	2013	at	3	am	Total
5706	2013	az	1	am	Total
5707	2013	by	1	am	Total
5708	2013	be	2	am	Total
5709	2013	bg	1	am	Total
5710	2013	hr	6	am	Total
5711	2013	al	3	gb	Total
5712	2013	am	1	gb	Total
5713	2013	at	4	gb	Total
5714	2013	az	1	gb	Total
5715	2013	by	2	gb	Total
5716	2013	al	3	ee	Total
5717	2013	al	5	de	Total
5718	2013	am	3	de	Total
5719	2013	at	1	de	Total
5720	2013	al	1	lt	Total
5721	2013	am	1	lt	Total
5722	2013	at	6	lt	Total
5723	2013	az	1	lt	Total
5724	2013	al	2	fr	Total
5725	2013	am	1	fr	Total
5726	2013	at	8	fr	Total
5727	2013	al	1	fi	Total
5728	2013	am	4	fi	Total
5729	2013	at	3	fi	Total
5730	2013	al	1	ie	Total
\.


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_code);


--
-- Name: performances performances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performances
    ADD CONSTRAINT performances_pkey PRIMARY KEY (song_id);


--
-- Name: artists pk_artists; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT pk_artists PRIMARY KEY (artist_id);


--
-- Name: songartists pk_songartists; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songartists
    ADD CONSTRAINT pk_songartists PRIMARY KEY (song_id, artist_id);


--
-- Name: songs pk_songs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT pk_songs PRIMARY KEY (song_id);


--
-- Name: votes pk_votes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votes
    ADD CONSTRAINT pk_votes PRIMARY KEY (vote_id);


--
-- Name: songartists fk_songartists_artist; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songartists
    ADD CONSTRAINT fk_songartists_artist FOREIGN KEY (artist_id) REFERENCES public.artists(artist_id);


--
-- Name: songartists fk_songartists_song; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songartists
    ADD CONSTRAINT fk_songartists_song FOREIGN KEY (song_id) REFERENCES public.songs(song_id);


--
-- Name: votes fk_votes_column; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votes
    ADD CONSTRAINT fk_votes_column FOREIGN KEY (country_code_column) REFERENCES public.countries(country_code);


--
-- Name: votes fk_votes_row; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votes
    ADD CONSTRAINT fk_votes_row FOREIGN KEY (country_code_row) REFERENCES public.countries(country_code);


--
-- Name: performances performances_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.performances
    ADD CONSTRAINT performances_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.songs(song_id);


--
-- PostgreSQL database dump complete
--

