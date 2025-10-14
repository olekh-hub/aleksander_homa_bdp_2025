select id_pracownika from ksiegowosc.wynagrodzenie w
join ksiegowosc.pensja pe on pe.id_pensji = w.id_pensji 	
join ksiegowosc.premia pr on pr.id_premii = w.id_premii
where (pe.kwota + pr.kwota)::numeric > 5500

