select prac.imie, prac.nazwisko, pe.kwota from ksiegowosc.pracownicy prac
join ksiegowosc.wynagrodzenie w on w.id_pracownika = prac.id_pracownika
join ksiegowosc.pensja pe on w.id_pensji = pe.id_pensji
order by pe.kwota desc
