-- Comments in SQL Start with dash-dash --
-- Find the app with an ID of 1880
SELECT * FROM analytics WHERE id = 1880;

-- Find the ID and app name for apps updated on August 01, 2018
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Count the number of apps in each category
SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Find the top 5 most-reviewed apps
SELECT app_name, num_reviews FROM analytics ORDER BY num_reviews DESC LIMIT 5;

-- Find the app with most reviews with a rating >= 4.8
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY num_reviews DESC LIMIT 1;

-- Average rating for each category
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

-- Most expensive app with a rating < 3
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

-- Apps with min install ≤ 50, ordered by highest rating
SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- Apps rated < 3 with at least 10000 reviews
SELECT app_name FROM analytics WHERE rating < 3 AND num_reviews >= 10000;

-- Top 10 most-reviewed apps costing between 10 cents and a dollar
SELECT app_name, num_reviews FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY num_reviews DESC LIMIT 10;

-- Most out-of-date app
SELECT app_name FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

-- Most expensive app
SELECT app_name FROM analytics ORDER BY price DESC LIMIT 1;

-- Count all reviews in the Google Play Store
SELECT SUM(num_reviews) FROM analytics;

-- Categories with more than 300 apps
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- App with highest proportion of min_installs to reviews, among apps installed at least 100,000 times
SELECT app_name, num_reviews, min_installs, (min_installs / num_reviews) AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1;
