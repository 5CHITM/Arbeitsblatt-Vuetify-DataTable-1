--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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

CREATE DATABASE movies;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    born date,
    image text,
    name text NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: actors_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors_images (
    id integer NOT NULL,
    image text NOT NULL
);


ALTER TABLE public.actors_images OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    title text,
    year text,
    director text,
    rated text,
    runtime text,
    main_genre text,
    plot text,
    awards text
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_actors (
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);


ALTER TABLE public.movies_actors OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: movies_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_images (
    id integer NOT NULL,
    image text NOT NULL
);


ALTER TABLE public.movies_images OWNER TO postgres;

--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, born, image, name) FROM stdin;
15	1986-12-26	Kit Harington.jpg	Kit Harington
16	1969-06-11	Peter Dinklage.jpg	Peter Dinklage
17	1979-07-15	Travis-Fimmel.jpg	Travis Fimmel
18	1977-12-17	Katheryn-Winnick-In-Vikings.jpg	Katheryn Winnick
14	1969-11-04	matthew-mcconaughey.jpg	Matthew McConaughey
13	1932-12-07	Ellen Burstyn.jpg	Ellen Burstyn
12	1983-12-20	Jonah Hill.jpg	Jonah Hill
10	1983-08-11	Chris Hemsworth.jpg	Chris Hemsworth
11	1974-11-11	leonardo-dicaprio.jpg	Leonardo DiCaprio
7	1965-04-04	Robert Downey Jr.jpg	Robert Downey Jr
9	1967-11-22	Mark Ruffalo.jpg	Mark Ruffalo
8	1981-06-13	Chris Evans.jpg	Chris Evans
6	1973-10-03	Lena_Headey_Profil.jpg	Lena Headey
4	1983-04-15	Alice Braga.jpg	Alice Braga
5	1969-11-13	Gerard Butler.jpg	Gerard Butler
3	1968-09-25	Will Smith.jpg	Will Smith
2	1978-06-19	Zoe Saldana.jpg	Zoe Saldana
1	1978-08-02	Sam Worthington.jpg	Sam Worthington
\.


--
-- Data for Name: actors_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors_images (id, image) FROM stdin;
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, title, year, director, rated, runtime, main_genre, plot, awards) FROM stdin;
1	Avatar	2009	James Cameron	PG-13	162	Fantasy	A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.	Won 3 Oscars. Another 80 wins & 121 nominations.
2	I Am Legend	2007	Francis Lawrence	PG-13	101	Drama	Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.	9 wins & 21 nominations.
3	300	2007	Zack Snyder	R	117	Action	King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.	16 wins & 42 nominations.
4	The Avengers	2012	Joss Whedon	PG-13	143	Action	Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.	Nominated for 1 Oscar. Another 34 wins & 75 nominations.
5	The Wolf of Wall Street	2013	Martin Scorsese	R	180	Biography	Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.	Nominated for 5 Oscars. Another 35 wins & 154 nominations.
6	Interstellar	2014	Christopher Nolan	PG-13	169	Sci-Fi	A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.	Won 1 Oscar. Another 39 wins & 134 nominations.
7	Game of Thrones	2011-2019	various	TV-MA	56	Fantasy	While a civil war brews between several noble families in Westeros, the children of the former rulers of the land attempt to rise up to power. Meanwhile a forgotten race, bent on destruction, plans to return after thousands of years in the North.	Won 1 Golden Globe. Another 185 wins & 334 nominations.
8	Vikings	2013-2020	various	TV-14	44	Action	The world of the Vikings is brought to life through the journey of Ragnar Lothbrok, the first Viking to emerge from Norse legend and onto the pages of history - a man on the edge of myth.	Nominated for 7 Primetime Emmys. Another 17 wins & 49 nominations.
\.


--
-- Data for Name: movies_actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_actors (movie_id, actor_id) FROM stdin;
1	1
1	2
2	3
2	4
3	5
3	6
4	7
4	8
4	9
4	10
5	11
5	12
6	13
6	14
7	6
7	15
7	16
\.


--
-- Data for Name: movies_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_images (id, image) FROM stdin;
1	avatar.jpg
2	legend.jpg
3	300.jpg
4	avengers.jpg
5	The Wolf of Wall Street.jpg
6	Interstellar.jpg
7	GOT.jpg
8	vikings.jpg
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 18, true);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 8, true);


--
-- Name: actors_images actors_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors_images
    ADD CONSTRAINT actors_images_pkey PRIMARY KEY (id, image);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: movies_actors movies_actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT movies_actors_pkey PRIMARY KEY (movie_id, actor_id);


--
-- Name: movies_images movies_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_images
    ADD CONSTRAINT movies_images_pkey PRIMARY KEY (id, image);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: actors_images actors_images_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors_images
    ADD CONSTRAINT actors_images_id_fkey FOREIGN KEY (id) REFERENCES public.actors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: movies_actors movies_actors_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT movies_actors_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: movies_actors movies_actors_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_actors
    ADD CONSTRAINT movies_actors_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: movies_images movies_images_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_images
    ADD CONSTRAINT movies_images_id_fkey FOREIGN KEY (id) REFERENCES public.movies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

CREATE USER app99 PASSWORD '1234';