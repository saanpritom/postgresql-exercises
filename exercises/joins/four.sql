/**
  How can you output a list of all members, including the individual who recommended them (if any)?
  Ensure that results are ordered by (surname, firstname).
 */


SELECT dir_members.firstname AS memfname, dir_members.surname AS memsname,
       rec_members.firstname AS recfname, rec_members.surname AS recsname
FROM cd.members AS dir_members LEFT OUTER JOIN cd.members AS rec_members ON
dir_members.recommendedby = rec_members.memid ORDER BY memsname, memfname;