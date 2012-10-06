--
-- PostgreSQL database dump
--

-- Dumped from database version 9.0.7
-- Dumped by pg_dump version 9.1.4
-- Started on 2012-10-06 10:40:01

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 7 (class 2615 OID 16393)
-- Name: cad; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cad;


ALTER SCHEMA cad OWNER TO postgres;

--
-- TOC entry 1884 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA cad; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA cad IS 'Modulo de Cadastros';


--
-- TOC entry 8 (class 2615 OID 16477)
-- Name: frente_caixa; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA frente_caixa;


ALTER SCHEMA frente_caixa OWNER TO postgres;

--
-- TOC entry 495 (class 2612 OID 11574)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = cad, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 146 (class 1259 OID 16419)
-- Dependencies: 7
-- Name: administradores; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE administradores (
    idconta integer NOT NULL
);


ALTER TABLE cad.administradores OWNER TO postgres;

--
-- TOC entry 150 (class 1259 OID 16457)
-- Dependencies: 7
-- Name: categorias; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE categorias (
    id integer NOT NULL,
    descricao character varying(100),
    id_produto integer
);


ALTER TABLE cad.categorias OWNER TO postgres;

--
-- TOC entry 144 (class 1259 OID 16394)
-- Dependencies: 7
-- Name: contas; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE contas (
    idconta integer NOT NULL,
    nome character varying(100),
    sobrenome character varying(100),
    email character varying(255),
    senha character varying(255)
);


ALTER TABLE cad.contas OWNER TO postgres;

--
-- TOC entry 149 (class 1259 OID 16447)
-- Dependencies: 7
-- Name: enderecos; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE enderecos (
    id integer NOT NULL,
    endereco character varying(100),
    numero character varying(30),
    bairro character varying(50),
    cep character varying(10),
    cidade character varying(100),
    uf character varying(2),
    id_usuario integer
);


ALTER TABLE cad.enderecos OWNER TO postgres;

--
-- TOC entry 151 (class 1259 OID 16467)
-- Dependencies: 7
-- Name: grupos; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE grupos (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE cad.grupos OWNER TO postgres;

--
-- TOC entry 147 (class 1259 OID 16429)
-- Dependencies: 7
-- Name: produtos; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE produtos (
    idprod integer NOT NULL,
    descricao character varying(255),
    vlrunitario numeric(18,5),
    id_grupo integer
);


ALTER TABLE cad.produtos OWNER TO postgres;

--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 147
-- Name: TABLE produtos; Type: COMMENT; Schema: cad; Owner: postgres
--

COMMENT ON TABLE produtos IS 'Cadastro de Produtos';


--
-- TOC entry 148 (class 1259 OID 16437)
-- Dependencies: 7
-- Name: produtos_variacoes; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE produtos_variacoes (
    id integer NOT NULL,
    descricao character varying(100),
    flag_grupo smallint,
    flag_qtd_escolher smallint,
    flag_qtd_item smallint,
    vlr_unit numeric(18,3),
    variacao_pai integer
);


ALTER TABLE cad.produtos_variacoes OWNER TO postgres;

--
-- TOC entry 145 (class 1259 OID 16402)
-- Dependencies: 7
-- Name: usuarios; Type: TABLE; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    idconta integer NOT NULL,
    cpf character varying(20),
    telefone character varying(10) NOT NULL
);


ALTER TABLE cad.usuarios OWNER TO postgres;

SET search_path = frente_caixa, pg_catalog;

--
-- TOC entry 152 (class 1259 OID 16478)
-- Dependencies: 8
-- Name: pedidos; Type: TABLE; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

CREATE TABLE pedidos (
    id integer NOT NULL,
    data date,
    hora timestamp without time zone
);


ALTER TABLE frente_caixa.pedidos OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 16483)
-- Dependencies: 8
-- Name: pedidos_historicos; Type: TABLE; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

CREATE TABLE pedidos_historicos (
    id integer NOT NULL,
    data date,
    id_pedido integer,
    id_situacao_pedido integer
);


