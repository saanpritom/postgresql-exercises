--
-- Database table creation and population script.
--

CREATE TABLE IF NOT EXISTS bookings (
    bookid integer NOT NULL,
    facid integer NOT NULL,
    memid integer NOT NULL,
    starttime timestamp without time zone NOT NULL,
    slots integer NOT NULL
);