--
-- PostgreSQL database dump
--

--CREATE USER mortal WITH
--  LOGIN
--  NOSUPERUSER
--  INHERIT
--  NOCREATEDB
--  NOCREATEROLE
--  NOREPLICATION;

--ALTER USER mortal WITH PASSWORD 'mortal';

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-07-11 20:19:41 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12390)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16385)
-- Name: categoria; Type: TABLE; Schema: public; Owner: mortal
--

CREATE TABLE categoria (
    id_categoria integer NOT NULL,
    nombre character varying(60),
    descripcion text,
    activo boolean
);


ALTER TABLE categoria OWNER TO mortal;

--
-- TOC entry 186 (class 1259 OID 16391)
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: mortal
--

CREATE SEQUENCE categoria_id_categoria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categoria_id_categoria_seq OWNER TO mortal;

--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 186
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mortal
--

ALTER SEQUENCE categoria_id_categoria_seq OWNED BY categoria.id_categoria;


--
-- TOC entry 187 (class 1259 OID 16393)
-- Name: orden; Type: TABLE; Schema: public; Owner: mortal
--

CREATE TABLE orden (
    id_orden integer NOT NULL,
    mesero character varying(50),
    mesa character varying(20),
    cliente character varying(70),
    fecha date,
    activo boolean
);


ALTER TABLE orden OWNER TO mortal;

--
-- TOC entry 188 (class 1259 OID 16396)
-- Name: orden_detalle; Type: TABLE; Schema: public; Owner: mortal
--

CREATE TABLE orden_detalle (
    id_orden_detalle integer NOT NULL,
    id_producto integer,
    cantidad integer,
    id_orden integer
);


ALTER TABLE orden_detalle OWNER TO mortal;

--
-- TOC entry 189 (class 1259 OID 16399)
-- Name: orden_detalle_id_orden_detalle_seq; Type: SEQUENCE; Schema: public; Owner: mortal
--

CREATE SEQUENCE orden_detalle_id_orden_detalle_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orden_detalle_id_orden_detalle_seq OWNER TO mortal;

--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 189
-- Name: orden_detalle_id_orden_detalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mortal
--

ALTER SEQUENCE orden_detalle_id_orden_detalle_seq OWNED BY orden_detalle.id_orden_detalle;


--
-- TOC entry 190 (class 1259 OID 16401)
-- Name: orden_id_orden_seq; Type: SEQUENCE; Schema: public; Owner: mortal
--

CREATE SEQUENCE orden_id_orden_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orden_id_orden_seq OWNER TO mortal;

--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 190
-- Name: orden_id_orden_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mortal
--

ALTER SEQUENCE orden_id_orden_seq OWNED BY orden.id_orden;


--
-- TOC entry 191 (class 1259 OID 16403)
-- Name: producto; Type: TABLE; Schema: public; Owner: mortal
--

CREATE TABLE producto (
    id_producto integer NOT NULL,
    nombre character varying(60),
    descripcion text,
    activo boolean,
    precio numeric(6,2)
);


ALTER TABLE producto OWNER TO mortal;

--
-- TOC entry 192 (class 1259 OID 16409)
-- Name: producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: mortal
--

CREATE SEQUENCE producto_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE producto_id_producto_seq OWNER TO mortal;

--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 192
-- Name: producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mortal
--

ALTER SEQUENCE producto_id_producto_seq OWNED BY producto.id_producto;


--
-- TOC entry 2022 (class 2604 OID 16411)
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY categoria ALTER COLUMN id_categoria SET DEFAULT nextval('categoria_id_categoria_seq'::regclass);


--
-- TOC entry 2023 (class 2604 OID 16412)
-- Name: orden id_orden; Type: DEFAULT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden ALTER COLUMN id_orden SET DEFAULT nextval('orden_id_orden_seq'::regclass);


--
-- TOC entry 2024 (class 2604 OID 16413)
-- Name: orden_detalle id_orden_detalle; Type: DEFAULT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden_detalle ALTER COLUMN id_orden_detalle SET DEFAULT nextval('orden_detalle_id_orden_detalle_seq'::regclass);


--
-- TOC entry 2025 (class 2604 OID 16414)
-- Name: producto id_producto; Type: DEFAULT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY producto ALTER COLUMN id_producto SET DEFAULT nextval('producto_id_producto_seq'::regclass);


--
-- TOC entry 2153 (class 0 OID 16385)
-- Dependencies: 185
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: mortal
--

