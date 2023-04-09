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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    number integer NOT NULL,
    guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 721, 4);
INSERT INTO public.games VALUES (2, 15, 480, 3);
INSERT INTO public.games VALUES (3, 15, 594, 4);
INSERT INTO public.games VALUES (4, 15, 484, 1);
INSERT INTO public.games VALUES (5, 23, 975, 976);
INSERT INTO public.games VALUES (6, 23, 436, 437);
INSERT INTO public.games VALUES (7, 24, 274, 275);
INSERT INTO public.games VALUES (8, 24, 543, 544);
INSERT INTO public.games VALUES (9, 23, 227, 230);
INSERT INTO public.games VALUES (10, 23, 677, 679);
INSERT INTO public.games VALUES (11, 23, 163, 164);
INSERT INTO public.games VALUES (12, 26, 290, 291);
INSERT INTO public.games VALUES (13, 26, 519, 520);
INSERT INTO public.games VALUES (14, 27, 837, 838);
INSERT INTO public.games VALUES (15, 27, 752, 753);
INSERT INTO public.games VALUES (16, 26, 270, 273);
INSERT INTO public.games VALUES (17, 26, 828, 830);
INSERT INTO public.games VALUES (18, 26, 79, 80);
INSERT INTO public.games VALUES (19, 25, 800, 4);
INSERT INTO public.games VALUES (20, 28, 292, 293);
INSERT INTO public.games VALUES (21, 28, 302, 303);
INSERT INTO public.games VALUES (22, 29, 408, 409);
INSERT INTO public.games VALUES (23, 29, 869, 870);
INSERT INTO public.games VALUES (24, 28, 269, 272);
INSERT INTO public.games VALUES (25, 28, 478, 480);
INSERT INTO public.games VALUES (26, 28, 794, 795);
INSERT INTO public.games VALUES (27, 30, 984, 985);
INSERT INTO public.games VALUES (28, 30, 984, 985);
INSERT INTO public.games VALUES (29, 31, 681, 682);
INSERT INTO public.games VALUES (30, 31, 453, 454);
INSERT INTO public.games VALUES (31, 30, 256, 259);
INSERT INTO public.games VALUES (32, 30, 360, 361);
INSERT INTO public.games VALUES (33, 15, 729, 10);
INSERT INTO public.games VALUES (34, 15, 754, 8);
INSERT INTO public.games VALUES (35, 34, 850, 851);
INSERT INTO public.games VALUES (36, 34, 261, 262);
INSERT INTO public.games VALUES (37, 35, 447, 448);
INSERT INTO public.games VALUES (38, 35, 258, 259);
INSERT INTO public.games VALUES (39, 34, 835, 838);
INSERT INTO public.games VALUES (40, 34, 167, 169);
INSERT INTO public.games VALUES (41, 34, 629, 630);
INSERT INTO public.games VALUES (42, 15, 169, 2);
INSERT INTO public.games VALUES (43, 15, 254, 7);
INSERT INTO public.games VALUES (44, 36, 879, 880);
INSERT INTO public.games VALUES (45, 36, 204, 205);
INSERT INTO public.games VALUES (46, 37, 20, 21);
INSERT INTO public.games VALUES (47, 37, 730, 731);
INSERT INTO public.games VALUES (48, 36, 399, 402);
INSERT INTO public.games VALUES (49, 36, 439, 441);
INSERT INTO public.games VALUES (50, 36, 803, 804);
INSERT INTO public.games VALUES (51, 38, 668, 669);
INSERT INTO public.games VALUES (52, 38, 196, 197);
INSERT INTO public.games VALUES (53, 39, 67, 68);
INSERT INTO public.games VALUES (54, 39, 767, 768);
INSERT INTO public.games VALUES (55, 38, 15, 18);
INSERT INTO public.games VALUES (56, 38, 369, 371);
INSERT INTO public.games VALUES (57, 38, 826, 827);
INSERT INTO public.games VALUES (58, 40, 309, 310);
INSERT INTO public.games VALUES (59, 40, 269, 270);
INSERT INTO public.games VALUES (60, 41, 359, 360);
INSERT INTO public.games VALUES (61, 41, 495, 496);
INSERT INTO public.games VALUES (62, 40, 319, 322);
INSERT INTO public.games VALUES (63, 40, 153, 155);
INSERT INTO public.games VALUES (64, 40, 160, 161);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (15, 'Travis');
INSERT INTO public.users VALUES (16, 'user_1681006928415');
INSERT INTO public.users VALUES (17, 'user_1681006928414');
INSERT INTO public.users VALUES (18, 'Traivs');
INSERT INTO public.users VALUES (19, 'user_1681008627937');
INSERT INTO public.users VALUES (20, 'user_1681008627936');
INSERT INTO public.users VALUES (21, 'user_1681008786108');
INSERT INTO public.users VALUES (22, 'user_1681008786107');
INSERT INTO public.users VALUES (23, 'user_1681009897904');
INSERT INTO public.users VALUES (24, 'user_1681009897903');
INSERT INTO public.users VALUES (25, 'new');
INSERT INTO public.users VALUES (26, 'user_1681010039227');
INSERT INTO public.users VALUES (27, 'user_1681010039226');
INSERT INTO public.users VALUES (28, 'user_1681010160332');
INSERT INTO public.users VALUES (29, 'user_1681010160331');
INSERT INTO public.users VALUES (30, 'user_1681010474428');
INSERT INTO public.users VALUES (31, 'user_1681010474427');
INSERT INTO public.users VALUES (32, 'user_1681010559978');
INSERT INTO public.users VALUES (33, 'user_1681010559977');
INSERT INTO public.users VALUES (34, 'user_1681010884965');
INSERT INTO public.users VALUES (35, 'user_1681010884964');
INSERT INTO public.users VALUES (36, 'user_1681011237170');
INSERT INTO public.users VALUES (37, 'user_1681011237169');
INSERT INTO public.users VALUES (38, 'user_1681011253552');
INSERT INTO public.users VALUES (39, 'user_1681011253551');
INSERT INTO public.users VALUES (40, 'user_1681011302743');
INSERT INTO public.users VALUES (41, 'user_1681011302742');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: games games_game_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_game_id_key UNIQUE (game_id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users user_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_id_unique UNIQUE (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

