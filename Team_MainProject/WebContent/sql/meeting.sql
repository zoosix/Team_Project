CREATE TABLE meeting(
  m_no NUMBER,
  m_lang1 VARCHAR2(20)  CONSTRAINT mt_nn_lang1 NOT NULL,
  m_lang2 VARCHAR2(20)  CONSTRAINT mt_nn_lang2 NOT NULL,
  m_lang1num NUMBER  CONSTRAINT mt_nn_lang1num NOT NULL,
  m_lang2num NUMBER  CONSTRAINT mt_nn_lang2num NOT NULL,
  m_title VARCHAR2(40) CONSTRAINT mt_nn_title NOT NULL,
  m_summary VARCHAR2(50)  CONSTRAINT mt_nn_summary NOT NULL,
  m_content VARCHAR2(1000)  CONSTRAINT mt_nn_content NOT NULL,
  m_meetingDate VARCHAR2(100)  CONSTRAINT mt_nn_mtdate NOT NULL,
  m_partDate VARCHAR2(100)  CONSTRAINT mt_nn_pdate NOT NULL,
  m_place VARCHAR2(20)  CONSTRAINT mt_nn_place NOT NULL,
  m_location VARCHAR2(100)  CONSTRAINT mt_nn_location NOT NULL,
  m_email VARCHAR2(30),
  m_tel VARCHAR2(30),
  m_end VARCHAR2(10), 
  m_wish NUMBER DEFAULT 0,
  m_filename VARCHAR2(260),
  m_filesize NUMBER,
  CONSTRAINT mt_pk_no PRIMARY KEY(m_no)
);
INSERT INTO meeting (m_no,m_lang1,m_lang2,m_lang1num,m_lang2num,m_title,m_summary,m_content,m_meetingDate,m_partDate,
m_place,m_location,m_email,m_tel,m_end) VALUES((SELECT NVL(MAX(m_no)+1,1) FROM meeting),'영어','한국어','1','2','영어배워용!','놀면서 배우는 영어 모임','영어모임','2015-11-11',
'2015-12-20','홍대','홍대','jingul77@gmail.com','010-4045-0444','끝');
COMMIT;

