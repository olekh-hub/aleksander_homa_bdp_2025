with placa as (
select pe.kwota + pr.kwota as kwota_placy, pe.stanowisko, prac.imie, prac.nazwisko, prac.id_pracownika from ksiegowosc.wynagrodzenie w
	join ksiegowosc.pensja pe on pe.id_pensji = w.id_pensji
	join ksiegowosc.premia pr on pr.id_premii = w.id_premii
	join ksiegowosc.pracownicy prac on prac.id_pracownika = w.id_pracownika
)
select * from placa

delete from ksiegowosc.pracownicy prac
using placa 
where placa.id_pracownika = prac.id_pracownika and placa.kwota_placy::numeric < 5000
