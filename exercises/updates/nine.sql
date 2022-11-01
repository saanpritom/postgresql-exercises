/**
  In our previous exercises, we deleted a specific member who had never made a booking.
  How can we make that more general, to delete all members who have never made a booking?
 */

DELETE FROM cd.members WHERE cd.members.memid NOT IN (
    SELECT cd.bookings.memid FROM cd.bookings
    )