ALTER TABLE frente_caixa.pedidos_historicos OWNER TO postgres;

--
-- TOC entry 155 (class 1259 OID 16493)
-- Dependencies: 8
-- Name: pedidos_itens; Type: TABLE; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

CREATE TABLE pedidos_itens (
    id integer NOT NULL,
    qtd numeric(18,3),
    vlr_unit numeric(18,3),
    id_produto integer,
    id_pedido_item integer
);


ALTER TABLE frente_caixa.pedidos_itens OWNER TO postgres;

--
-- TOC entry 156 (class 1259 OID 16503)
-- Dependencies: 8
-- Name: pedidos_itens_variacoes; Type: TABLE; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

CREATE TABLE pedidos_itens_variacoes (
    id integer NOT NULL,
    qtd integer,
    id_prod_variacao integer,
    id_pedido_item integer
);


ALTER TABLE frente_caixa.pedidos_itens_variacoes OWNER TO postgres;

--
-- TOC entry 154 (class 1259 OID 16488)
-- Dependencies: 8
-- Name: situacoes_pedidos; Type: TABLE; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

CREATE TABLE situacoes_pedidos (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE frente_caixa.situacoes_pedidos OWNER TO postgres;

SET search_path = cad, pg_catalog;

--
-- TOC entry 1870 (class 0 OID 16419)
-- Dependencies: 146
-- Data for Name: administradores; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY administradores (idconta) FROM stdin;
\.


--
-- TOC entry 1874 (class 0 OID 16457)
-- Dependencies: 150
-- Data for Name: categorias; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY categorias (id, descricao, id_produto) FROM stdin;
\.


--
-- TOC entry 1868 (class 0 OID 16394)
-- Dependencies: 144
-- Data for Name: contas; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY contas (idconta, nome, sobrenome, email, senha) FROM stdin;
\.


--
-- TOC entry 1873 (class 0 OID 16447)
-- Dependencies: 149
-- Data for Name: enderecos; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY enderecos (id, endereco, numero, bairro, cep, cidade, uf, id_usuario) FROM stdin;
\.


--
-- TOC entry 1875 (class 0 OID 16467)
-- Dependencies: 151
-- Data for Name: grupos; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY grupos (id, descricao) FROM stdin;
\.


--
-- TOC entry 1871 (class 0 OID 16429)
-- Dependencies: 147
-- Data for Name: produtos; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY produtos (idprod, descricao, vlrunitario, id_grupo) FROM stdin;
\.


--
-- TOC entry 1872 (class 0 OID 16437)
-- Dependencies: 148
-- Data for Name: produtos_variacoes; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY produtos_variacoes (id, descricao, flag_grupo, flag_qtd_escolher, flag_qtd_item, vlr_unit, variacao_pai) FROM stdin;
\.


--
-- TOC entry 1869 (class 0 OID 16402)
-- Dependencies: 145
-- Data for Name: usuarios; Type: TABLE DATA; Schema: cad; Owner: postgres
--

COPY usuarios (idconta, cpf, telefone) FROM stdin;
\.


SET search_path = frente_caixa, pg_catalog;

--
-- TOC entry 1876 (class 0 OID 16478)
-- Dependencies: 152
-- Data for Name: pedidos; Type: TABLE DATA; Schema: frente_caixa; Owner: postgres
--

COPY pedidos (id, data, hora) FROM stdin;
\.


--
-- TOC entry 1877 (class 0 OID 16483)
-- Dependencies: 153
-- Data for Name: pedidos_historicos; Type: TABLE DATA; Schema: frente_caixa; Owner: postgres
--

COPY pedidos_historicos (id, data, id_pedido, id_situacao_pedido) FROM stdin;
\.


--
-- TOC entry 1879 (class 0 OID 16493)
-- Dependencies: 155
-- Data for Name: pedidos_itens; Type: TABLE DATA; Schema: frente_caixa; Owner: postgres
--

COPY pedidos_itens (id, qtd, vlr_unit, id_produto, id_pedido_item) FROM stdin;
\.


--
-- TOC entry 1880 (class 0 OID 16503)
-- Dependencies: 156
-- Data for Name: pedidos_itens_variacoes; Type: TABLE DATA; Schema: frente_caixa; Owner: postgres
--

COPY pedidos_itens_variacoes (id, qtd, id_prod_variacao, id_pedido_item) FROM stdin;
\.


--
-- TOC entry 1878 (class 0 OID 16488)
-- Dependencies: 154
-- Data for Name: situacoes_pedidos; Type: TABLE DATA; Schema: frente_caixa; Owner: postgres
--

COPY situacoes_pedidos (id, descricao) FROM stdin;
\.


SET search_path = cad, pg_catalog;

--
-- TOC entry 1835 (class 2606 OID 16423)
-- Dependencies: 146 146
-- Name: adminpk; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY administradores
    ADD CONSTRAINT adminpk PRIMARY KEY (idconta);


--
-- TOC entry 1843 (class 2606 OID 16461)
-- Dependencies: 150 150
-- Name: categoria_pkey; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY categorias
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 1830 (class 2606 OID 16408)
-- Dependencies: 144 144
-- Name: contapk; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contas
    ADD CONSTRAINT contapk PRIMARY KEY (idconta);


--
-- TOC entry 1841 (class 2606 OID 16451)
-- Dependencies: 149 149
-- Name: endereco_pkey; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY enderecos
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


--
-- TOC entry 1845 (class 2606 OID 16471)
-- Dependencies: 151 151
-- Name: grupo_pkey; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY grupos
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (id);


--
-- TOC entry 1839 (class 2606 OID 16441)
-- Dependencies: 148 148
-- Name: prod_variacao_pkey; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produtos_variacoes
    ADD CONSTRAINT prod_variacao_pkey PRIMARY KEY (id);


--
-- TOC entry 1837 (class 2606 OID 16433)
-- Dependencies: 147 147
-- Name: produtos_pkey; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (idprod);


--
-- TOC entry 1832 (class 2606 OID 16406)
-- Dependencies: 145 145
-- Name: usuariopk; Type: CONSTRAINT; Schema: cad; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuariopk PRIMARY KEY (idconta);


SET search_path = frente_caixa, pg_catalog;

--
-- TOC entry 1849 (class 2606 OID 16487)
-- Dependencies: 153 153
-- Name: pedido_historico_pkey; Type: CONSTRAINT; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedidos_historicos
    ADD CONSTRAINT pedido_historico_pkey PRIMARY KEY (id);


--
-- TOC entry 1853 (class 2606 OID 16497)
-- Dependencies: 155 155
-- Name: pedido_item_pkey; Type: CONSTRAINT; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedidos_itens
    ADD CONSTRAINT pedido_item_pkey PRIMARY KEY (id);


--
-- TOC entry 1855 (class 2606 OID 16507)
-- Dependencies: 156 156
-- Name: pedido_item_variacao_pkey; Type: CONSTRAINT; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedidos_itens_variacoes
    ADD CONSTRAINT pedido_item_variacao_pkey PRIMARY KEY (id);


--
-- TOC entry 1847 (class 2606 OID 16482)
-- Dependencies: 152 152
-- Name: pedido_pkey; Type: CONSTRAINT; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedidos
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id);


