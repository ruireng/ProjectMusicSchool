-- all sibling relations and their enrollment statuses
CREATE VIEW sibling_relations AS
    SELECT si.student_id, si.sibling_student_id, SUM(CAST(enrolled AS int)) AS enrollments
    FROM sibling_to AS si
    LEFT JOIN student AS st 
    ON si.student_id = st.student_id OR si.sibling_student_id = st.student_id
    GROUP BY si.student_id, si.sibling_student_id, enrolled
    HAVING enrolled = CAST(1 AS bit);

-- all sibling relations where both siblings are currently active
CREATE VIEW active_sibling_relations AS
    SELECT student_id, sibling_student_id
    FROM sibling_relations
    WHERE enrollments = 2;

-- all active siblings
CREATE VIEW active_siblings AS
    SELECT st.student_id, first_name, last_name
    FROM student AS st
    LEFT JOIN active_sibling_relations AS si
    ON st.student_id = si.student_id OR st.student_id = si.sibling_student_id
    WHERE sibling_student_id IS NOT NULL;

-- all students without siblings
CREATE VIEW students_without_siblings AS
    SELECT st.student_id, st.first_name, st.last_name
    FROM student AS st
    LEFT JOIN active_siblings AS si
    ON st.student_id = si.student_id
    WHERE si.student_id IS NULL AND enrolled = CAST(1 AS bit);

-- all students with siblings and the number of siblings they have
CREATE VIEW number_of_siblings AS
    SELECT st.student_id, first_name, last_name, COUNT(ssn) AS no_of_siblings
    FROM active_sibling_relations AS si
    LEFT JOIN student AS st
    ON si.student_id = st.student_id OR si.sibling_student_id = st.student_id
    GROUP BY st.student_id, first_name, last_name, ssn;
    
-- all students with number of siblings (including 0)
CREATE VIEW all_number_of_siblings AS
    SELECT concat(si.first_name) || concat(st.first_name) AS first_name, concat(si.last_name) || concat(st.last_name) AS last_name,
    concat(st.student_id) || concat(si.student_id) AS student_id, COALESCE(no_of_siblings, 0) AS no_of_siblings
    FROM number_of_siblings AS si
    FULL JOIN students_without_siblings AS st
    ON si.first_name = st.first_name AND si.last_name = st.last_name;

-- query 2:
-- show how many students there are with no sibling, with one sibling, with
-- two siblings, etc.

SELECT COUNT(no_of_siblings), no_of_siblings
FROM all_number_of_siblings
GROUP BY no_of_siblings;
