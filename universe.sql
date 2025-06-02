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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(64) NOT NULL,
    age_of_years integer,
    description text,
    galaxy_types character varying(32)
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
    name character varying(64) NOT NULL,
    description text,
    age numeric(6,3),
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
    name character varying(32) NOT NULL,
    planet_types character varying(32),
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    age numeric(8,4)
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
    name character varying(64) NOT NULL,
    description text,
    galaxy_id integer,
    distance_earth numeric(6,5)
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
-- Name: student; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.student (
    student_id integer NOT NULL,
    name character varying(32),
    age integer NOT NULL,
    weight integer NOT NULL
);


ALTER TABLE public.student OWNER TO freecodecamp;

--
-- Name: student_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.student_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_s_id_seq OWNER TO freecodecamp;

--
-- Name: student_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.student_s_id_seq OWNED BY public.student.student_id;


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
-- Name: student student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '银河系', 130, '最古老的恒星（如球状星团）年龄接近宇宙年龄，但银河系的盘结构形成较晚（约80亿年前）', '棒状星系');
INSERT INTO public.galaxy VALUES (2, '仙女座星系', 120, '与银河系类似，早期恒星形成于宇宙初期，但合并事件持续塑造其结构', '旋涡星系');
INSERT INTO public.galaxy VALUES (3, '三角座星系', 80, '本星系群第三大星系，距离约300万光年，是研究恒星形成的典型目标', '旋涡星系');
INSERT INTO public.galaxy VALUES (4, '大麦哲伦云', 100, '银河系的卫星星系，距离约16万光年，内有著名的“蜘蛛星云”（恒星形成区）', '不规则星系');
INSERT INTO public.galaxy VALUES (5, '草帽星系', 120, '形似墨西哥草帽，中心有超大质量黑洞，距离约2800万光年', '旋涡星系');
INSERT INTO public.galaxy VALUES (6, '半人马座A', 120, '距离约1200万光年，有强烈的射电辐射，中心存在活跃星系核（AGN）', '椭圆星系');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '月球', '太阳系第五大卫星，表面布满撞击坑，无大气层，存在水冰', 4.500, 1);
INSERT INTO public.moon VALUES (2, '火卫一', '形状不规则（27×22×18 km），轨道持续衰减，预计5000万年后撞向火星', 4.500, 2);
INSERT INTO public.moon VALUES (3, '火卫2', '太阳第最小卫星', 4.500, 2);
INSERT INTO public.moon VALUES (4, '木卫三', '太阳系最大卫星（比水星大），拥有磁场和地下咸水海洋', 4.500, 3);
INSERT INTO public.moon VALUES (5, '木卫二', '冰壳下存在全球性液态海洋，可能具备生命条件', 4.500, 3);
INSERT INTO public.moon VALUES (6, '土卫六', '太阳系唯一拥有稠密大气层（氮气为主）的卫星，表面有液态甲烷湖', 4.500, 6);
INSERT INTO public.moon VALUES (7, '土卫二', '南极喷发水冰羽流，地下海洋含有机分子', 4.500, 6);
INSERT INTO public.moon VALUES (8, '海卫一', '逆行轨道，可能是被捕获的柯伊伯带天体，表面有冰火山', 4.500, 7);
INSERT INTO public.moon VALUES (9, '木卫一', '太阳系最活跃的火山天体，硫磺喷发覆盖表面', 4.500, 3);
INSERT INTO public.moon VALUES (10, '土卫八', '双色表面（一面漆黑如煤，一面明亮如雪），赤道脊高达20公里', 4.500, 6);
INSERT INTO public.moon VALUES (11, '海卫二', '高度偏心轨道（e=0.75），可能是被扰动捕获的卫星', 4.500, 7);
INSERT INTO public.moon VALUES (16, '海卫一1', '逆行轨道，可能是被捕获的柯伊伯带天体，表面有冰火山', 4.500, 7);
INSERT INTO public.moon VALUES (17, '木卫一1', '太阳系最活跃的火山天体，硫磺喷发覆盖表面', 4.500, 3);
INSERT INTO public.moon VALUES (18, '土卫八1', '双色表面（一面漆黑如煤，一面明亮如雪），赤道脊高达20公里', 4.500, 6);
INSERT INTO public.moon VALUES (19, '海卫二1', '高度偏心轨道（e=0.75），可能是被扰动捕获的卫星', 4.500, 7);
INSERT INTO public.moon VALUES (20, '海卫一2', '逆行轨道，可能是被捕获的柯伊伯带天体，表面有冰火山', 4.500, 7);
INSERT INTO public.moon VALUES (21, '木卫一2', '太阳系最活跃的火山天体，硫磺喷发覆盖表面', 4.500, 3);
INSERT INTO public.moon VALUES (22, '土卫八2', '双色表面（一面漆黑如煤，一面明亮如雪），赤道脊高达20公里', 4.500, 6);
INSERT INTO public.moon VALUES (23, '海卫二2', '高度偏心轨道（e=0.75），可能是被扰动捕获的卫星', 4.500, 7);
INSERT INTO public.moon VALUES (24, '海卫一3', '逆行轨道，可能是被捕获的柯伊伯带天体，表面有冰火山', 4.500, 7);
INSERT INTO public.moon VALUES (25, '木卫一3', '太阳系最活跃的火山天体，硫磺喷发覆盖表面', 4.500, 3);
INSERT INTO public.moon VALUES (26, '土卫八3', '双色表面（一面漆黑如煤，一面明亮如雪），赤道脊高达20公里', 4.500, 6);
INSERT INTO public.moon VALUES (27, '海卫二3', '高度偏心轨道（e=0.75），可能是被扰动捕获的卫星', 4.500, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '地球', '岩石行星', true, true, 1, 4.5000);
INSERT INTO public.planet VALUES (2, '火星', '岩石行星', false, true, 1, 4.5000);
INSERT INTO public.planet VALUES (3, '木星', '气态巨行星', false, true, 1, 4.5000);
INSERT INTO public.planet VALUES (4, '天狼星B行星', '理论预测的岩石/冰行星', false, false, 2, 0.2500);
INSERT INTO public.planet VALUES (5, '金星', '岩石行星', false, true, 1, 4.5000);
INSERT INTO public.planet VALUES (6, '土星', '气态巨行星', false, false, 1, 4.5000);
INSERT INTO public.planet VALUES (7, '海王星', '冰巨星', false, true, 1, 4.5000);
INSERT INTO public.planet VALUES (8, '理论宜居带行星', '超级地球', false, false, 2, 0.2500);
INSERT INTO public.planet VALUES (9, '天狼星A尘埃盘行星', '原行星盘碎片', false, false, 2, 0.1000);
INSERT INTO public.planet VALUES (10, '流浪行星', '冰质流浪行星', false, true, 3, 8.0000);
INSERT INTO public.planet VALUES (11, '潮汐撕裂残骸行星', '破碎行星核心', false, false, 3, 0.0000);
INSERT INTO public.planet VALUES (12, '超新星爆发幸存行星', '碳行星', false, true, 4, 1.0000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '太阳', '地球的母恒星，年龄约46亿年，表面温度约5500°C', 1, 0.00000);
INSERT INTO public.star VALUES (2, '天狼星', '夜空中最亮的恒星（视星等-1.46），有白矮星伴星（Sirius B）', 1, 8.60000);
INSERT INTO public.star VALUES (3, 'M31-V1', '哈勃通过它测定仙女座距离，证实其为独立星系', 2, 2.50000);
INSERT INTO public.star VALUES (4, 'M31-RV', '1998年短暂增亮，可能是罕见恒星爆发事件', 2, 2.50000);
INSERT INTO public.star VALUES (5, 'M104中心星团恒星', '围绕超大质量黑洞（约10亿倍太阳质量）高速运动', 5, 2.80000);
INSERT INTO public.star VALUES (6, '尘埃带中的OB星协', '年龄仅数百万年，显示近期恒星形成活动', 6, 1.20000);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.student VALUES (1, 'a', 21, 43);
INSERT INTO public.student VALUES (2, 'b', 35, 46);
INSERT INTO public.student VALUES (3, 'c', 46, 32);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: student_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.student_s_id_seq', 3, true);


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
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: student student_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_name_key UNIQUE (name);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- Name: galaxy un_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT un_name UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

