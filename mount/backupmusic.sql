--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg20.04+1)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: album_songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album_songs (
    id bigint NOT NULL,
    album_id bigint NOT NULL,
    song_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.album_songs OWNER TO postgres;

--
-- Name: album_songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.album_songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.album_songs_id_seq OWNER TO postgres;

--
-- Name: album_songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.album_songs_id_seq OWNED BY public.album_songs.id;


--
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    title character varying,
    description character varying,
    artist_id bigint,
    user_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.albums OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.albums_id_seq OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: artist_songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist_songs (
    id bigint NOT NULL,
    artist_id bigint NOT NULL,
    song_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.artist_songs OWNER TO postgres;

--
-- Name: artist_songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artist_songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.artist_songs_id_seq OWNER TO postgres;

--
-- Name: artist_songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artist_songs_id_seq OWNED BY public.artist_songs.id;


--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artists (
    id bigint NOT NULL,
    name character varying,
    tag character varying,
    description character varying,
    birthdate date,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.artists OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.artists_id_seq OWNER TO postgres;

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    id bigint NOT NULL,
    title character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: history_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.history_likes (
    id bigint NOT NULL,
    tag character varying,
    user_id bigint NOT NULL,
    song_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.history_likes OWNER TO postgres;

--
-- Name: history_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.history_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.history_likes_id_seq OWNER TO postgres;

--
-- Name: history_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.history_likes_id_seq OWNED BY public.history_likes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.songs (
    id bigint NOT NULL,
    title character varying,
    lyric text,
    release_date date,
    duration integer,
    views integer DEFAULT 0,
    track_number integer,
    genre_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.songs OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.songs_id_seq OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    role character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: album_songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_songs ALTER COLUMN id SET DEFAULT nextval('public.album_songs_id_seq'::regclass);


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artist_songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist_songs ALTER COLUMN id SET DEFAULT nextval('public.artist_songs_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: history_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history_likes ALTER COLUMN id SET DEFAULT nextval('public.history_likes_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
2	avatar	Artist	3	2	2024-02-26 17:39:59.720458
3	logo	Album	1	3	2024-02-27 09:12:32.721625
4	logo	Album	2	4	2024-02-27 09:16:24.436239
5	logo	Album	3	5	2024-02-27 09:16:43.551047
6	logo	Song	1	6	2024-02-27 16:34:24.859645
7	logo	Song	2	7	2024-02-28 15:53:18.455805
8	mp3_file	Song	2	8	2024-02-28 15:53:18.469978
9	avatar	Artist	8	9	2024-03-16 15:52:38.598422
10	avatar	Artist	9	10	2024-03-20 15:20:08.28885
11	avatar	Artist	10	11	2024-03-20 15:35:35.819125
12	avatar	Artist	11	12	2024-03-20 15:37:46.495059
13	avatar	Artist	12	13	2024-03-20 15:39:04.573678
14	avatar	Artist	13	14	2024-03-20 15:40:14.389375
15	avatar	Artist	14	15	2024-03-20 15:41:15.285212
16	avatar	Artist	15	16	2024-03-20 15:42:18.135523
17	avatar	Artist	16	17	2024-03-20 15:43:22.199155
18	avatar	Artist	17	18	2024-03-20 15:45:06.338458
19	avatar	Artist	18	19	2024-03-20 15:46:09.94871
20	logo	Song	3	20	2024-03-20 16:22:45.986869
21	mp3_file	Song	3	21	2024-03-20 16:22:46.002588
22	logo	Song	4	22	2024-03-20 16:28:07.549678
23	mp3_file	Song	4	23	2024-03-20 16:28:07.561151
24	logo	Song	5	24	2024-03-20 16:31:35.663452
25	mp3_file	Song	5	25	2024-03-20 16:31:35.674887
26	logo	Song	6	26	2024-03-20 16:33:16.708983
27	mp3_file	Song	6	27	2024-03-20 16:33:16.720649
28	logo	Song	7	28	2024-03-20 16:33:59.898238
29	mp3_file	Song	7	29	2024-03-20 16:33:59.910668
30	logo	Album	4	30	2024-03-20 16:38:12.06792
31	logo	Album	5	31	2024-03-20 16:42:35.596433
32	logo	Album	7	32	2024-03-20 17:44:58.143529
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
21	rvnx94xh73avh1mu6s40vuarc863	chayngaydi.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	9940590	3bEYpmwNQsW8fAZCVCqryQ==	2024-03-20 16:22:45.998767
2	jh2twu8z4rpa3nr68qfmr9uh6li9	avatar1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	397662	BCnlaNQFI8ofLz6aPHV8fw==	2024-02-26 17:39:59.71691
3	sc7zwx7xpu8ewyjly0phq62zgsjq	avatar2.jpg	image/jpeg	{"identified":true,"width":960,"height":640,"analyzed":true}	local	64957	ue1MOSyCn1sQIUVgMEsepA==	2024-02-27 09:12:32.717442
4	k00hgc6f9jdml0c0t5fjlmjn4y6d	avatar1.jpg	image/jpeg	{"identified":true,"width":1000,"height":880,"analyzed":true}	local	397662	BCnlaNQFI8ofLz6aPHV8fw==	2024-02-27 09:16:24.433137
5	v9hng0zr1gupfxv20rbfqfwjff1a	avatar3.jpeg	image/jpeg	{"identified":true,"width":1000,"height":667,"analyzed":true}	local	99768	ErH+/XtG4/wcTCTZvZY6Kw==	2024-02-27 09:16:43.548167
6	ncrv7pu2hkg04e3ro28qli6sl4pc	avatar4.jpg	image/jpeg	{"identified":true,"width":1280,"height":797,"analyzed":true}	local	185491	0ZM7e1Z/zmebcBILunvbHQ==	2024-02-27 16:34:24.856964
8	xvnu3vgv16f9fml5hd18649zaefc	a1ee17430832e4469985334d4bf5a200.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	4184983	yK7MSIKYR8WrkCb9vkCStQ==	2024-02-28 15:53:18.466445
7	w70d7res7ze5adpstf88373x06h1	unnamed (7).png	image/png	{"identified":true,"width":3189,"height":1157,"analyzed":true}	local	63070	FnRanABMHEuU5wZjVQvFPQ==	2024-02-28 15:53:18.451648
9	m0oozlxymai9ygq1lkddo29xzjjf	user-286.png	image/png	{"identified":true,"width":512,"height":512,"analyzed":true}	local	21339	ZVkjQAoOd2QqN2nvrvgnkA==	2024-03-16 15:52:38.594476
10	vl7m7w048gensdhimmfi61taf6aa	user-286.png	image/png	{"identified":true,"width":512,"height":512,"analyzed":true}	local	21339	ZVkjQAoOd2QqN2nvrvgnkA==	2024-03-20 15:20:08.285241
11	l26z0e7h9t5npwwm6cdb7f38cvjr	sontung.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	39086	eAmD6kYsMllD+Xx4RftAZQ==	2024-03-20 15:35:35.816483
12	fzkoee7h60gpkmzlf5m7ife3m7xo	mytam.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	51884	ml8gsilwD7V99maY45+Lew==	2024-03-20 15:37:46.491713
13	s8fo138ew6b8qzbo7ipurcn5hzxn	haanhtuan.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	48672	MJpTHic1TSOyb6RapxLiyw==	2024-03-20 15:39:04.570896
14	6xufim6csgbq2x0kola0myd0gu4u	hongocha.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	59131	47RRb/XYL8ZUhHWv3wTq8g==	2024-03-20 15:40:14.385697
15	d8inrki0jduyusygr2vlglaphd7t	noophuocthinh.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	82577	BTkNhdoLMl8FFZ/7uzoDyw==	2024-03-20 15:41:15.28243
16	a3rovheovgngpo7vnaeom9kh1d26	khoimy.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	50902	K1QV2ITJjZR2HTq0S3AlQA==	2024-03-20 15:42:18.132541
17	sr9842ehwc80jz8kgzwee5k50csz	buianhtuan.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	47046	+6nPzvTdWq2+tzM2wUgl9w==	2024-03-20 15:43:22.196161
18	2vovzf3pgwh958my577qtzrevwam	denvau.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	62314	1ScMecCsU666pzBMJCmdIQ==	2024-03-20 15:45:06.334778
19	59w8g3cbj05j7ve8h9c2b0jmatib	phanmanhquynh.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	64336	zZbAZUJX5LkYpkuXg+5Jmw==	2024-03-20 15:46:09.945208
20	ax0dbeco8x4m1iq7lw3k3af1h9a6	chayngaydi.jpg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	12674	x5wYwmz6aFStoDWf+m25mA==	2024-03-20 16:22:45.982734
23	pt6qxemtiym9wnuy7sznyfqrh8wg	noinaycoanh.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	10502576	j6R7aP6O6Ooj75nXTzl45w==	2024-03-20 16:28:07.559004
22	db468ycaqeyk3qrm305mak46fw40	noinaycoanh.jpg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	20042	Xxl3WufpRycvTDuMlSpyew==	2024-03-20 16:28:07.546853
25	wjne7w8jfg6m9mptq2hfkh7tifhq	nangamxadan.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	7620603	+yd0fTD6/kkMWOQcN64arA==	2024-03-20 16:31:35.672372
24	tjpjrxda0m8xp26df4i0c915w1o5	nangamxadan.jpg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	28124	xtpW1uBlW1vfKjMinv6Mbw==	2024-03-20 16:31:35.661069
27	s3dljekcist3kik8t0ek5p63wm7y	conmuangangqua.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	9365504	JGjzNSm8+x3wEnMRTKjqCw==	2024-03-20 16:33:16.71794
26	4utp8xys2mkwq1urzbbyf98owl69	conmuangangqua.jpg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	13453	tSfY06jlfx0k1C7Emdr9CQ==	2024-03-20 16:33:16.706251
29	4cik5b9f9so6yagpmpt4624n9rxt	chungtacuahientai.mp3	audio/mpeg	{"identified":true,"analyzed":true}	local	12083401	LJPvV+/huSuP14n0oU/UBw==	2024-03-20 16:33:59.907688
28	naht31ayuywaxt1tke46dlji7uk1	chungtacuahientai.jpg	image/jpeg	{"identified":true,"width":240,"height":240,"analyzed":true}	local	12744	l1HSQfMtSkusU9CXxtAX6g==	2024-03-20 16:33:59.895611
30	8x2bzh4d3p1jjjiyoribv8nuonc7	sontung.jpg	image/jpeg	{"identified":true,"width":600,"height":600,"analyzed":true}	local	39086	eAmD6kYsMllD+Xx4RftAZQ==	2024-03-20 16:38:12.064518
31	z68t0qo1r0jsg7ud20t4tf0z1tw5	avatar1.jpg	image/jpeg	{"identified":true,"width":1000,"height":880,"analyzed":true}	local	397662	BCnlaNQFI8ofLz6aPHV8fw==	2024-03-20 16:42:35.59247
32	7q3e6or6i5iswvt94ijncxqpx03z	avatar2.jpg	image/jpeg	{"identified":true,"width":960,"height":640,"analyzed":true}	local	64957	ue1MOSyCn1sQIUVgMEsepA==	2024-03-20 17:44:58.14058
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: album_songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album_songs (id, album_id, song_id, created_at, updated_at) FROM stdin;
1	4	4	2024-03-20 16:40:39.24809	2024-03-20 16:40:39.24809
2	4	5	2024-03-20 16:40:41.942955	2024-03-20 16:40:41.942955
3	5	3	2024-03-20 16:42:49.25704	2024-03-20 16:42:49.25704
4	5	6	2024-03-20 16:42:51.783446	2024-03-20 16:42:51.783446
\.


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.albums (id, title, description, artist_id, user_id, created_at, updated_at) FROM stdin;
4	Những bài hát hay nhất của Sơn Tùng	Những bài hát hay nhất của Sơn Tùng	\N	\N	2024-03-20 16:38:12.053786	2024-03-20 16:38:12.070511
5	Nhạc yêu thích	Nhạc yêu thích của tôi 	10	3	2024-03-20 16:42:35.582948	2024-03-20 16:57:24.404732
6	\N	test 	\N	3	2024-03-20 17:43:52.66526	2024-03-20 17:43:52.66526
7	test 	test 	\N	3	2024-03-20 17:44:58.114267	2024-03-20 17:44:58.146022
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-02-24 15:53:23.991426	2024-02-24 15:53:23.991426
\.


--
-- Data for Name: artist_songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist_songs (id, artist_id, song_id, created_at, updated_at) FROM stdin;
8	10	3	2024-03-20 16:22:45.966365	2024-03-20 16:22:45.966365
9	10	4	2024-03-20 16:28:07.539722	2024-03-20 16:28:07.539722
10	10	5	2024-03-20 16:31:35.651436	2024-03-20 16:31:35.651436
11	10	6	2024-03-20 16:33:16.695686	2024-03-20 16:33:16.695686
12	10	7	2024-03-20 16:33:59.888611	2024-03-20 16:33:59.888611
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artists (id, name, tag, description, birthdate, created_at, updated_at) FROM stdin;
13	Hồ Ngọc Hà	singer	Khởi đầu với nghề người mẫu năm 15 tuổi, Hồ Ngọc Hà thử sức ở vai trò diễn viên rồi quyết định dừng chân với âm nhạc. Năm 2004, cô ra mắt album đầu tay "24 Giờ 7 Ngày" (nhạc sĩ Huy Tuấn) nhưng không gây tiếng vang, đến album "Và Em Đã Yêu" (nhạc sĩ Đức Trí) thì được khán giả chú ý. Dòng nhạc Hồ Ngọc Hà theo đuổi đa dạng, với ballad như "Tìm Lại Giấc Mơ", Pop với "Nỗi Nhớ Đầy Vơi" cùng Noo Phước Thịnh, Dance với "Xin Hãy Thứ Tha" cùng Suboi, với R&B trong "24 Giờ 7 Ngày"... Đến nay, độ nổi tiếng của cô ngày càng tăng, tỷ lệ thuận với khả năng thanh nhạc, vũ đạo cũng được trau chuốt theo thời gian. Cô cũng nhận được nhiều giải thưởng âm nhạc cho tài năng và sự cố gắng của mình.	1984-11-25	2024-03-20 15:40:14.377046	2024-03-20 15:40:14.391935
14	Noo Phước Thịnh	singer	Năm 2009, Noo Phước Thịnh bắt đầu đi hát, anh phát hành album đầu tay có tên "Ba Chấm (...)". Năm 2011, anh tổ chức liveshow đầu tiên "My Dream", ra mắt album thứ hai "Lạc Bước Trong Đêm". Từ 2013 đến 2016, Noo Phước Thịnh là cái tên hot nhất Vpop với vô số các bản hit như "Chờ Ngày Mưa Tan", "Gạt Đi Nước Mắt"... và nhiều giải thưởng âm nhạc. Đặc biệt tháng 10 năm 2016, anh đại diện Việt Nam tham dự Asia Song Festival ở Hàn Quốc. Năm 2017, ngoài các sản phẩm âm nhạc anh còn tham gia The Voice với vai trò huấn luyện viên. Ca khúc "Chạm Khẽ Tim Anh Một Chút Thôi" cũng trở thành bản hit của năm. Từ 2018 đến nay anh đều đặn có những bản hit mới như "Thương Em Là Điều Anh Không Thể Ngờ", "I'm Still Loving You"...	1988-12-18	2024-03-20 15:41:15.270806	2024-03-20 15:41:15.292514
15	Khởi My	singer	Năm 2007 Khởi My giành giải Nhất cuộc thi "Tiếng Ca Học Đường". Năm 2010, Khởi My ra mắt ca khúc đầu tay do chính cô sáng tác có tên "Vì Sao" (cùng Hoàng Rapper). Năm 2011, Khởi My cho ra mắt album đầu tay "Đôi Cánh" với nhiều bản hit được khán giả yêu thích như: "Đôi Cánh", "Vì Sao" (đã ra mắt trước đó)... Năm 2013, cô giành giải Quán quân cùng với giải Thí sinh được yêu thích nhất "Gương Mặt Thân Quen". Thành công của cuộc thi giúp Khởi My tiếp cận được nhiều tầng lớp khán giả. Trong năm đó, cô ra mắt "Gửi Cho Anh" kết hợp cùng Kevin Khánh được khán giả đón nhận nồng nhiệt. Từ đó đến nay, Khởi My mỗi năm đều đặn ra mắt những sản phẩm mới thuộc dòng nhạc Pop với đối tượng khán giả trẻ.	1990-01-02	2024-03-20 15:42:18.121548	2024-03-20 15:42:18.138277
10	Sơn Tùng M-TP	singer	Thanh Tùng bắt đầu chơi nhạc từ cấp ba với nghệ danh M-TP và được biết đến với "Cơn Mưa Ngang Qua". Năm 2012, anh đậu thủ khoa Nhạc viện TPHCM và ký hợp đồng với Văn Production, đổi nghệ danh sang Sơn Tùng M-TP. Từ 2013 đến 2015, anh có nhiều bản hit như "Em Của Ngày Hôm Qua", "Nắng Ấm Xa Dần"... Năm 2015, anh rời khỏi công ty cũ và gia nhập WePro, tổ chức minishow đầu tiên "M-TP and Friends". Năm 2017, anh rời khỏi WePro để thành lập M-TP Entertainment, ra mắt "Lạc Trôi" và "Nơi Này Có Anh". Anh ra mắt album đầu tay "m-tp M-TP". Năm 2018 anh ra mắt "Chạy Ngay Đi" và "Hãy Trao Cho Anh" năm 2019. Cả hai bài hát đều trở thành hit. Đặc biệt "Hãy Trao Cho Anh" kết hợp với Snopp Dogg đã đưa tên tuổi anh ra thế giới.	1994-07-05	2024-03-20 15:35:35.80025	2024-03-20 15:35:35.821455
11	Mỹ Tâm	singer	Thời niên thiếu, Mỹ Tâm giành được nhiều giải thưởng trong các cuộc thi âm nhạc. Cô sở hữu chất giọng nữ trung với âm vực rộng và khỏe. Dòng nhạc của cô khá đa dạng nhưng chủ yếu là Pop. Năm 2001, cô debut bằng album đầu tay "Mãi Yêu", sau đó là "Đâu Chỉ Riêng Em" năm 2002 và "Yesterday & Now" năm 2003 đạt kỷ lục về doanh số bán ra. Năm 2004, cô tổ chức liveshow đầu tiên "Ngày Ấy & Bây Giờ". Trong suốt hơn 20 năm hoạt động, cô ra mắt nhiều sản phẩm âm nhạc thành công về mặt chuyên môn và thương mại. Cô cũng giành được nhiều giải thưởng lớn cả trong nước và quốc tế. Ngoài vai trò ca sĩ, Mỹ Tâm còn được nhìn nhận ở cương vị nhạc sĩ với những sáng tác nổi bật như "Dường Như Ta Đã", "Mãi Yêu", "Nụ Hôn Bất Ngờ"...	1981-01-16	2024-03-20 15:37:46.478528	2024-03-20 15:37:46.499005
12	Hà Anh Tuấn	singer	Năm 2006, Hà Anh Tuấn tham gia cuộc thi Sao Mai Điểm Hẹn và vào được top 3 chung cuộc. Sau cuộc thi, anh chọn dòng nhạc R&B để theo đuổi với album đầu tay "Cafe Sáng" (2007) sau đó là "Saigon Radio" (2009), "Acous'84" (2010), "Lava" (2014), "Street Rhythm" (2015)... mang lại cho anh nhiều giải thưởng. Ngoài R&B, anh còn thành công ở thể loại Pop với nhiều ca khúc được khán giả yêu thích, nổi bật là những bản tình ca song ca cùng Phương Linh trong album "Ngày Hát Đôi" (2007) hay "Anh Yêu Em" (2011) Một trong những thành công lớn của Hà Anh Tuấn là những chương trình âm nhạc đầy tính nghệ thuật, có thể kể đến liveshow "Fragile" (2017), chuỗi liveshow "See Sing Share" (2018) và live concert "Truyện Ngắn" (2019).	1994-12-17	2024-03-20 15:39:04.553878	2024-03-20 15:39:04.576273
16	Bùi Anh Tuấn	singer	Bùi Anh Tuấn tham gia nhiều cuộc thi âm nhạc và đạt nhiều giải thưởng, trong đó nổi bật là năm 2011 với hai giải nhất Ngôi Sao Tiếng Hát Truyền Hình và CocaCola Music Award. Năm 2012, anh tham gia The Voice và gây chú ý với bài hát "Nơi Tình Yêu Bắt Đầu", tuy không giành được giải nhưng nhờ cuộc thi, anh được nhiều khán giả trẻ yêu thích, thuận lợi cho con đường ca hát chuyên nghiệp. Cùng năm đó, anh giành được giải "Nam nghệ sĩ mới xuất sắc nhất" của Zing Music Awards. Từ 2013, anh chọn dòng nhạc Pop để theo đuổi. Tuy có nhiều thăng trầm nhưng đến hiện tại có thể xem Bùi Anh Tuấn là một cái tên sáng giá của làng tình ca Vpop với những bản song ca cùng các nghệ sĩ nữ như Dương Hoàng Yến, Hương Tràm, Hiền Hồ...	1991-09-09	2024-03-20 15:43:22.183246	2024-03-20 15:43:22.201467
17	Đen Vâu	singer	Năm 2014, anh ra mắt "Đưa Nhau Đi Trốn" cùng Linh Cáo. Bài hát nhanh chóng trở thành hit. Tiếp nối thành công, cả hai tiếp tục kết hợp trong "Ta cứ Đi Cùng Nhau". Năm 2018, Đen liên tiếp ra mắt các sản phẩm mới nhưng đến "Anh Đếch Cần Gì Nhiều Ngoài Em" thì Đen trở thành hiện tượng xã hội. Năm 2019 là một năm thành công cùa Đen với những bản hit nổi tiếng như "Mười Năm" (cùng Ngọc Linh) kỷ niệm hành trình 10 năm theo rap, "Bài Này Chill Phết" cùng Min, "Hai Triệu Năm" (cùng Biên), "Lối Nhỏ" (cùng Phương Anh Đào) và "Cảm Ơn" (cùng Biên). Liveshow đầu tiên của mang tên "Show của Đen" được tổ chức vào tháng 11. Đầu năm 2020, Đen Vâu ra mắt "Một Triệu Like" kết hợp với Thành Đồng.	1989-05-13	2024-03-20 15:45:06.323145	2024-03-20 15:45:06.340909
18	Phan Mạnh Quỳnh	singer	Phan Mạnh Quỳnh là tác giả của nhiều ca khúc như: "Người Yêu Cũ" của Khởi My, "Nơi Ấy Con Tìm Về" của Hồ Quang Hiếu... Năm 2015 ca khúc "Vợ Người Ta" được đón nhận nồng nhiệt, mang lại cho anh nhiều giải thưởng. Năm 2016, anh tham gia Sing My Song và sáng tác "Hồi Ức" và "Có Chàng Trai Viết Lên Cây". Năm 2018, "Hồi Ức" được sử dụng làm nhạc phim "Người Bất Tử", cùng với ca khúc "Người Bất Tử" cũng do anh sáng tác. Năm 2019, "Có Chàng Trai Viết Lên Cây" được sử dụng làm nhạc phim "Mắt Biếc", cùng với ba ca khúc khác do anh sáng tác là "Từ Đó", "Tôi Chỉ Muốn Nói" và "Hà Lan". Các sáng tác của anh từ đó đến nay đều được khán giả đón nhận nồng nhiệt, gần đây nhất là "Nhạt", "Khi Phải Quên Đi" và "Cuộc Gọi".	1990-01-10	2024-03-20 15:46:09.935963	2024-03-20 15:46:09.951946
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (id, title, description, created_at, updated_at) FROM stdin;
3	Pop	Thể loại âm nhạc pop được yêu thích và phổ biến nhất hiện nay. Với giai điệu bắt tai, lời bài hát dễ nhớ và thích ứng được với nhiều đối tượng người nghe, pop đã chinh phục hàng triệu trái tim trên toàn cầu. Nghệ sĩ pop nổi tiếng như Taylor Swift, Justin Bieber và Beyoncé đã gắn liền với tên tuổi và tạo nên cơn sốt âm nhạc trong thời đại này.	2024-03-20 15:58:52.84275	2024-03-20 15:58:52.84275
4	Rock	Rock là một thể loại nhạc có lịch sử lâu đời và sức ảnh hưởng mạnh mẽ. Với giai điệu mạnh mẽ, guitar điện năng động và lời bài hát chất chứa cảm xúc, rock thường thể hiện tinh thần tự do và sự cách mạng. Ban nhạc huyền thoại như Queen, The Beatles và AC/DC đã ghi danh vào lịch sử âm nhạc bằng những tác phẩm đình đám.	2024-03-20 15:59:26.147718	2024-03-20 15:59:26.147718
5	EDM	Được xem là "đứa con lai" của âm nhạc và công nghệ, EDM (Electronic Dance Music) đang trở thành trào lưu vũ trụ trong giới trẻ. Với nhịp điệu điện tử sôi động và sự sáng tạo vô tận trong việc sử dụng công nghệ âm nhạc, EDM mang đến những buổi tiệc âm nhạc đỉnh cao. DJ nổi tiếng như Calvin Harris, David Guetta và Martin Garrix đã chinh phục hàng triệu fan qua những bản hit EDM đình đám.	2024-03-20 15:59:55.3839	2024-03-20 15:59:55.3839
6	Hip-hop	Hip-hop xuất phát từ cộng đồng đô thị và đã trở thành một phong cách âm nhạc và văn hóa độc đáo. Với những giai điệu rap sôi động, lời bài hát thể hiện cuộc sống đường phố và những vấn đề xã hội, hip-hop truyền tải thông điệp mạnh mẽ về sự kiên nhẫn, đấu tranh và hy vọng. Các nghệ sĩ như Eminem, Tupac và Kendrick Lamar đã làm nên tên tuổi của thể loại này.	2024-03-20 16:00:25.21715	2024-03-20 16:00:25.21715
7	Nhạc đồng quê	Nhạc đồng quê mang đến những giai điệu dễ thương và lời bài hát chất phác thể hiện tình cảm và cuộc sống nông thôn. Thể loại này thường lấy cảm hứng từ các câu chuyện cổ tích về tình yêu, gia đình và quê hương. Các ca sĩ như Taylor Swift, Luke Bryan và Carrie Underwood đã nổi tiếng với những ca khúc đồng quê ngọt ngào và chân thực.	2024-03-20 16:00:45.091315	2024-03-20 16:00:45.091315
\.


--
-- Data for Name: history_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.history_likes (id, tag, user_id, song_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20240224142755
20240224142854
20240224161809
20240224162728
20240224163557
20240224164914
20240224165835
20240224170310
20240224170445
20240226171440
20240227093419
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.songs (id, title, lyric, release_date, duration, views, track_number, genre_id, created_at, updated_at) FROM stdin;
5	Nắng ấm xa dần	Nắng ấm xa dần rồi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần bỏ rơi để lại những giấc mơ\r\nGiữ lại đi giữ giữ lại đi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần xa dần theo những tiếng cười\r\nHãy mang đi giúp những nỗi buồn\r\nTheo thời gian những hạt mưa như nặng thêm\r\nXóa hết thương yêu mặn nồng ngày nào giữa chúng ta\r\nAnh lục tìm vẫn cứ mãi lục tìm\r\nGiơ bàn tay cố kìm nén những cảm xúc\r\nVùi mình vào đêm đen anh chẳng tìm thấy lối ra oh oh\r\nSau lưng là tiếng nói yêu anh chẳng rời xa anh (uh uh)\r\nTrước mắt anh điều đấy nó dối trá tại sao người vội quên mau (là vì em)\r\nBài ca anh viết sẽ không được trọn vẹn đâu em (vội bước đi)\r\nEm yêu một ai thật rồi mãi chẳng là anh đâu\r\nVậy thì người cứ bước đi xa nơi này\r\nÁnh bình minh sẽ không còn nơi đây\r\nBước đi xa nơi này\r\nNhững lời yêu sẽ không còn nơi đây\r\nPhải tự đứng lên mà thôi\r\nChe nhẹ đi những niềm đau và nỗi buồn\r\nXung quanh anh giờ đây cô đơn mình anh ôm giấc mơ (vì ai)\r\nNhìn em bước ra đi xa dần (hoh)\r\nNhìn em bước ra đi xa dần (hoh)\r\nNhìn em bước ra đi xa dần (hoh)\r\nNhìn em bước ra đi xa dần (hoh)\r\nM T P\r\nĐến rồi lại đi và cứ vội vàng đi\r\nTrao cho anh bao yêu thương rồi em lại bỏ đi\r\nGieo cho anh bao nhiêu niềm đau rồi em mau rời bỏ anh xa anh\r\nQuay mặt lặng lẽ quên mau\r\nUh em yêu quên thật rồi\r\nUh chẳng một lời chia ly\r\nQuên rồi em yêu quên rồi quên rồi\r\nVậy thì người cứ bước đi xa nơi này\r\nÁnh bình minh sẽ không còn nơi đây\r\nBước đi xa nơi này\r\nNhững lời yêu sẽ không còn nơi đây\r\nPhải tự đứng lên mà thôi\r\nChe nhẹ đi những niềm đau và nỗi buồn\r\nXung quanh anh giờ đây cô đơn mình anh ôm giấc mơ (là vì ai)\r\nVậy thì người cứ bước đi xa nơi này\r\nÁnh bình minh sẽ không còn nơi đây\r\nBước đi xa nơi này\r\nNhững lời yêu sẽ không còn nơi đây\r\nPhải tự đứng lên mà thôi\r\nChe nhẹ đi những niềm đau và nỗi buồn\r\nXung quanh anh giờ đây cô đơn mình anh ôm giấc mơ\r\nNhìn em bước ra đi xa dần (eh)\r\nNhìn em bước ra đi xa dần (eh)\r\nNhìn em nhìn em bước đi huh (eh)\r\nNhìn em bước ra đi xa (eh)\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần bỏ rơi để lại những giấc mơ\r\nGiữ lại đi giữ giữ lại đi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần rồi\r\nNắng ấm xa dần xa dần theo những tiếng cười\r\nHãy mang đi giúp những nỗi buồn	2016-07-25	\N	0	\N	3	2024-03-20 16:31:35.64386	2024-03-20 16:31:35.677473
3	Chạy Ngay Đi	Good boy\r\nTừng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta\r\nTừng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha\r\nCon tim giờ không cùng chung đôi nhịp\r\nNụ cười lạnh băng còn đâu nồng ấm thân quen\r\nVô tâm làm ngơ thờ ơ tương lai ai ngờ\r\nQuên đi mộng mơ ngày thơ tan theo sương mờ\r\nMưa lặng thầm đường vắng chiều nay\r\nIn giọt lệ nhòe khóe mắt sầu cay\r\nBao hẹn thề tàn úa vụt bay\r\nTrôi dạt chìm vào những giấc nồng say\r\nQuay lưng chia hai lối, còn một mình anh thôi\r\nGiả dối bao trùm bỗng chốc lên ngôi\r\nTrong đêm tối bầu bạn cùng đơn côi\r\nSuy tư anh kìm nén đã bốc cháy yêu thương trao em rồi\r\nĐốt sạch hết\r\nSon môi hồng vương trên môi bấy lâu\r\nHương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\nAnh không chờ mong quan tâm nữa đâu\r\nTương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\nXin chôn vùi tên em trong đớn đau\r\nNơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\nDư âm tàn tro vô vọng phía sau\r\nĐua chen dày vò xâu xé quanh thân xác nát nhàu\r\nChạy ngay đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nChạy ngay đi, trước khi\r\nLòng hận thù cuộn từng cơn\r\nTựa giông tố đến bên ghé thăm\r\nTừ nơi hố sâu tối tăm\r\nChạy đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nYeah, buông bàn tay\r\nBuông xuôi hi vọng buông bình yên (buông)\r\nĐâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên\r\nVết thương cứ thêm, khắc thêm, mãi thêm\r\nChà đạp vùi dập dẫm lên tiếng yêu ấm êm\r\nNhìn lại niềm tin từng trao giờ sao\r\nSau bao ngu muội sai lầm anh vẫn yếu mềm\r\nCăn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa\r\nCăm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha\r\n(Ah, chính em gây ra mà\r\nNhững điều vừa diễn ra\r\nChính em gây ra mà, chính em gây ra mà\r\nNhững điều vừa diễn ra\r\nHết thật rồi)\r\nĐốt sạch hết\r\nSon môi hồng vương trên môi bấy lâu\r\nHương thơm dịu êm mê man bấy lâu (đốt sạch hết)\r\nAnh không chờ mong quan tâm nữa đâu\r\nTương lai từ giờ như bức tranh em quên tô màu (đốt sạch hết)\r\nXin chôn vùi tên em trong đớn đau\r\nNơi hiu quạnh tan hoang ngàn nỗi đau (đốt sạch hết)\r\nDư âm tàn tro vô vọng phía sau\r\nĐua chen dày vò xâu xé quanh thân xác nát nhàu\r\nChạy ngay đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nChạy ngay đi, trước khi\r\nLòng hận thù cuộn từng cơn\r\nTựa giông tố đến bên ghé thăm\r\nTừ nơi hố sâu tối tăm\r\nChạy đi, trước khi\r\nMọi điều dần tồi tệ hơn\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái\r\nĐốt sạch hết\r\nOhhh...\r\n(Chính em gây ra mà, chính em gây ra mà)\r\nĐốt sạch hết\r\nOhhh...\r\nHaizzz...\r\nĐừng nhìn anh với khuôn mặt xa lạ, xin\r\nĐừng lang thang trong tâm trí anh từng đêm nữa\r\nQuên đi, quên đi hết đi\r\nQuên đi, quên đi hết đi\r\nThắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ\r\nBốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\nCơn hận thù trong anh\r\nBốc cháy lên cơn hận thù trong anh\r\nAi khơi dậy cơn hận thù trong anh?\r\nBốc cháy lên cơn hận thù trong anh (quên đi, quên đi, quên đi hết đi)\r\nCơn hận thù trong anh\r\nBốc cháy lên cơn hận thù trong anh\r\nAi khơi dậy cơn hận thù trong anh? (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái (ai cô đơn rồi)\r\nKhông còn ai cạnh bên em ngày mai\r\nTạm biệt một tương lai ngang trái	2018-06-16	\N	0	\N	3	2024-03-20 16:22:45.959207	2024-03-20 16:22:46.006347
4	Nơi Này Có Anh	Em là ai từ đâu bước đến nơi đây dịu dàng chân phương\r\nEm là ai tựa như ánh nắng ban mai ngọt ngào trong sương\r\nNgắm em thật lâu\r\nCon tim anh yếu mềm\r\nĐắm say từ phút đó\r\nTừng giây trôi yêu thêm\r\nBao ngày qua bình minh đánh thức xua tan bộn bề nơi anh\r\nBao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh\r\nLiếc đôi hàng mi\r\nMong manh anh thẫn thờ\r\nMuốn hôn nhẹ mái tóc\r\nBờ môi em anh mơ\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nGió mang câu tình ca\r\nNgàn ánh sao vụt qua nhẹ ôm lấy em\r\n(Yêu em thương em con tim anh chân thành)\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nKhép đôi mi thật lâu\r\nNguyện mãi bên cạnh nhau\r\nYêu say đắm như ngày đầu\r\nMùa xuân đến bình yên\r\nCho anh những giấc mơ\r\nHạ lưu giữ ngày mưa\r\nNgọt ngào nên thơ\r\nMùa thu lá vàng rơi\r\nĐông sang anh nhớ em\r\nTình yêu bé nhỏ xin\r\nDành tặng riêng em\r\nCòn đó tiếng nói ấy bên tai\r\nVấn vương bao ngày qua\r\nÁnh mắt bối rối\r\nNhớ thương bao ngày qua\r\nYêu em anh thẫn thờ\r\nCon tim bâng khuâng đâu có ngờ\r\nChẳng bao giờ phải mong chờ\r\nĐợi ai trong chiều hoàng hôn mờ\r\nĐắm chìm hòa vào vần thơ\r\nNgắm nhìn khờ dại mộng mơ\r\nĐừng bước vội vàng rồi làm ngơ\r\nLạnh lùng đó làm bộ dạng thờ ơ\r\nNhìn anh đi em nha\r\nHướng nụ cười cho riêng anh nha\r\nĐơn giản là yêu\r\nCon tim anh lên tiếng thôi\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nGió mang câu tình ca\r\nNgàn ánh sao vụt qua nhẹ ôm lấy em\r\n(Yêu em thương em con tim anh chân thành)\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nKhép đôi mi thật lâu\r\nNguyện mãi bên cạnh nhau\r\nYêu say đắm như ngày đầu\r\nMùa xuân đến bình yên\r\nCho anh những giấc mơ\r\nHạ lưu giữ ngày mưa\r\nNgọt ngào nên thơ\r\nMùa thu lá vàng rơi\r\nĐông sang anh nhớ em\r\nTình yêu bé nhỏ xin\r\nDành tặng riêng em\r\nOh nhớ thương em\r\nOh nhớ thương em lắm\r\nAh phía sau chân trời\r\nCó ai băng qua lối về\r\nCùng em đi trên đoạn đường dài\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nGió mang câu tình ca\r\nNgàn ánh sao vụt qua nhẹ ôm lấy em\r\n(Yêu em thương em con tim anh chân thành)\r\nCầm tay anh dựa vai anh\r\nKề bên anh nơi này có anh\r\nKhép đôi mi thật lâu\r\nNguyện mãi bên cạnh nhau\r\nYêu say đắm như ngày đầu\r\nMùa xuân đến bình yên\r\nCho anh những giấc mơ\r\nHạ lưu giữ ngày mưa\r\nNgọt ngào nên thơ\r\nMùa thu lá vàng rơi\r\nĐông sang anh nhớ em\r\nTình yêu bé nhỏ xin\r\nDành tặng riêng em	2017-03-01	\N	0	\N	3	2024-03-20 16:28:07.537053	2024-03-20 16:28:07.563465
6	Cơn Mưa Ngang Qua	Hoh\r\nCơn mưa ngang qua (cơn mưa ngang qua)\r\nCơn mưa đi ngang qua (cơn mưa đi ngang qua)\r\nĐừng làm rơi thêm thêm thêm nhiều giọt lệ\r\nCòn đâu đây bao câu ca anh tặng em (uh ah uh ah)\r\nTình yêu em mang cuốn lấp đi bao nhiêu câu ca\r\nVà còn lại đây đôi môi đau thương trong màn đêm (i a i a i a i a)\r\nPhải lẻ loi gồng mình bước qua niềm đau khi em rời xa\r\nCơn mưa rồi lại thêm lại thêm lại thêm\r\nXé đi không gian ngập tràn nụ cười\r\nNhìn lại nơi đây bao kỉ niệm giờ chìm xuống dưới hố sâu vì em\r\nChính em đã đổi thay\r\nVà đôi bàn tay ấm êm ngày nào còn lại giữ\r\nVì em vì em (i a i a i a i a)\r\nVì em đã xa rồi tình anh chìm trong màn đêm\r\nLà vì em đã quên rồi tình anh chỉ như giấc mơ\r\nEm bước đi rồi ôi bao cơn mưa\r\nEm bước đi rồi xin hãy xua tan đi em\r\nBóng dáng hình em em đã mãi rời xa\r\nMy girl em đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em đã quên đi cuộc tình mà anh trao em\r\nThôi thôi em đi đi đã hết rồi\r\nMy girl em đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em quên đi cuộc tình\r\nEm quên quên quên quên quên quên quyên quên quên\r\nCơn mưa ngang qua mang em đi xa\r\nCơn mưa ngang qua khiến em nhạt nhòa\r\nChẳng một lời chào người vội rời bỏ đi không chia li\r\nCho con tim anh thêm bao yếu mềm\r\nCơn mưa ngang qua cuốn đi bao yêu thương\r\nCơn mưa ngang qua khiến con tim mất phương hướng\r\nCơn mưa kia nặng hạt\r\nÔi mưa thêm nặng hạt\r\nEm đã rời xa đôi bàn tay trong con tim của anh\r\nEm đi em đi rời xa bên tôi người ơi\r\nVà buông lơi giấc mơ em cho\r\nEm cho con tim tôi đau biết mấy\r\nThôi cũng đã đến hồi kết thật rồi mà người\r\nThôi cũng đã đến hồi kết đừng nhìn làm gì\r\nAnh sẽ quên đi một ai ai ai và rồi làm ngơ ngơ ngơ\r\nVì em đã xa rồi tình anh chìm trong màn đêm\r\nLà vì em đã quên rồi tình anh chỉ như giấc mơ\r\nEm bước đi rồi ôi bao cơn mưa\r\nEm bước đi rồi xin hãy xua tan đi em\r\nBóng dáng hình em em đã mãi rời xa\r\nMy girl em đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em đã quên đi cuộc tình mà anh trao em\r\nThôi thôi em đi đi đã hết rồi\r\nEm đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em quên đi cuộc tình\r\nMy girl em quên quên quên quên quên quên quên quên quên\r\nVà rồi em đi qua bước qua\r\nỞ lại chốn đây với bao u buồn\r\nĐể rồi tháng trôi qua rồi năm trôi qua thoáng qua hoh\r\nNụ cười em đang ở đâu người ơi (ở đâu)\r\nVà bờ môi em đang ở đâu anh tìm\r\nLục tìm mà không thấy nụ cười em\r\nNgười hãy nói trả lời đi\r\nVì sao em đi đi\r\nQuên bao nhiêu giấc mơ bên anh xưa kia (hoh)\r\nCơn mưa vẫn rơi (rơi rơi)\r\nCơn cơn mưa vẫn rơi (rơi rơi) (i ya)\r\nCơn cơn mưa vẫn rơi rơi rơi (rơi)\r\nCơn cơn mưa vẫn rơi rơi rơi rơi (yeh)\r\nCơn mưa vẫn rơi (eh)\r\nCơn cơn mưa vẫn rơi (rơi rơi)\r\nCơn cơn mưa vẫn rơi (rơi rơi)\r\nCơn cơn mưa vẫn\r\nCơn cơn cơn cơn cơn cơn mưa vẫn rơi (ngoài kia)\r\nMy girl em đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em đã quên đi cuộc tình mà anh trao em (quên đi)\r\nThôi thôi em đi đi đã hết rồi\r\nMy girl em đã quên đi bao nhiêu\r\nMy girl em đã quên đi bao lâu\r\nMy girl em quên đi cuộc tình\r\nMy girl quên quên quên quên quên quên quyên quên quên (em quên mất rồi)\r\nEm quên mất rồi	2021-10-09	\N	0	\N	3	2024-03-20 16:33:16.692043	2024-03-20 16:33:16.723034
7	Chúng ta của hiện tại	Mùa thu mang giấc mơ quay về\r\nVẫn nguyên vẹn như hôm nào\r\nLá bay theo gió xôn xao\r\nChốn xưa em chờ (chốn xưa em chờ)\r\nĐoạn đường ngày nào nơi ta từng đón đưa\r\nCòn vấn vương không phai mờ\r\nGiấu yêu thương trong vần thơ\r\nChúng ta...\r\nLà áng mây bên trời vội vàng ngang qua\r\nChúng ta...\r\nChẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn\r\nCòn ai thương ai, mong ai?\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai nắng gió, sương hao gầy\r\nCó ai thương, lắng lo cho em? (Whoo-whoo-whoo)\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\n"Nắng vương trên cành héo khô những kỉ niệm xưa kia"\r\n"Ngày mai, người luyến lưu về giấc mơ từng có, liệu có ta?"\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Liệu có ta?)\r\nChúng ta...\r\nLà áng mây bên trời vội vàng ngang qua\r\nChúng ta...\r\nChẳng thể nâng niu những câu thề\r\nCứ như vậy thôi, không một lời, lặng lẽ thế chia xa\r\nChiều mưa bên hiên vắng buồn\r\nCòn ai thương ai, mong ai?\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai nắng gió, sương hao gầy\r\nCó ai thương, lắng lo cho em? (Whoo-whoo-whoo)\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)\r\nNo, no, no\r\nNo, no, no\r\nĐiều anh luôn giữ kín trong tim (giữ kín trong tim này)\r\nGiữ mãi trong tim này (giữ mãi trong tim này)\r\nGiữ mãi trong tim mình (giữ mãi trong tim mình)\r\nGiữ...\r\nCó anh nơi đó không?\r\nCó anh nơi đó không?\r\n(Whoo-whoo-whoo-whoo)\r\nĐiều anh luôn giữ kín trong tim (no, no)\r\nĐiều anh luôn giữ kín trong tim này (no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Ngày mai, nắng gió, sương hao gầy)\r\n(Có ai thương, lắng lo cho em?)\r\nĐiều anh luôn giữ kín trong tim (no, no)\r\nĐiều anh luôn giữ kín trong tim này (no, no)\r\nĐiều anh luôn giữ kín trong tim này\r\n(Dù cho nắng tắt, xuân thay màu)\r\n(Héo khô đi tháng năm xưa kia)\r\n(Anh nguyện ghi mãi trong tim)\r\nĐiều anh luôn giữ kín trong tim\r\nThương em đôi mắt ướt nhòa\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em đâu đó khóc òa\r\nĐiều anh luôn giữ kín trong tim này\r\nNgày mai nắng gió, sương hao gầy\r\nCó ai thương, lắng lo cho em? (Whoo-whoo-whoo)\r\nĐiều anh luôn giữ kín trong tim\r\nThương em, anh mãi xin là\r\nĐiều anh luôn giữ kín trong tim này\r\nThương em vì thương thôi mà\r\nĐiều anh luôn giữ kín trong tim này\r\nDù cho nắng tắt, xuân thay màu\r\nHéo khô đi tháng năm xưa kia\r\n(Anh nguyện ghi mãi trong tim)	2020-12-20	\N	0	\N	3	2024-03-20 16:33:59.886203	2024-03-20 16:33:59.913675
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, first_name, last_name, role) FROM stdin;
2	mai.dv01@gmail.com	$2a$12$c0mQrJZ9GGJNq7E72QGXc.7VXIqfGqRnCRJF1q8FlUY9uwEpO0iT2	\N	\N	\N	2024-03-02 12:17:37.640295	2024-03-02 12:17:37.640295	\N	\N	user
3	mai.dv02@gmail.com	$2a$12$/XzPGNNQkiGTs6zHgzC3neHTK9rYYLdw2RZaYN/Xfuai08F5W.9X.	\N	\N	\N	2024-03-02 15:55:04.925044	2024-03-02 15:55:04.925044	\N	\N	user
4	mai.dv@gmail.com	$2a$12$cv22tTylVUQI.QF9oob6VudLYgSVz6kYjU/wm7kTALVlCIBr27yf.	\N	\N	\N	2024-03-16 15:40:54.909244	2024-03-16 15:40:54.909244	\N	\N	user
1	admin@music.com	$2a$12$SaEqV5BHnZh63BaECs7AM.gbkG/SpyOs7M7E7vu./Je9XMpbDIiC6	\N	\N	\N	2024-03-02 11:54:45.077242	2024-03-20 15:19:02.670426	\N	\N	admin
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 32, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 32, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: album_songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.album_songs_id_seq', 4, true);


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.albums_id_seq', 7, true);


--
-- Name: artist_songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_songs_id_seq', 12, true);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_id_seq', 18, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 7, true);


--
-- Name: history_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.history_likes_id_seq', 1, false);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.songs_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: album_songs album_songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_songs
    ADD CONSTRAINT album_songs_pkey PRIMARY KEY (id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artist_songs artist_songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist_songs
    ADD CONSTRAINT artist_songs_pkey PRIMARY KEY (id);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- Name: history_likes history_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history_likes
    ADD CONSTRAINT history_likes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_album_songs_on_album_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_album_songs_on_album_id ON public.album_songs USING btree (album_id);


--
-- Name: index_album_songs_on_song_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_album_songs_on_song_id ON public.album_songs USING btree (song_id);


--
-- Name: index_albums_on_artist_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_albums_on_artist_id ON public.albums USING btree (artist_id);


--
-- Name: index_albums_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_albums_on_user_id ON public.albums USING btree (user_id);


--
-- Name: index_artist_songs_on_artist_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_artist_songs_on_artist_id ON public.artist_songs USING btree (artist_id);


--
-- Name: index_artist_songs_on_song_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_artist_songs_on_song_id ON public.artist_songs USING btree (song_id);


--
-- Name: index_history_likes_on_song_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_history_likes_on_song_id ON public.history_likes USING btree (song_id);


--
-- Name: index_history_likes_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_history_likes_on_user_id ON public.history_likes USING btree (user_id);


--
-- Name: index_songs_on_genre_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_songs_on_genre_id ON public.songs USING btree (genre_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: albums fk_rails_124a79559a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT fk_rails_124a79559a FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: history_likes fk_rails_2028870707; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history_likes
    ADD CONSTRAINT fk_rails_2028870707 FOREIGN KEY (song_id) REFERENCES public.songs(id);


--
-- Name: artist_songs fk_rails_2df84b91e5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist_songs
    ADD CONSTRAINT fk_rails_2df84b91e5 FOREIGN KEY (artist_id) REFERENCES public.artists(id);


--
-- Name: songs fk_rails_31272893df; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_rails_31272893df FOREIGN KEY (genre_id) REFERENCES public.genres(id);


--
-- Name: album_songs fk_rails_3468c6b46e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_songs
    ADD CONSTRAINT fk_rails_3468c6b46e FOREIGN KEY (song_id) REFERENCES public.songs(id);


--
-- Name: artist_songs fk_rails_8071655949; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist_songs
    ADD CONSTRAINT fk_rails_8071655949 FOREIGN KEY (song_id) REFERENCES public.songs(id);


--
-- Name: album_songs fk_rails_8c0443be36; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_songs
    ADD CONSTRAINT fk_rails_8c0443be36 FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- Name: albums fk_rails_964016e0e8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT fk_rails_964016e0e8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: history_likes fk_rails_f2c84ae862; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.history_likes
    ADD CONSTRAINT fk_rails_f2c84ae862 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

