USE adlister_db;

TRUNCATE ads;

INSERT INTO ads
(id, user_id, title, description)
    VALUE
  (01, 11, Director, Director),
  (02, 12, Manager, Manger),
  (03, 13, Lead, TeamLeader),
  (04, 14, WorkerI, WorkerI),
  (05, 15, WorkerII, WorkerII);