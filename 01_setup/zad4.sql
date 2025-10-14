insert into ksiegowosc.pracownicy (imie, nazwisko, adres, telefon)
values 
    ('Natalia', 'Grabowska', 'ul. Kwiatowa 17A, Toruń', '518002341'),
    ('Marek', 'Lisowski', 'os. Zielone Wzgórze 5/12, Gdynia', '601443298'),
    ('Olga', 'Czarnecka', 'ul. Polna 3, Rzeszów', '792001155'),
    ('Damian', 'Nowicki', 'ul. Kolejowa 42, Zabrze', '505774321'),
    ('Barbara', 'Rutkowska', 'ul. Jagodowa 8/2, Olsztyn', '733890452'),
    ('Kamil', 'Majewski', 'ul. Spacerowa 15, Kielce', '690345881'),
    ('Sandra', 'Piotrowska', 'ul. Nadmorska 4, Świnoujście', '727564933'),
    ('Andrzej', 'Sosnowski', 'ul. Rzemieślnicza 11, Radom', '602998877'),
    ('Lidia', 'Bielawska', 'ul. Zamkowa 2, Malbork', '739110568'),
    ('Mateusz', 'Ostrowski', 'ul. Górska 9/4, Zakopane', '512667230');

insert into ksiegowosc.godziny (miesiac, liczba_godzin, id_pracownika)
values
    ('2025-10-01', 168, 1),
    ('2025-10-01', 160, 2),
    ('2025-10-01', 176, 3),
    ('2025-10-01', 150, 4),
    ('2025-10-01', 168, 5),
    ('2025-10-01', 182, 6),
    ('2025-10-01', 170, 7),
    ('2025-10-01', 155, 8),
    ('2025-10-01', 162, 9),
    ('2025-10-01', 140, 10);

insert into ksiegowosc.pensja (stanowisko, kwota)
values
    ('asystent księgowego', 4200.00),
    ('księgowy', 5200.00),
    ('starszy księgowy', 6400.00),
    ('analityk finansowy', 7000.00);

insert into ksiegowosc.premia (rodzaj, kwota)
values
    ('premia uznaniowa', 800.00),
    ('premia świąteczna', 1200.00),
    ('premia kwartalna', 1500.00),
    ('premia za frekwencję', 500.00),
    ('premia za projekt', 2000.00),
    ('premia motywacyjna', 1000.00),
    ('premia roczna', 2500.00),
    ('premia za nadgodziny', 600.00),
    ('premia jubileuszowa', 3000.00),
    ('brak premii', 0.00);

insert into ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii)
values
    ('2025-10-31', 1, 1, 2, 1),
    ('2025-10-31', 2, 2, 3, 2),
    ('2025-10-31', 3, 3, 1, 4),
    ('2025-10-31', 4, 4, 2, 10),
    ('2025-10-31', 5, 5, 4, 5),
    ('2025-10-31', 6, 6, 3, 6),
    ('2025-10-31', 7, 7, 1, 1),
    ('2025-10-31', 8, 8, 2, 7),
    ('2025-10-31', 9, 9, 3, 9),
    ('2025-10-31', 10, 10, 1, 10);
