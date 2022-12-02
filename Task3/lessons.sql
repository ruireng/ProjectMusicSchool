CREATE VIEW ensembles_monthwise
 AS
 SELECT count(ensemble.lesson_id) AS ensemblel,
    EXTRACT(months FROM date_trunc('month', ensemble.start_time)) AS mon,
    EXTRACT(year FROM date_trunc('year', ensemble.start_time)) AS Lyear
   FROM ensemble
  GROUP BY mon, lyear
  ORDER BY mon;
  
CREATE VIEW group_monthwise
 AS
 SELECT count(gro.lesson_id) AS groupl,
    EXTRACT(month FROM date_trunc('months', gro.start_time)) AS mon,
    EXTRACT(year FROM date_trunc('year', gro.start_time)) AS Lyear
   FROM gro
  GROUP BY mon, Lyear
  ORDER BY mon;

CREATE VIEW individual_monthwise
 AS
 SELECT count(individual.lesson_id) AS individuall,
    EXTRACT(month FROM date_trunc('months', individual.start_time)) AS mon,
    EXTRACT(year FROM date_trunc('year', individual.start_time)) AS Lyear
   FROM individual
  GROUP BY mon, Lyear
  ORDER BY mon;




SELECT individualL, groupL, ensembleL, 
SUM(coalesce(individualL,0) + coalesce(groupL,0) + coalesce(ensembleL,0))
, ensembles_monthwise.mon 
FROM ensembles_monthwise
FULL JOIN group_monthwise
ON ensembles_monthwise.mon = group_monthwise.mon
FULL JOIN individual_monthwise 
ON ensembles_monthwise.mon = individual_monthwise.mon
GROUP BY individualL, groupL, ensembleL, ensembles_monthwise.mon
ORDER BY ensembles_monthwise.mon ASC;