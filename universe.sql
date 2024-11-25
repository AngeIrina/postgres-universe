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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    name character varying(30) NOT NULL,
    constellation_id integer NOT NULL,
    area numeric,
    declination numeric,
    mythology text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types integer,
    distance_from_earth numeric,
    mass numeric,
    age numeric
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    diameter numeric,
    has_atmosphere boolean
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
    name character varying(30) NOT NULL,
    planet_types integer,
    description text,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_id integer,
    luminosity numeric,
    temperature numeric
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES ('Orion', 1, 594, -5.0, 'Named after a Greek hunter, Orion is one of the most recognizable constellations.');
INSERT INTO public.constellation VALUES ('Leo', 2, 947, 15.0, 'In Greek mythology, Leo represents the Nemean Lion killed by Hercules.');
INSERT INTO public.constellation VALUES ('Scorpius', 3, 497, -25.0, 'Scorpius represents the giant scorpion sent by the goddess Hera to kill Orion.');
INSERT INTO public.constellation VALUES ('Taurus', 4, 797, 16.0, 'In Greek mythology, Taurus represents the bull Zeus transformed into to abduct Europa.');
INSERT INTO public.constellation VALUES ('Aquarius', 5, 980, -20.0, 'Aquarius represents the water-bearer, a figure in Greek mythology often associated with Ganymede.');
INSERT INTO public.constellation VALUES ('Aries', 6, 441, 20.0, 'In Greek mythology, Aries represents the ram whose fleece Jason and the Argonauts sought.');
INSERT INTO public.constellation VALUES ('Virgo', 7, 1294, 0.0, 'Virgo represents the goddess of justice and purity, often associated with Astraea.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1, 1231, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1, 2.537, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 1, 0.000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 2, 29.3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 1, 23.16, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 2, 53.5, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Triangulum', 1, 3.0, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Deimos', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Callisto', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Iapetus', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Enceladus', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Triton', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Charon', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Miranda', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Titania', true, 1, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Juan', true, 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 'description1', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, 'The smallest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 2, 'The hottest planet with a thick, toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (4, 'Earth', 3, 'The only planet known to support life.', 1);
INSERT INTO public.planet VALUES (5, 'Mars', 4, 'Known as the Red Planet with potential for colonization.', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 5, 'The largest planet with a Great Red Spot.', 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 5, 'Famous for its prominent ring system.', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 5, 'An ice giant with a pale blue color due to methane.', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 5, 'A distant ice giant known for its deep blue color.', 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 6, 'A dwarf planet in the Kuiper Belt.', 1);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 3, 'An exoplanet located in the habitable zone of its star.', 1);
INSERT INTO public.planet VALUES (12, 'Europa', 4, 'A moon of Jupiter with a potential subsurface ocean.', 1);
INSERT INTO public.planet VALUES (13, 'Titan', 4, 'A moon of Saturn with a dense atmosphere.', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', true, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Kepler-452b', true, 1, NULL, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellation unique_name_constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_name_constellation UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

