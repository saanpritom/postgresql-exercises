--
-- Create Indexes for various fields.
--

CREATE INDEX IF NOT EXISTS "bookings.memid_facid" ON cd.bookings USING btree (memid, facid);

CREATE INDEX IF NOT EXISTS "bookings.facid_memid" ON cd.bookings USING btree (facid, memid);

CREATE INDEX IF NOT EXISTS "bookings.facid_starttime" ON cd.bookings USING btree (facid, starttime);

CREATE INDEX IF NOT EXISTS "bookings.memid_starttime" ON cd.bookings USING btree (memid, starttime);

CREATE INDEX IF NOT EXISTS "bookings.starttime" ON cd.bookings USING btree (starttime);

CREATE INDEX IF NOT EXISTS "members.joindate" ON cd.members USING btree (joindate);

CREATE INDEX IF NOT EXISTS "members.recommendedby" ON cd.members USING btree (recommendedby);