INSERT INTO categoria (id_categoria, nombre, descripcion, activo) VALUES (1, 'Bebidas', 'Categoria pra almacenar las diferentes bebidas que se ofrecen en el restaurante', true);
INSERT INTO categoria (id_categoria, nombre, descripcion, activo) VALUES (2, 'Comida xd', 'Categoria para los platos a la venta', true);


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 186
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: mortal
--

SELECT pg_catalog.setval('categoria_id_categoria_seq', 2, true);


--
-- TOC entry 2159 (class 0 OID 16403)
-- Dependencies: 191
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: mortal
--

INSERT INTO producto (id_producto, nombre, descripcion, activo, precio) VALUES (1, 'Coca-cola', 'Soda enlatada', true, 1.00);
INSERT INTO producto (id_producto, nombre, descripcion, activo, precio) VALUES (2, 'Fanta', 'Gaseosa enlatada', true, 1.00);
INSERT INTO producto (id_producto, nombre, descripcion, activo, precio) VALUES (3, 'Pollo', 'Plato de pollo', true, 2.00);
INSERT INTO producto (id_producto, nombre, descripcion, activo, precio) VALUES (4, 'Carne', 'Plato de carne', true, 3.00);


--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 192
-- Name: producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: mortal
--

SELECT pg_catalog.setval('producto_id_producto_seq', 4, true);


--
-- TOC entry 2155 (class 0 OID 16393)
-- Dependencies: 187
-- Data for Name: orden; Type: TABLE DATA; Schema: public; Owner: mortal
--

INSERT INTO orden (id_orden, mesero, mesa, cliente, fecha, activo) VALUES (2, 'Steven', 'Mesa 2', 'Irvin Molina', '2018-07-11', false);
INSERT INTO orden (id_orden, mesero, mesa, cliente, fecha, activo) VALUES (3, 'Andrea', 'Mesa 3', 'Diana', '2018-07-11', true);
INSERT INTO orden (id_orden, mesero, mesa, cliente, fecha, activo) VALUES (1, 'Carlos', 'Mesa 1', 'Juan', '2018-07-11', false);


--
-- TOC entry 2156 (class 0 OID 16396)
-- Dependencies: 188
-- Data for Name: orden_detalle; Type: TABLE DATA; Schema: public; Owner: mortal
--

INSERT INTO orden_detalle (id_orden_detalle, id_producto, cantidad, id_orden) VALUES (1, 1, 2, 1);
INSERT INTO orden_detalle (id_orden_detalle, id_producto, cantidad, id_orden) VALUES (2, 2, 3, 1);
INSERT INTO orden_detalle (id_orden_detalle, id_producto, cantidad, id_orden) VALUES (3, 1, 2, 2);
INSERT INTO orden_detalle (id_orden_detalle, id_producto, cantidad, id_orden) VALUES (4, 3, 4, 3);


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 189
-- Name: orden_detalle_id_orden_detalle_seq; Type: SEQUENCE SET; Schema: public; Owner: mortal
--

SELECT pg_catalog.setval('orden_detalle_id_orden_detalle_seq', 4, true);


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 190
-- Name: orden_id_orden_seq; Type: SEQUENCE SET; Schema: public; Owner: mortal
--

SELECT pg_catalog.setval('orden_id_orden_seq', 3, true);



--
-- TOC entry 2027 (class 2606 OID 16416)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2031 (class 2606 OID 16418)
-- Name: orden_detalle orden_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden_detalle
    ADD CONSTRAINT orden_detalle_pkey PRIMARY KEY (id_orden_detalle);


--
-- TOC entry 2029 (class 2606 OID 16420)
-- Name: orden orden_pkey; Type: CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden
    ADD CONSTRAINT orden_pkey PRIMARY KEY (id_orden);


--
-- TOC entry 2033 (class 2606 OID 16422)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 2034 (class 2606 OID 16815)
-- Name: orden_detalle orden_detalle_id_orden_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden_detalle
    ADD CONSTRAINT orden_detalle_id_orden_fkey FOREIGN KEY (id_orden) REFERENCES orden(id_orden) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2035 (class 2606 OID 16820)
-- Name: orden_detalle orden_detalle_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mortal
--

ALTER TABLE ONLY orden_detalle
    ADD CONSTRAINT orden_detalle_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES producto(id_producto) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2018-07-11 20:19:41 CST

--
-- PostgreSQL database dump complete
--

