--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fill; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fill (
    fill_id integer NOT NULL,
    fill_value integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.fill OWNER TO freecodecamp;

--
-- Name: fill_fill_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fill_fill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fill_fill_id_seq OWNER TO freecodecamp;

--
-- Name: fill_fill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fill_fill_id_seq OWNED BY public.fill.fill_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    year integer,
    description text,
    distance_km bigint
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    year integer,
    diameter_km numeric,
    has_life boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    year integer,
    diameter_km numeric,
    has_life boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    year integer,
    has_life boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fill fill_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill ALTER COLUMN fill_id SET DEFAULT nextval('public.fill_fill_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fill; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fill VALUES (1, 1, 'A');
INSERT INTO public.fill VALUES (2, 5, 'B');
INSERT INTO public.fill VALUES (3, 7, 'C');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 2010, 'The galaxy that contains our solar system, known for its spiral shape.', 2537000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2011, 'The nearest spiral galaxy to the Milky Way and on a collision course with it.', 0);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2012, 'A spiral galaxy located in the Triangulum constellation, notable for its bright star clusters.', 2832000000000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 2013, 'A spiral galaxy known for its distinctive sombrero-like shape and bright bulge.', 25000000000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 2014, 'A classic spiral galaxy famous for its prominent spiral arms and interacting with a smaller galaxy.', 23000000000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 2015, 'A grand design spiral galaxy that exhibits well-defined spiral arms.', 21000000000000);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 2016, 'A giant elliptical galaxy known for its active supermassive black hole at its center.', 13000000000000);
INSERT INTO public.galaxy VALUES (8, 'Messier 87', 2017, 'An enormous elliptical galaxy located in the Virgo cluster, home to a supermassive black hole.', 55000000000000);
INSERT INTO public.galaxy VALUES (9, 'Cartwheel', 2018, 'A unique ring galaxy that formed from a collision with a smaller galaxy.', 50000000000000);
INSERT INTO public.galaxy VALUES (10, 'NGC 253', 2019, 'A large spiral galaxy in the Sculptor constellation, often referred to as the Sculptor Galaxy.', 11000000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 3474, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 22.4, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 12.4, false, 2);
INSERT INTO public.moon VALUES (4, 'Titan', 1655, 5149, false, 6);
INSERT INTO public.moon VALUES (5, 'Enceladus', 1789, 504, false, 6);
INSERT INTO public.moon VALUES (6, 'Io', 1610, 3643, false, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 1610, 5262, false, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 1610, 4820, false, 5);
INSERT INTO public.moon VALUES (9, 'Triton', 1846, 2706, false, 7);
INSERT INTO public.moon VALUES (10, 'Rhea', 1672, 1527, false, 6);
INSERT INTO public.moon VALUES (11, 'Proxima b1', 2100, 5000, false, 4);
INSERT INTO public.moon VALUES (12, 'Kepler-186f1', 2200, 4500, false, 5);
INSERT INTO public.moon VALUES (13, 'HD 40307g1', 2300, 4800, false, 6);
INSERT INTO public.moon VALUES (14, 'LHS 1140 b1', 2400, 4600, false, 7);
INSERT INTO public.moon VALUES (15, 'WASP-17b1', 2500, 4900, false, 8);
INSERT INTO public.moon VALUES (16, 'Tau Ceti e1', 2600, 4700, false, 9);
INSERT INTO public.moon VALUES (17, 'Gliese 581g1', 2700, 5000, false, 10);
INSERT INTO public.moon VALUES (18, 'TRAPPIST-1d1', 2800, 5200, false, 11);
INSERT INTO public.moon VALUES (19, 'HD 209458 b1', 2900, 5400, false, 12);
INSERT INTO public.moon VALUES (20, 'Europa', 1610, 3121, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 2024, 12742, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2024, 6779, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 2024, 12104, false, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 2025, 11200, true, 3);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 2026, 11800, true, 2);
INSERT INTO public.planet VALUES (6, 'HD 40307g', 2024, 12200, false, 4);
INSERT INTO public.planet VALUES (7, 'LHS 1140 b', 2025, 9900, true, 5);
INSERT INTO public.planet VALUES (8, 'WASP-17b', 2023, 200000, false, 3);
INSERT INTO public.planet VALUES (9, 'Tau Ceti e', 2024, 8000, true, 1);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 2024, 10900, true, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 2027, 11500, false, 3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 2025, 140000, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 2010, false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri B', 2010, false, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 2016, true, 1);
INSERT INTO public.star VALUES (4, 'Sirius A', 2000, false, 2);
INSERT INTO public.star VALUES (5, 'Sirius B', 2000, false, 2);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1980, false, 3);
INSERT INTO public.star VALUES (7, 'Rigel', 1995, true, 3);
INSERT INTO public.star VALUES (8, 'Aldebaran', 1985, false, 4);
INSERT INTO public.star VALUES (9, 'Pollux', 2005, true, 4);
INSERT INTO public.star VALUES (10, 'Vega', 2015, true, 5);


--
-- Name: fill_fill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fill_fill_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: fill fill_fill_value_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill
    ADD CONSTRAINT fill_fill_value_key UNIQUE (fill_value);


--
-- Name: fill fill_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill
    ADD CONSTRAINT fill_pkey PRIMARY KEY (fill_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: fill unique_value; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fill
    ADD CONSTRAINT unique_value UNIQUE (fill_value);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

