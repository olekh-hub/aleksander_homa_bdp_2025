select prac.imie, prac.nazwisko, pe.kwota, pr.kwota from ksiegowosc.pracownicy prac
join ksiegowosc.wynagrodzenie w on w.id_pracownika = prac.id_pracownika
join ksiegowosc.pensja pe on w.id_pensji = pe.id_pensji
join ksiegowosc.premia pr on w.id_premii = pr.id_premii
order by pe.kwota desc, pr.kwota desc
