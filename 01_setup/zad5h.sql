select prac.imie, prac.nazwisko from ksiegowosc.wynagrodzenie w
join ksiegowosc.pracownicy prac on prac.id_pracownika = w.id_pracownika
join ksiegowosc.premia pr on pr.id_premii = w.id_premii
join ksiegowosc.godziny godz on godz.id_godziny = w.id_godziny
where pr.kwota::numeric = 0 and godz.liczba_godzin > 160
