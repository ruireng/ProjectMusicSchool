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

--lessons held on the same year and month will have both years and months concatenaded 'YYYYYYYY', 'MMMM' will be fixed later hopefully
CREATE VIEW lessons_my
 AS
 SELECT ensembles_monthwise.ensemblel,
    group_monthwise.groupl,
    individual_monthwise.individuall,
    concat(group_monthwise.mon, individual_monthwise.mon, ensembles_monthwise.mon) AS mon,
    concat(group_monthwise.lyear, individual_monthwise.lyear, ensembles_monthwise.lyear) AS lyear
   FROM ensembles_monthwise
     FULL JOIN group_monthwise ON ensembles_monthwise.mon = group_monthwise.mon AND ensembles_monthwise.lyear = group_monthwise.lyear
     FULL JOIN individual_monthwise ON group_monthwise.mon = individual_monthwise.mon AND individual_monthwise.lyear = group_monthwise.lyear;

--all lessons+ total year 2023
SELECT 
coalesce(individualL,0) AS individualL,
coalesce(groupL, 0) AS groupL, 
coalesce(ensembleL, 0) AS ensembleL, 
SUM(coalesce(individualL,0) + coalesce(groupL,0) + coalesce(ensembleL,0)) AS total
, mon 
FROM lessons_my
--WHERE COLUMN be modified when needed
WHERE lyear= '2023'
GROUP BY individualL, groupL, ensembleL, mon
ORDER BY cast(mon AS int) ASC;
