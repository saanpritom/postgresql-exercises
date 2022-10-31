/**
  How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30?
  Remember that guests have different costs to members (the listed costs are per half-hour 'slot'),
  and the guest user is always ID 0.
  Include in your output the name of the facility, the name of the member formatted as a single column, and
  the cost. Order by descending cost, and do not use any subqueries.
 */

SELECT (cd.members.firstname || ' ' || cd.members.surname) AS member,
       cd.facilities.name AS facility,
       CASE cd.members.memid
            WHEN 0 THEN cd.bookings.slots * cd.facilities.guestcost
            ELSE cd.bookings.slots * cd.facilities.membercost
       END AS cost
FROM cd.members
       INNER JOIN cd.bookings ON cd.members.memid = cd.bookings.memid
       INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE DATE(cd.bookings.starttime) = '2012-09-14' AND
      (
          (cd.members.memid = 0 AND (cd.bookings.slots * cd.facilities.guestcost) > 30)
          OR
          (cd.members.memid != 0 AND (cd.bookings.slots * cd.facilities.membercost) > 30)
      )
ORDER BY cost DESC;