CREATE VIEW `kaikkiT` AS
SELECT tuote.idtuote,tuotenimi,valmistaja,hinta,lkm,myymala.idmyymala,sijainti,tyontekijat
FROM varasto
JOIN tuote ON varasto.idtuote=tuote.idtuote
JOIN myymala ON varasto.idmyymala = myymala.idmyymala
ORDER BY tuotenimi;