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

-- ----------------QNA--------------------------------------------------------
DROP TABLE qna;
CREATE TABLE qna(
 q_No NUMBER CONSTRAINT qna_nn_qno NOT NULL,
 q_Title VARCHAR2(100) CONSTRAINT qna_nn_qtitle NOT NULL,
 q_Content CLOB CONSTRAINT qna_nn_qcont NOT NULL,
 q_Regdate DATE DEFAULT SYSDATE CONSTRAINT qna_nn_qreg NOT NULL,
 q_mail VARCHAR2(100) CONSTRAINT qna_nn_qmail NOT NULL,
 q_pwd VARCHAR2(8) CONSTRAINT qna_nn_qpwd NOT NULL, 
 q_hit NUMBER DEFAULT 0,
 Group_ID NUMBER DEFAULT 0,
 Group_Step NUMBER DEFAULT 0, 
 Group_Tab NUMBER DEFAULT 0, 
 Root NUMBER DEFAULT 0, 
 Depth NUMBER DEFAULT 0, 
 q_answer CLOB,
 CONSTRAINT qna_pk_qno PRIMARY KEY(q_no)
);

INSERT INTO qna (q_No,q_Title,q_Content,q_mail,q_pwd,group_id) VALUES((SELECT NVL(MAX(q_no)+1,1) FROM qna),'1메일링 신청 서비스는 어떻게 할까요?','궁금합니다','sist@naver.com','n',(SELECT NVL(MAX(group_id)+1,1)FROM qna));
INSERT INTO qna (q_No,q_Title,q_Content,q_mail,q_pwd,group_id) VALUES((SELECT NVL(MAX(q_no)+1,1) FROM qna),'2메일링 신청 서비스는 어떻게 할까요?','궁금합니다','sist@naver.com','n',(SELECT NVL(MAX(group_id)+1,1)FROM qna));
INSERT INTO qna (q_No,q_Title,q_Content,q_mail,q_pwd,group_id) VALUES((SELECT NVL(MAX(q_no)+1,1) FROM qna),'3메일링 신청 서비스는 어떻게 할까요?','궁금합니다','sist@naver.com','n',(SELECT NVL(MAX(group_id)+1,1)FROM qna));
INSERT INTO qna (q_No,q_Title,q_Content,q_mail,q_pwd,group_id) VALUES((SELECT NVL(MAX(q_no)+1,1) FROM qna),'4메일링 신청 서비스는 어떻게 할까요?','궁금합니다','sist@naver.com','n',(SELECT NVL(MAX(group_id)+1,1)FROM qna));
COMMIT;