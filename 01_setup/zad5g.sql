-- 5g) tu też zmieniłem przedział, żeby były jakieś rekordy
select imie, nazwisko from ksiegowosc.pracownicy prac 
join ksiegowosc.wynagrodzenie w on w.id_pracownika = prac.id_pracownika
join ksiegowosc.pensja pe on w.id_pensji = pe.id_pensji
where pe.kwota::numeric between 5000 and 6000
