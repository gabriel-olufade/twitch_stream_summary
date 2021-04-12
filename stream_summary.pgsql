--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: stream_summary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stream_summary (
    id integer NOT NULL,
    duration time without time zone,
    max_viewers integer,
    unique_viewers integer,
    new_followers integer,
    avg_viewers double precision,
    date date
);


ALTER TABLE public.stream_summary OWNER TO postgres;

--
-- Name: stream_summary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stream_summary ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.stream_summary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: stream_summary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stream_summary (id, duration, max_viewers, unique_viewers, new_followers, avg_viewers, date) FROM stdin;
3	00:05:30	5	11	1	0.8	2020-01-19
4	00:01:47	2	5	0	0.2	2021-01-18
\.


--
-- Name: stream_summary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stream_summary_id_seq', 4, true);


--
-- Name: stream_summary stream_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stream_summary
    ADD CONSTRAINT stream_summary_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

