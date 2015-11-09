CREATE TABLE notice_Board(
    n_No NUMBER,
    n_Title VARCHAR2(20) CONSTRAINT nb_nn_ntitle NOT NULL,
    n_Content VARCHAR2(1000) CONSTRAINT nb_nn_ncont NOT NULL,
    n_Regdate DATE DEFAULT SYSDATE,
    n_Hit NUMBER DEFAULT 0,
    CONSTRAINT nb_pk_nno PRIMARY KEY(n_No)
);
INSERT INTO notice_Board(n_No,n_Title,n_Content,n_Hit,n_Regdate) VALUES((SELECT NVL(MAX(n_no)+1,1) FROM notice_Board),'오오','아앙','0',SYSDATE);
INSERT INTO notice_Board(n_No,n_Title,n_Content,n_Hit,n_Regdate) VALUES((SELECT NVL(MAX(n_no)+1,1) FROM notice_Board),'아앙','아앙','0',SYSDATE);
INSERT INTO notice_Board(n_No,n_Title,n_Content,n_Hit,n_Regdate) VALUES((SELECT NVL(MAX(n_no)+1,1) FROM notice_Board),'아앙','아앙','0',SYSDATE);
INSERT INTO notice_Board(n_No,n_Title,n_Content,n_Hit,n_Regdate) VALUES((SELECT NVL(MAX(n_no)+1,1) FROM notice_Board),'아앙','아앙','0',SYSDATE);
COMMIT;
