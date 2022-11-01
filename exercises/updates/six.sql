/**
  We want to alter the price of the second tennis court so that it costs 10% more than
  the first one.
  Try to do this without using constant values for the prices,
  so that we can reuse the statement if we want to.
 */


UPDATE cd.facilities
SET membercost = ROUND((((
        SELECT sub.membercost FROM cd.facilities AS sub WHERE sub.facid = 0
    ) * 10) / 100) + membercost, 1),
    guestcost = ROUND((((
        SELECT sub.guestcost FROM cd.facilities AS sub WHERE sub.facid = 0
    ) * 10) / 100) + guestcost, 1)
WHERE cd.facilities.facid = 1;