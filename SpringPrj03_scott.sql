SELECT USER
FROM DUAL;

SELECT *
FROM TBL_MEMBERLIST;

--�� ���̺� ����
CREATE TABLE TBL_MEMBERLIST
( ID        VARCHAR2(30)    NOT NULL
, PW        VARCHAR2(50)    NOT NULL
, NAME      VARCHAR2(50)    NOT NULL
, TEL       VARCHAR2(50)    NOT NULL
, EMAIL     VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PK PRIMARY KEY(ID)
);
--==>> Table TBL_MEMBERLIST��(��) �����Ǿ����ϴ�.


--�� ������ �Է�(��ȣȭ ��Ű�� ���)
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '������', '010-1234-1234', 'admin@test.com');
--==>> �� �� ����
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL) VALUES('admin', CRYPTPACK.ENCRYPT('java006$', 'admin'), '������', '010-1234-1234', 'admin@test.com')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� Ȯ��
SELECT *
FROM TBL_MEMBERLIST;
--==>> admin	-#O?|/	������	010-1234-1234	admin@test.com


--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �⺻ ��ȸ ������ ����
SELECT ID, NAME, TEL, EMAIL
FROM TBL_MEMBERLIST;
--> �� �� ����
SELECT ID, NAME, TEL, EMAIL FROM TBL_MEMBERLIST
;
--==>> admin	������	010-1234-1234	admin@test.com


--�� ������ �߰� �Է�(���� ���� �ǽ��� ���� �غ� - ���� ȯ�� ����)
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('choimoonjung', CRYPTPACK.ENCRYPT('java006$', 'choimoonjung'), '�ֹ���', '010-2877-0992', 'chmj072@gmail.com');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


-- Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.






