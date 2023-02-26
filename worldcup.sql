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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (965, 2018, 'Final', 4, 2, 784, 785);
INSERT INTO public.games VALUES (966, 2018, 'Third Place', 2, 0, 786, 787);
INSERT INTO public.games VALUES (967, 2018, 'Semi-Final', 2, 1, 785, 787);
INSERT INTO public.games VALUES (968, 2018, 'Semi-Final', 1, 0, 784, 786);
INSERT INTO public.games VALUES (969, 2018, 'Quarter-Final', 3, 2, 785, 788);
INSERT INTO public.games VALUES (970, 2018, 'Quarter-Final', 2, 0, 787, 789);
INSERT INTO public.games VALUES (971, 2018, 'Quarter-Final', 2, 1, 786, 790);
INSERT INTO public.games VALUES (972, 2018, 'Quarter-Final', 2, 0, 784, 791);
INSERT INTO public.games VALUES (973, 2018, 'Eighth-Final', 2, 1, 787, 792);
INSERT INTO public.games VALUES (974, 2018, 'Eighth-Final', 1, 0, 789, 793);
INSERT INTO public.games VALUES (975, 2018, 'Eighth-Final', 3, 2, 786, 794);
INSERT INTO public.games VALUES (976, 2018, 'Eighth-Final', 2, 0, 790, 795);
INSERT INTO public.games VALUES (977, 2018, 'Eighth-Final', 2, 1, 785, 796);
INSERT INTO public.games VALUES (978, 2018, 'Eighth-Final', 2, 1, 788, 797);
INSERT INTO public.games VALUES (979, 2018, 'Eighth-Final', 2, 1, 791, 798);
INSERT INTO public.games VALUES (980, 2018, 'Eighth-Final', 4, 3, 784, 799);
INSERT INTO public.games VALUES (981, 2014, 'Final', 1, 0, 800, 799);
INSERT INTO public.games VALUES (982, 2014, 'Third Place', 3, 0, 801, 790);
INSERT INTO public.games VALUES (983, 2014, 'Semi-Final', 1, 0, 799, 801);
INSERT INTO public.games VALUES (984, 2014, 'Semi-Final', 7, 1, 800, 790);
INSERT INTO public.games VALUES (985, 2014, 'Quarter-Final', 1, 0, 801, 802);
INSERT INTO public.games VALUES (986, 2014, 'Quarter-Final', 1, 0, 799, 786);
INSERT INTO public.games VALUES (987, 2014, 'Quarter-Final', 2, 1, 790, 792);
INSERT INTO public.games VALUES (988, 2014, 'Quarter-Final', 1, 0, 800, 784);
INSERT INTO public.games VALUES (989, 2014, 'Eighth-Final', 2, 1, 790, 803);
INSERT INTO public.games VALUES (990, 2014, 'Eighth-Final', 2, 0, 792, 791);
INSERT INTO public.games VALUES (991, 2014, 'Eighth-Final', 2, 0, 784, 804);
INSERT INTO public.games VALUES (992, 2014, 'Eighth-Final', 2, 1, 800, 805);
INSERT INTO public.games VALUES (993, 2014, 'Eighth-Final', 2, 1, 801, 795);
INSERT INTO public.games VALUES (994, 2014, 'Eighth-Final', 2, 1, 802, 806);
INSERT INTO public.games VALUES (995, 2014, 'Eighth-Final', 1, 0, 799, 793);
INSERT INTO public.games VALUES (996, 2014, 'Eighth-Final', 2, 1, 786, 807);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (784, 'France');
INSERT INTO public.teams VALUES (785, 'Croatia');
INSERT INTO public.teams VALUES (786, 'Belgium');
INSERT INTO public.teams VALUES (787, 'England');
INSERT INTO public.teams VALUES (788, 'Russia');
INSERT INTO public.teams VALUES (789, 'Sweden');
INSERT INTO public.teams VALUES (790, 'Brazil');
INSERT INTO public.teams VALUES (791, 'Uruguay');
INSERT INTO public.teams VALUES (792, 'Colombia');
INSERT INTO public.teams VALUES (793, 'Switzerland');
INSERT INTO public.teams VALUES (794, 'Japan');
INSERT INTO public.teams VALUES (795, 'Mexico');
INSERT INTO public.teams VALUES (796, 'Denmark');
INSERT INTO public.teams VALUES (797, 'Spain');
INSERT INTO public.teams VALUES (798, 'Portugal');
INSERT INTO public.teams VALUES (799, 'Argentina');
INSERT INTO public.teams VALUES (800, 'Germany');
INSERT INTO public.teams VALUES (801, 'Netherlands');
INSERT INTO public.teams VALUES (802, 'Costa Rica');
INSERT INTO public.teams VALUES (803, 'Chile');
INSERT INTO public.teams VALUES (804, 'Nigeria');
INSERT INTO public.teams VALUES (805, 'Algeria');
INSERT INTO public.teams VALUES (806, 'Greece');
INSERT INTO public.teams VALUES (807, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 996, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 802, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 802, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 807, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

