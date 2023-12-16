INSERT INTO ADMINDATA
VALUES('Michel','Jackson','2001-04-02','alan@gmail.com','ABC','Andhra pradesh','Kadapa','556657','Michel123','9876387373'),
('jin','seok','1994-05-01','jinseok@gmail.com','defg','south korea','seoul','537732','jin123','9878743332'),
('kim','taer','1997-12-08','kim@gmail.com','hijk','south korea','busan','553321','kim123','9876516732'),
('nam','joon','1994-08-02','namjoon@gmail.com','lnmnj','usa','washington','764352','namjoo123','9865543332'),
('suga','tae','1993-05-02','suga@gmail.com','oqrst','TN','chennai','600762','suga123','9812343332'),
('ravi','shankar','2001-03-09','shankar@gmail.com','xyyytz','TN','chennai','600119','ravi123','9876545632'),
('vijay','sethubathi','1990-03-04','vijay@gmail.com','hbdgdf','TN','chennai','600234','vijay123','9876587932'),
('jackie','chan','1992-05-01','jackie@gmail.com','xyhfhgz','korea','busan','553321','jackie123','9876543345'),
('sofia','clerk','2003-09-02','sofia@gmail.com','xhfhhyz','TN','chennai','600877','sofia123','9876543562'),
('sof','clerk','2003-09-02','sofia@gmail.com','xhfhhyz','TN','chennai','600877','sofia123','9876543562');
('sofia','clerk','2003-09-02','sofia@gmail.com','xhfhhyz','TN','chennai','600877','sofia123','9876543562'),



INSERT INTO ADMINDATA
VALUES('','clerk','2003-09-02','sofia@gmail.com','xhfhhyz','TN','chennai','600877','sofia123','9876543562');

SELECT * FROM ADMINDATA;


ALTER TABLE ADMINDATA
ALTER COLUMN AdminLastName [varchar] (50) NOT NULL;

SELECT AdminLastName FROM ADMINDATA
WHERE AdminLastName IS NOT NULL;