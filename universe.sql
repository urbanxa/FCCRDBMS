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
-- Name: full_list; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.full_list (
    galaxy_id integer NOT NULL,
    star_id integer,
    planet_id integer,
    moon_id integer,
    full_list_id character varying(55) NOT NULL,
    name character varying(55)
);


ALTER TABLE public.full_list OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    close_to_earth boolean,
    distance_from_earth numeric(10,4),
    name character varying(255) NOT NULL,
    has_life boolean,
    description text,
    magnitude integer,
    a_magnitude integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_types character varying(255),
    name character varying(255) NOT NULL,
    has_life boolean,
    description text,
    galaxy_id integer,
    planet_id integer,
    moon_radius_mi numeric(10,4),
    is_bigger_than_moon boolean,
    grav_in_mps integer,
    star_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_types character varying(255),
    distance_from_earth numeric(10,4),
    name character varying(255) NOT NULL,
    has_life boolean,
    description text,
    galaxy_id integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    close_to_earth boolean,
    distance_from_earth numeric(10,4),
    name character varying(255) NOT NULL,
    has_life boolean,
    description text,
    galaxy_id integer,
    magnitude integer,
    parallax integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: full_list; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.full_list VALUES (1, NULL, NULL, NULL, 'Milky Way', NULL);
