

CREATE TABLE dbo.TB_CARGO
(
CD_CARGO  INT PRIMARY KEY,
DS_CARGO  VARCHAR(2000)
)


CREATE TABLE dbo.TB_CANDIDATO_2
(
SQ_CANDIDATO  VARCHAR(2000),
NR_CANDIDATO  VARCHAR(2000),
NM_CANDIDATO  VARCHAR(2000),
NM_URNA_CANDIDATO  VARCHAR(2000),
NM_SOCIAL_CANDIDATO  VARCHAR(2000),
NR_CPF_CANDIDATO  VARCHAR(2000),
CD_CARGO INT
)

ALTER TABLE dbo.TB_CARGO ADD CONSTRAINT [FK_CARGO] FOREIGN KEY (CD_CARGO) REFERENCES  dbo.TB_CARGO(CD_CARGO) 


INSERT INTO dbo.TB_CARGO (CD_CARGO , DS_CARGO)

SELECT DISTINCT CAST(CD_CARGO AS INT) CD_CARGO , DS_CARGO
FROM dbo.TB_CANDIDATO
ORDER BY CAST(CD_CARGO AS INT)


/*

DELETE
FROM dbo.TB_CANDIDATO_2
WHERE CD_CARGO >= 9

SELECT DISTINCT CAST(CD_CARGO AS INT) CD_CARGO 
FROM dbo.TB_CANDIDATO_2
ORDER BY CAST(CD_CARGO AS INT)

*/