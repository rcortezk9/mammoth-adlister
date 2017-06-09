USE adlister_db;

TRUNCATE ads;
TRUNCATE users;

SELECT * FROM users;

SELECT * from ads;

INSERT INTO users
(username, email, password)
    VALUE
  ('rcortez', 'rene@email.com', 'rene123'),
  ('scortez', 'steph@email.com', 'steph123'),
  ('mcortez', 'maya@email.com', 'maya123'),
  ('vcortez', 'vicky@email.com', 'vicky123'),
  ('socortez', 'sophia@email.com', 'sophia123');


INSERT INTO ads
(user_id, title, description)
    VALUE
  (1, 'Director', 'lead of operations'),
  (2, 'Manager', 'Manages operations'),
  (3, 'Lead', 'TeamLeader'),
  (4, 'WorkerI', 'WorkerI'),
  (5, 'WorkerII', 'WorkerII');