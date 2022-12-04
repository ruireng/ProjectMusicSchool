--view for number of individuallessons per instructor at current date
CREATE VIEW ind_instructor
 AS
 SELECT individual.instructor_id,
    count(individual.instructor_id) AS noflessons,
    EXTRACT(month FROM individual.start_time) AS month
   FROM individual
  WHERE to_char(individual.start_time, 'YYYY-MM'::text) = to_char(CURRENT_TIMESTAMP, 'YYYY-MM'::text)
  GROUP BY individual.instructor_id, (EXTRACT(month FROM individual.start_time));

--view for number of grouplessons per instructor at current date
CREATE VIEW gro_instructor
 AS
 SELECT gro.instructor_id,
    count(gro.instructor_id) AS noflessons,
    EXTRACT(month FROM gro.start_time) AS month
   FROM gro
  WHERE to_char(gro.start_time, 'YYYY-MM'::text) = to_char(CURRENT_TIMESTAMP, 'YYYY-MM'::text)
  GROUP BY gro.instructor_id, (EXTRACT(month FROM gro.start_time));


--view for number of ensembles per instructor at current date
CREATE VIEW ens_instructor
 AS
 SELECT ensemble.instructor_id,
    count(ensemble.instructor_id) AS noflessons,
    EXTRACT(month FROM ensemble.start_time) AS month
   FROM ensemble
  WHERE to_char(ensemble.start_time, 'YYYY-MM'::text) = to_char(CURRENT_TIMESTAMP, 'YYYY-MM'::text)
  GROUP BY ensemble.instructor_id, (EXTRACT(month FROM ensemble.start_time));


--Query that returns total number of lessons per instructor at currentdate
SELECT ind_instructor.instructor_id, sum(coalesce(ind_instructor.noflessons,0)
	+ coalesce(gro_instructor.noflessons,0)
	+ coalesce(ens_instructor.noflessons, 0))  
FROM ind_instructor 
FULL JOIN ens_instructor 
ON ind_instructor.instructor_id = ens_instructor.instructor_id 
FULL JOIN gro_instructor 
ON ind_instructor.instructor_id= gro_instructor.instructor_id
GROUP BY ind_instructor.instructor_id;
