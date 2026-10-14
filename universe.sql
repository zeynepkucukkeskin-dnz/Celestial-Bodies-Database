--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
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
    name character varying(50) NOT NULL,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(50) NOT NULL,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric NOT NULL,
    launch_year integer,
    description text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 1000000, 13600.5, 'Our home galaxy', true, false);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 1000000, 10000.5, 'Nearest major spiral galaxy', false, false);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 400000, 12000.5, 'Third-largest member of the LGoG', false, false);
INSERT INTO public.galaxy VALUES ('Sombrero', 4, 800000, 1560.5, 'Galaxy with a bright nucleus and a large dust lane', false, false);
INSERT INTO public.galaxy VALUES ('Whirlpool', 5, 300000, 460.5, 'Classic interacting grand_design spiral galaxy', false, false);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 6, 30000, 11000.2, 'Satellite galaxy of the Milk Way', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 0, 4500.0, 'Earths only natural satellite', false, true, 1);
INSERT INTO public.moon VALUES (22, 'Io', 0, 4500.0, 'Volcanically active moon of Jupiter', false, true, 5);
INSERT INTO public.moon VALUES (23, 'Europa', 0, 4500.0, 'Icy moon of Jupiter with a subsurface ocean', false, true, 5);
INSERT INTO public.moon VALUES (24, 'Ganymede', 0, 4500.0, 'Largest moon in the solar system', false, true, 5);
INSERT INTO public.moon VALUES (25, 'Callisto', 0, 4500.0, 'Heavily cratered moon of Jupiter', false, true, 5);
INSERT INTO public.moon VALUES (26, 'Titan', 0, 4500.0, 'Largest moon of Saturn with a thick atmosphere', false, true, 6);
INSERT INTO public.moon VALUES (27, 'Enceladus', 0, 4500.0, 'Icy moon of Saturn with water geysers', false, true, 6);
INSERT INTO public.moon VALUES (28, 'Mimas', 0, 4500.0, 'Saturnian moon with a large impact crater', false, true, 6);
INSERT INTO public.moon VALUES (29, 'Rhea', 0, 4500.0, 'Second-largest moon of Saturn', false, true, 6);
INSERT INTO public.moon VALUES (30, 'Tethys', 0, 4500.0, 'Icy moon of Saturn with a massive trench', false, true, 6);
INSERT INTO public.moon VALUES (31, 'Dione', 0, 4500.0, 'Saturnian moon with bright ice cliffs', false, true, 6);
INSERT INTO public.moon VALUES (32, 'Iapetus', 0, 4500.0, 'Two-toned moon of Saturn', false, true, 6);
INSERT INTO public.moon VALUES (33, 'Phobos', 0, 4500.0, 'Larger and innermost moon of Mars', false, false, 4);
INSERT INTO public.moon VALUES (34, 'Deimos', 0, 4500.0, 'Smaller and outermost moon of Mars', false, false, 4);
INSERT INTO public.moon VALUES (35, 'Triton', 0, 4500.0, 'Largest moon of Neptune with retrograde orbit', false, true, 8);
INSERT INTO public.moon VALUES (36, 'Proteus', 0, 4500.0, 'Dark and irregularly shaped moon of Neptune', false, false, 8);
INSERT INTO public.moon VALUES (37, 'Miranda', 0, 4500.0, 'Uranian moon with extreme geological features', false, true, 7);
INSERT INTO public.moon VALUES (38, 'Ariel', 0, 4500.0, 'Brightest and youngest-looking moon of Uranus', false, true, 7);
INSERT INTO public.moon VALUES (39, 'Umbriel', 0, 4500.0, 'Darkest major moon of Uranus', false, true, 7);
INSERT INTO public.moon VALUES (40, 'Titania', 0, 4500.0, 'Largest moon of Uranus', false, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4500.0, 'Smallest planet in the solar system', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4500.0, 'Hottest planet with a thick atmosphere', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4500.0, 'Our home planet with liquid water', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4500.0, 'The red planet', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4500.0, 'Largest planet in the solar system', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4500.0, 'Planet with extensive ring system', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 4500.0, 'Ice giant with a tilted axis', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4500.0, 'Fittest ice giant planet', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 1, 4850.0, 'Exoplanet in the habitable zone of Proxima Centauri', false, true, 6);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 1, 6000.0, 'Exoplanet orbiting a sun-like star', false, true, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 1, 3000.0, 'Hot Jupiter exoplanet', false, true, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 1, 4000.0, 'Potential habitable exoplanet', false, true, 4);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Türksat 5B', 35786.0, 2021, 'Turkish communications satellite');
INSERT INTO public.satellite VALUES (2, 'Hubble Space Telescope', 540.0, 1990, 'Space telescope orbiting Earth');
INSERT INTO public.satellite VALUES (3, 'ISS', 400.0, 1998, 'Habitable artificial satellite in low Earth orbit');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 300.5, 'Brightest star in the night sky', false, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 10.2, 'Red supergiant star in Orion', false, true, 1);
INSERT INTO public.star VALUES (3, 'Rigel', 1, 8.0, 'Blue supergiant star', false, true, 1);
INSERT INTO public.star VALUES (4, 'Polaris', 1, 70.0, 'The North Star', false, true, 2);
INSERT INTO public.star VALUES (5, 'Vega', 1, 455.0, 'Bright star in Lyra', false, true, 2);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 4850.0, 'Closest star to the Sun', false, true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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
-- PostgreSQL database dump complete
--

