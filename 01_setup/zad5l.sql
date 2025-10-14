with placa as (
select pe.kwota + pr.kwota as kwota_placy, pe.stanowisko from ksiegowosc.wynagrodzenie w
	join ksiegowosc.pensja pe on pe.id_pensji = w.id_pensji
	join ksiegowosc.premia pr on pr.id_premii = w.id_premii
)
select min(kwota_placy), max(kwota_placy), round(avg(kwota_placy::numeric),2)::money from placa
where stanowisko = 'starszy księgowy'
