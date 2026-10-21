Step D ki 5 queries

-- 1. Top 10 districts
SELECT District, Total FROM rajasthan_cases ORDER BY Total DESC LIMIT 10;

-- 2. Civil vs Criminal split
SELECT SUM(Civil) AS civil, SUM(Criminal) AS criminal,
       ROUND(SUM(Criminal)*100/SUM(Total),1) AS criminal_pct
FROM rajasthan_cases;

-- 3. RANK(): highest criminal share
SELECT District, Criminal_pct,
       RANK() OVER (ORDER BY Criminal_pct DESC) AS criminal_rank
FROM rajasthan_cases ORDER BY criminal_rank LIMIT 10;

-- 4. Lowest 5 districts
SELECT District, Total FROM rajasthan_cases ORDER BY Total ASC LIMIT 5;

-- 5. Top 5 districts ka state share
SELECT ROUND(SUM(Share_of_State_pct),1) AS top5_share_pct
FROM (SELECT Share_of_State_pct FROM rajasthan_cases
      ORDER BY Total DESC LIMIT 5) t;