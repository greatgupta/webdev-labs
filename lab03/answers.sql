-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
 select id, first_name, last_name from users order by last_name;



-- Exercise 4
 select id, image_url, user_id from posts where user_id = 26;



-- Exercise 5
 select id, image_url, user_id from posts where user_id = 26 OR user_id= 12;



-- Exercise 6
select count(*) as count from posts;



-- Exercise 7
select user_id, count(*) as count from comments group by user_id order by count desc ;



-- Exercise 8
 select posts.id, posts.image_url, user_id, username, first_name, last_name from posts join users u on posts.user_id = u.id where posts.user_id = 26 OR posts.user_id= 12 ;




-- Exercise 9
select posts.id, posts.pub_date, following_id from posts join following f on posts.user_id = f.following_id where f.user_id=26;



-- Exercise 10
select posts.id, posts.pub_date, following_id, u.username from posts join following f on posts.user_id = f.following_id join users u on posts.user_id = u.id where f.user_id=26 order by pub_date desc ;



-- Exercise 11
INSERT into bookmarks(user_id, post_id, timestamp) VALUES (26,219,now())
INSERT into bookmarks(user_id, post_id, timestamp) VALUES (26,220,now())
INSERT into bookmarks(user_id, post_id, timestamp) VALUES (26,221,now())



-- Exercise 12
DELETE from bookmarks
where user_id = 26 and post_id = 219
DELETE from bookmarks
where user_id = 26 and post_id = 220
DELETE from bookmarks
where user_id = 26 and post_id = 221



-- Exercise 13
update users
set email = 'knick2022@gmail.com'
where id=26;



-- Exercise 14
select posts.id, posts.user_id, count(c.id) as count, posts.caption from posts join comments c on posts.id = c.post_id
where posts.user_id = 26 group by posts.id, posts.user_id order by count desc