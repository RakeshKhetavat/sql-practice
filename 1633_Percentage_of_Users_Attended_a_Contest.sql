-- LeetCode #1633 - Percentage of Users Attended a Contest
-- Difficulty: Easy

SELECT 
    r.contest_id,
    ROUND(
        COUNT(r.contest_id) * 100.0 / (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
