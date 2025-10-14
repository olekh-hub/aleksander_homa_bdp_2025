select count(*) as liczba_pracownikow, pe.stanowisko from ksiegowosc.pensja pe
join ksiegowosc.wynagrodzenie w on w.id_pensji = pe.id_pensji
join ksiegowosc.pracownicy pr on pr.id_pracownika = w.id_pracownika
group by pe.stanowisko
