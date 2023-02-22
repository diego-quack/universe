--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_types integer NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    galaxy_type character varying(255)
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
    name character varying(100) NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    moon_types integer NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL,
    moon_alias character varying(55)
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: orbit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.orbit (
    orbit_id integer NOT NULL,
    name character varying(255) NOT NULL,
    orbit_description character varying(255),
    orbit_time integer
);


ALTER TABLE public.orbit OWNER TO freecodecamp;

--
-- Name: orbit_orbit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.orbit_orbit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orbit_orbit_id_seq OWNER TO freecodecamp;

--
-- Name: orbit_orbit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.orbit_orbit_id_seq OWNED BY public.orbit.orbit_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_types integer NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL,
    planet_alias character varying(30)
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth numeric(5,2),
    description text,
    star_type integer NOT NULL,
    galaxy_id integer NOT NULL,
    life_time integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: orbit orbit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit ALTER COLUMN orbit_id SET DEFAULT nextval('public.orbit_orbit_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Láctea', 1, 0.00, 'The milky way', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 2.50, 'Also knowm as Messier 31', NULL);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 3, 600.00, 'One of the strongest radio sources', NULL);
INSERT INTO public.galaxy VALUES (4, 'Canis Major', 2, 4.89, 'Located in the same part of sky as the constellation of Canis Major', NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 1, 158.00, 'Visible to unaided eye in the Southern Hemisphere', NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', 1, 53.40, 'A large cluster of galaxies', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 384.00, 'Our satelite', 1, true, 3, NULL);
INSERT INTO public.moon VALUES (34, 'Jupiter Moon A', 100.00, '', 1, true, 7, NULL);
INSERT INTO public.moon VALUES (35, 'Jupiter Moon B', 200.00, '', 2, true, 7, NULL);
INSERT INTO public.moon VALUES (36, 'Jupiter Moon C', 300.00, '', 3, true, 7, NULL);
INSERT INTO public.moon VALUES (37, 'Jupiter Moon D', 400.00, '', 1, true, 7, NULL);
INSERT INTO public.moon VALUES (38, 'Jupiter Moon E', 500.00, '', 2, true, 7, NULL);
INSERT INTO public.moon VALUES (39, 'Saturno Moon A', 100.00, '', 1, true, 8, NULL);
INSERT INTO public.moon VALUES (40, 'Saturno Moon B', 200.00, '', 2, true, 8, NULL);
INSERT INTO public.moon VALUES (41, 'Netuno Moon', 500.00, '', 2, true, 10, NULL);
INSERT INTO public.moon VALUES (42, 'Urano Moon', 400.00, '', 3, true, 9, NULL);
INSERT INTO public.moon VALUES (43, 'Saturno Moon C', 300.00, '', 1, true, 8, NULL);
INSERT INTO public.moon VALUES (44, 'Saturno Moon D', 400.00, '', 2, true, 8, NULL);
INSERT INTO public.moon VALUES (45, 'Saturno Moon E', 500.00, '', 3, true, 8, NULL);
INSERT INTO public.moon VALUES (46, 'Saturno Moon F', 600.00, '', 1, true, 8, NULL);
INSERT INTO public.moon VALUES (47, 'Saturno Moon G', 700.00, '', 2, true, 8, NULL);
INSERT INTO public.moon VALUES (48, 'Saturno Moon H', 800.00, '', 3, true, 8, NULL);
INSERT INTO public.moon VALUES (49, 'Jupiter Moon F', 600.00, '', 1, true, 8, NULL);
INSERT INTO public.moon VALUES (50, 'Jupiter Moon G', 700.00, '', 2, true, 7, NULL);
INSERT INTO public.moon VALUES (51, 'Jupiter Moon H', 800.00, '', 3, true, 7, NULL);
INSERT INTO public.moon VALUES (52, 'Jupiter Moon I', 900.00, '', 1, true, 7, NULL);


--
-- Data for Name: orbit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.orbit VALUES (1, 'Terra x Lua', '', NULL);
INSERT INTO public.orbit VALUES (2, 'Saturno x Lua A', '', NULL);
INSERT INTO public.orbit VALUES (3, 'Jupiter x Lua A', '', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Terra', 1, 0.00, 'Our Home', true, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mercurio', 1, 77.30, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', 2, 40.20, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Mars', 1, 54.00, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Jupiter', 2, 965.60, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Saturno', 3, 1.19, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Urano', 3, 2.08, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Netuno', 3, 4.00, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Plutao', 2, 5.00, '', true, false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Andromeda Planet A', 1, 100.00, '', true, false, 2, NULL);
INSERT INTO public.planet VALUES (13, 'Andromeda Planet B', 2, 200.00, '', true, false, 2, NULL);
INSERT INTO public.planet VALUES (14, 'Andromeda Planet C', 3, 300.00, '', true, false, 2, NULL);
INSERT INTO public.planet VALUES (15, 'Cygnus A Planet A', 1, 100.00, '', true, false, 3, NULL);
INSERT INTO public.planet VALUES (16, 'Cygnus A Planet B', 2, 200.00, '', true, false, 3, NULL);
INSERT INTO public.planet VALUES (17, 'Cygnus A Planet C', 3, 300.00, '', true, false, 3, NULL);
INSERT INTO public.planet VALUES (18, 'Canis Major Planet A', 1, 100.00, '', true, false, 4, NULL);
INSERT INTO public.planet VALUES (19, 'Canis Major Planet B', 2, 200.00, '', true, false, 4, NULL);
INSERT INTO public.planet VALUES (20, 'Canis Major Planet C', 3, 300.00, '', true, false, 4, NULL);
INSERT INTO public.planet VALUES (21, 'Megallanic Clouds Planet A', 1, 100.00, '', true, false, 5, NULL);
INSERT INTO public.planet VALUES (22, 'Megallanic Clouds Planet B', 2, 200.00, '', true, false, 5, NULL);
INSERT INTO public.planet VALUES (23, 'Megallanic Clouds Planet C', 3, 300.00, '', true, false, 5, NULL);
INSERT INTO public.planet VALUES (24, 'Virgo A Planet A', 1, 100.00, '', true, false, 6, NULL);
INSERT INTO public.planet VALUES (25, 'Virgo A Planet B', 2, 200.00, '', true, false, 6, NULL);
INSERT INTO public.planet VALUES (26, 'Virgo A Planet C', 3, 300.00, '', true, false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 93.00, 'The center of our galaxy', 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'Andromeda Star', 100.00, 'From Andromeda', 1, 2, NULL);
INSERT INTO public.star VALUES (3, 'Cygnus A Star', 150.00, 'From Cygnus A', 2, 3, NULL);
INSERT INTO public.star VALUES (4, 'Canis Major Star', 300.00, 'From Canis Major', 3, 4, NULL);
INSERT INTO public.star VALUES (5, 'Megallanic Clouds', 450.00, 'From Megallanic Clouds', 2, 5, NULL);
INSERT INTO public.star VALUES (6, 'Virgo A Star', 200.00, 'From Virgo A', 2, 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: orbit_orbit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.orbit_orbit_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 2, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_alias_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_alias_key UNIQUE (moon_alias);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: orbit orbit_orbit_time_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit
    ADD CONSTRAINT orbit_orbit_time_key UNIQUE (orbit_time);


--
-- Name: orbit orbit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.orbit
    ADD CONSTRAINT orbit_pkey PRIMARY KEY (orbit_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_alias_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_alias_key UNIQUE (planet_alias);


--
-- Name: star star_life_time_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_life_time_key UNIQUE (life_time);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

