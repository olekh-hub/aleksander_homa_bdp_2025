create table if not exists ksiegowosc.pracownicy (
	id_pracownika serial primary key,
	imie varchar(255),
	nazwisko varchar(255),
	adres varchar(255),
	telefon varchar(11)
);

create table if not exists ksiegowosc.godziny (
	id_godziny serial primary key,
	miesiac date,
	liczba_godzin int,
	id_pracownika int references ksiegowosc.pracownicy on delete cascade
);

create table if not exists ksiegowosc.pensja (
	id_pensji serial primary key,
	stanowisko varchar(255),
	kwota money 
);

create table if not exists ksiegowosc.premia (
	id_premii serial primary key,
	rodzaj varchar(255),
	kwota money
);

create table if not exists ksiegowosc.wynagrodzenie (
	id_wynagrodzenia serial primary key,
	data date,
	id_pracownika int references ksiegowosc.pracownicy on delete cascade,
	id_godziny int references ksiegowosc.godziny on delete cascade,
	id_pensji int references ksiegowosc.pensja,
	id_premii int references ksiegowosc.premia
);

