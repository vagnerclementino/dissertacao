SELECT pratica_adotaca as pratica_adotada,
	   count(1) as total
FROM "temp-adocao-praticas-ageis"
group by  pratica_adotaca