--
-- TOC entry 1851 (class 2606 OID 16492)
-- Dependencies: 154 154
-- Name: situacao_pedido_pkey; Type: CONSTRAINT; Schema: frente_caixa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY situacoes_pedidos
    ADD CONSTRAINT situacao_pedido_pkey PRIMARY KEY (id);


SET search_path = cad, pg_catalog;

--
-- TOC entry 1833 (class 1259 OID 16436)
-- Dependencies: 145
-- Name: usuariosuniquetelefone; Type: INDEX; Schema: cad; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX usuariosuniquetelefone ON usuarios USING btree (telefone) WITH (fillfactor=100);

ALTER TABLE usuarios CLUSTER ON usuariosuniquetelefone;


--
-- TOC entry 1857 (class 2606 OID 16424)
-- Dependencies: 1829 144 146
-- Name: adminfkconta; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY administradores
    ADD CONSTRAINT adminfkconta FOREIGN KEY (idconta) REFERENCES contas(idconta);


--
-- TOC entry 1861 (class 2606 OID 16462)
-- Dependencies: 150 147 1836
-- Name: fk_categoria_produto; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY categorias
    ADD CONSTRAINT fk_categoria_produto FOREIGN KEY (id_produto) REFERENCES produtos(idprod);


--
-- TOC entry 1860 (class 2606 OID 16452)
-- Dependencies: 149 1831 145
-- Name: fk_endereco_usuario; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY enderecos
    ADD CONSTRAINT fk_endereco_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios(idconta);


