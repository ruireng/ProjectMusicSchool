-- show all ensembles for next week
CREATE VIEW next_week_ens AS 
    SELECT *
    FROM ensemble
    WHERE EXTRACT(WEEK FROM start_time) = EXTRACT(WEEK FROM current_date) + 1;

-- show number of attendees for all ensembles next week
CREATE VIEW attendees_next_week_ens AS
    SELECT ens.lesson_id, genre_id, start_time, end_time, max_no_of_students AS max_students, min_no_of_students AS min_students, COUNT(attending.lesson_id) AS attendees
    FROM next_week_ens AS ens
    LEFT JOIN students_of_ensemble AS attending
    ON ens.lesson_id = attending.lesson_id
    GROUP BY ens.lesson_id, genre_id, start_time, end_time, max_students, min_students, attending.lesson_id;

-- show genres and spots left
CREATE VIEW genres_and_spots_left AS
    SELECT lesson_id, EXTRACT(DOW FROM start_time) AS day_number, genre, start_time, end_time, COUNT(max_students - CAST(attendees AS int)) AS spots_left
    FROM attendees_next_week_ens AS att
    LEFT JOIN genre AS ge
    ON att.genre_id = ge.genre_id
    GROUP BY lesson_id, genre, start_time, end_time, max_students, attendees;

-- show genre, weekday, and spots left
CREATE VIEW next_week_ens_info AS
    SELECT genre, (CASE
    WHEN day_number = 0 THEN 'Sunday'
    WHEN day_number = 1 THEN 'Monday'
    WHEN day_number = 2 THEN 'Tuesday'
    WHEN day_number = 3 THEN 'Wednesday'
    WHEN day_number = 4 THEN 'Thursday'
    WHEN day_number = 5 THEN 'Friday'
    WHEN day_number = 6 THEN 'Saturday'
    END) AS week_day, (CASE
    WHEN spots_left = 0 THEN 'No seats left'
    WHEN spots_left BETWEEN 1 AND 2 THEN '1-2 seats left'
    WHEN spots_left > 2 THEN 'Many seats left'
    END) AS current_status, start_time, end_time, lesson_id
    FROM genres_and_spots_left
    ORDER BY genre, start_time; 

-- query 4
-- list all ensembles held during next week, sorted by music genre and weekday
-- for each ensemble tell whether it's fully booked, has 1-2 seats left or has more seats left

-- the query
SELECT *
FROM next_week_ens_info;
