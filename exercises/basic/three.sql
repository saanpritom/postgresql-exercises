--
-- How can you produce a list of facilities that charge a fee to members?
--

SELECT * FROM facilities WHERE membercost > 0;