/**
  How can you output a list of all members, including the individual who recommended them (if any),
  without using any joins?
  Ensure that there are no duplicates in the list, and that each firstname + surname pairing is
  formatted as a column and ordered.
 */


SELECT DISTINCT (cd.members.firstname || ' ' || cd.members.surname) AS member,
        (
            SELECT (ref_members.firstname || ' ' || ref_members.surname)
            FROM cd.members AS ref_members
            WHERE ref_members.memid=cd.members.recommendedby
        ) AS recommender
FROM cd.members ORDER BY member, recommender;