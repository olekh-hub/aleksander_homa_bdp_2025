select prac.imie, prac.nazwisko, (godz.liczba_godzin - 160) as liczba_nadgodzin from ksiegowosc.wynagrodzenie w
join ksiegowosc.pracownicy prac on prac.id_pracownika = w.id_pracownika
join ksiegowosc.godziny godz on godz.id_godziny = w.id_godziny
where godz.liczba_godzin > 160

