PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20220804150226');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'Looking for a good book to read.','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO posts VALUES(2,'Today''s lunch was great!','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
INSERT INTO posts VALUES(3,'Master Wooly taught me how to use Git! Now I can teach my little brother Ben.','2017-03-31 06:00:32.004378','2017-03-31 06:00:32.004378');
INSERT INTO posts VALUES(4,'My brother Ken is studying so hard! Apparently he wants to become an engineer. Maybe I should also give it a shot.','2017-04-15 07:24:32.004378','2017-03-31 07:24:32.004378');
INSERT INTO posts VALUES(5,'Learning to code on Progate. I just completed Rails/Study/3!','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(6,'I went to a programming workshop at Progate! Learned so much & got a really cute sticker :)','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(7,'hello','2022-08-05 12:49:36.253274','2022-08-05 12:49:36.253274');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO users VALUES(1,'Rizky Hermawan','rhermawan@gmail.com','2022-08-04 15:04:53.341339','2022-08-05 13:37:18.417847');
INSERT INTO users VALUES(2,'Ken the Ninja','ken@prog-8.com','2022-08-04 15:07:11.172314','2022-08-04 15:07:11.172314');
INSERT INTO users VALUES(3,'Master Wooly','master@prog-8.com','2022-08-04 15:11:05.960794','2022-08-04 15:11:05.960794');
INSERT INTO users VALUES(4,'Rizky Hermawan','rhermawan56@gmail.com','2022-08-05 13:08:18.723337','2022-08-05 13:08:18.723337');
INSERT INTO users VALUES(5,'Rizky Hermawan','rhermawan963@gmail.com','2022-08-05 13:19:10.357300','2022-08-05 13:19:10.357300');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',7);
INSERT INTO sqlite_sequence VALUES('users',5);
COMMIT;