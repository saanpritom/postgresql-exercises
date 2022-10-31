--
-- TOC entry 170 (class 1259 OID 32800)
-- Name: members; Type: TABLE; Schema: cd; Owner: -; Tablespace:
--

CREATE TABLE IF NOT EXISTS cd.members (
    memid integer NOT NULL,
    surname character varying(200) NOT NULL,
    firstname character varying(200) NOT NULL,
    address character varying(300) NOT NULL,
    zipcode integer NOT NULL,
    telephone character varying(20) NOT NULL,
    recommendedby integer,
    joindate timestamp without time zone NOT NULL
);