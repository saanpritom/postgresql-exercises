/**
  How can you produce a list of all members who have used a tennis court?
  Include in your output the name of the court,
  and the name of the member formatted as a single column.
  Ensure no duplicate data, and order by the member name followed by the facility name.
 */

SELECT DISTINCT (cd.members.firstname || ' ' || cd.members.surname) AS member,
       cd.facilities.name AS facility FROM cd.members
       JOIN cd.bookings ON cd.members.memid = cd.bookings.memid
       JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
       WHERE cd.facilities.name LIKE 'Tennis Court %'
       AND cd.bookings.starttime < NOW()
       ORDER BY member, facility;