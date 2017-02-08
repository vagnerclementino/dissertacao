SELECT
	"Cod Response",
	ferramenta_utilizada,
	nivel_satisfacao,
	probabilidade_recomendacao,
	fruncionalidaes_importantes_atuais,
	funcionalidades_melhorar
FROM
	"temp-nivel-satisfacao-fgrm";

SELECT
	ferramenta_utilizada,
	count( 1 )
FROM
	"temp-nivel-satisfacao-fgrm"
group by
	ferramenta_utilizada;

SELECT
	nivel_satisfacao,
	count( 1 )
FROM
	"temp-nivel-satisfacao-fgrm"
group by
	nivel_satisfacao;
	
SELECT
	probabilidade_recomendacao,
	count( 1 )
FROM
	"temp-nivel-satisfacao-fgrm"
group by
	probabilidade_recomendacao;
