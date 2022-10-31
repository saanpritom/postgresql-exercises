/**
  How can you output a list of all members who have recommended another member?
  Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).
 */

SELECT DISTINCT cd.members.firstname, cd.members.surname FROM cd.members
INNER JOIN cd.members AS recommended_members ON
cd.members.memid = recommended_members.recommendedby
ORDER BY cd.members.surname;