INSERT INTO public.full_list VALUES (2, NULL, NULL, NULL, 'Andromeda', NULL);
INSERT INTO public.full_list VALUES (3, NULL, NULL, NULL, 'Triangulum', NULL);
INSERT INTO public.full_list VALUES (4, NULL, NULL, NULL, 'Centaurus A', NULL);
INSERT INTO public.full_list VALUES (5, NULL, NULL, NULL, 'Bodes Galaxy', NULL);
INSERT INTO public.full_list VALUES (6, NULL, NULL, NULL, 'NGC 147', NULL);
INSERT INTO public.full_list VALUES (1, 1, NULL, NULL, 'Sun', NULL);
INSERT INTO public.full_list VALUES (4, 2, NULL, NULL, 'Proxima Centauri', NULL);
INSERT INTO public.full_list VALUES (4, 3, NULL, NULL, 'Rigil Kentaurus A', NULL);
INSERT INTO public.full_list VALUES (4, 4, NULL, NULL, 'Toliman B', NULL);
INSERT INTO public.full_list VALUES (2, 5, NULL, NULL, 'Ross 248', NULL);
INSERT INTO public.full_list VALUES (2, 6, NULL, NULL, 'Groombridge 34', NULL);
INSERT INTO public.full_list VALUES (1, 1, 3, NULL, 'Earth', NULL);
INSERT INTO public.full_list VALUES (1, 1, 4, NULL, 'Mars', NULL);
INSERT INTO public.full_list VALUES (1, 1, 1, NULL, 'Mercury', NULL);
INSERT INTO public.full_list VALUES (1, 1, 2, NULL, 'Venus', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, NULL, 'Jupiter', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, NULL, 'Saturn', NULL);
INSERT INTO public.full_list VALUES (1, 1, 7, NULL, 'Uranus', NULL);
INSERT INTO public.full_list VALUES (1, 1, 8, NULL, 'Neptune', NULL);
INSERT INTO public.full_list VALUES (1, 1, 9, NULL, 'Pluto', NULL);
INSERT INTO public.full_list VALUES (1, 1, 10, NULL, 'Haumea', NULL);
INSERT INTO public.full_list VALUES (1, 1, 11, NULL, 'Makemake', NULL);
INSERT INTO public.full_list VALUES (1, 1, 12, NULL, 'Quaoar', NULL);
INSERT INTO public.full_list VALUES (1, 1, 3, 1, 'Luna', NULL);
INSERT INTO public.full_list VALUES (1, 1, 4, 2, 'Phobos', NULL);
INSERT INTO public.full_list VALUES (1, 1, 4, 3, 'Deimos', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 4, 'Ganymede', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 5, 'Callisto', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 6, 'Io', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 7, 'Europa', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 8, 'Amalthea', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 9, 'Himalia', NULL);
INSERT INTO public.full_list VALUES (1, 1, 5, 10, 'Thebe', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 11, 'Titan', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 12, 'Rhea', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 13, 'Iapetus', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 14, 'Dione', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 15, 'Tethys', NULL);
INSERT INTO public.full_list VALUES (1, 1, 6, 16, 'Enceladus', NULL);
INSERT INTO public.full_list VALUES (1, 1, 7, 17, 'Titania', NULL);
INSERT INTO public.full_list VALUES (1, 1, 7, 18, 'Oberon', NULL);
INSERT INTO public.full_list VALUES (1, 1, 7, 19, 'Umbriel', NULL);
INSERT INTO public.full_list VALUES (1, 1, 7, 20, 'Ariel', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 0.0000, 'Milky Way', true, 'The galaxy that holds earth', 6, 20);
INSERT INTO public.galaxy VALUES (2, false, 2.5000, 'Andromeda', NULL, 'Also known as Messier 31', 3, -22);
INSERT INTO public.galaxy VALUES (3, false, 2.7300, 'Triangulum', NULL, 'Also known as Messier 33', 6, NULL);
INSERT INTO public.galaxy VALUES (4, false, 10.0000, 'Centaurus A', NULL, 'Also known as NGC 5128', 7, NULL);
INSERT INTO public.galaxy VALUES (5, false, 12.0000, 'Bodes Galaxy', NULL, 'Also known as Messier 81', 7, NULL);
INSERT INTO public.galaxy VALUES (6, false, 2.5300, 'NGC 147', NULL, 'Also known Caldwell 17', -21, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Rocky', 'Luna', false, 'Solo moon around the earth', 1, 3, 1079.6000, NULL, 1, 1);
INSERT INTO public.moon VALUES (2, 'Rocky', 'Phobos', false, 'Largest moon of Mars', 1, 4, 7.0000, false, 0, 1);
INSERT INTO public.moon VALUES (3, 'Rocky', 'Deimos', false, 'Smallest moon of Mars', 1, 4, 4.0000, false, 0, 1);
INSERT INTO public.moon VALUES (4, 'Rocky', 'Ganymede', false, 'Largest moon of Jupiter', 1, 5, 3273.0000, true, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Rocky', 'Callisto', false, '2nd Largest moon of Jupiter', 1, 5, 2995.0000, true, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Volcanic', 'Io', false, 'Coolest named moon of Jupiter', 1, 5, 2263.0000, true, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Icy', 'Europa', false, 'Icy moon of Jupiter', 1, 5, 1939.0000, true, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Cratered', 'Amalthea', false, '3rd closest moon orbit to Jupiter', 1, 5, 103.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Irregular', 'Himalia', false, 'Largest irregular moon of Jupiter', 1, 5, 86.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Inner Satellite', 'Thebe', false, '4th closest moon of Jupiter', 1, 5, 61.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Atmospheric', 'Titan', NULL, 'Second largest moon in the Solar System', 1, 6, 3199.0000, true, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Rocky', 'Rhea', NULL, 'Second largest moon of Saturn', 1, 6, 948.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Rocky', 'Iapetus', NULL, 'Has a massive equatorial ridge', 1, 6, 912.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Rocky', 'Dione', NULL, 'Also known as Saturn IV', 1, 6, 698.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Icy', 'Tethys', NULL, 'Made of ice and a small amount of rock', 1, 6, 659.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Icy', 'Enceladus', NULL, 'Covered in an ice making it very reflective', 1, 6, 313.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Icy', 'Titania', NULL, 'Rocky core, covered with ice', 1, 7, 979.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Icy', 'Oberon', NULL, 'Also known as Uranus IV', 1, 7, 945.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Icy', 'Umbriel', NULL, 'Mainly ice, but with a rocky core', 1, 7, 727.0000, false, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Icy', 'Ariel', NULL, 'Roughly equal rock and ice', 1, 7, 718.0000, false, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Terrestrial', 0.0000, 'Earth', true, 'Our world', 1, 1);
INSERT INTO public.planet VALUES (4, 'Terrestrial', 55.6500, 'Mars', false, 'The red planet', 1, 1);
INSERT INTO public.planet VALUES (1, 'Terrestrial', 82.5000, 'Mercury', false, 'Rocky world close to our sun', 1, 1);
INSERT INTO public.planet VALUES (2, 'Terrestrial', 39.7900, 'Venus', false, 'Buffer inbetween the Earth and Mercury', 1, 1);
INSERT INTO public.planet VALUES (5, 'Gas Giant', 591.9700, 'Jupiter', false, 'This planet has the eye!', 1, 1);
INSERT INTO public.planet VALUES (6, 'Gas Giant', 1204.2800, 'Saturn', false, 'This planet has many famous rings', 1, 1);
INSERT INTO public.planet VALUES (7, 'Ice Giant', 2586.8800, 'Uranus', false, 'Funny name...', 1, 1);
INSERT INTO public.planet VALUES (8, 'Ice Giant', 4311.0200, 'Neptune', false, 'Cool blue with rings.', 1, 1);
INSERT INTO public.planet VALUES (9, 'Dwarf', 4670.0000, 'Pluto', false, 'Once a planet, now it is a dwarf.', 1, 1);
INSERT INTO public.planet VALUES (10, 'Dwarf', 4703.0000, 'Haumea', false, 'This is a tiny planet, far away!', 1, 1);
INSERT INTO public.planet VALUES (11, 'Dwarf', 4958.6598, 'Makemake', false, 'It takes this dwarf 22 yrs to go around the sun.', 1, 1);
INSERT INTO public.planet VALUES (12, 'Dwarf', 4060.0000, 'Quaoar', false, 'It takes this dwarf 288 yrs to go around the sun.', 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 0.0000, 'Sun', false, 'Yellow Dwarf', 1, 5, NULL);
INSERT INTO public.star VALUES (2, false, 4.2465, 'Proxima Centauri', false, 'Red Dwarf', 4, 16, 768);
INSERT INTO public.star VALUES (3, false, 4.3441, 'Rigil Kentaurus A', false, 'Yellow Dwarf', 4, 4, 750);
INSERT INTO public.star VALUES (4, false, 4.3441, 'Toliman B', false, 'Orange Dwarf', 4, 6, 750);
INSERT INTO public.star VALUES (5, false, 10.4749, 'Ross 248', false, 'Red Dwarf', 2, 6, 311);
INSERT INTO public.star VALUES (6, false, 11.6191, 'Groombridge 34', false, 'Red Dwarf', 2, 10, 281);


--
-- Name: full_list full_list_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_name_key UNIQUE (full_list_id);


--
-- Name: full_list full_list_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_pkey PRIMARY KEY (full_list_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: full_list full_list_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: full_list full_list_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: full_list full_list_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: full_list full_list_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.full_list
    ADD CONSTRAINT full_list_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

