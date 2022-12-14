--
-- Declaring inter table relations.
--

--
-- TOC entry 2196 (class 2606 OID 32822)
-- Name: bookings_pk; Type: CONSTRAINT; Schema: cd; Owner: -; Tablespace:
--
ALTER TABLE ONLY cd.bookings DROP CONSTRAINT IF EXISTS bookings_pk;

ALTER TABLE ONLY cd.bookings
    ADD CONSTRAINT bookings_pk PRIMARY KEY (bookid);

--
-- TOC entry 2192 (class 2606 OID 32777)
-- Name: facilities_pk; Type: CONSTRAINT; Schema: cd; Owner: -; Tablespace:
--

ALTER TABLE ONLY cd.facilities DROP CONSTRAINT IF EXISTS facilities_pk;

ALTER TABLE ONLY cd.facilities
    ADD CONSTRAINT facilities_pk PRIMARY KEY (facid);

--
-- TOC entry 2194 (class 2606 OID 32807)
-- Name: members_pk; Type: CONSTRAINT; Schema: cd; Owner: -; Tablespace:
--

ALTER TABLE ONLY cd.members DROP CONSTRAINT IF EXISTS members_pk;

ALTER TABLE ONLY cd.members
    ADD CONSTRAINT members_pk PRIMARY KEY (memid);

--
-- TOC entry 2198 (class 2606 OID 32823)
-- Name: fk_bookings_facid; Type: FK CONSTRAINT; Schema: cd; Owner: -
--

ALTER TABLE ONLY cd.bookings DROP CONSTRAINT IF EXISTS fk_bookings_facid;

ALTER TABLE ONLY cd.bookings
    ADD CONSTRAINT fk_bookings_facid FOREIGN KEY (facid) REFERENCES cd.facilities(facid);

--
-- TOC entry 2199 (class 2606 OID 32828)
-- Name: fk_bookings_memid; Type: FK CONSTRAINT; Schema: cd; Owner: -
--

ALTER TABLE ONLY cd.bookings DROP CONSTRAINT IF EXISTS fk_bookings_memid;

ALTER TABLE ONLY cd.bookings
    ADD CONSTRAINT fk_bookings_memid FOREIGN KEY (memid) REFERENCES cd.members(memid);

--
-- TOC entry 2197 (class 2606 OID 32808)
-- Name: fk_members_recommendedby; Type: FK CONSTRAINT; Schema: cd; Owner: -
--

ALTER TABLE ONLY cd.members DROP CONSTRAINT IF EXISTS fk_members_recommendedby;

ALTER TABLE ONLY cd.members
    ADD CONSTRAINT fk_members_recommendedby FOREIGN KEY (recommendedby) REFERENCES cd.members(memid) ON DELETE SET NULL;
