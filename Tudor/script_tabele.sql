DROP TABLE Useri CASCADE CONSTRAINTS
/
DROP TABLE Persoane CASCADE CONSTRAINTS
/
DROP TABLE Prieteni CASCADE CONSTRAINTS
/
DROP TABLE Locatii CASCADE CONSTRAINTS
/
DROP TABLE Informatii CASCADE CONSTRAINTS
/
DROP TABLE Vizitatori CASCADE CONSTRAINTS
/

CREATE TABLE Useri(
    mail varchar(30) PRIMARY KEY,
    parola varchar(30),
    user_facebook varchar (50),
    punctaj_curent number
    )
/

CREATE TABLE Persoane(
    mail varchar(30),
    nume varchar(30),
    prenume varchar(30),
    nivel number
    )
/

CREATE TABLE Prieteni(
    mail varchar(30),
    mail_prieten varchar(30)
    )
/

CREATE TABLE Locatii(
    QR varchar(20) PRIMARY KEY,
    nume_locatie varchar(30),
    tip varchar(20),
    nr_accesari number
    )
/

CREATE TABLE Informatii(
    QR varchar(20),
    link varchar(200)
    )
/

CREATE TABLE Vizitatori(
    QR varchar(20),
    date_vizitare date,
    xp_curent number
    )
/

ALTER TABLE Persoane
ADD FOREIGN KEY (mail) REFERENCES Useri(mail);

ALTER TABLE Prieteni
ADD FOREIGN KEY (mail) REFERENCES Useri(mail);

ALTER TABLE Informatii
ADD FOREIGN KEY (QR) REFERENCES Locatii(QR);

ALTER TABLE Vizitatori
ADD FOREIGN KEY (QR) REFERENCES Locatii(QR);

COMMIT;
