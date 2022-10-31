/**
  How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'?
  Return a list of start time and facility name pairings, ordered by the time.
 */

SELECT cd.bookings.starttime AS start, cd.facilities.name FROM cd.bookings
INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid
WHERE DATE(cd.bookings.starttime) = '2012-09-21' AND cd.facilities.name LIKE 'Tennis Court %'
ORDER BY cd.bookings.starttime;