--
-- TOC entry 1859 (class 2606 OID 16442)
-- Dependencies: 148 148 1838
-- Name: fk_prod_variacao_variacao; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY produtos_variacoes
    ADD CONSTRAINT fk_prod_variacao_variacao FOREIGN KEY (variacao_pai) REFERENCES produtos_variacoes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1858 (class 2606 OID 16472)
-- Dependencies: 1844 147 151
-- Name: fk_produto_grupo; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY produtos
    ADD CONSTRAINT fk_produto_grupo FOREIGN KEY (id_grupo) REFERENCES grupos(id);


--
-- TOC entry 1856 (class 2606 OID 16414)
-- Dependencies: 1829 144 145
-- Name: usuariofkconta; Type: FK CONSTRAINT; Schema: cad; Owner: postgres
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuariofkconta FOREIGN KEY (idconta) REFERENCES contas(idconta) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = frente_caixa, pg_catalog;

--
-- TOC entry 1867 (class 2606 OID 16513)
-- Dependencies: 1852 155 156
-- Name: fk_ped_item_var_pedido_item; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_itens_variacoes
    ADD CONSTRAINT fk_ped_item_var_pedido_item FOREIGN KEY (id_pedido_item) REFERENCES pedidos_itens(id);


--
-- TOC entry 1866 (class 2606 OID 16508)
-- Dependencies: 156 1838 148
-- Name: fk_ped_item_var_prod_variacao; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_itens_variacoes
    ADD CONSTRAINT fk_ped_item_var_prod_variacao FOREIGN KEY (id_prod_variacao) REFERENCES cad.produtos_variacoes(id);


--
-- TOC entry 1862 (class 2606 OID 16518)
-- Dependencies: 1846 152 153
-- Name: fk_pedido_hist_pedido; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_historicos
    ADD CONSTRAINT fk_pedido_hist_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id);


--
-- TOC entry 1863 (class 2606 OID 16528)
-- Dependencies: 1850 153 154
-- Name: fk_pedido_hist_sit_pedido; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_historicos
    ADD CONSTRAINT fk_pedido_hist_sit_pedido FOREIGN KEY (id_situacao_pedido) REFERENCES situacoes_pedidos(id);


--
-- TOC entry 1865 (class 2606 OID 16523)
-- Dependencies: 152 1846 155
-- Name: fk_pedido_item_pedido; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_itens
    ADD CONSTRAINT fk_pedido_item_pedido FOREIGN KEY (id_pedido_item) REFERENCES pedidos(id);


--
-- TOC entry 1864 (class 2606 OID 16498)
-- Dependencies: 155 1836 147
-- Name: fk_pedido_item_produto; Type: FK CONSTRAINT; Schema: frente_caixa; Owner: postgres
--

ALTER TABLE ONLY pedidos_itens
    ADD CONSTRAINT fk_pedido_item_produto FOREIGN KEY (id_produto) REFERENCES cad.produtos(idprod);


--
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 7
-- Name: cad; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA cad FROM PUBLIC;
REVOKE ALL ON SCHEMA cad FROM postgres;
GRANT ALL ON SCHEMA cad TO postgres;


--
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-10-06 10:40:04

--
-- PostgreSQL database dump complete
--

