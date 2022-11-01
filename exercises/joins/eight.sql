/**
  How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30?
  Remember that guests have different costs to members (the listed costs are per half-hour 'slot'),
  and the guest user is always ID 0.
  Include in your output the name of the facility, the name of the member formatted as a single column, and
  the cost. Order by descending cost.
 */

SELECT member, facility, cost
FROM (
        SELECT (sub_members.firstname || ' ' || sub_members.surname) AS member,
               sub_facilities.name AS facility,
               CASE sub_members.memid
                    WHEN 0 THEN sub_bookings.slots * sub_facilities.guestcost
                    ELSE sub_bookings.slots * sub_facilities.membercost
               END AS cost
        FROM cd.members AS sub_members
        INNER JOIN cd.bookings as sub_bookings ON sub_members.memid = sub_bookings.memid
        INNER JOIN cd.facilities as sub_facilities ON sub_bookings.facid = sub_facilities.facid
        WHERE DATE(sub_bookings.starttime) = '2012-09-14'
     ) AS bookings
WHERE cost > 30
ORDER BY cost DESC;