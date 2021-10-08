-- // ### Task:

-- // 1. Find the name of the supplier who supplies the part **'motor belt'**.
-- // 2. Find the supplier detail who supplies all parts.
-- // 3. Find the details of parts supplied by at least two different suppliers.


create table supplier(sid INTEGER, sname VARCHAR(20), address text, PRIMARY KEY(sid));
create table parts(pid INTEGER, pname VARCHAR(20), color VARCHAR(20), PRIMARY KEY(pid));
create table catlog(cid INTEGER, sid INTEGER, pid INTEGER, cost float, PRIMARY KEY(cid), FOREIGN KEY(sid) references supplier(sid), foreign key(pid) references parts(pid));

INSERT INTO supplier (sid, sname, address) VALUES (1, 'tushar','NSK'),(2, 'komal', 'SAG'),(3, 'kiran','AUR');
INSERT INTO parts (pid, pname, color) VALUES (4, 'motorbelt','black'),(5, 'gearbox','red'),(6, 'motor','brown');

INSERT INTO catlog (cid, sid, pid, cost) VALUES (7, 1, 4, 500),(8, 2, 5, 600),(9, 2, 6, 7000);

select sname from supplier where sid in(select sid from catlog where pid in(select pid from parts where pname ='motorbelt'));

select * from supplier where sid in(select sid from catlog where pid in(select pid from parts where pname ='allparts'));
