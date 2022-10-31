/**
  You'd like to get the first and last name of
  the last member(s) who signed up - not just the date. How can you do that?
 */

SELECT cd.members.firstname, cd.members.surname, cd.members.joindate
  from cd.members
  where cd.members.joindate = (select cd.members.joindate
                      from cd.members
                      order by cd.members.joindate desc nulls last limit 1)