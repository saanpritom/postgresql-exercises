/**
  You, for some reason, want a combined list of all surnames and all facility names.
  Yes, this is a contrived example :-). Produce that list!
 */

 SELECT surname FROM members
 UNION
 SELECT name AS surname FROM facilities;