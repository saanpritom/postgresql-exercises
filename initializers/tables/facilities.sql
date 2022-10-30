--
-- TOC entry 169 (class 1259 OID 32770)
-- Name: facilities; Type: TABLE; Schema: cd; Owner: -; Tablespace:
--

CREATE TABLE IF NOT EXISTS facilities (
    facid integer NOT NULL,
    name character varying(100) NOT NULL,
    membercost numeric NOT NULL,
    guestcost numeric NOT NULL,
    initialoutlay numeric NOT NULL,
    monthlymaintenance numeric NOT NULL
);