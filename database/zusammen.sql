-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Jun 2021 um 10:39
-- Server-Version: 10.4.16-MariaDB
-- PHP-Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `zusammen`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chat_message`
--

DROP DATABASE IF EXISTS `zusammen`;

CREATE DATABASE IF NOT EXISTS `zusammen`;

USE `zusammen`;

CREATE TABLE IF NOT EXISTS `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grammar`
--

CREATE TABLE IF NOT EXISTS `grammar` (
  `idGrammar` int(11) NOT NULL,
  `level` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `explanation` text COLLATE utf8mb4_bin DEFAULT NULL,
  `foreignLanguage` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `grammar`
--

INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(1, 'A1', 'Präteritum', 'Exercițiu online pentru a practica conjugarea verbelor germane utilizate frecvent la timpul trecut simplu.\n\nExistă două tipuri de verbe germane: regulat și neregulat. Verbele obișnuite urmează un model de conjugare de bază, în timp ce conjugarea verbelor neregulate implică schimbarea tulpinii verbului înainte de a urma un model diferit.\n\nDe exemplu, verbul obișnuit „spielen” înseamnă „a te juca”. Conjugarea acestuia la timpul trecut (numit și trecut slab) înseamnă înlocuirea lui -en cu -te, -ten, -test sau -tet: ich spielte, du spieltest, er / sie / es spielte, wir spielten, ihr spieltet, sie spielten.\n\nVerbele germane neregulate nu urmează acest model, cum ar fi „kommen” (să vină): Ich kam, du kamst, er / sie / es kam, wir kamen, ihr kamt, sie kamen. Observați că pentru conjugarea „kommen”, rădăcina cuvântului este schimbată înainte de a aplica terminațiile corespunzătoare.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(2, 'A1', 'Präsens', 'Deși limba germană are o formă a timpului prezent, acest timp se poate aplica și viitorului. De exemplu: „Ich spiele morgen Schach” înseamnă „mâine joc șah” sau „mâine voi juca șah”. „Ich singe morgen in der Schule” înseamnă „Cânt mâine la școală” sau „Voi cânta mâine la școală”.\n\nAcest timp prezent este utilizat în mod obișnuit pentru a implica timpul viitor, completat de un adverb de timp care indică faptul că timpul viitor este destinat: „Nächstes Jahr reisen wir in die Schweiz” - „Anul viitor, vom călători (călătorim) în Elveția”.\n\nRețineți că există multe forme verbale neregulate care nu urmează modelul de conjugare la timp prezent al verbelor de încheiere.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(3, 'A1', 'Futur I', 'Conjugarea timpului viitor german presupune folosirea werden (will) plus infinitivul verbului. Werden are nevoie conjugată de forma infinitivă nu. Odată ce ați învățat diferitele conjugări ale werden, ați însușit timpul viitor german.\n\nVoi juca: ich werde spielen\nVeți juca: du wirst spielen\nHe / she / it will play: er / sie / es wird spielen\nVom juca: wir werden spielen\nTu (plural) vei juca: ihr werdet spielen\nVor juca: sie werden spielen', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(4, 'A1', 'Futur II', 'Rar folosit, acest timp necesită conjugarea participiului trecut al unui verb și utilizat cu formele conjugate de werden. Forma infinitivă a verbului de ajutor haben este apoi pusă la sfârșitul propoziției.\n\nVom fi dormit toată noaptea: wir werden die ganze Nacht geschlafen haben\nVom fi jucat toată ziua: wir werden den ganzen Tag gespielt haben\nEl va fi găsit-o: er wird es gefunden haben.\n\nAcest timp indică ceva care va fi finalizat în viitor, dar limba conversațională conține de obicei versiunile mai simple ale timpurilor perfecte viitoare și ale timpurilor viitoare.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(5, 'A1', 'Infinitivsätze', 'Atât în roaniană, cât și în germană, propozițiile la infinitiv sunt un fel de propoziție dependentă în care nu există subiect gramatical, ci doar unul implicit și, prin urmare, verbul nu este flexionat. O clauză infinitivă este în mod special dependentă de clauza principală a propoziției pentru semnificația ei. Numai prin aceasta se poate găsi contextul necesar pentru înțelegerea clauzei de infinitiv.\n\nInfinitivul, care este combinat cu „zu”, merge la sfârșitul clauzei:\n\nEs wundert mich, meine Mutter hier zu sehen.\nMă surprinde să-mi văd mama aici.\nEr hat vergessen, seiner Freundin etwas zum Geburtstag zu kaufen.\nA uitat să-și cumpere iubitei ceva de ziua ei.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(6, 'A1', 'Konjunktiv I', 'Mai degrabă decât un „timp verbal”, subjunctivul este considerat o „dispoziție verbală” care transmite un mesaj care poate să nu fie faptic.\n\nExpresia română „Dacă aș fi tu, aș ...” este un exemplu al verbului „a fi” în formă de subjunctiv „were”. Trimite un mesaj altcuiva care nu este o declarație de fapt. Alte exemple ale subjunctivului în limba română sunt „Acum ar fi un lucru nebun de făcut!” sau „Fie așa cum se poate”.\n\nÎn Germania, conjunctivul este văzut în principal în știrile de televiziune sau în formă tipărită atunci când se cită indirect o altă persoană. Nu este important să știi cum să îl folosești sau să îl recunoști în conversație, dar trebuie recunoscut când este auzit sau văzut la radio sau în ziare.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(7, 'A1', 'Konjunktiv II', 'Folosit pentru a indica îndoială, gândire doritoare sau incertitudine, subjunctivul trecut este un mod politicos de exprimare a ideilor și este numit subjunctiv „trecut” deoarece formele verbale sunt la timpul trecut.\n\nCând vom avea banii, vom achiziționa un nou televizor: wenn (când) wir (noi) das (the) Geld (bani) haben (au), dann (atunci) kaufen (va cumpăra) wir (noi) einen (a) ) neuen (nou) Fernseher (televiziune).\n\nDacă am fi avut banii, am fi cumpărat un nou televizor - Wenn wir damals das Geld (banii) gehabt hätten (had had), hätten wir (we have) einen neuen Fernseher gekauft (cumparat).', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(8, 'A2', 'Reflexive Verben', 'Acest exercițiu vă va învăța utilizările adecvate ale diferitelor verbe reflexive germane. Verbele reflexive sunt mai frecvente în germană decât în română, astfel încât vorbitorii de română pot avea dificultăți în amintirea utilizării corecte a verbelor reflexive germane.\n\nAcest exercițiu este menit să vă ajute să exersați și să memorați utilizarea corectă a acestora. Vi se vor da mai multe propoziții cu cuvinte lipsă, precum și infinitivul și pronumele reflexiv generic pentru fiecare propoziție. Trebuie să completați spațiile libere cu forma corectă a verbului dat și pronumele reflexiv potrivit.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(9, 'A2', 'Trennbare Verben', 'În acest exercițiu, veți practica adăugarea de prefixe separabile la diferite cuvinte pentru a crea verbe. Aceasta este o caracteristică comună a limbii germane, cu care mulți vorbitori non-nativi au probleme, astfel încât practica în acest domeniu este esențială pentru cunoașterea limbii germane.\n\nVi se vor da mai multe propoziții cu cuvinte lipsă și vi se va furniza și infinitivul pentru fiecare propoziție. Sarcina dvs. este să completați spațiile libere ale fiecărei propoziții cu verbul corect separabil. Fiți atenți: am inclus câteva câmpuri pentru a vă deruta. Pentru a rezolva corect toate propozițiile, unele dintre câmpuri ar trebui să rămână goale.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(10, 'A2', 'Regelmäßigen Verben', 'În acest exercițiu, veți exersa când să folosiți verbe obișnuite la timpul prezent, precum și cum să le conjugați. Vi se vor oferi mai multe propoziții cu cuvinte lipsă, precum și verbele care corespund fiecărei propoziții. Trebuie să completați spațiile libere cu forma corect conjugată a fiecărui verb obișnuit.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(11, 'A2', 'Unregelmäßige Verben', 'Acest exercițiu este destinat să vă consolideze cunoștințele despre verbele neregulate germane la timpul prezent. Amintiți-vă că verbele neregulate sunt verbe care nu pot fi conjugate pur și simplu prin schimbarea finalului, la fel ca la verbele regulate.\n\nDe exemplu, verbul german \"fahren\" (a conduce) este neregulat deoarece întregul cuvânt se schimbă pentru a se potrivi contextului propoziției. „Eu conduc” devine „tu conduci” și „el / ea conduce”. În loc să schimbați pur și simplu finalul așa cum ați face cu verbele obișnuite, trebuie să schimbați întregul cuvânt. Este esențial să practici conjugarea verbelor neregulate, astfel încât să nu le tratezi accidental ca verbe obișnuite.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(12, 'A2', 'Modalverben', 'Atât în română, cât și în germană, verbele modale sunt utilizate pentru a exprima necesitatea sau posibilitatea. În română, aceste verbe sunt „trebuie”, „ar trebui”, „vor” etc. În germană, aceste verbe sunt „können”, „mögen”, „dürfen”, „müssen”, „sollen” și „wollen”. \"\n\nÎn acest exercițiu, veți exersa conjugarea acestor verbe modale comune germane la timpul prezent. Vi se vor da mai multe propoziții cu spații goale și vi se vor furniza, de asemenea, verbele modale corespunzătoare. Trebuie să conjugați corect fiecare verb modal pentru a se potrivi cu restul propoziției.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(13, 'A2', 'sein și haben', 'Verbele „sein” (a fi) și „haben” (a avea) sunt două dintre cele mai comune și mai importante verbe în limba germană. Aceste verbe sunt, de asemenea, foarte neregulate, astfel încât vorbitorii care nu sunt nativi au deseori probleme la conjugarea corectă a acestora. Mulți vorbitori de limbi străine germane vor confunda și cele două verbe.\n\nAcest exercițiu vă va ajuta să faceți distincția între cele două verbe, precum și vă va permite să practicați conjugarea fiecăruia. Vi se vor da mai multe propoziții cu cuvinte lipsă. Trebuie să identificați dacă fiecare propoziție are nevoie de o formă de \"sein\" sau de o formă de \"haben\" și apoi furnizați forma conjugată corect a acelui cuvânt.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(14, 'A2', 'lasen', 'În acest exercițiu, veți exersa conjugarea verbului „lassen” (a lăsa). Acesta este unul dintre cele mai comune verbe germane; este esențial pentru limba germană, deoarece poate fi folosit în mai multe moduri. Deoarece este un verb neregulat, este adesea conjugat incorect, motiv pentru care este crucial să practici conjugarea corectă.\n\nVi se vor oferi mai multe propoziții cu cuvinte lipsă și vi se va cere să furnizați forma conjugată corect a „lassen”. Asigurați-vă că cuvântul pe care îl furnizați se potrivește cu restul propoziției.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(15, 'B1', 'Akkusativ', 'Cazul acuzativ denotă obiecte din propoziții. Obiectul este lucrul din propoziție care i-a făcut ceva. De exemplu, în propoziția „Am lovit mingea cu piciorul”, mingea este obiectul. În germană, substantivele acuzative sunt marcate de articole și finaluri adjective. Pronumele marchează și cazul acuzativ.\n\nÎn aceste exerciții, exersați recunoașterea cazului acuzativ și folosirea structurilor gramaticale corecte asociate acestuia.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(16, 'B1', 'Dativ', 'Cazul dativ este folosit pentru a arăta că un substantiv primește obiectul propoziției. În limba română, folosim prepoziții pentru a face acest lucru. În propoziția „Eu dau flori femeii”, florile sunt obiectul. Femeia îi primește. În limba germană, exprimăm această relație folosind cazul dativ: Ich gebe der Frau Blumen. Articolul der indică cazul dativ.\n\nAceste exerciții vă vor ajuta să exersați folosind articole, terminații adjective și pronume în cazul dativ.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(17, 'B1', 'Nominativ', 'Cazul nominativ este cel mai frecvent utilizat caz. Indică subiectul propoziției, adică persoana sau lucrul care face activitatea din propoziție. Aveți grijă la propozițiile care utilizează verbe echivalente. În propoziția „Femeia este medic”, atât femeia, cât și medicul se află în cazul nominal.\n\nÎn exercițiile următoare, veți exersa utilizarea articolelor, pronumelor și adjectivelor în cazul nominativ.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(18, 'B1', 'Genitiv', 'Cazul genitiv este folosit pentru a denumi proprietatea. În engleză, folosim „apostroful” sau prepozițiile pentru a face acest lucru. Vorbitorii de limbă germană pot folosi prepoziții și o fac frecvent pentru limba vorbită.\n\nCu toate acestea, markerii genitivi de caz sunt folosiți pe scară largă în limba germană scrisă. Pe lângă faptul că afectează articolele, pronumele și adjectivele, cu substantive masculine și neutre, se adaugă și substantivului o terminație -es sau -s.\n\nÎn aceste exerciții, veți practica folosirea markerilor de caz genitiv.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(19, 'B1', 'Akkusativ oder Dativ', 'Cursanții noi confundă adesea cazurile acuzativ și dativ în limba germană. Folosirea lor greșită frecvent poate provoca confuzii serioase și sună slab.\n\nPuteți găsi substantivul acuzativ într-o propoziție punând întrebarea „Ce este -ed?”, Unde - „ed este înlocuit cu forma perfectă a verbului activ din propoziție.\n\nDacă verbul activ ar fi „cumpărați”, ați întreba „Ce se cumpără?” Răspunsul este substantivul acuzativ. Puteți găsi substantivul dativ întrebând „Cine / ce primește ceva?” În propoziția „I-am cumpărat o casă surorii mele”, sora este cea care primește ceva și, prin urmare, ar necesita markeri de caz dativi.\n\nAceste întrebări vă impun să identificați și să folosiți atât cazurile acuzative, cât și cele dative.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(20, 'B1', 'Akkusativ oder Nominativ', 'Este foarte important să se facă distincția corectă între cazurile acuzative și nominative. Aceste două cazuri ne spun despre ce substantiv este actorul și despre care se acționează.\n\nPentru a determina dacă ceva este nominativ sau acuzativ, întrebați-vă dacă substantivul în cauză este un făcător. Cu excepția cazului în care lucrați cu propoziții pasive, autorul este întotdeauna în cazul nominativ. De asemenea, este de obicei sigur să presupunem în engleză și în germană că primul substantiv din propoziție este subiect și, prin urmare, necesită marcaje nominative.\n\nUrmătoarele exerciții vă vor testa capacitatea de a distinge și utiliza împreună markeri de caz nominativ și acuzativ.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(21, 'B1', 'Nominativ, Akkusativ oder Dativ', 'În aceste exerciții, va trebui să faceți distincția între cazurile nominative, acuzative și date.\n\nPentru a face acest lucru, întrebați-vă cum funcționează substantivul în propoziție. Primește ceva (dativ), se acționează (acuzativ) sau este actorul (nominativ)? După ce determinați cazul corect, luați în considerare modul în care genul și numărul afectează articolele, pronumele și adjectivele în cauză.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(22, 'B2', 'Dass oder das', 'Das este un articol. Se folosește și ca pronume relativ. De exemplu, Das Buch liegt am Sofa. În această propoziție, „das” este folosit ca articol. În propoziție, Das Buch, das du liest, gehört meiner Freundin. Aici, „das” este folosit ca pronume relativ.\n\n„Dass” este o conjuncție subordonată care este utilizată după clauza principală. Este echivalentul în engleză al „acelui”, așa cum i-am spus prietenului meu că o voi întâlni.\n\nÎn germană, de exemplu, s-ar folosi „dass” după cum urmează: Ich denke, dass du Hunger hast. În engleză, acest lucru înseamnă pur și simplu: cred că ți-e foame.\n\nÎn următoarele exerciții cu alegere multiplă trebuie să alegeți das / dass / das ist.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(23, 'B2', 'Fragewörter', 'Exemple de cuvinte-întrebare sunt: wohin (unde să); wie (cum): woher (de unde); a fost ce); wieso (cum se face); warum (de ce); wer (cine); welche- (care); wen / wem (cine); wo (unde).\n\nÎn aceste exerciții vi se oferă întrebări și răspunsuri. Întrebări lipsesc cuvinte de întrebare. Vi se cere să alegeți cuvântul corect de întrebare pentru fiecare pereche întrebare-răspuns.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(24, 'B2', 'Fragen beantworten', 'În acest exercițiu, vi se cere să interpretați întrebarea identificând corect pronumele interogativ. Din cele patru opțiuni de răspuns, alegeți răspunsul care descrie cel mai bine semnificația întrebării.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(25, 'B2', 'Relativ Sätze', 'O propoziție relativă este un tip de propoziție subordonată care este introdusă de un pronume relativ. Pronumele relativ reflectă sexul, cazul sau numărul. Se folosește pentru a modifica un substantiv, pronume sau frază. O propoziție relativă are un subiect și un verb. În germană, verbul este întotdeauna plasat la sfârșitul clauzei.\n\nFiecărei propoziții din acest exercițiu îi lipsește un pronume relativ. Alege pronumele relativ corect prin identificarea genului și a cazului.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(26, 'B2', 'Negation', 'Următoarele propoziții au o conotație pozitivă. Rescrieți-le pentru a le face propoziții negative.\n\nDe exemplu, Ich are viel Geld. Această propoziție poate fi făcută negativă prin schimbarea cuvântului „viel” în „kein”. Propoziția negativă se va citi acum, Ich habe kein Geld. Propozițiile pot fi, de asemenea, negative, adăugând „nicht” sau folosind un antonim.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(27, 'B2', 'Präpositionen nach oder zu', 'În acest exercițiu, vi se cere să alegeți prepoziția corectă (nach sau zu) pentru fiecare propoziție.\n\nNach și zu, ambele înseamnă „către”. Cu toate acestea, nach este utilizat cu referire la locații geografice sau direcții; zu este utilizat în toate celelalte cazuri, cu excepția acestor. De asemenea, zu este întotdeauna utilizat cu un articol sau combinat și contractat cu articolul care îl urmează. De ex. zu dem Postamt devine zum Postamt.', 'Deutsch');
INSERT INTO `grammar` (`idGrammar`, `level`, `title`, `explanation`, `foreignLanguage`) VALUES(28, 'B2', 'Präpositionen aus oder von', 'În acest exercițiu, vi se cere să alegeți prepoziția corectă (aus sau von) pentru fiecare propoziție.\n\nAus înseamnă „din” și von înseamnă „din”. Ați folosi aus atunci când doriți să denotați naționalitatea sau locul în care vă aparțineți. De ex. Ich komme aus Chine înseamnă că vin / vin din China. Von este folosit atunci când vrei să spui că vii direct dintr-un anumit loc. De exemplu, Ich komme von dem Bahnhof înseamnă literalmente că veniți din gară.', 'Deutsch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grammarinvoice`
--

CREATE TABLE IF NOT EXISTS `grammarinvoice` (
  `idGrammar` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `grammarinvoice`
--

INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 1);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 2);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 466);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 467);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 468);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 469);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(1, 470);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(2, 471);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(2, 472);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(2, 473);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(2, 474);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(2, 475);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(3, 476);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(3, 477);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(3, 478);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(3, 479);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(3, 480);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(4, 481);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(4, 482);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(4, 483);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(4, 484);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(4, 485);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(5, 486);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(5, 487);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(5, 488);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(5, 489);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(5, 490);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(6, 491);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(6, 492);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(6, 493);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(6, 494);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(6, 495);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(7, 496);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(7, 497);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(7, 498);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(7, 499);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(7, 500);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(8, 501);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(8, 502);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(8, 503);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(8, 504);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(8, 505);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(9, 506);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(9, 507);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(9, 508);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(9, 509);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(9, 510);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(10, 511);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(10, 512);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(10, 513);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(10, 514);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(10, 515);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(11, 516);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(11, 517);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(11, 518);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(11, 519);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(11, 520);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(12, 521);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(12, 522);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(12, 523);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(12, 524);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(12, 525);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(13, 526);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(13, 527);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(13, 528);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(13, 529);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(13, 530);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(14, 531);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(14, 532);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(14, 533);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(14, 534);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(14, 535);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(15, 536);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(15, 537);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(15, 538);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(15, 539);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(15, 540);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(16, 541);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(16, 542);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(16, 543);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(16, 544);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(16, 545);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(17, 546);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(17, 547);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(17, 548);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(17, 549);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(17, 550);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(18, 551);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(18, 552);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(18, 553);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(18, 554);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(18, 555);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(19, 556);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(19, 557);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(19, 558);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(19, 559);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(19, 560);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(20, 561);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(20, 562);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(20, 563);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(20, 564);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(20, 565);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(21, 566);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(21, 567);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(21, 568);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(21, 569);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(21, 570);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(22, 571);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(22, 572);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(22, 573);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(22, 574);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(22, 575);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(23, 576);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(23, 577);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(23, 578);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(23, 579);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(23, 580);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(24, 581);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(24, 582);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(24, 583);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(24, 584);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(24, 585);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(25, 586);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(25, 587);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(25, 588);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(25, 589);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(25, 590);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(26, 591);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(26, 592);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(26, 593);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(26, 594);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(26, 595);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(27, 596);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(27, 597);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(27, 598);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(27, 599);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(27, 600);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(28, 601);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(28, 602);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(28, 603);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(28, 604);
INSERT INTO `grammarinvoice` (`idGrammar`, `idQuestion`) VALUES(28, 605);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `listening`
--

CREATE TABLE IF NOT EXISTS `listening` (
  `idListening` int(11) NOT NULL,
  `level` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `audioPath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `foreignLanguage` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `listening`
--

INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(1, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Kleidung.jpg', 'Kleidung', 'http://localhost/Zusammen/main/lessons/listening%20audio/Kleidung.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(2, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Wohnen%20in%20Berlin.jpg', 'Wohnen in Berlin', 'http://localhost/Zusammen/main/lessons/listening%20audio/Wohnen%20in%20Berlin.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(3, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Brief%20an%20Marion.jpg', 'Brief an Marion', 'http://localhost/Zusammen/main/lessons/listening%20audio/Brief%20an%20Marion.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(4, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Freundinnen.jpg', 'Freundinnen', 'http://localhost/Zusammen/main/lessons/listening%20audio/Freundinnen.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(5, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Ich%20bin%20Tom.png', 'Ich bin Tom', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ich%20bin%20Tom.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(6, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Maria%20und%20ihre%20Familie.jpg', 'Maria und ihre Familie', 'http://localhost/Zusammen/main/lessons/listening%20audio/Maria%20und%20ihre%20Familie.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(7, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Meine%20Familie.jpg', 'Meine Familie', 'http://localhost/Zusammen/main/lessons/listening%20audio/Meine%20Familie.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(8, 'A1', 'http://localhost/Zusammen/main/lessons/listening%20images/Susanne%20schreibt%20einen%20Brief.webp', 'Susanne schreibt einen Brief', 'http://localhost/Zusammen/main/lessons/listening%20audio/Susanne%20schreibt%20einen%20Brief.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(9, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Freunde.jpg', 'Freunde', 'http://localhost/Zusammen/main/lessons/listening%20audio/Freunde.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(10, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Traum%20wird%20wahr.jpg', 'Ein Traum wird wahr', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Traum%20wird%20wahr.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(11, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Berufe.jpg', 'Berufe', 'http://localhost/Zusammen/main/lessons/listening%20audio/Berufe.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(12, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Tag%20in%20Berlin.jpg', 'Ein Tag in Berlin', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Tag%20in%20Berlin.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(13, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Feste%20in%20Deutschland.jpg', 'Feste in Deutschland', 'http://localhost/Zusammen/main/lessons/listening%20audio/Feste%20in%20Deutschland.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(14, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/L%c3%a4nder%20und%20Nationalit%c3%a4t.jpg', 'Länder und Nationalität', 'http://localhost/Zusammen/main/lessons/listening%20audio/L%c3%a4nder%20und%20Nationalit%c3%a4t.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(15, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Mein%20Tag.jpg', 'Mein Tag', 'http://localhost/Zusammen/main/lessons/listening%20audio/Mein%20Tag.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(16, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Mein%20Stadt.jpg', 'Mein Stadt', 'http://localhost/Zusammen/main/lessons/listening%20audio/Mein%20Stadt.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(17, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Neu%20in%20der%20Stadt.jpg', 'Neu in der Stadt', 'http://localhost/Zusammen/main/lessons/listening%20audio/Neu%20in%20der%20Stadt.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(18, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Tagesablauf.png', 'Tagesablauf', 'http://localhost/Zusammen/main/lessons/listening%20audio/Tagesablauf.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(19, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Wandern%20in%20der%20Natur.jpg', 'Wandern in der Natur', 'http://localhost/Zusammen/main/lessons/listening%20audio/Wandern%20in%20der%20Natur.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(20, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Der%20M%c3%bcritzsee.jpg', 'Der Müritzsee', 'http://localhost/Zusammen/main/lessons/listening%20audio/Der%20M%c3%bcritzsee.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(21, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Der%20Weg%20zum%20Supermarkt.jpg', 'Der Weg zum Supermarkt', 'http://localhost/Zusammen/main/lessons/listening%20audio/Der%20Weg%20zum%20Supermarkt.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(22, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Einkaufen%20gehen.jpg', 'Einkaufen gehen', 'http://localhost/Zusammen/main/lessons/listening%20audio/Einkaufen%20gehen.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(23, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Mein%20Tag%202.jpg', 'Mein Tag 2', 'http://localhost/Zusammen/main/lessons/listening%20audio/Mein%20Tag%202.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(24, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Meinen%20Geburtstag.jpg', 'Meinen Geburtstag', 'http://localhost/Zusammen/main/lessons/listening%20audio/Meinen%20Geburtstag.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(25, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Nach%20Paris%20fahren.jpg', 'Nach Paris fahren', 'http://localhost/Zusammen/main/lessons/listening%20audio/Nach%20Paris%20fahren.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(26, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Umtausch.jpg', 'Umtausch', 'http://localhost/Zusammen/main/lessons/listening%20audio/Umtausch.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(27, 'A2', 'http://localhost/Zusammen/main/lessons/listening%20images/Wir%20sind%20umgezogen.jpg', 'Wir sind umgezogen', 'http://localhost/Zusammen/main/lessons/listening%20audio/Wir%20sind%20umgezogen.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(28, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Heimweg.jpg', 'Heimweg', 'http://localhost/Zusammen/main/lessons/listening%20audio/Heimweg.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(29, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Der%20kostenlose%20Dienst.png', 'Der kostenlose Dienst', 'http://localhost/Zusammen/main/lessons/listening%20audio/Der%20kostenlose%20Dienst.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(30, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Bei%20der%20Bank.jpg', 'Bei der Bank', 'http://localhost/Zusammen/main/lessons/listening%20audio/Bei%20der%20Bank.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(31, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Im%20Krankenhaus.jpg', 'Im Krankenhaus', 'http://localhost/Zusammen/main/lessons/listening%20audio/Im%20Krankenhaus.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(32, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Berlin.jpg', 'Berlin', 'http://localhost/Zusammen/main/lessons/listening%20audio/Berlin.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(33, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Das%20Wetter.jpg', 'Das Wetter', 'http://localhost/Zusammen/main/lessons/listening%20audio/Das%20Wetter.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(34, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Die%20vier%20Jahreszeiten.jpg', 'Die vier Jahreszeiten', 'http://localhost/Zusammen/main/lessons/listening%20audio/Die%20vier%20Jahreszeiten.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(35, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Tag%20in%20Hamburg.jpg', 'Ein Tag in Hamburg', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Tag%20in%20Hamburg.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(36, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Tag%20in%20K%c3%b6ln.jpg', 'Ein Tag in Köln', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Tag%20in%20K%c3%b6ln.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(37, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Freizeitgestaltung.jpg', 'Freizeitgestaltung', 'http://localhost/Zusammen/main/lessons/listening%20audio/Freizeitgestaltung.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(38, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Mein%20Leben.jpg', 'Mein Leben', 'http://localhost/Zusammen/main/lessons/listening%20audio/Mein%20Leben.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(39, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Der%20Umzug.jpg', 'Der Umzug', 'http://localhost/Zusammen/main/lessons/listening%20audio/Der%20Umzug.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(40, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Gemeinsame%20Reiseplanung.jpg', 'Gemeinsame Reiseplanung', 'http://localhost/Zusammen/main/lessons/listening%20audio/Gemeinsame%20Reiseplanung.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(41, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Hausputz.jpg', 'Hausputz', 'http://localhost/Zusammen/main/lessons/listening%20audio/Hausputz.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(42, 'B1', 'http://localhost/Zusammen/main/lessons/listening%20images/Sommerferien%20in%20Deutschland.jpg', 'Sommerferien in Deutschland', 'http://localhost/Zusammen/main/lessons/listening%20audio/Sommerferien%20in%20Deutschland.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(43, 'B2', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Tag%20in%20Salzburg.jpg', 'Ein Tag in Salzburg', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Tag%20in%20Salzburg.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(44, 'B2', 'http://localhost/Zusammen/main/lessons/listening%20images/Ein%20Tag%20in%20Z%c3%bcrich.jpg', 'Ein Tag in Zürich', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ein%20Tag%20in%20Z%c3%bcrich.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(45, 'B2', 'http://localhost/Zusammen/main/lessons/listening%20images/Johann%20Wolfgang%20von%20Goethe.jpg', 'Johann Wolfgang von Goethe', 'http://localhost/Zusammen/main/lessons/listening%20audio/Johann%20Wolfgang%20von%20Goethe.mp3', 'Deutsch');
INSERT INTO `listening` (`idListening`, `level`, `imagePath`, `title`, `audioPath`, `foreignLanguage`) VALUES(46, 'B2', 'http://localhost/Zusammen/main/lessons/listening%20images/Ostern.jpg', 'Ostern', 'http://localhost/Zusammen/main/lessons/listening%20audio/Ostern.mp3', 'Deutsch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `listeninginvoice`
--

CREATE TABLE IF NOT EXISTS `listeninginvoice` (
  `idListening` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `listeninginvoice`
--

INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(1, 236);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(1, 237);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(1, 238);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(1, 239);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(1, 240);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(2, 241);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(2, 242);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(2, 243);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(2, 244);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(2, 245);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(3, 246);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(3, 247);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(3, 248);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(3, 249);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(3, 250);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(4, 251);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(4, 252);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(4, 253);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(4, 254);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(4, 255);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(5, 256);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(5, 257);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(5, 258);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(5, 259);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(5, 260);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(6, 261);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(6, 262);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(6, 263);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(6, 264);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(6, 265);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(7, 266);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(7, 267);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(7, 268);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(7, 269);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(7, 270);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(8, 271);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(8, 272);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(8, 273);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(8, 274);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(8, 275);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(9, 276);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(9, 277);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(9, 278);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(9, 279);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(9, 280);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(10, 281);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(10, 282);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(10, 283);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(10, 284);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(10, 285);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(11, 286);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(11, 287);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(11, 288);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(11, 289);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(11, 290);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(12, 291);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(12, 292);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(12, 293);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(12, 294);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(12, 295);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(13, 296);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(13, 297);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(13, 298);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(13, 299);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(13, 300);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(14, 301);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(14, 302);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(14, 303);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(14, 304);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(14, 305);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(15, 306);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(15, 307);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(15, 308);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(15, 309);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(15, 310);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(16, 311);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(16, 312);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(16, 313);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(16, 314);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(16, 315);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(17, 316);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(17, 317);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(17, 318);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(17, 319);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(17, 320);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(18, 321);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(18, 322);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(18, 323);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(18, 324);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(18, 325);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(19, 326);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(19, 327);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(19, 328);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(19, 329);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(19, 330);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(20, 331);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(20, 332);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(20, 333);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(20, 334);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(20, 335);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(21, 336);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(21, 337);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(21, 338);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(21, 339);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(21, 340);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(22, 341);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(22, 342);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(22, 343);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(22, 344);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(22, 345);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(23, 346);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(23, 347);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(23, 348);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(23, 349);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(23, 350);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(24, 351);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(24, 352);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(24, 353);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(24, 354);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(24, 355);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(25, 356);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(25, 357);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(25, 358);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(25, 359);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(25, 360);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(26, 361);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(26, 362);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(26, 363);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(26, 364);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(26, 365);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(27, 366);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(27, 367);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(27, 368);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(27, 369);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(27, 370);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(28, 371);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(28, 372);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(28, 373);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(28, 374);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(28, 375);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(29, 376);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(29, 377);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(29, 378);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(29, 379);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(29, 380);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(30, 381);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(30, 382);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(30, 383);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(30, 384);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(30, 385);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(31, 386);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(31, 387);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(31, 388);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(31, 389);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(31, 390);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(32, 391);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(32, 392);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(32, 393);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(32, 394);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(32, 395);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(33, 396);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(33, 397);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(33, 398);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(33, 399);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(33, 400);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(34, 401);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(34, 402);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(34, 403);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(34, 404);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(34, 405);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(35, 406);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(35, 407);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(35, 408);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(35, 409);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(35, 410);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(36, 411);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(36, 412);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(36, 413);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(36, 414);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(36, 415);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(37, 416);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(37, 417);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(37, 418);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(37, 419);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(37, 420);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(38, 421);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(38, 422);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(38, 423);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(38, 424);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(38, 425);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(39, 426);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(39, 427);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(39, 428);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(39, 429);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(39, 430);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(40, 431);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(40, 432);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(40, 433);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(40, 434);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(40, 435);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(41, 436);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(41, 437);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(41, 438);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(41, 439);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(41, 440);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(42, 441);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(42, 442);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(42, 443);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(42, 444);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(42, 445);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(43, 446);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(43, 447);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(43, 448);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(43, 449);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(43, 450);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(44, 451);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(44, 452);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(44, 453);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(44, 454);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(44, 455);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(45, 456);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(45, 457);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(45, 458);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(45, 459);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(45, 460);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(46, 461);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(46, 462);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(46, 463);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(46, 464);
INSERT INTO `listeninginvoice` (`idListening`, `idQuestion`) VALUES(46, 465);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `login_details`
--

CREATE TABLE IF NOT EXISTS `login_details` (
  `login_details_id` int(11) NOT NULL,
  `idPerson` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personen`
--

CREATE TABLE IF NOT EXISTS `personen` (
  `idPerson` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `avatarPath` varchar(80) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `hobby` blob DEFAULT NULL,
  `characteristics` blob DEFAULT NULL,
  `idLanguage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `personen`
--

INSERT INTO `personen` (`idPerson`, `email`, `password`, `name`, `avatarPath`, `dateOfBirth`, `location`, `admin`, `hobby`, `characteristics`, `idLanguage`) VALUES(1, 'admin@gmail.com', '32de8e7bfddbf2dcb038a120ae666f34', 'Admin Admin', 'http://localhost/Zusammen/pictures/default.jpg', '2001-12-05', 'Chisinau, Moldova', '70ce59a7ac130e06862e850f8bddefd7', 0x6c6f72656d, 0x6c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c6974, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `idQuestion` int(11) NOT NULL,
  `onPageOrder` int(11) DEFAULT NULL,
  `questionText` text COLLATE utf8mb4_bin DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `correctAnswer` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `questions`
--

INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(1, 1, 'Woher kommt Julija?', 'aus London', 'aus München', 'aus Mailand', 'aus Berlin', 'aus London');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(2, 2, 'Wie lange wohnt sie in Deutschland?', 'schon 2 Jahre', 'seit einem Monat', 'seit einer Woche', 'schon 8 Monate', 'schon 8 Monate');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(3, 3, 'Warum lernt sie Deutsch?', 'für die Kinder', 'es machr ihr Spaß', 'für ihren Mann', 'für den Beruf', 'für den Beruf');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(4, 4, 'Wie lernt sie?', 'allein', 'mit ihrem Mann', 'sie besucht einen Kurs', 'mit einem Privatlehrer', 'sie besucht einen Kurs');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(5, 5, 'Was ist Kei von beruf?', 'Lehrer', 'Arzt', 'Busfahrer', 'Anwalt', 'Arzt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(6, 1, 'Wie viele Supermärkte gibt es in der Nähe von seiner Wohnung?', '1', 'keinen', '2', '3', '3');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(7, 2, 'Wie oft er im Tante-Emma-Laden ein?', 'oft', 'selten', 'jeden Tag', 'niemals', 'selten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(8, 3, 'Wo kauft er Gemüse?', 'auf dem Markt', 'beim Bäcker', 'im Supermarkt', 'im Einkaufszentrum', 'auf dem Markt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(9, 4, 'Was kauft er am liebsten beim Bäcker?', 'ein Brot', 'ein Brötchen', 'eine Brezel und eine Nussschnecke', 'eine Brezel', 'eine Brezel und eine Nussschnecke');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(10, 5, 'Wo kann man Fleisch kaufen?', 'auf dem Markt', 'in der Metzgerei', 'in der Bäckerei', 'in der Schule', 'in der Metzgerei');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(11, 1, 'Wann steht Marko auf?', 'um halb acht', 'um 7 Uhr', 'um 8 Uhr', 'um Viertel vor acht', 'um 7 Uhr');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(12, 2, 'Marko trinkt Kaffee', 'mit Milch und Zucker', 'ohne Milch und Zucker', 'mit Milch ohne Zucker', 'mit Zucker ohne Milch', 'mit Milch ohne Zucker');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(13, 3, 'Die U-Bahn ist immer pünktlich.', 'nur am Montag', 'manchmal', 'richtig', 'falsch', 'richtig');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(14, 4, 'Wo steigen Marko und Michael aus?', 'direkt hinter der Firma', 'direkt vor der Firma', 'sie steigen nicht aus, sie fahren weiter', 'im Zentrum', 'direkt vor der Firma');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(15, 5, 'Marko ist niemals pünktlich.', 'nur am Freitag', 'richtig', 'nur am Dienstag', 'falsch', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(16, 1, 'Wann ist es am Meer schön?', 'wenn das Wasser kalt ist', 'wenn es regnet', 'wenn es nicht so warm ist', 'wenn es warm ist', 'wenn es warm ist');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(17, 2, 'Wo machen wir immer Ferien?', 'wir machen keine Ferien', 'in der Berge', 'am Meer', 'am See', 'am Meer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(18, 3, 'Was macht uns viel Spaß?', 'Fußball spielen', 'Muscheln suchen', 'lesen', 'schlafen', 'Muscheln suchen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(19, 4, 'Was machen wir am Meer?', 'kühle Getränke trinken', 'Baden und Lesen', 'Wassersport', 'Lernen', 'Baden und Lesen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(20, 5, 'Und wenn das Wetter nicht schön ist?', 'Spaziergehen und Einkaufen', 'Fernsehen', 'nach Hause fahren', 'Lesen', 'Spaziergehen und Einkaufen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(21, 1, 'Wie heißt der Sohn von Bernd und Angelika?', 'Lisa', 'Bernd', 'Thomas', 'Angelika', 'Thomas');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(22, 2, 'Wer sitzt neben Lisa?', 'Thomas', 'Angelika', 'Bernd', 'niemand', 'Bernd');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(23, 3, 'Wer liest die Zeitung?', 'Bernd', 'Angelika', 'Lisa', 'Thomas', 'Bernd');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(24, 4, 'Wie viele Tassen stehen auf dem Tisch?', 'eine Tasse', 'zwei Tassen', 'drei Tassen', 'vier Tassen', 'vier Tassen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(25, 5, 'Was isst die Mutter am liebsten?', 'Brot mit Butter und Wurst', 'Brot mit Käse', 'Brot mit Marmelade', 'Brot mit Honig', 'Brot mit Käse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(26, 1, 'In welche Klasse geht Lena?', 'In die erste Klasse.', 'In die zweite Klasse.', 'In die dritte Klasse.', 'In die vierte Klasse.', 'In die erste Klasse.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(27, 2, 'Wie heißen Lenas Freunde?', 'Herr Mayer.', 'Sandra, Susanne und Paul.', 'Lena hat noch keine Freunde in der Schule.', 'Karl, Esra und Maya.', 'Sandra, Susanne und Paul.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(28, 3, 'Wie heißt ihr Lehrer?', 'Herr Müller.', 'Frau Schuster.', 'Herr Mayer.', 'Frau Mayer.', 'Herr Mayer.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(29, 4, 'Was machen die Kinder in ihrer ersten Stunde?', 'Sie lesen ein Buch.', 'Sie rechnen.', 'Sie machen Sport.', 'Sie singen ein Lied.', 'Sie singen ein Lied.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(30, 5, 'Was zeichnet der Lehrer an die Tafel?', 'Sie singen ein Lied.', 'Ein Auto und einen Hubschrauber.', 'Einen Löwen und einen Elefanten.', 'Einen Luftballon und einen Clown.', 'Einen Affen und eine Banane.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(31, 1, 'Was macht Martin Stubbe gern?', 'Er lernt Englisch gern.', 'Er macht Ausflüge gern.', 'Er spielt Tennis gern.', 'Er lernt Mathe und Biologie gern und er spielt Fußball gern.', 'Er lernt Mathe und Biologie gern und er spielt Fußball gern.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(32, 2, 'Was ist Martins Vater von Beruf?', 'Krankenschwester', 'Fußballspieler', 'Arzt', 'Lehrer', 'Arzt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(33, 3, 'Mit wie vielen Freundinnen wohnt Leonie Klein zusammen?', 'mit keiner', 'mit einer Freundin', 'mit zwei Freundinnen', 'mit drei Freundinnen', 'mit zwei Freundinnen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(34, 4, 'Was liebt Leonie Klein?', 'Betriebswirtschaft', 'Restaurants', 'Frankfurt am Main', 'das Nachtleben von München', 'das Nachtleben von München');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(35, 5, 'Wo arbeitet Christians Frau?', 'In Kirchheim unter Teck', 'In Stuttgart', 'In Ludwigsburg', 'In München', 'In Ludwigsburg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(36, 1, 'Was ist Struppi für ein Tier?', 'Struppi ist kein Tier.', 'Eine Katze.', 'Ein Hund.', 'Ein Vogel.', 'Ein Hund.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(37, 2, 'Was bekommt Struppi zu essen?', 'nichts', 'Jan kocht für ihn', 'Das Gleiche wie Jan', 'Hundekuchen', 'Hundekuchen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(38, 3, 'Was macht Jan mit seinem Hund?', 'Spazieren gehen und spielen', 'Fernsehen', 'Musik hören', 'Arbeiten', 'Spazieren gehen und spielen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(39, 4, 'Wo schläft Struppi?', 'Im Bett von Jan', 'In seinem Korb', 'In der Küche', 'Auf dem Boden', 'In seinem Korb');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(40, 5, 'Ist Struppi manchmal alleine?', 'Nein.', 'Immer am Wochenende.', 'Immer wenn Jan in der Schule ist.', 'Immer abends.', 'Immer wenn Jan in der Schule ist.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(41, 1, 'Klara...', '... ist nicht gerne im Garten.', '... hilft ihren Eltern gerne im Garten.', '... isst nicht gerne im Wohnzimmer.', '... hat ein eigenes Badezimmer', '... hilft ihren Eltern gerne im Garten.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(42, 2, 'Im Wohnzimmer gibt es...', '... einen Teppich.', '... einen Sessel und ein Sofa.', '... eine Küche.', '... eine Waschmaschine.', '... einen Teppich.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(43, 3, 'Die Möbel in der Küche sind...', '... hell und modern.', '... neu.', '... kaputt.', '... alt und dunkel.', '... alt und dunkel.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(44, 4, 'Die Familie...', '... isst immer im Garten.', '... isst immer in der Küche.', '... isst gerne im Wohnzimmer.', '... isst im Esszimmer.', '... isst gerne im Wohnzimmer.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(45, 5, 'Die Waschmaschine...', '... steht im Keller.', '... steht in der Küche.', '... steht im ersten Stock.', '... ist kaputt.', '... steht im Keller.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(46, 1, 'Was ist Anna von Beruf?', 'Studentin', 'Lehrerin', 'Krankenschwester', 'Ärztin', 'Krankenschwester');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(47, 2, 'Wohin will sie auswandern?', 'in die Schweiz', 'nach Italien', 'nach Deutschland', 'nach Russland', 'nach Deutschland');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(48, 3, 'Warum hat Anna einen Termin bei der deutschen Botschaft?', 'Sie hat ein Problem  mit den Unterlagen für die Genehmigung', 'sie verlängert den Reisepass', 'sie macht ein Interview für eine Zeitung', 'sie braucht ein Visum', 'sie braucht ein Visum');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(49, 4, 'Wo hat Anna hat eine Stelle gefunden?', 'in Berlin', 'in Ulm', 'in Bonn', 'in Stuttgart', 'in Berlin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(50, 5, 'Hat sie ihren Arbeitsplatz in Moskau gekündigt?', 'ja', 'noch nicht ', 'schon lange', 'sie wird nicht kündigen', 'noch nicht ');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(51, 1, 'Wo hat er ein Praktikum gemacht?', 'in Spanien', 'in Österreich', 'in Deutschland', 'in der Schweiz', 'in Österreich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(52, 2, 'Wie hat er mit den Kollegen aus Österreich gesprochen?', 'Englisch', 'Deutsch', 'hat nicht gesprochen', 'Spanisch', 'Deutsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(53, 3, 'Gab es Kollegen von andern Ländern?', 'nein, es gab keine', 'nur einen', 'ja, es gab', 'alle waren Österreicher', 'ja, es gab');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(54, 4, 'Hat er gut verdient?', 'der Lohn war in Ordnung', 'er hat keinen Lohn bekommen', 'der Lohn war sehr gut', 'der Lohn war nicht gut', 'der Lohn war sehr gut');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(55, 5, 'Hat ihm das Praktikum gefallen?', 'das Praktikum war toll', 'nein, Leider nicht', 'ja, das war eine gute Erfahrung für ihn', 'das Praktikum war gar nicht gut', 'ja, das war eine gute Erfahrung für ihn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(56, 1, 'Wo lässt sich Familie Müller beraten?', 'zu Hause', 'im Hotel', 'im Internet', 'im Reisebüro', 'im Reisebüro');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(57, 2, 'Wie lautet das Reiseziel der Familie Müller?', 'Ibiza', 'Korsika', 'Mallorca', 'Menorca', 'Mallorca');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(58, 3, 'Wie viel Gepäck hat Familie Müller dabei?', 'vier Koffer', 'vier Koffer und zwei Taschen', 'drei Taschen', 'drei Koffer und zwei Taschen', 'drei Koffer und zwei Taschen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(59, 4, 'Wie fühlt sich Herr Müller beim Starten des Flugzeugs?', 'er fühlt sich nicht wohl', 'er fühlt sich schläfrig', 'er ist durstig', 'er ist hungrig', 'er fühlt sich nicht wohl');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(60, 5, 'Wo holen die Passagiere nach der Landung ihr Gepäck ab?', 'am Gepäckband', 'im Wartebereich', 'im Hotel', 'auf der Rollbahn', 'am Gepäckband');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(61, 1, 'Welche Dinge sind nicht rot?', 'Rosen', 'Tomaten', 'Erdbeeren', 'Bananen', 'Bananen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(62, 2, 'Was gehört nicht zu blau?', 'dunkelblau', 'schwarz', 'türkis', 'himmelblau', 'schwarz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(63, 3, 'Was ist weiß?', 'Kaffee und Mais', 'Schnee und Wolken', 'Tauben und Schmuck', 'Blätter und Gräser', 'Schnee und Wolken');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(64, 4, 'Was ist gelb?', 'Bananen und Zitronen', 'See und Meer', 'Himmel und Erde', 'Kaffe und Brot', 'Bananen und Zitronen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(65, 5, 'Alle Farben zusammen ergibt welche Farbe?', 'golden', 'braun', 'schwarz', 'weiß', 'schwarz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(66, 1, 'Wieviele Kinder kommen zu Besuch?', '3', '2', '4', '5', '2');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(67, 2, 'Wieviele Packungen Saft sind im Angebot?', '5', '3', '12', '7', '5');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(68, 3, 'Wie alt ist die Mutter?', '38', '32', '27', '65', '38');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(69, 4, 'Wieviele Würstel werden gekauft?', '10', '4', '18', '15', '18');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(70, 5, 'Mit welchem Euro-Schein wird bezahlt?', '60€', '10€', '100€', '20€', '100€');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(71, 1, 'Wieviele Schüler sind in der Klasse?', 'genau dreißig Schüler', 'weniger als zwanzig Schüler', 'mehr als dreißig Schüler', 'etwa zwanzig Schüler', 'genau dreißig Schüler');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(72, 2, 'Wie heißt der Klassenkamerad?', 'Michael', 'Florian', 'Ahmed', 'Peter', 'Florian');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(73, 3, 'Was ist das Lieblingsfach?', 'Sport', 'Geschichte', 'Mathematik', 'Deutsch', 'Sport');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(74, 4, 'Wieviele Schularbeiten werden noch geschrieben?', '1', 'keine', '2', '3', '2');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(75, 5, 'Was ist im Rucksack?', 'ein Buch', 'ein Brot', 'eine Jacke', 'ein Ball', 'ein Buch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(76, 1, 'Wo geht Oscar einkaufen?', 'Im Supermarkt.', 'Auf dem Markt.', 'In der Metzgerei.', 'In der Bäckerei.', 'Im Supermarkt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(77, 2, 'Was braucht er für die Suppe?', 'Sellerie und Karotten', 'Kartoffeln und Pilze', 'Kürbis und Sellerie', 'Pilze und Petersilie', 'Kartoffeln und Pilze');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(78, 3, 'Welche Früchte kauft Oscar?', 'Birnen', 'Himbeeren', 'Trauben', 'Orangen', 'Trauben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(79, 4, 'Was findet Oscar neben dem Kühlregal?', 'Reis, Nudeln, Huhn und Fisch', 'Brot, Salz, Mehl, Zucker', 'Brot, Früchte und Gemüse', 'Eier, Milch, Butter und Käse', 'Brot, Salz, Mehl, Zucker');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(80, 5, 'Was braucht er für die Vorspeise?', 'Salat und Tomaten', 'Tomaten und Zwiebeln', 'Bananen und Trauben', 'Trauben und Käse', 'Trauben und Käse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(81, 1, 'Wieviele Geschwister hat die Mutter?', 'sie hat vier Brüder', 'sie hat Schwestern', 'sie hat vier Geschwister', 'sie hat zwei Brüder und zwei Schwestern', 'sie hat vier Geschwister');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(82, 2, 'Wer ist bereits gestorben?', 'Der Großvater und der älteste Bruder des Vaters', 'Beide Großeltern', 'Der jüngste Bruder der Mutter', 'Die Großmutter und der Großvater', 'Der Großvater und der älteste Bruder des Vaters');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(83, 3, 'Wer ist die liebste Cousine der Erzählerin?', 'Die Tochter der jüngsten Schwester der Mutter', 'Die Tochter des jüngsten Bruders der Mutter', 'Die Tochter der ältesten Schwester ihrer Mutter', 'Die Tochter des ältesten Bruders des Vaters', 'Die Tochter der ältesten Schwester ihrer Mutter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(84, 4, 'Hat die Erzählerin selbst Geschwister?', 'Nein', 'Eine Schwester, der Bruder ist gestorben', 'Ja, zwei Brüder', 'Ja, einen Bruder und eine Schwester', 'Ja, einen Bruder und eine Schwester');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(85, 5, 'Wer kümmert sich sehr um die Familie?', 'Die Großeltern', 'Die Eltern der Erzählerin', 'Die Cousinen und Cousins', 'Die Onkel und Tanten der Erzählerin', 'Die Onkel und Tanten der Erzählerin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(86, 1, 'An welchen Tagen hat der Erzähler keine Schule?', 'Von Montag bis Freitag', 'Am Dienstag und Donnerstag', 'Am Montag', 'Am Samstag und Sonntag', 'Am Samstag und Sonntag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(87, 2, 'Wann geht der Erzähler während der Woche schlafen?', 'Um 7:45', 'Nach 22 Uhr', 'Um 20 Uhr', 'Vor 22 Uhr', 'Vor 22 Uhr');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(88, 3, 'Was unternimmt der Erzähler am Wochenende?', 'Er schaut Filme.', 'Er macht Ausflüge oder einen Besuch bei der Großmutter.', 'Er spielt am Computer.', 'Er spielt Tennis.', 'Er macht Ausflüge oder einen Besuch bei der Großmutter.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(89, 4, 'Was unternimmt der Erzähler mit seinen Freunden?', 'Er macht mit ihnen die Hausaufgaben.', 'Er spielt mit Freunden Fußball.', 'Er ist bei ihnen zum Essen eingeladen.', 'Er lernt mit ihnen am Wochenende.', 'Er spielt mit Freunden Fußball.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(90, 5, 'Wie lange braucht er für seine Hausaufgaben?', 'Nie länger als bis 13 Uhr.', 'Meistens nicht länger als eine Stunde.', 'Oft bis 22 Uhr.', 'Selten bis 20 Uhr.', 'Meistens nicht länger als eine Stunde.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(91, 1, 'Was macht der Erzähler am liebsten am Wochenende?', 'faul sein', 'lernen', 'in die Berge fahren', 'viel essen', 'faul sein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(92, 2, 'Welchen Sport macht er manchmal am Wochenende?', 'wandern', 'laufen', 'Hockey spielen', 'Tennis spielen', 'Hockey spielen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(93, 3, 'Was macht er gern mit Freunden am Wochenende?', 'wandern', 'schwimmen gehen', 'faul sein', 'shoppen', 'schwimmen gehen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(94, 4, 'Was plant der Erzähler mit den Freunden im Sommer?', 'Schach spielen', 'in eine Vergnügungspark fahren', 'zum See fahren und dort im Zelt übernachten', 'eine Radtour', 'zum See fahren und dort im Zelt übernachten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(95, 5, 'Welche größeren Pläne hat er in den Sommerferien?', 'Campen mit Zelt in den Bergen', 'einen Urlaub am Meer', 'eine Reise in die nächste Stadt', 'eine Route mit dem Zug durch das ganze Land', 'eine Route mit dem Zug durch das ganze Land');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(96, 1, 'Warum sind Tom und Michel nicht nach Frankreich gefahren?', 'es war ihnen zu nah', 'sie waren beide schon einmal dort gewesen', 'sie mögen Frankreich nicht', 'das Essen dort ist nicht gut', 'sie waren beide schon einmal dort gewesen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(97, 2, 'Was ist Michels Lieblingsessen?', 'Schnitzel mit Pommes', 'Französisches Essen', 'Nudeln', 'Pizza', 'Pizza');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(98, 3, 'Sind die Straßen in Venedig anders als in Deutschland?', 'Nein, sie sind genauso', 'Ja, sie sind ganz eng und auf ihnen dürfen keine Autos fahren', 'Ja, sie sind aus Wasser', 'Es gibt dort nur kleine Autos', 'Ja, sie sind aus Wasser');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(99, 4, 'Was mochte Michel im Urlaub am liebsten?', 'Die Flüsse in der Stadt', 'Die Pizzerien', 'Den Flug nach Venedig', 'Das Hotel', 'Die Pizzerien');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(100, 5, 'Was haben Tom und Michel in Venedig besucht?', 'das Parlament', 'Boote', 'berühmte Plätze', 'ein Museum', 'berühmte Plätze');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(101, 1, 'Beim Weihnachtsfest geht es um was für ein Ereignis?', 'Um eine Geburt.', 'Um einen Unfall.', 'Um ein Naturwunder', 'Um eine Entdeckung.', 'Um eine Geburt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(102, 2, 'Der vielleicht wichtigste Tag beim Weihnachtsfest wird wie genannt?', 'Der Nikolaustag.', 'Der Heiligabend.', 'Der Advent.', 'Der Gottesdienst.', 'Der Heiligabend.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(103, 3, 'Womit wird der Weihnachtsbaum geschmückt?', 'Mit Glaskugeln.', 'Mit Stroh.', 'Mit Essen.', 'Mit Blumen.', 'Mit Glaskugeln.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(104, 4, 'Wohin gehen viele Familien am Heiligabend?', 'In ein Restaurant.', 'In die Kirche.', 'In ein Schwimmbad.', 'In ein Theater.', 'In die Kirche.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(105, 5, 'Wer bringt den Kindern die Geschenke am Heiligabend?', 'Der Nikolaus oder das Christkind', 'Die Nachbarn', 'Der Weihnachtsmann oder das Christkind', 'Der Nikolaus', 'Der Weihnachtsmann oder das Christkind');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(106, 1, 'Wann hat Hartmut Urlaub gemacht?', 'Im Sommer', 'Im Herbst', 'Im Febraur', 'In den Alpen', 'Im Febraur');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(107, 2, 'Ist das Hotel gut oder schlecht gewesen?', 'Schlecht, denn es war klein.', 'Schlecht, denn es war dort laut.', 'Gut, das Hotel war hübsch.', 'Schlecht, denn er hatte eine Einzelzimmer', 'Gut, das Hotel war hübsch.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(108, 3, 'Was hat Hartmut im Urlaub gelernt?', 'Wein trinken', 'Skifahren', 'Langes Schlafen', 'Österreichisch', 'Skifahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(109, 4, 'Was haben die Urlauber am letzten Abend getrunken?', 'nichts', 'Bier', 'Wein', 'Schnaps', 'Wein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(110, 5, 'Hat Hartmut eine gute oder eine schlechte Idee gehabt?', 'Die Idee war eigentlich gut, aber gefährlich!', 'Er hatte keine Idee', 'Skifahren in der Nacht sollte jeder machen', 'Keiner mochte seine Idee', 'Die Idee war eigentlich gut, aber gefährlich!');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(111, 1, 'Mit welcher Jahreszeit beginnt ein Jahr?', 'Mit dem Sommer', 'Mit dem Frühling', 'mit dem Winter', 'mit dem Herbst', 'mit dem Winter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(112, 2, 'Wann ist es in Deutschland am wärmsten?', 'im Frühling', 'im Sommer', 'im Herbst', 'im Winter', 'im Sommer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(113, 3, 'In welchen Monaten ist (laut Text) Herbst in Deutschland?', 'von September bis November', 'von Januar bis Februar', 'von März bis Mai', 'von November bis Dezember', 'von September bis November');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(114, 4, 'In welcher Jahreszeit ist es am kältesten in Deutschland?', 'im Frühling', 'im Sommer', 'im Herbst', 'im Winter', 'im Winter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(115, 5, 'Was passiert, wenn es im Winter besonders kalt wird?', 'es scheint die Sonne', 'es schneit', 'es regnet', 'es wird dunkel draußen', 'es schneit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(116, 1, 'Laut Text ist ein Vorteil von Einkaufszentren:', 'Es kaufen dort nicht viele Leute ein.', 'Einkaufszentren liegen außerhalb der Stadt.', 'Es gibt kostenlose Parkplätze.', 'Einkauf auch bei schlechtem Wetter.', 'Einkauf auch bei schlechtem Wetter.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(117, 2, 'Was findet man alles in einem Einkaufszentrum?', 'Mehr als Geschäfte', 'Geschäfte und ein Schwimmbad', 'Geschäfte und neue Freunde', 'Sehenswürdigkeiten', 'Mehr als Geschäfte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(118, 3, 'Was gibt in den meisten Einkaufszentrum?', 'Cafes und Resaturants', 'Restaurants', 'Cafes und Eisdielne', 'McDonalds', 'Cafes und Eisdielne');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(119, 4, 'Wann kann man im Einkaufaufszentrum einkaufen?', 'Es steht nicht im Text', 'im Sommer und Winter', 'nur im Sommer', 'nur im Winter', 'im Sommer und Winter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(120, 5, 'Einkauszentren sind beliebt bei...', '...allen Frauen', '...vielen Leuten', '...allen Männern', '...allen Leuten', '...vielen Leuten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(121, 1, 'Wie groß ist die Wohnung?', '30 Quadratmeter.', '40 Quadratmeter.', '50 Quadratmeter.', '60 Quadratmeter.', '50 Quadratmeter.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(122, 2, 'Was kostet die Wohnung jedes Monat?', '1200 Euro zuzüglich Nebenkosten', '450 Euro zuzüglich Nebenkosten', '450 Euro inklusive Nebenkosten', '1200 Euro inklusive Nebenkosten', '450 Euro zuzüglich Nebenkosten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(123, 3, 'Was sind meine Pläne für den Sommer?', 'Ich will weit weg Urlaub machen.', 'Ich will mich auf der Wiese hinter dem Haus sonnen lassen.', 'Ich will im Sommer arbeiten.', 'Ich will im Sommer in der Wohnung sitzen.', 'Ich will mich auf der Wiese hinter dem Haus sonnen lassen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(124, 4, 'Ist die Wohnung schön eingerichtet?', 'Nein, die Wohnung ist noch leer.', 'Noch nicht ganz. Es fehlen noch Möbel.', 'Ja, gestern sind die Möbel gekommen.', 'Ja, die Möbel waren schon da als ich eingezogen bin.', 'Ja, gestern sind die Möbel gekommen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(125, 5, 'Was bekommen die Gäste bei der Einweihungsparty zu essen?', 'Pizza.', 'Sekt und Kaviar.', 'Kuchen und Brötchen.', 'Würstchen und Speck.', 'Kuchen und Brötchen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(126, 1, 'Wie viele Menschen leben in der Stadt?', 'Ungefähr eine Million.', 'Fast zwei Millionen.', 'Mehr als zwei Millionen.', 'Zwischen zwei und drei Millionen.', 'Fast zwei Millionen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(127, 2, 'Welche Sprache spricht man in der Stadt?', 'Englisch.', 'Spanisch.', 'Französisch.', 'Deutsch.', 'Deutsch.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(128, 3, 'Wer wartet in der Altstadt auf die Touristen?', 'Ein Fremdenführer.', 'Pferdekutschen.', 'Eine Prinzessin.', 'Eine Kaiserin.', 'Pferdekutschen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(129, 4, 'Wer hat in dem Schloss gewohnt?', 'Eine Kaiserin.', 'Ein Schlüssel.', 'Ein König.', 'Kaiser Wilhelm II.', 'Eine Kaiserin.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(130, 5, 'In welcher Stadt wohne ich?', 'Berlin.', 'Zürich.', 'München.', 'Wien.', 'Wien.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(131, 1, 'Was machen viele Touristen in Wien und Salzburg?', 'Sie arbeiten.', 'Sie ruhen sich aus.', 'Sie gehen auf Konzerte und ins Museum.', 'Sie fahren lieber woanders hin.', 'Sie gehen auf Konzerte und ins Museum.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(132, 2, 'Welche Sehenswürdigkeiten besuchen sie gerne in Wien?', 'Das Geburtshaus Mozarts und die Festung Hohensalzburg.', 'Den Stephansdom und das Schloss Schönbrunn.', 'Den Minimundus und den Bodensee.', 'Das Schloss Esterházy und den Uhrturm.', 'Den Minimundus und den Bodensee.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(133, 3, 'Welche Sehenswürdigkeiten besuchen sie gerne in Salzburg?', 'Das Geburtshaus Mozarts und die Festung Hohensalzburg.', 'Den Stephansdom und das Schloss Schönbrunn.', 'Das Schloss Esterházy und den Uhrturm.', 'Den Minimundus und den Bodensee.', 'Das Geburtshaus Mozarts und die Festung Hohensalzburg.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(134, 4, 'Wie finden die Touristen eine günstige Unterkunft?', 'Im Internet.', 'Auf Facebook.', 'In der Stadt.', 'Im Katalog.', 'Im Internet.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(135, 5, 'Warum sind viele Touristen überrascht?', 'Weil Österreich so schön ist.', 'Weil die Leute immer Lederhosen tragen.', 'Weil die Supermärkte am Wochenende und abends geschlossen haben.', 'Weil sie günstige Wohnungen mieten können und es keine Hotels gibt.', 'Weil die Supermärkte am Wochenende und abends geschlossen haben.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(136, 1, 'Was will Tom am Samstag machen?', 'In die Disko gehen', 'nichts', 'Freunde einladen', 'In den Urlaub fahren', 'In den Urlaub fahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(137, 2, 'Kann Tom tanzen?', 'In den Urlaub fahren', 'Ja', 'Ja, aber nicht gut.', 'Er tanzt nicht gerne.', 'Ja');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(138, 3, 'Will Tom tanken?', 'Tom will tanken.', 'Tom tankt gerne.', 'Er will nicht, aber muss.', 'Tom kann tanken.', 'Er will nicht, aber muss.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(139, 4, 'Was darf Tom nehmen?', 'Das Benzin des Vaters', 'Das Auto des Vaters', 'Das Auto seiner Freunde', 'Anna und John', 'Das Auto seiner Freunde');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(140, 5, 'Wann soll Tom nach Hause kommen?', 'Um 12 Uhr nachts.', 'Am nächsten Morgen.', 'Um 10 Uhr abends.', 'Um 1 Uhr nachts.', 'Um 1 Uhr nachts.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(141, 1, 'Warum sind immer weniger Menschen in der Herstellung tätig?', 'sie wollen nicht in der Produktion arbeiten', 'es gibt immer weniger Arbeit', 'es gibt immer mehr Maschirnen', 'die Industrie bezahlt zu wenig', 'es gibt immer weniger Arbeit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(142, 2, 'Wo kann man Roboter noch einsetzen?', 'im Kino', 'in der Schule', 'im Haushalt', 'im Supermarkt', 'im Haushalt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(143, 3, 'Was ist der Nachteil bei den Robotern?', 'ohne Strom funktionieren sie nicht', 'sie sind zu laut', 'ihr Akku ist zu schwach', 'sie verbrauchen zu viel Strom', 'ohne Strom funktionieren sie nicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(144, 4, 'Die Roboter können zu Hause putzen, den Rasen mähen und...', 'den Abwasch machen', 'die Kinder wecken', 'kochen', 'einen Anruf annehmen', 'kochen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(145, 5, 'Welche Vorteil hat der Mensch?', 'er braucht keinen Strom', 'er ist leichter', 'er ist lebendig', 'er braucht keinen Brennstoff', 'er braucht keinen Strom');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(146, 1, 'Wie  lange ist die Person in dem Unternehmen tätig?', 'einen Monat', 'zehn Monate', 'ein Jahrzehnt', 'zehn tage', 'ein Jahrzehnt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(147, 2, 'Von wem wurde die Person angerufen?', 'vor der Ehefrau', 'von dem Kollegen', 'vom Geschäftsführer persönlich', 'von der Assistentin des Geschäftsführers persönlich', 'vom Geschäftsführer persönlich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(148, 3, 'Was waren seine ersten Gedanken?', 'er hat sich gefreut', 'er ist wahrscheinlich in Schwierigkeiten', 'er war verängstigt', 'er ist der beste', 'er ist wahrscheinlich in Schwierigkeiten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(149, 4, 'Was war vor dem Büro?', 'die Kollegen', 'der Kollege', 'keiner', 'die Assistentin', 'keiner');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(150, 5, 'Was ist passiert?', 'er hat eine Woche freibekommen', 'er wurde befördert', 'er wurde gekündigt', 'nichts', 'er wurde befördert');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(151, 1, 'Wie lange lebt Nadine in Bonn?', 'seit fünf Jahren', 'seit zehn Jahren', 'schon immer', 'seit fünf Monaten', 'seit fünf Jahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(152, 2, 'Was für eine Sendung moderiert sie?', 'eine Sendung über Sport', 'eine Sendung über Gesundheit', 'eine Sendung über Literatur', 'eine Sendung über Politik', 'eine Sendung über Politik');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(153, 3, 'Was gefällt ihr an Bonn?', 'der Park', 'die Landschaft', 'die Lage', 'die öffentlichen Verkehrsmittel', 'die öffentlichen Verkehrsmittel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(154, 4, 'Hat sie Kinder?', 'nein', 'ja', 'vielleicht, stand nicht im Text', 'bekommt jetzt eins', 'ja');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(155, 5, 'Was machen sie am Wochenende?', 'sie essen mit Freunden', 'sie besuchen oft Köln', 'sie treiben Sport', 'sie besuchen Österreich', 'sie besuchen oft Köln');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(156, 1, 'Wo erholt sich Herbert?', 'zu Hause auf dem Sofa', 'in der Bar', 'in der Natur', 'im Schwimmbad', 'zu Hause auf dem Sofa');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(157, 2, 'Herbert arbeitet immer im Büro.', 'nur manchmal', 'richtig', 'falsch', 'nein, nur am Montag', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(158, 3, 'Wer von den beiden mag die Natur?', 'keiner', 'Bernd', 'beide', 'Herbert', 'Bernd');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(159, 4, 'Was ist Bernd von Beruf?', 'Paketzusteller', 'LKW-Fahrer', 'Manager', 'Schauspieler', 'Manager');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(160, 5, 'Was macht Bernd, damit er sich erholt?', 'liegt im Bett', 'joggt und fährt Fahrrad', 'fährt Motorrad', 'schläft', 'joggt und fährt Fahrrad');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(161, 1, 'Was war das Problem mit der Hose?', 'die Farbe', 'die Marke', 'die Größe', 'das Model', 'die Größe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(162, 2, 'Warum hat sie die Hose nicht anprobiert?', 'sie hatte keine Zeit', 'die Umkleidekabine war geschlossen', 'es gab keine Umkleidekabine', 'es war zu viele vor der Umkleidekabine', 'es war zu viele vor der Umkleidekabine');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(163, 3, 'Was ist beim Umtausch passiert?', 'sie konnte die Hose nicht umtausche', 'die schwarzen Hosen waren ausverkauft', 'die Hose gab es nur noch in Rot', 'sie hat die passende Größe nicht bekommen', 'die schwarzen Hosen waren ausverkauft');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(164, 4, 'Was ist gestern noch passiert?', 'sie kaufte eine Jeans mit einem Fehler', 'sie kaufte eine Jacke mit einem Fehler', 'nichts anderes ist passiert', 'sie kaufte eine Hose mit einem Fehler', 'sie kaufte eine Jacke mit einem Fehler');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(165, 5, 'Was war das Problem mit der Jacke?', 'ein Loch im linken Ärmel', 'die Größe', 'die Farbe', 'ein Loch im rechten Ärmel', 'ein Loch im rechten Ärmel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(166, 1, 'Wo findet man Stellenanzeigen nicht?', 'in Zeitungen', 'im Internet', 'im Supermarkt', 'auf Webseiten', 'im Supermarkt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(167, 2, 'Was steht zu Beginn einer Bewerbung?', 'Interessen', 'Name, Alter, Wohnort', 'Schule, Ausbildung, Kurse', 'Berufserfahrung', 'Name, Alter, Wohnort');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(168, 3, 'Was gehört noch zu einer Bewerbung?', 'Absage der letzten Bewerbung', 'Kopie des Reisepasses', 'Brief der Eltern', 'Zeugnisse und Anschreiben', 'Zeugnisse und Anschreiben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(169, 4, 'Was passiert bei einem Bewerbungsgespräch?', 'Man lernt den Arbeitgeber kennen.', 'Man bekommt Hilfe und Unterstützung bei der Arbeitssuche.', 'Man muss eine Zeit lang zur Probe arbeiten.', 'Man lernt die Kollegen kennen.', 'Man lernt den Arbeitgeber kennen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(170, 5, 'Was passiert, wenn man eine Absage bekommt?', 'Man bekommt ein Zeugnis für das Bewerbungsgespräch.', 'Man muss eine neue Ausbildung machen.', 'Man muss eine Stellenanzeige schreiben.', 'Man kann sich bei der nächsten offenen Stelle bewerben', 'Man kann sich bei der nächsten offenen Stelle bewerben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(171, 1, 'Was gehört nicht zu den Organen?', 'das Herz', 'der Darm', 'die Lunge', 'der Hals', 'der Hals');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(172, 2, 'Wieviele Zehen haben wir?', 'zwei', 'zwanzig', 'zehn', 'fünf', 'zehn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(173, 3, 'Was gehört zum Arm?', 'Rippen und Brustkorb', 'Kinn und Hals', 'Knie und Knöchel', 'Ellenbogen und Schulter', 'Ellenbogen und Schulter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(174, 4, 'Wie heißen die Gelenke an den Beinen?', 'Knochen und Knie', 'Muskeln und Organe', 'Knie und Knöchel', 'Arme und Beine', 'Knie und Knöchel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(175, 5, 'Was gehört zu den Sinnesorganen?', 'Augen, Ohren, Nase, Mund', 'Augen, Augenbrauen, Kinn, Zunge', 'Zähne, Haare, Zunge, Mund', 'Magen, Leber, Nieren, Herz', 'Augen, Ohren, Nase, Mund');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(176, 1, 'Mit welchem Verkehrsmittel kommt Peter in die Innenstadt?', 'Straßenbahn', 'S-Bahn', 'Taxi', 'U-Bahn', 'S-Bahn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(177, 2, 'Welcher Wolkenkratzer hat zwei Aussichtsterrassen?', 'Messeturm', 'Main Tower', 'Europaturm', 'Opernturm', 'Main Tower');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(178, 3, 'Wie heißt der Rathausplatz noch?', 'Frankfurter Platz', 'Hausberg', 'Hessenplatz', 'Römerberg', 'Römerberg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(179, 4, 'Wie heißt die beliebteste Einkaufsstraße von Frankfurt?', 'Zeil', 'Frankfurter Allee', 'Kö', 'Mariahilferstraße', 'Zeil');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(180, 5, 'Was ist das Nationalgetränk in Frankfurt?', 'Weißwein', 'Ebbelwoi', 'Kölsch', 'Bier', 'Ebbelwoi');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(181, 1, 'An welchem Fluss liegt Heidelberg?', 'an der Donau', 'am Rhein', 'an der Mosel', 'am Neckar', 'am Neckar');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(182, 2, 'Wie wird die Karl-Theodor-Brücke genannt?', 'Alte Brücke', 'Heidelberger Brücke', 'Neckarbrücke', 'Fußgängerbrücke', 'Alte Brücke');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(183, 3, 'Aus welchem Stein ist das Schloss erbaut?', 'aus grauen Ziegeln', 'aus gelbem Sandstein', 'aus rotem Sandstein', 'aus weißem Marmor', 'aus rotem Sandstein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(184, 4, 'Aus wie vielen Streckenteilen bestehen die Heidelberger Bergbahnen?', 'aus zwei', 'aus einem', 'aus drei', 'aus vier', 'aus zwei');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(185, 5, 'Wie heißt der Brunnen in der Mitte des Marktplatzes?', 'Herkulesbrunnen', 'Universitätsbrunnen', 'Kaiserbrunnen', 'Marienbrunnen', 'Herkulesbrunnen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(186, 1, 'Was ist die Allianz Arena?', 'Schwimmhalle', 'Fußballstadion', 'Bürohaus', 'Rathaus', 'Fußballstadion');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(187, 2, 'München ist die Landeshauptstadt von ...', 'Bayern', 'Hessen', 'Nordrhein Westfalen', 'Sachsen', 'Bayern');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(188, 3, 'Wieviele Türme hat die Frauenkirche?', 'einen', 'keinen', 'vier', 'zwei', 'zwei');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(189, 4, 'Was ist die Bekleidung der Kellner im Hofbräuhaus?', 'schwarzer Anzug', 'Jeans', 'Tracht', 'kurze Hosen', 'Tracht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(190, 5, 'Wieviel Bier passt in einen Maßkrug?', 'ein Liter', 'ein Viertelliter', 'hundert Milliliter', 'ein halber Liter', 'ein Liter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(191, 1, 'Was gehört zu einem Hemd?', 'Krawatte und Gürtel', 'Knöpfe und Kragen', 'Strümpfe und Socken', 'Gürtel und Hut', 'Knöpfe und Kragen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(192, 2, 'Wie kann ein Rock sein?', 'kurz', 'einfach', 'warm', 'weich', 'kurz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(193, 3, 'Was tragen Frauen im Winter unter dem Kleid?', 'Stiefel', 'Strümpfe', 'Schal', 'Socken', 'Strümpfe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(194, 4, 'Was gehört zu einem Anzug?', 'Krawatte und Gürtel', 'Brille und Gürtel', 'Halskette und Schal', 'Brille und Hut', 'Krawatte und Gürtel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(195, 5, 'Was trägt man im Winter auf dem Kopf?', 'Schmuck', 'Sonnenbrille', 'Mütze', 'Schal', 'Mütze');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(196, 1, 'Welches sind die beliebtesten Sportarten der Deutschen im Fernsehen?', 'Radrennen und Schwimmen', 'Fußball und Tennis', 'Skifahren', 'Golf und Reiten', 'Fußball und Tennis');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(197, 2, 'Welche Sportart betreiben die Deutschen nicht so oft in der Freizeit?', 'Schwimmen', 'Fußball', 'Leichtathletik', 'Tennis', 'Leichtathletik');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(198, 3, 'Wieviele Spieler sind auf einem Fußballfeld, wenn ein Spiel stattfindet?', '20 Spieler und zwei Torwarte', '11 Spieler und zwei Torwarte', '10 Spieler und Schiedsrichter', '20 Spieler insgesamt', '20 Spieler und zwei Torwarte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(199, 4, 'Was passiert beim Golf?', 'Zwei Spieler schlagen Bälle über ein Netz.', 'Ein Spieler schlägt einen harten Ball mit einem langen Schläger.', 'Lifte bringen die Sportler auf Pisten.', 'Zwei Teams versuchen Tore zu schießen.', 'Ein Spieler schlägt einen harten Ball mit einem langen Schläger.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(200, 5, 'Bei welchen Sportarten braucht man einen Schläger?', 'Fußball und Reiten', 'Basketball und Formel 1', 'Tennis und Golf', 'Skifahren und Schwimmen', 'Tennis und Golf');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(201, 1, 'Wo liegt Bayern?', 'An der Nordsee', 'An den Alpen', 'Am Mittelmeer', 'In Österreich', 'An den Alpen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(202, 2, 'Warum machen viele Leute keinen Urlaub in Deutschland?', 'Wegen der hohen Berge.', 'Weil es in Deutschland keine Seen gibt.', 'Weil es zu teuer ist.', 'Wegen dem schlechten Wetter.', 'Wegen dem schlechten Wetter.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(203, 3, 'Wer ist Ludwig II.?', 'Ludwig II. ist ein bayerischer Politiker.', 'Ludwig II. war der König von Bayern.', 'Ludwig II. ist der Bürgermeister von München.', 'Ludwig II. ist der Reiseleiter.', 'Ludwig II. war der König von Bayern.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(204, 4, 'Was kann man laut Text in Bayern machen?', 'Am Strand liegen', 'Im Meer baden', 'Fahrradfahren', 'Wassersport', 'Wassersport');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(205, 5, 'Wie heißt die bayerische Hauptstadt?', 'Ludwigsstadt', 'Landeshauptstadt', 'München', 'Rafting', 'München');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(206, 1, 'Wie oft sollte man Obst und Gemüse essen?', 'einmal pro Woche', 'jeden zweiten Tag', 'jeden Tag', 'jede Stunde', 'jeden Tag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(207, 2, 'Wie viel Liter sollte man täglich trinken?', 'ein Glas Wasser', 'eine Flasche Wasser', 'ein Liter Wasser', 'zwei Liter Wasser', 'zwei Liter Wasser');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(208, 3, 'Wie oft sollte man Sport treiben?', 'täglich', 'wöchentlich', 'zweimal wöchentlich', 'monatlich', 'zweimal wöchentlich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(209, 4, 'Wie viele Stunden Schlaf braucht ein Erwachsener?', '6', '7', '8', '9', '7');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(210, 5, 'Auf was sollte man verzichten?', 'länger als sieben Stunden schlafen', 'Alkohol und Zigaretten', 'täglich Sport machen', 'mehr als zwei Liter Wasser trinken', 'Alkohol und Zigaretten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(211, 1, 'Auslandserfahrung ist gut für viele Berufe.', 'nur im bestimmten Berufe', 'falsch', 'in alle Berufe', 'richtig', 'richtig');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(212, 2, 'Es ist einfach ein Studium oder Arbeit im Ausland zu finden.', 'Es steht nicht im Text.', 'Ja, es ist einfach.', 'Es ist nicht einfach.', 'Je nach Beruf', 'Es ist nicht einfach.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(213, 3, 'Man sollte sich im Ausland nicht anpassen.', 'richtig', 'nur Männer', 'Jeder Mensch ist anders', 'falsch', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(214, 4, 'Auf Höflichkeit sollte man nicht achten.', 'falsch', 'nur mit bestimmten leuten', 'richtig', 'nicht immer', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(215, 5, 'Kulturelle Unterschiede existieren in Wirklichkeit nicht.', 'manchmal', 'falsch', 'nur im bestimmtem Städten', 'richtig', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(216, 1, 'Der Tourist wollte Genf...', 'auf eigene Faust erkunden.', 'nicht allein besichtigen.', 'bei Nacht erleben.', 'mit einer Reisegruppe entdecken.', 'auf eigene Faust erkunden.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(217, 2, 'Die „Kathedrale St. Peter“...', 'hat eine kleine Kirchenspitze.', 'hat einen Aussichtsturm.', 'befindet sich in der Neustadt.', 'steht am Genfer See.', 'hat einen Aussichtsturm.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(218, 3, 'Auf dem Bourgh-de-Four Platz...', 'gibt es viele Geschäfte.', 'kann man sich ausruhen und die weltoffene Stimmung geniessen.', 'können Besucher problemlos ihre Autos parken.', 'gibt es viele moderne Gebäude.', 'kann man sich ausruhen und die weltoffene Stimmung geniessen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(219, 4, 'Der Besucher...', 'konnte nirgendwo ein Restaurant finden.', 'wollte unbedingt in einem Fastfood-Restaurant zu Mittag essen.', 'war von seinem Lieblingsessen begeistert.', 'war mit dem Essen nicht zufrieden.', 'war von seinem Lieblingsessen begeistert.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(220, 5, 'Die Blumenuhr...', 'wird mit der Hand gesteuert.', 'hat keinen Sekundenzeiger.', 'wird aller drei Monate mit anderen Blumen geschmückt.', 'befindet sich auf einer englischen Insel.', 'wird aller drei Monate mit anderen Blumen geschmückt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(221, 1, 'Wie heißt die Glocke im Stephansdom?', 'Franzensglocke', 'Pummerin', 'Wienerin', 'Stephansglocke', 'Pummerin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(222, 2, 'In welchem Stil ist der Stephansdom erbaut?', 'im Renaissance Stil', 'im barocken Stil', 'im modernen Stil', 'im gotischen Stil', 'im gotischen Stil');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(223, 3, 'Wie fahren sie vom Parkhaus in die Stadt?', 'mit der U-Bahn', 'mit dem Taxi', 'mit der Straßenbahn', 'mit dem Bus', 'mit der U-Bahn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(224, 4, 'Wie heißt der Vergnügungspark?', 'Schönbrunn', 'grüne Wiese', 'Prater', 'Tivoli', 'Prater');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(225, 5, 'Wie heißt die Straße rund um das Zentrum von Wien?', 'Ringstraße', 'Mariahilferstraße', 'Kärntnerstraße', 'Gürtel', 'Ringstraße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(226, 1, 'Wo feiert man Fasching/Karneval?', 'In Norddeutschland.', 'Im Rheinland und in Süddeutschland.', 'Nur Christen feiern Fasching.', 'Man feiert Fasching in ganz Deutschland.', 'Im Rheinland und in Süddeutschland.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(227, 2, 'Was ist typisch für Fasching?', 'An Aschermittwoch gibt es viele Partys.', 'Es ist Brauch, an Fasching die Wohnung zu wechseln.', 'Man schenkt sich Rosen.', 'Man zieht lustige Kostüme an.', 'Man zieht lustige Kostüme an.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(228, 3, 'Was feiert man an Ostern?', 'Man feiert den Frühling.', 'Man gedenkt an Ostern aller Menschen, die gestorben sind.', 'Man feiert Ostern im Gedenken an den Tod Jesus Christus und die Auferstehung.', 'Man feiert die Geburt Christi.', 'Man feiert Ostern im Gedenken an den Tod Jesus Christus und die Auferstehung.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(229, 4, 'Warum feiert man Weihnachten?', 'Weihnachten feiert man den Beginn des Winters.', 'Weihnachten ist der Geburtstag von Jesus Christus.', 'An Weihnachten feiert man das Ende des Jahres.', 'Weihnachten erinnert man sich an den Tod von Jesus Christus.', 'Weihnachten ist der Geburtstag von Jesus Christus.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(230, 5, 'Wie feiert man Weihnachten?', 'Man lädt Freunde ein und schenkt ihnen eine Kleinigkeit.', 'Man trifft sich mit Freunden.', 'Man feiert eine Geburtstagsparty.', '4', 'Man tauscht Geschenke aus.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(231, 1, 'Warum wird der Freund oft gehänselt und verspottet?', 'Weil er sehr klein ist.', 'Weil er dick ist.', 'Weil er sehr dünn ist.', 'Weil er sehr groß ist.', 'Weil er sehr groß ist.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(232, 2, 'In welchem Fach war er in der Schule sehr gut?', 'Deutsch', 'Sport', 'Kunst', 'Mathematik', 'Sport');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(233, 3, 'Was ist sein Lieblingssport?', 'Weitsprung', 'Hochsprung', 'Laufen', 'Basketball', 'Basketball');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(234, 4, 'Welches Hobby hatte er als Kind?', 'Mit Freunden spielen', 'Malen', 'Basketballtraining im Verein', 'Lesen', 'Basketballtraining im Verein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(235, 5, 'Welchen Beruf hat er heute?', 'Student', 'Vater', 'Lehrer', 'Basketballtrainer', 'Basketballtrainer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(236, 1, 'Was hat Niko studiert?', 'Er hat nicht  studiert', 'Biologie', 'Wirtschaft', '', 'Wirtschaft');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(237, 2, 'Was trägt Niko bei der Arbeit?', 'einen Anzug', 'einen Sportanzug', 'eine Badehose', 'eine Jeans und ein Hemd', 'einen Anzug');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(238, 3, 'Wo kauft Maria ihre Kleidung?', 'bei H&M oder bei C&A', 'nur bei C&A', 'nur bei H&M', 'bei Zara', 'bei H&M oder bei C&A');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(239, 4, 'Trägt Maria auch Kleider?', 'ja, jeden Tag', 'immer', 'ja, manchmal', 'nein, nie', 'ja, manchmal');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(240, 5, 'Ärztin Karin trägt bei der Arbeit nur:', 'schwarze Sachen', 'ein Anzug', 'bunte Sachen', 'weiße Sachen', 'weiße Sachen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(241, 1, 'Wann ist Manfred nach Berlin gezogen?', 'vor zwei Jahren', 'mit 20', 'mit 11', 'mit 18', 'mit 19');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(242, 2, 'Manfred hat zwei Kinder.', 'er hat drei Kinder', 'falsch', 'er hat keine Kinder', 'richtig', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(243, 3, 'Wo wohnt Eva?', 'in Italien', 'auf dem Land', 'im Zentrum', 'am Stadtrand', 'im Zentrum');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(244, 4, 'Wo ist Oli aufgewachsen?', 'in einem Dorf', 'in einer Großstadt', 'in Köln', 'in Berlin', 'in einem Dorf');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(245, 5, 'Was ist Oli von Beruf?', 'Arbeitslos', 'Polizist', 'Informatiker', 'Lehrer', 'Informatiker');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(246, 1, 'Warum ist Daniel nach Berlin gezogen?', 'Weile er die Stadt liebt.', 'Wegen seiner neuen Arbeit.', 'Damit er seine Freundin nicht so oft sieht.', 'Weil er nicht gerne abends arbeitet.', 'Wegen seiner neuen Arbeit.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(247, 2, 'Wohnt Daniel allein in Berlin?', 'Ja, seine Freundin wohnt woanders.', 'Nein, er wohnt dort mit seiner Freundin.', 'Nein, er wohnt mit seinen Arbeitskollegen.', 'Ja, er hat eine Einzimmerwohnung.', 'Nein, er wohnt dort mit seiner Freundin.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(248, 3, 'Warum mag Daniel seine Arbeit?', 'Weil er dort nichts machen muss.', 'Weil die Arbeit einfach ist.', 'Weil er seine Freundin nur selten sieht.', 'Wegen den netten Kollegen.', 'Wegen den netten Kollegen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(249, 4, 'Was hat Daniel zuletzt gelernt?', 'Wie er Briefe schreibt.', 'Er hat seine Kollegen kennengelernt.', 'Pakete mit Automaten zu verschicken.', 'Nichts besonderes.', 'Pakete mit Automaten zu verschicken.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(250, 5, 'Was macht die Freundin von Daniel beruflich?', 'Sie studiert noch.', 'Sie ist Hausfrau.', 'Sie arbeitet als Verkäuferin.', 'Das steht nicht im Text.', 'Sie arbeitet als Verkäuferin.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(251, 1, 'Was studiert Ricarda?', 'Lehramt', 'Medizin', 'Wirtschaft', 'Jura', 'Medizin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(252, 2, 'Wie alt ist Maike?', '19 Jahre', '20 Jahre', '21 Jahre', '22 Jahre', '22 Jahre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(253, 3, 'Wo wohnt Maike?', 'Sie wohnt in Lübeck.', 'Sie wohnt in Hamburg.', 'Sie wohnt in Berlin.', 'Das steht nicht im Text.', 'Sie wohnt in Hamburg.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(254, 4, 'Was kauft Ricarda am liebsten?', 'Essen und Trinken', 'Schmuck', 'neue Schuhe', 'Filme', 'neue Schuhe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(255, 5, 'Wohin gehen sie gern abends?', 'Kaffeetrinken', 'Eisessen', 'Einkaufen', 'ins Kino', 'ins Kino');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(256, 1, 'Wie alt ist Tom?', 'Tom ist 13 Jahre alt', 'Er heißt mit Nachnamen Maier', 'Tom ist schon erwachsen', 'Tom hat einen 13-jährigen Sohn', 'Tom ist 13 Jahre alt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(257, 2, 'Was ist der Vater von Tom von Beruf?', 'Er ist Lehrer', 'Er ist Tierarzt', 'Er ist Zahnarzt', 'Er arbeitet nicht', 'Er ist Zahnarzt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(258, 3, 'Was ist die Mutter von Tom von Beruf?', 'Sie ist Lehrerin', 'Sie ist Hausfrau', 'Sie ist Zahnärztin', 'Sie ist Tierärztin', 'Sie ist Zahnärztin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(259, 4, 'Wo wohnt die Familie Maier?', 'in der Königstraße', 'in einer Zahnarztpraxis', 'mit seinem Bruder und seiner Schwester', 'in der Bahnhofstraße', 'in der Bahnhofstraße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(260, 5, 'Was sind die Hobbys von Tom?', 'Englisch, Französisch und Sport', 'Er mag alles, nur keinen Sport', 'Fußball, Schwimmen und Computerspielen', 'Er hat keine Zeit für Hobbys', 'Fußball, Schwimmen und Computerspielen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(261, 1, 'Wie viele Kinder hat Maria mit Markus?', 'Sie haben ein Kind.', 'Sie haben zwei Kinder.', 'Sie haben vier Kinder.', 'Sie haben sechs Kinder.', 'Sie haben zwei Kinder.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(262, 2, 'Wer ist Heinrich?', 'Heinrich ist Marias Mann.', 'Heinrich ist Marias Nachbar.', 'Heinrich ist Marias Sohn.', 'Heinrich ist Marias Vater.', 'Heinrich ist Marias Sohn.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(263, 3, 'Wo lebt Maria mit ihrer Familie?', 'Sie leben in einem Haus in der Stadt.', 'Sie leben in einer Wohnung in der Stadt.', 'Sie leben in einem Haus im Dorf.', 'Sie leben in einer Wohnung im Dorf.', 'Sie leben in einem Haus im Dorf.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(264, 4, 'Wo leben Marias Eltern?', 'Sie leben im Ausland.', 'Sie leben in der Nähe.', 'Sie leben im gleichen Haus wie Maria.', 'Sie leben in der Stadt.', 'Sie leben im Ausland.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(265, 5, 'Welche Berufe haben Maria und Markus?', 'Maria ist Köchin und Markus ist Journalist.', 'Maria ist Sekretärin und Markus ist Koch.', 'Maria arbeitet nicht und Markus ist Elektriker.', 'Maria ist Journalistin und Markus ist Koch.', 'Maria ist Journalistin und Markus ist Koch.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(266, 1, 'Wie viele Personen hat die Familie?', '3', '4', '5', '6', '4');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(267, 2, 'Wo wohnt die Familie?', 'in einem Garten', 'in einer Stadt', 'in einer Wohnung', 'in einem Haus', 'in einem Haus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(268, 3, 'Haben sie Kinder?', 'nein', 'ja, zwei Kinder', 'ja, ein Kind', 'ja, drei Kinder', 'ja, zwei Kinder');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(269, 4, 'Arbeitet die Mutter?', 'Ja, aber nur halbtags', 'Ja, sie arbeitet von 9 bis 17 Uhr', 'Nein, sie ist Hausfrau', 'Davon steht nichts im Text', 'Ja, aber nur halbtags');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(270, 5, 'Wer gehört noch zur Familie?', 'eine Katze', 'ein kleiner Hund', 'Oma und Opa', 'Onkel und Tante', 'Oma und Opa');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(271, 1, 'Wo wohnt Susanne?', 'in der Nähe', 'in Hamburg', 'in München', 'in Berlin', 'in München');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(272, 2, 'Wo wohnt Thomas?', 'in der Nähe', 'in Hamburg', 'in München', 'in Berlin', 'in Hamburg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(273, 3, 'Was ist Thomas von Beruf?', 'Er ist Lehrer', 'Das steht nicht im Text', 'Er sucht nach Arbeit', 'Er arbeitet in einer Bank', 'Er arbeitet in einer Bank');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(274, 4, 'Was ist Susanne von Beruf?', 'Sie ist Lehrerin', 'Sie ist Schülerin', 'Sie ist arbeitslos', 'Sie ist Kollegin', 'Sie ist Lehrerin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(275, 5, 'Wie heißt die Katze von Susanne?', 'Thomas', 'Mimi', 'Kätzchen', 'Miau', 'Mimi');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(276, 1, 'Wo wohnen die Freunde?', 'in einem House', 'zu Hause', 'in einem Studentenheim	', 'in einer WG', 'in einer WG');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(277, 2, 'Wer unterstützt  ihn, wenn er Probleme hat?', 'Markus', 'Stefan', 'Michael', 'Kai', 'Stefan');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(278, 3, 'Was macht er mit Michael?', 'sie studieren zusammen', 'sie besuchen einen Sprachkurs', 'sie sprecht über Probleme', 'sie arbeiten der gleichen Firma', 'sie studieren zusammen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(279, 4, 'Wo arbeitet Markus?', 'als Lehrer an einer Schule', 'in einer Fabrik', 'er ist arbeitslos', 'in einer anderen Stadt', 'in einer anderen Stadt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(280, 5, 'Wie findet er seine Freude?', 'die Freude nerven ihn', 'er hat nur einen Freund', 'einen mag er nicht', 'er mag seiner Freunde sehr', 'er mag seiner Freunde sehr');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(281, 1, 'Wo ist er aufgewachsen?', 'in Heidelberg', 'in Baden-Württemberg', 'in Oftersheim', 'in München', 'in Oftersheim');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(282, 2, 'Was ist Karl von Beruf?', 'Elektrotechniker', 'Student', 'Lehrer', 'Musiker', 'Elektrotechniker');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(283, 3, 'Wann hat er geheiratet?', 'mit 20', 'mit 18', 'mit 40', 'mit 23', 'mit 24');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(284, 4, 'Wo hat er gearbeitet?', 'bei Siemens', 'er ist arbeitslos', 'bei Aldi', 'bei Mercedes', 'bei Siemens');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(285, 5, 'Wohin will er?', 'nach Spanien', 'in die USA', 'nach Griechenland', 'in die Schweiz', 'in die USA');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(286, 1, 'Was macht ein Lehrer?', 'Er stellt Brot her.', 'Er untersucht Menschen.', 'Er verkauft Gemüse.', 'Er unterrichtet Kinder.', 'Er unterrichtet Kinder.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(287, 2, 'Welcher der vier ist kein Arzt?', 'Zahnarzt', 'Chirurg', 'Ohrenarzt', 'Bauer', 'Bauer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(288, 3, 'Welche Zutaten braucht ein Bäcker nicht?', 'Mehl', 'Hefe', 'Hühner', 'Salz', 'Hühner');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(289, 4, 'Was tut kein Arzt?', 'Autos verkaufen', 'Medikamente verschreiben', 'Menschen untersuchen', 'an der Universität studieren', 'Autos verkaufen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(290, 5, 'Welche Ausbildung macht ein Koch?', 'Universität', 'keine', 'Schule oder Lehre', 'Kindergarten', 'Schule oder Lehre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(291, 1, 'Warum gab es in Berlin eine Mauer?', 'Hinter der Mauer befand sich ein Museum.', 'Die Mauer galt als Grenze zwischen Osten und Westen von Deutschland', 'Jede Hauptstadt hat eine Mauer.', 'Die Mauer wurde zum Schutz der Stadt gebaut.', 'Die Mauer galt als Grenze zwischen Osten und Westen von Deutschland');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(292, 2, 'War Berlin schon immer die Hauptstadt Deutschlands?', 'Nein. Die Hauptstadt Deutschlands ist Bonn.', 'Ja.', 'Ja und Nein: Die Hauptstädte Deutschlands sind Berlin und Bonn.', 'Nein. Bonn war bis 1990 die Hauptstadt von Deutschland und heute ist es Berlin.', 'Nein. Bonn war bis 1990 die Hauptstadt von Deutschland und heute ist es Berlin.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(293, 3, 'Wie heißt der Fluss, der durch Berlin fließt?', 'Bernau', 'Spree', 'Mauer', 'Bonn', 'Spree');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(294, 4, 'Was ist richtig?', 'Deutschland hat keine Regierung.', 'In Deutschland entscheidet der Präsident alleine.', 'Deutschland ist eine Demokratie.', 'Deutschland ist eine Monarchie.', 'Deutschland ist eine Demokratie.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(295, 5, 'In welches Museum gehen Hélène und Fabien?', 'In das Museum des Reichstags.', 'In ein Museum über die Demokratie in Deutschland.', 'In das Museum über die Geschichte der Berliner Mauer.', 'In das Museum der Spree.', 'In das Museum über die Geschichte der Berliner Mauer.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(296, 1, 'Wohin geht die Menschen beim Karneval?', 'auf die Straße', 'in den Keller', 'in den Wand', 'in die Kirche', 'auf die Straße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(297, 2, 'Wer demonstriertem 1. Mai?', 'Gewerkschaften (Arbeit)', 'Christen', 'Kinder', 'Mütter und Frauen', 'Gewerkschaften (Arbeit)');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(298, 3, 'Was für ein Feiertag ist der Tag der Deutschen Einheit?', 'Ein kirchlicher Feiertag', 'Der Tag der Arbeit', 'Der Nationalfeiertag', 'Der Muttertag', 'Der Nationalfeiertag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(299, 4, 'Wie viele Kerzen hat ein Adventskranz?', 'vier Kerzen', 'eine Kerze', 'dreißig Kerzen', 'vierundzwanzig Kerzen', 'vier Kerzen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(300, 5, 'Auf was für eine Person geht der Nikolaustag zurück?', 'Auf einen Heiligen', 'Auf einen Papst', 'Auf den Sohn Gottes', 'auf einen König', 'Auf einen Heiligen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(301, 1, 'An welchem Wochentag trifft sich der Deutschkurs?', 'Donnerstag', 'Mittwoch', 'Dienstag', 'Montag', 'Donnerstag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(302, 2, 'Wozu ist Jack in Berlin?', 'Er hat eine Deutsche geheiratet.', 'Er macht ein Auslandssemester.', 'Er besucht seine Tante.', 'Er arbeitet in einem Kiosk.', 'Er macht ein Auslandssemester.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(303, 3, 'Wo hat Pawel William kennengelernt?', 'in Italien', 'in der Schweiz', 'in Deutschland', 'in Polen', 'in Deutschland');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(304, 4, 'Welche Sprache spricht Carla hauptsächlich?', 'Französisch', 'Polnisch', 'Italienisch', 'Deutsch', 'Italienisch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(305, 5, 'Wann hat Jean-Pierre seine Ehefrau kennengelernt?', 'vor drei Jahren', 'vor dreißig Jahren', 'vor drei Monaten', 'vor dreizehn Jahren', 'vor dreißig Jahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(306, 1, 'Wann steht Nadja auf?', 'zu unterschiedlichen Zeiten', 'morgens um halb sieben', 'um sieben Uhr morgens', 'um sechs Uhr morgens', 'um sieben Uhr morgens');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(307, 2, 'Wo arbeitet sie?', 'In einem Büro', 'In einem Kindergarten', 'In einer Schule', 'Sie ist Mutter und arbeitet nicht', 'In einem Kindergarten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(308, 3, 'Was macht Nadja nach der Arbeit?', 'Kaffeetrinken', 'Freunde treffen und Sport', 'Lesen, singen, malen und basteln', 'abschalten und entspannen', 'Freunde treffen und Sport');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(309, 4, 'Wodurch lernen die Kinder?', 'durch den Mittagsschlaf', 'durch Singen und Malen', 'durch Spiele und Geschichten', 'durch Abschalten und Entspannen', 'durch Spiele und Geschichten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(310, 5, 'Was machen die Erzieherinnen, wenn die Kinder mittags schlafen?', 'Büroarbeit', 'Entspannen', 'Sport', 'Kaffeetrinken', 'Büroarbeit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(311, 1, 'Wie viele Menschen leben in der Stadt?', 'Zwischen zwei und drei Millionen', 'Mehr als zwei Millionen', 'Ungefähr eine Million', 'Fast zwei Millionen', 'Fast zwei Millionen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(312, 2, 'Welche Sprache spricht man der Stadt?', 'Spanisch', 'Deutsch', 'Englisch', 'Französisch', 'Deutsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(313, 3, 'Wer wartet in der Altstadt auf die Touristen?', 'Eine Kaiserin', 'Eine Prinzessin', 'Pferdekutschen', 'Ein Fremdenführer', 'Pferdekutschen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(314, 4, 'Wer hat in dem Schloss gewohnt?', 'Ein König', 'Ein Schlüssel', 'Eine Kaiserin', 'Kaiser Wilhelm II', 'Eine Kaiserin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(315, 5, 'In welcher Stadt wohne ich?', 'München', 'Berlin', 'Wien', 'Zürich', 'Wien');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(316, 1, 'Warum bin ich in die Stadt gezogen?', 'Weil ich gerne lese', 'Weil ich studiere', 'Weil ich in einer Wohngemeinschaft wohne', 'Weil ich manchmal in den Zoo gehe', 'Weil ich studiere');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(317, 2, 'Wann gehe ich zu Fuß zur Universität?', 'Wenn es nicht regnet, stürmt oder schneit', 'Wenn ich Hunger habe', 'Wenn die Vorlesungen früh beginnen', 'Wenn die Professoren streng sind', 'Wenn es nicht regnet, stürmt oder schneit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(318, 3, 'Wie ist das Essen in der Mensa?', 'Es ist vegetarisch', 'Es ist sehr gut', 'Es ist billig', 'Es ist gesund', 'Es ist billig');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(319, 4, 'Was ist in der WG verboten?', 'Bücher', 'Haustiere', 'Schuhe', 'Fahrräder', 'Haustiere');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(320, 5, 'Wo möchte ich später arbeiten?', 'In der U-Bahn', 'An der Universität', 'Im Zoo', 'In der Mensa', 'Im Zoo');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(321, 1, 'Wann steht Anna am Samstag auf?', 'um 8 Uhr morgens', 'um 12 Uhr mittags', 'um 10 Uhr morgens', 'um 10 Uhr abends', 'um 8 Uhr morgens');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(322, 2, 'Was kauft Anna ein?', 'Tomaten, Kartoffeln, Bananen, Milch, Orangensaft', 'Nudeln, Reis, Äpfel, Milch, Tomatensaft', 'Paprika, Nudeln, Bananen, Milch, Apfelsaft', 'Tomaten, Nudeln, Bananen, Milch, Orangensaft', 'Tomaten, Nudeln, Bananen, Milch, Orangensaft');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(323, 3, 'Was macht Anna um 10.00 Uhr?', 'Sie geht einkaufen.', 'Sie geht einkaufen.', 'Sie liest ein Buch.', 'Sie geht mit dem Hund spazieren.', 'Sie geht mit dem Hund spazieren.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(324, 4, 'Wo geht Anna mit ihren Freundinnen spazieren?', 'Zu Hause', 'Im Park', 'In der Stadt', 'Im Café', 'In der Stadt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(325, 5, 'Was trinkt Anna zum Abendessen?', 'Orangensaft', 'Ein Glas Milch', 'Tee', 'Ein Käsebrot', 'Ein Glas Milch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(326, 1, 'Was wollen sie am See?', 'in der Sonne liegen', 'mit dem Rad fahren', 'mit einem Boot fahren', 'ein Buch lesen', 'mit einem Boot fahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(327, 2, 'Wonach riecht es im Wald?', 'nach Sonnencreme', 'nach Äpfeln', 'nach Blumen', 'nach Erde', 'nach Erde');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(328, 3, 'Welches Tier sehen sie im Wald?', 'einen Hund', 'eine Schlange', 'ein Reh', 'eine Katze', 'ein Reh');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(329, 4, 'Was machen die Kinder am Strand?', 'sie essen', 'sie spielen im Sand', 'sie singen', 'sie schlafen', 'sie spielen im Sand');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(330, 5, 'Wer fliegt ans Meer?', 'eine Schulklasse', 'zwei Freunde', 'die Großeltern', 'die ganze Familie', 'die ganze Familie');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(331, 1, 'Warum ist der Müritzsee der größte See in Deutschland?', 'Weil er größer als der Bodensee ist', 'Weil der Bodensee hauptsächlich im Ausland liegt', 'Weil er sehr tief ist', 'Weil er in Ostdeutschland liegt', 'Weil der Bodensee hauptsächlich im Ausland liegt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(332, 2, 'Wie groß ist der See?', 'Das steht nicht im Text', 'Er ist bis zu 750 Meter tief', 'Er hat einen Durchmesser von 3,5 Kilometern', '3,5 Kilometer lang und bis zu 750 Meter breit', '3,5 Kilometer lang und bis zu 750 Meter breit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(333, 3, 'Welche Länder grenzen an den Bodensee?', 'Schweiz, Österreich', 'Deutschland, Schweiz, Österreich', 'Deutschland, Österreich', 'Österreich, Schweiz, Italien', 'Deutschland, Schweiz, Österreich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(334, 4, 'Welche Städte liegen an dem Müritzsee?', 'Berlin und Röbel', 'Madgeburg und Waren', 'Waren und Röbel', 'Berlin und Bodensee', 'Waren und Röbel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(335, 5, 'Welche Stadt ist nur 90 Minuten vom Müritzsee entfernt?', 'Österreich', 'Berlin', 'Schweiz', 'Waren und Röbel', 'Berlin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(336, 1, 'Wer ist neu in der Stadt?', 'Der Nachbar Ben', 'Der Supermarkt ist neu', 'Tina, die einkaufen möchte', 'Das Haus ist ein Neubau', 'Tina, die einkaufen möchte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(337, 2, 'Wie heißt ihr Nachbar?', 'Der Nachbar heißt Ben', 'Er hilft ihr beim Einkaufen', 'Sie kennt nicht den Weg', 'Sie möchte zum Supermarkt', 'Der Nachbar heißt Ben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(338, 3, 'Seit wann wohnt Tina hier?', 'Seit etwa einer Woche', 'Das steht nicht im Text', 'Sie wohnt seit gestern im Haus', 'Sie ist gerade am umziehen', 'Sie wohnt seit gestern im Haus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(339, 4, 'Was will Ben besorgen?', 'Ein paar kleine Sachen', 'Er muss noch viel einkaufen', 'Er braucht nichts', 'Etwas zum Essen und Trinken', 'Ein paar kleine Sachen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(340, 5, 'Wohin gehen Tina und Ben gemeinsam?', 'In Bens Wohnung', 'In Tinas Wohnung', 'Zum nächsten Supermarkt', 'Gemeinsam nirgendwohin', 'Zum nächsten Supermarkt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(341, 1, 'Was ist für das Wochenende geplant?', 'Ein Ausflug', 'Ein Fest', 'Ein Großeinkauf', 'Eine Reise', 'Ein Fest');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(342, 2, 'Was trinken die Freunde am liebsten?', 'Alle Freunde lieben alkoholische Getränke', 'Nur einige Freunde trinken Alkohol', 'Saft und Wasser', 'Alkoholfreies Bier', 'Nur einige Freunde trinken Alkohol');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(343, 3, 'Was soll bei schönem Wetter gemacht werden?', 'Grillen auf dem Balkon', 'Ein Treffen mit Freunden', 'Ein Ausflug ans Wasser', 'Grillen im Park', 'Grillen auf dem Balkon');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(344, 4, 'Wer kommt alles zur Party?', 'Arbeitskollegen', 'Die Familie', 'Die Eltern', 'Alle Freunde', 'Alle Freunde');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(345, 5, 'Was bekommen die Gäste zu essen?', 'Kuchen', 'Obst, Gemüse und Käse', 'Salate und Gegrilltes', 'Es gibt nur Getränke', 'Salate und Gegrilltes');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(346, 1, 'Wann steht Nadja auf?', 'zu unterschiedlichen Zeiten', 'morgens um halb sieben', 'um sieben Uhr morgens', 'um sechs Uhr morgens', 'um sechs Uhr morgens');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(347, 2, 'Wo arbeitet sie?', 'In einem Büro', 'In einem Kindergarten', 'In einer Schule', 'Sie ist Mutter und arbeitet nicht', 'In einem Kindergarten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(348, 3, 'Was macht Nadja nach der Arbeit?', 'Kaffeetrinken', 'Freunde treffen und Sport', 'Lesen, singen, malen und basteln', 'abschalten und entspannen', 'Freunde treffen und Sport');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(349, 4, 'Wodurch lernen die Kinder?', 'durch den Mittagsschlaf', 'durch Singen und Malen', 'durch Spiele und Geschichten', 'durch Abschalten und Entspannen', 'durch Spiele und Geschichten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(350, 5, 'Was machen die Erzieherinnen, wenn die Kinder mittags schlafen?', 'Büroarbeit', 'Entspannen', 'Sport', 'Kaffeetrinken', 'Büroarbeit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(351, 1, 'Wann ist die Geburtstagsparty?', 'Die Geburtstagsparty war gestern.', 'Die Geburtstagsparty ist am 30. Juli', 'Die Geburtstagsparty ist am 1. August', 'Die Geburtstagsparty ist nächste Woche.', 'Die Geburtstagsparty ist am 1. August');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(352, 2, 'Wie viele Leute sind eingeladen?', '20', '25', '15', '10', '20');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(353, 3, 'Welche Getränke kaufe ich ein?', 'Cola, Rum und Eistee', 'Bier und Wein', 'Wasser, Fruchtschaft, Bier und Wein', 'Tee und Kaffee', 'Wasser, Fruchtschaft, Bier und Wein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(354, 4, 'Warum kaufe ich Käse zum Grillen?', 'Weil manche Freunde Vegetarier sind', 'Weil ich nicht gerne Fleisch esse', 'Weil alle Freunde Vegetarier sind', 'Weil ich ihn mag', 'Weil manche Freunde Vegetarier sind');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(355, 5, 'Was essen die anderen Freunde gerne?', 'Kotelett', 'Gulasch und Schnitzel', 'Obst', 'Würstchen und Steaks', 'Würstchen und Steaks');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(356, 1, 'Man kommt nur über die Treppe auf den Eiffelturm.', 'Nur mit dem Aufzug', 'Es steht nicht im Text', 'Nur zu Fuß', 'Zu Fuß und mit dem Aufzug', 'Zu Fuß und mit dem Aufzug');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(357, 2, 'Vom Eiffelturm hat man eine gute Aussicht.', 'der Fluss', 'den See', 'die ganze französische Hauptstadt', 'den Himmel', 'die ganze französische Hauptstadt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(358, 3, 'Der Eiffelturm ist die einzige Pariser Sehenswürdigkeit', 'Es gibt nur 2 - 3 Höhepunkte', 'Es steht nicht im Text', 'falsch', 'richtig', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(359, 4, 'Das Essen im Hallenviertel ist teuer.', 'richtig', 'falsch', 'wie im ganzen Frankreich', 'Wie in jeder Stadt in Europa', 'falsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(360, 5, 'Wie viel Male wurde das Hallenviertel umgebaut', 'zweimal', 'dreimal', 'mehrmals', 'einmal', 'zweimal');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(361, 1, 'Warum schreibt Martin diesen Brief?', 'Ihm gefällt die Hose nicht.', 'Weil die Hose die falsche Farbe hat.', 'Weil die Hose kaputt ist.', 'Weil ihm die Hose nicht passt.', 'Weil ihm die Hose nicht passt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(362, 2, 'Was hat der Verkäufer falsch gemacht?', 'Er hat ihm eine Jeans geschickt.', 'Er hat die Hose kaputt gemacht.', 'Die Hose in der falschen Größe geschickt.', 'Er hat vergessen die Hose zu schicken.', 'Die Hose in der falschen Größe geschickt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(363, 3, 'Was möchte Martin jetzt?', 'Er will die Hose trotzdem tragen.', 'Die Hose soll kleiner gemacht werden.', 'Er möchte auf jeden Fall sein Geld zurück.', 'Eine Hose in der richtigen Größe.', 'Eine Hose in der richtigen Größe.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(364, 4, 'Hat Martin die Hose schon bezahlt?', 'Ja.', 'Nein.', 'Das steht nicht im Text.', 'Geld spielt im Text keine Rolle.', 'Ja.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(365, 5, 'Was passiert, wenn Martin keine andere Hose bekommt?', 'Er trägt einfach die kleinere Hose.', 'Er wartet noch ein Jahr auf die neue Hose.', 'Er möchte sein Geld zurück.', 'Er macht die Hose größer.', 'Er möchte sein Geld zurück.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(366, 1, 'Wer spricht in diesem Text?', 'Die Mutter', 'Der Vater', 'Die Tochter', 'Die Kinder', 'Die Mutter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(367, 2, 'Hat die Familie genau das gefunden, was sie gesucht hat?', 'Ja, ein eigenes Haus war ihr Traum', 'Ja, ein Haus mit Garten suchten sie', 'Eigentlich suchten sie nach einer Wohnung', 'Ja, endlich haben Sie eine große Wohnung', 'Eigentlich suchten sie nach einer Wohnung');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(368, 3, 'Was ist der Vorteil, ein Haus zu haben?', 'Ja, endlich haben Sie eine große Wohnung', 'Jeder hat ein eigenes Zimmer', 'Jedes Haus hat einen Balkon', 'Es wohnen viele Freunde in der Umgebung', 'Jeder hat ein eigenes Zimmer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(369, 4, 'Wie sieht es im Moment im Haus aus?', 'Es ist ordentlich und sauber', 'Es sind Freunde zu Besuch', 'Alle sitzen im Büro', 'Es ist unordentlich', 'Es ist unordentlich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(370, 5, 'Wie viele Kinder gibt es in der Familie', '0', '3', '1', '2', '2');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(371, 1, 'Warum ist Frederik ausgewandert?', 'wegen seines Vereins', 'wegen seiner Freundin', 'aus beruflichen Gründen', 'aus privaten Gründen', 'aus beruflichen Gründen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(372, 2, 'Wo ist er geboren?', 'Australien', 'Österreich', 'Deutschland', 'Italien', 'Deutschland');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(373, 3, 'Wie lange wird sein Aufenthalt in Australien dauern?', 'ein Jahr', 'zwei Jahre', 'ein Monat', 'zwei Monate', 'zwei Jahre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(374, 4, 'Wie geht er mit den Heimatgefühlen um?', 'er redet offen darüber', 'er weint jeden Tag', 'er spricht nur mit dem Kollegen darüber', 'er zeigt sie nicht', 'er zeigt sie nicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(375, 5, 'Wie hat er das Mädchen kennen gelernt?', 'bei einer Party', 'in der Firma', 'im Park', 'im Kino', 'bei einer Party');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(376, 1, 'Um was für einen Dienst handelt es sich hier?', 'um einen Auto Reparatur Dienst', 'um eine Übersetzungsagentur', 'um einen Notdienst', 'um einen kostenlosen Übersetzungsdienst', 'um einen kostenlosen Übersetzungsdienst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(377, 2, 'Wer nimmt meistens diesen Dienst in Anspruch?', 'Kunden mit medizinische Unterlagen', 'Kunden ohne Unterlagen', 'Kunde mit wirtschaftlichen Unterlagen', 'Kunden mit rechtlichen Unterlagen', 'Kunden mit medizinische Unterlagen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(378, 3, 'In wie viele Sprachen ist der Dienst tätig?', 'in mehreren', 'in jeden', 'in einer', 'in zwei', 'in mehreren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(379, 4, 'Wen besuchen sie in der Aktion?', 'Kindergarten', 'Krankenhäuser', 'Universitäten', 'Schulen', 'Krankenhäuser');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(380, 5, 'Was hängt an der Pinnwand?', 'Bilder und Berichte', 'Berichte und Protokolle', 'Brief und Postkarten', 'nichts', 'Brief und Postkarten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(381, 1, 'Was für ein Geschäft hat Herr Schulz?', 'ein Restaurant', 'ein Schuhgeschäft', 'eine Imbissbude', 'einen Getränkemarkt', 'einen Getränkemarkt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(382, 2, 'Wie zahlen die Kunden?', 'sie zahlen nicht', 'auf Rechnung', 'meistens mit Karte', 'meistens bar', 'meistens bar');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(383, 3, 'Wie oft geht er zu Bank?', 'jeden Tag', 'einmal in Monat', 'immer freitags', 'einmal in der Woche', 'einmal in der Woche');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(384, 4, 'Was macht er am Monatseden?', 'er spricht mit dem Bankangestellten', 'er macht Urlaub', 'er geht zum Steuerberater', 'er zieht Bilanz', 'er zieht Bilanz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(385, 5, 'Wie bevorzugt er zu zahlen?', 'mit Karte', 'mit Bargeld', 'per Überweisung', 'Online', 'mit Bargeld');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(386, 1, 'Was macht Herr Müller und sein Sohn?', 'einen Ausflug', 'nichts', 'eine Schifffahrt', 'einen Spaziergang', 'einen Ausflug');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(387, 2, 'Womit fahren sie?', 'mit dem Motorrad', 'mit den Fahrrädern', 'mit dem Auto', 'sie fahren nicht, sie gehen zu Fuß', 'mit den Fahrrädern');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(388, 3, 'Wo hat sich der Vater verletzt?', 'am Bein', 'am Rücken', 'an Fuß', 'am Arm', 'am Arm');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(389, 4, 'Wie hat der Sohn seinem Vater geholfen?', 'er hat den Arm seines Vaters untersucht', 'er hat den Notdienst anrufen', 'er hat eine Schiene gelegt', 'er hat gar nichts unternommen', 'er hat den Notdienst anrufen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(390, 5, 'Wie hat der Arzt festgestellt, dass der Arm gebrochen war?', 'von den Handybildern', 'von der Kopie des Ausweises', 'von den Röntgenaufnahmen', 'von den Angaben des Aufnahmebogens', 'von den Röntgenaufnahmen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(391, 1, 'Wie alt ist der Große Tiergarten?', 'Das steht nicht im Text', '500 Jahre', 'wenige Minuten', 'wenige Jahre', '500 Jahre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(392, 2, 'Inder Nähe welches platzen befinden sich Weltzeituhr und Fernsehturm?', 'Brandenburger Tor', 'Kurfürstendamm', 'Siegessäule', 'Alexanderplatz', 'Alexanderplatz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(393, 3, 'Was ist der Kurfürstendamm?', 'Ein Restaurant', 'Eine Einkaufsstraße', 'Ein Hotel', 'Eine Hauptstadt', 'Eine Einkaufsstraße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(394, 4, 'Wo arbeitet die Erzählerin?', 'in Einem Hotel', 'in einem Restaurant', 'am Alexanderplatz', 'in einem Geschäft', 'in Einem Hotel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(395, 5, 'Was bietet das Hotel als besonderen Service für seine Gäste', 'eine Weltzeituhr', 'Stadtrundfahrten', 'Kostenloses Frühstück', 'Fahrkarten für die U-Bahn', 'Stadtrundfahrten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(396, 1, 'Das Wetter ist abhängig...', 'von der Jahreszeit.', 'vom Wochentag.', 'von den Hagelfällen.', 'von der Wettervorhersage.', 'von der Jahreszeit.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(397, 2, 'Im Frühling gibt es...', 'sonnige Tage', 'viel Eis und Schnee', 'viele Stürme', 'kalte Temperaturen', 'sonnige Tage');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(398, 3, 'Wodurch kann man das Wetter der nächsten Tage erfahren?', 'durch die Wolken', 'Es ist unmöglich.', 'durch die Wettervorhersage', 'durch eine Wahrsagerin', 'durch die Wettervorhersage');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(399, 4, 'In welcher Jahreszeit schneit es am meisten?', 'im Herbst', 'im Sommer', 'im Frühling', 'im Winter', 'im Winter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(400, 5, 'Im Herbst...', '... regnet es oft.', '... ist es heiß.', '... schmelzen das Eis und der Schnee.', '... fällt viel Schnee.', '... regnet es oft.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(401, 1, 'Im Frühling...', 'regnet es oft.', 'fällt viel Schnee.', 'ist es sehr kalt.', 'erwacht die Natur.', 'erwacht die Natur.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(402, 2, 'In welcher Jahreszeit ist es sehr heiß?', 'im Frühling', 'im Sommer', 'im Winter', 'im Herbst', 'im Sommer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(403, 3, 'Im Herbst...', 'schneit es.', 'feiert man die Geburt von Jesus.', 'beginnt die Ernte.', 'fahren die Leute ans Meer.', 'beginnt die Ernte.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(404, 4, 'Was feiert man an Weihnachten?', 'den Beginn des neuen Jahres', 'die Schmetterlinge', 'die Geburt von Jesus', 'den Schnee', 'die Geburt von Jesus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(405, 5, 'In welcher Jahreszeit fallen die Blätter von den Bäumen?', 'im Sommer', 'im Frühling', 'im Herbst', 'im Winter', 'im Herbst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(406, 1, 'Welcher Fluss fließt durch Hamburg?', 'Nordsee', 'Rhein', 'Elbe', 'Donau', 'Elbe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(407, 2, 'Wie nennen die Hamburger den Turm der Michaelis Kirche?', 'Franzl', 'Michel', 'Hans', 'Karl', 'Michel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(408, 3, 'Wie heißen die Verkäufer am Fischmarkt?', 'Hafenschreier', 'Wasserrufer', 'Fischverkäufer', 'Marktschreier', 'Marktschreier');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(409, 4, 'An welchem Tag findet der Fischmarkt statt?', 'Montag', 'Freitag', 'Mittwoch', 'Sonntag', 'Sonntag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(410, 5, 'Was ist die Elb-Philharmonie?', 'Parkhaus', 'Restaurant', 'Kirche', 'Konzerthaus', 'Konzerthaus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(411, 1, 'Was bedeutet „mild“?', 'intensiv', 'sauer', 'sanft', 'bitter', 'sanft');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(412, 2, 'Wo ist der Kölner Dom?', 'Im Rhein.', 'Neben dem Hauptbahnhof.', 'Neben dem Schokoladenmuseum.', 'Am Stadtrand.', 'Neben dem Hauptbahnhof.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(413, 3, 'Für was ist Köln nicht bekannt?', 'für das Kölsch', 'für den Kölner Dom', 'für den Schokoladenbrunnen', 'für den Schokoladenbrunnen', 'für den Schokoladenbrunnen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(414, 4, 'Was kauft sich Niklas in Köln?', 'Einen Anhänger des Kölner Doms.', 'Schokolade.', 'Ein Buch über Architektur.', 'Ein Kölsch.', 'Einen Anhänger des Kölner Doms.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(415, 5, 'Was ist ein Souvenir?', 'Ein Gegenstand, der an etwas erinnert.', 'Eine Biersorte.', 'Eine Kirche.', 'Ein Schmuckstück.', 'Ein Gegenstand, der an etwas erinnert.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(416, 1, 'Laufen Caroline und Alexander jeden Tag zehn Kilometer?', 'Sie laufen jeden Tag, außer am Freitag.', 'An manchen Tagen laufen sie nicht.', 'Sie laufen nur, wenn es regnet', 'Ja', 'An manchen Tagen laufen sie nicht.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(417, 2, 'Wo können Caroline und Alexander im Winter schwimmen?', 'im See', 'im Hallenbad', 'gar nicht', 'im Fitness-Studio', 'gar nicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(418, 3, 'Welche Aussage ist nicht richtig?', 'Veronika möchte Tierärztin werden, weil sie gut mit kranken Tieren umgehen kann.', 'Veronika möchte Tierärztin werden, weil es ihr Freude macht, kranke Tiere zu pflegen.', 'Veronika möchte Tierärztin werden, weil sie Tiere liebt.', 'Veronika mag keine Hunde und Katzen.', 'Veronika mag keine Hunde und Katzen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(419, 4, 'Sebastians Freunde mögen ihn, ...', '… obwohl er faul ist.', '… weil er faul ist.', '… damit er faul ist.', '… seitdem er faul ist.', '… obwohl er faul ist.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(420, 5, 'Was macht Sebastian meistens in seiner Freizeit?', 'Pizza essen', 'Musik hören', 'Fernsehen', 'Ein Buch Lesen', 'Fernsehen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(421, 1, 'Warum ging Frau Müller ins Ausland?', 'Sie wollte einen Mann kennenlernen.', 'Sie wollte Auslandserfahrung sammeln.', 'Sie wollte ihre Eltern besuchen.', 'Sie wollte Urlaub machen.', 'Sie wollte Auslandserfahrung sammeln.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(422, 2, 'In welchem Land sammelte Frau Müller Auslandserfahrungen?', 'Österreich', 'Hessen', 'Nordrhein-Westfalen', 'Niederlande', 'Niederlande');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(423, 3, 'Hat Frau Müller Kinder?', 'Ja, einen Sohn und eine Tochter.', 'Ja, zwei Söhne.', 'Ja, einen Sohn.', 'Nein.', 'Ja, zwei Söhne.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(424, 4, 'Hat Frau Müller Geschwister?', 'Nein.', 'Ja, fünf Geschwister.', 'Das steht nicht im Text.', 'Ja, zwei Brüder.', 'Ja, fünf Geschwister.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(425, 5, 'Warum möchte Frau Müller wieder nach Nordrhein-Westfalen umziehen?', 'Weil ihr Mann aus Nordrhein-Westfalen ist.', 'Weil ihre Eltern dort wohnen.', 'Weil sie arbeitslos ist.', 'Weil ihre Geschwister dort wohnen.', 'Weil ihre Eltern dort wohnen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(426, 1, 'Wer zieht heute um?', 'Annas Eltern', 'Niemand, sie sind schon umgezogen', 'Annas und Stefans Freunde', 'Anna und Stefan selbst', 'Anna und Stefan selbst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(427, 2, 'Wo hat Anna eine Arbeit gefunden?', 'in Berlin', 'in München', 'in Hamburg', 'in Köln', 'in Hamburg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(428, 3, 'Wie viele Zimmer hat die neue Wohnung?', 'Es ist eine Einzimmerwohnung', 'Sie wohnen dort zu zweit', 'die Wohnung hat drei Zimmer', 'die Wohnung hat drei Kinderzimmer', 'die Wohnung hat drei Zimmer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(429, 4, 'Wer hilft Anna und Stefan beim Umzug?', 'Freunde', 'Verwandte', 'niemand', 'Ihr Sohn', 'Freunde');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(430, 5, 'Wollen Anna und Stefan mal ein Kind haben?', 'Ja, deshalb gibt es ein Kinderzimmer', 'Sie möchten keine eigenen Kinder', 'Nein, da sie ein Büro brauchen', 'Sie haben doch schon ein Kind', 'Ja, deshalb gibt es ein Kinderzimmer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(431, 1, 'Wohin wollen Julian und Stefan verreisen?', 'das wissen sie noch nicht', 'auf die Insel Teneriffa', 'nach Hamburg', 'nach Italien', 'auf die Insel Teneriffa');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(432, 2, 'Wer organisiert den Flug?', 'Julian', 'das Reisebüro', 'Stefans Mutter', 'Stefan', 'Julian');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(433, 3, 'Von wo aus wollen die beiden fliegen?', 'von Teneriffa', 'von Hamburg', 'von Berlin', 'vom nächsten Flughafen (3km entfernt)', 'von Hamburg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(434, 4, 'Wie lange dauert die Fahrt zum Flughafen?', 'zwei Stunden', 'eine Stunde', 'nicht lange, es sind nur drei Kilometer', 'das steht nicht im Text', 'zwei Stunden');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(435, 5, 'Wie weit liegt das Hotel vom Strand entfernt?', 'einen Kilometer', 'zwei Kilometer', 'drei Kilometer', 'vier Kilometer', 'drei Kilometer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(436, 1, 'Wer putzt das Bad?', 'das Bad ist sauber', 'Olaf', 'Anna', 'sie putzen das Bad zusammen', 'Anna');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(437, 2, 'Was trocknet Anna ab?', 'das Geschirr', 'die Badewanne', 'die Küche', 'den Boden', 'das Geschirr');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(438, 3, 'Womit fegt man am besten den Boden?', 'mit einem Schwamm', 'mit einem Handtuch', 'mit dem Staubsauger', 'mit einem Besen', 'mit einem Besen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(439, 4, 'Womit putzt Anna die Badewanne?', 'mit einem Tuch', 'mit einem Schwamm', 'mit einem Besen', 'mit dem Staubsauger', 'mit einem Schwamm');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(440, 5, 'Was muss Olaf im Schlafzimmer beziehen?', 'die Badewanne', 'den Boden', 'die Wohnung', 'das Bett', 'das Bett');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(441, 1, 'Wie lange dauern die Sommerferien?', 'einen Monat', 'zwei Monate', 'sechs Wochen', 'fünf Wochen', 'sechs Wochen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(442, 2, 'Wann finden die Sommerferien in der Regel statt?', 'zwischen Juni und August', 'zwischen Juli und September', 'zwischen März und August', 'zwischen August und September', 'zwischen Juli und September');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(443, 3, 'Was bekommen die Schüler vor Ferienbeginn?', 'Kaffee und Kuchen', 'neue Schulbücher', 'einen neuen Lehrer', 'Zeugnisse', 'Zeugnisse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(444, 4, 'Welche Insel ist besonders beliebt bei den Deutschen?', 'Italien', 'Mallorca', 'Spanien', 'England', 'Mallorca');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(445, 5, 'Wo gibt es in Deutschland besonders viele Urlaubsstrände?', 'im Norden', 'im Süden', 'im Osten', 'im Westen', 'im Norden');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(446, 1, 'Wie heißt die Burg?', 'Burg Heiligenkreuz', 'Burg Hinterstein', 'Feste Hohensalzburg', 'Feste Hochosterwitz', 'Feste Hohensalzburg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(447, 2, 'Wie viele Glocken enthält das Glockenspiel?', '20', '12', '35', '6', '35');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(448, 3, 'Wann findet der Schrannenmarkt statt?', 'nur am Mittwoch', ' nur am Donnerstag', 'jeden Tag', 'nur am Samstag', 'nur am Donnerstag');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(449, 4, 'Wo findet der Salzburger Christkindlmarkt statt?', 'am Mirabellplatz', 'am Hauptplatz', 'am Mozartplatz', 'am Residenzplatz', 'am Residenzplatz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(450, 5, 'Wie heißt die Einkaufsstraße?', 'Sporgasse', 'Salzgasse', 'Mozartgasse', 'Getreidegasse', 'Getreidegasse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(451, 1, 'Der Tourist', 'fuhr mit dem Bus ins Stadtzentrum.', 'konnte am Bahnhof den Ausgang nicht finden.', 'kam am Flughafen Zürich an.', 'war von der goldenen Jahrhundertkugel am Bahnhof begeistert.', 'war von der goldenen Jahrhundertkugel am Bahnhof begeistert.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(452, 2, 'Das „Zoologische Museum“', 'Der Erzähler...', 'ist nur für Schulklassen und Familien gedacht.', 'bietet für alle Besucher interaktive Programme.', 'ist nur am Wochenende geöffnet.', 'bietet für alle Besucher interaktive Programme.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(453, 3, 'Der „Grossmünster“...', 'hat vier Doppeltürme.', 'wurde zum Gedenken der heiligen Felix und Regula gebaut.', 'ist nur eine kleine Kirche.', 'hat 187 Treppenstufen.', 'wurde zum Gedenken der heiligen Felix und Regula gebaut.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(454, 4, 'Im „Uhrenmuseum Beyer“ ...', 'sind die modernsten Uhren ausgestellt.', 'gibt es nur alte Wanduhren.', 'arbeiten nur Schweizer Uhrmacher.', 'können Besucher die seltesten Uhren sehen.', 'können Besucher die seltesten Uhren sehen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(455, 5, 'Der Erzähler...', 'sah den Züricher See zum ersten Mal.', 'mietete sich ein Paddelboot.', 'and Zürich langweilig.', 'war von der Schiffsfahrt begeistert.', 'and Zürich langweilig.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(456, 1, 'Warum gilt Goethe als Universalgenie?', 'Er ist einer der wichtigsten Dichter der Deutschen.', 'Goethe schrieb berühmte Bücher.', 'Er schuf Hervorragendes in vielen Bereichen.', 'Er war ein genialer Jurist.', 'Er schuf Hervorragendes in vielen Bereichen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(457, 2, 'Wovon handelt der Roman „Die Leiden des jungen Werther“?', 'Von Goethes unerfüllter Liebe.', 'Es handelt sich dabei um Goethes Autobiographie.', 'Es ist ein Roman über eine Brieffreundschaft.', 'Es geht in dem Roman um Pferde.', 'Von Goethes unerfüllter Liebe.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(458, 3, 'Was ist „Sturm und Drang“?', 'Ein starkes Gewitter.', 'Ein in ganz Europa berühmtes Wettrennen zu Pferde.', 'Eine literarische Epoche.', 'Eine militärische Einheit.', 'Eine literarische Epoche.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(459, 4, 'Wer waren die wichtigsten Vertreter der Weimarer Klassik?', 'Goethe und Schiller.', 'Freunde von Goethe.', 'Goethe.', 'Schiller.', 'Goethe und Schiller.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(460, 5, 'Worum geht es im „Faust“?', 'Um einen Mann, der sich mit dem Teufel einlässt.', 'Es handelt sich um den Lebenslauf eines Boxers.', 'Es ist ein lustiges Buch.', 'Im „Faust“ geht es um einen Schriftsteller, der über den Teufel schreibt.', 'Um einen Mann, der sich mit dem Teufel einlässt.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(461, 1, 'Beim Osterfest geht es um welches Ereignis?', 'Die Heirat zwischen zwei Osterhasen.', 'Die Auferstehung von den Toten.', 'Der Bau eines Holzkreuzes.', 'Der Weitwurf von Ostereiern.', 'Die Auferstehung von den Toten.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(462, 2, 'Womit schmückt man sich die Wohnung zur Osterzeit?', 'Mit Kreisen und Kreuzen.', 'Mit Vögeln und Nestern.', 'Mit Zweigen und Blumen.', 'Mit Engeln und Sternen.', 'Mit Zweigen und Blumen.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(463, 3, 'Nach welchem Kalender richten sich die Ostertage?', 'Nach dem Sternenkalender.', 'Nach dem Mondkalender.', 'Nach dem Kalender der Mayas.', 'Nach dem Sonnenkalender.', 'Nach dem Mondkalender.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(464, 4, 'Was bekommen die Kinder beim Osterfest?', 'Osterkekse', 'Ostereier', 'Osternudeln', 'Osterhasen', 'Ostereier');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(465, 5, 'Welches Tier versteckt die Ostereier (angeblich) für die Kinder?', 'Der Ostermann', 'Das Osterhuhn', 'Der Osterhahn', 'Der Osterhase', 'Der Osterhase');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(466, 1, 'Ich _____ nicht schwimmen und _____ es erst lernen. [können / müssen]', 'könnte / musste', 'konnte / müssten', 'konnte / musste', 'kann / muss', 'konnte / musste');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(467, 2, '_____ du damals eine Freundin? Ich _____ nichts von dir. [haben / wissen]', 'hattet / wussen', 'hattest / was', 'hat/ wusste', 'hattest / wusste', 'hattest / wusste');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(468, 3, 'Ihr _____ nicht, also _____ wir etwas anderes. [wollen / machen]', 'wollten/ machten', 'wolltet / macht', 'wolltet / machten', 'wolltete / machten', 'wolltet / machten');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(469, 4, 'Wir _____ zusammen und ich _____ dich nach Hause. [gehen / bringen]', 'geht/ brachte', 'gingen / brachen', 'gingen / brachte', 'gegang / brachte', 'gingen / brachte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(470, 5, '_____ ihr schon im Kino oder _____ ihr keine Zeit? [sein / haben]', 'wart / hattet', 'warte / hattet', 'wart / haben', 'wart / hat', 'wart / hattet');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(471, 1, 'Es _____ ihm keinen Spaß. Er _____  lieber mit seinen Freunden.  [heißen / sein]', 'heiße / bist', 'heißtet / bin', 'heiße / ist', 'heiße / bin', 'heiße / bin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(472, 2, 'Ich _____  Jan und _____  25 Jahre alt.   [gehen / kochen]', 'geht / kocht', 'gehen / kocht', 'geht / kochtet', 'ging / kocht', 'geht / kocht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(473, 3, 'Meine Frau _____  nach Hause und _____  das Abendessen. [geben / finden]', 'gibt / finde', 'gibst / finden', 'gibst / finde', 'gab / finde', 'gibst / finde');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(474, 4, '_____ du mir deinen Schlüssel? Ich _____  meinen nicht.  [machen / spielen]', 'macht / spielte', 'machst / spielt', 'macht / spielen', 'macht / spielt', 'macht / spielt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(475, 5, 'Ich _____  ihr immer Briefe, aber sie _____  nie zurück.  [schreiben / schreiben]', 'schreibtete  / schreibt', 'schreibe / schreibt', 'schreibt / schreibt', 'schreibe / schrieben', 'schreibe / schreibt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(476, 1, 'Morgen _____  ich früh _____   . [aufstehen]', 'wirst / aufstehen', 'werde / aufstehte', 'werde / aufstehen', 'werde / stehen', 'werde / aufstehen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(477, 2, 'Wann _____  du nach New York _____  ? [fliegen]', 'wirst / fliegte', 'wirst / fliegen', 'werden / fliegen', 'werde / fliegen', 'wirst / fliegen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(478, 3, 'Meine Freundin _____   ein Buch _____   . [schreiben]', 'wird / schriebte', 'wird / schreiben', 'werden / schreiben', 'wirst / schreiben', 'wird / schreiben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(479, 4, 'Meine Schwester und ich _____   morgen in die Schule _____   . [gehen]', 'werden / ging', 'werden / gehen', 'werden / geht', 'werden / gegang', 'werden / gehen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(480, 5, 'Sie kennen nicht den Weg. _____   sie _____  ? [ankommen]', 'werde / ankommen', 'werde / zukommen', 'werde / ankommte', 'werde / ankamm', 'werde / ankommen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(481, 1, 'Ich _____ eine Stunde Fußball _____ , wenn ich die Lust verliere. [spielen]', 'werde / gespielt', 'werde / gespielt haben', 'werde / spielen', 'werde / spielt', 'werde / gespielt haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(482, 2, 'In drei Stunden _____ ich genug _____ . [lernen]', 'werde / gelernt haben', 'werde / lernt', 'werde / lernen', 'werde / gelernt', 'werde / gelernt haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(483, 3, 'In einem Jahr _____ wir alle Prüfungen _____ . [schreiben]', 'werde / geschrieben', 'werde / geschrieben hat', 'werde / geschrieben haben', 'werde / geschriebte hatte', 'werde / geschrieben haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(484, 4, 'Ihr _____ bereits _____ , wenn ich nach Hause komme. [essen]', 'werdet / ass', 'werdet / gegessen', 'werdet / gegessen haben', 'werdet / gegessen hatte', 'werdet / gegessen haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(485, 5, 'Nächste Woche _____ du bereits dein neues Auto _____ . [kaufen]', 'werdet / gekauft haben', 'wirs / gekauft haben', 'werden/ gekauft hat', 'wirs / gekauft', 'wirs / gekauft haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(486, 1, 'Er isst einen Apfel. Infinitive:', 'esse', 'ass', 'gegeeesn', 'essen', 'essen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(487, 2, 'Er fährt mit dem Fahrrad. Infinitive:', 'fahren', 'fuhrt', 'abgefahren', 'fahrt', 'fahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(488, 3, 'Meine Mutter trägt keine Brille. Infinitive:', 'tragen', 'trag', 'tragte', 'getragen', 'tragen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(489, 4, 'Meine Freundin gibt mir einen Kuss. Infinitive:', 'gab', 'gibt', 'geben', 'abgabe', 'geben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(490, 5, 'Siehst du das rote Auto? Infinitive:', 'sehen', 'sehet', 'sah', 'sehnen', 'sehen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(491, 1, 'Der Besuch bei seiner Oma _____ unbedingt notwendig, meint Lorenz. [sein]', 'sei', 'sein', 'seit', 'sehnen', 'sei');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(492, 2, 'Ich _____  faul und _____  nichts, sagt mein Lehrer. [sein / arbeiten]', 'sei / arbeitet', 'sei / arbeite', 'sei / arbeits', 'ist / arbeite', 'sei / arbeite');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(493, 3, 'Mein Bruder sagte er _____  kein Dieb. Er _____  nichts gestohlen. [sein / haben]', 'sei / habe', 'bin / habe', 'sei / hat', 'bist / habe', 'sei / habe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(494, 4, 'Er _____  das Skifahren sehr, meint der kleine Max. [lieben]', 'liebe', 'liebte', 'liebst', 'liebt', 'liebe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(495, 5, 'In der Unterrichtsstunde _____  es darauf an aufzupassen, sagt der Herr Lehrer. [kommen]', 'kamm', 'kommt', 'komme', 'hat gekommt', 'komme');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(496, 1, 'Den Einkauf heute Nachmittag _____  auch morgen zu erledigen. [sein]', 'werden', 'war', 'wird', 'wäre', 'wäre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(497, 2, 'Auf einen Baum zu klettern _____  ein Vergnügen, meint Gabi. [sein]', 'werden', 'wäre', 'wird', 'war', 'wäre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(498, 3, 'Julius _____  die Aufgabe ohne Problem lösten, dachte sich der Lehrer. [können]', 'können', 'musste', 'dürfte', 'könnte', 'könnte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(499, 4, 'Es _____  ihm eine Freude uns einzuladen, meint mein Vater. [sein]', 'werden', 'wird', 'wäre', 'war', 'wäre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(500, 5, 'Es _____  ein Vergnügen sein, mit ihr auf die Party zu gehen, glaubt Sigfried. [können]', 'musste', 'könnte', 'dürfte', 'können', 'könnte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(501, 1, 'Ich _____  , dass du im Mai kommen wirst. [sich freuen]', 'freue mich', 'freue mir', 'freue meine', 'freue meinen', 'freue mich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(502, 2, 'Ich _____ , damit ich den Zug in Innsbruck erreiche. [sich beeilen]', 'beeile mich', 'beeile mir ', 'beeile meine ', 'beeile meinen', 'beeile mich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(503, 3, 'Wir _____ im Schwimmbad erkältet. [sich haben]', 'haben unsere', 'hatte uns', 'haben uns', 'hat uns', 'haben uns');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(504, 4, 'Wir _____ auf das nächste Weihnachtsfest. [sich freuen]', 'freute uns', 'freut uns', 'freuen unsere', 'freuen uns', 'freuen uns');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(505, 5, 'Wir _____ an den Tisch. [sich setzen]', 'setz  uns', 'setzen  unsere', 'setzen uns', 'setzte  uns', 'setzen uns');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(506, 1, 'Ich _____ mir meinen Pullover _____ , weil es kalt wird. [anziehen]', 'ziete / an', 'ziehen / an', 'zieh / an', 'ziehe / an', 'ziehe / an');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(507, 2, 'Ich _____ um 9 Uhr in Venedig am Bahnhof _____ . [ankommen]', 'kam / an', 'komm / an', 'gekomme / an', 'komme / an', 'komme / an');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(508, 3, 'Ich _____ mich in der Umkleidekabine _____ . [umziehen]', 'zieh / um', 'ziehe / um', 'zieht / um', 'zieht / um', 'ziehe / um');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(509, 4, 'Ich _____ den grünen Pullover _____ , da er zu klein ist. [umtauschen]', 'tausche / um', 'täuschen / um', 'tauschte / um', 'getäuscht / um', 'tausche / um');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(510, 5, 'Um 12 Uhr _____ wir auf der Piste ins Tal _____ . [abfahren]', 'führte / ab', 'fahren / ab', 'fahrt / ab', 'abgefahren', 'fahren / ab');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(511, 1, 'Meine Schwester _____ ihre Hausaufgaben und _____ eine E-Mail. [machen / schreiben]', 'macht / schreibt', 'gemacht / schreibt', 'macht / schreibt', 'macht / schreiben', 'macht / schreibt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(512, 2, '_____ du mir deinen Namen? Dann _____ ich dir. [sagen / schreiben]', 'Sagen / schreibe', 'Sagst / schriebt', 'Sagen / schriebt', 'Sagst / schreibe', 'Sagst / schreibe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(513, 3, 'Meine Mutter _____ einkaufen, ich _____ aber lieber zu Hause. [gehen / bleiben]', 'gehen / bleibe', 'geht / bleiben', 'geht / bleibe', 'gehen / bleiben', 'geht / bleibe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(514, 4, 'Heute _____ ich und dann _____ ich. [schwimmen / lernen]', 'schwamm / lernen', 'schwimme / lerne', 'schwimme / lernen', 'schwamm / lerne', 'schwimme / lerne');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(515, 5, 'Wir _____ einkaufen und _____ dann die Oma. [gehen / besuchen]', 'gehen / besuchen', 'ging / besuchen', 'gehen / besuchte', 'ging / besuchte', 'gehen / besuchen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(516, 1, 'Du _____ Amerikaner? Nein, ich _____ Engländer. [sein / sein]', 'sind / ist', 'bist / bin', 'bist / ist', 'sind / bin', 'bist / bin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(517, 2, 'Ich _____ Pferde. _____ du sie auch? [mögen / mögen]', 'möge / mag', 'mag / mag', 'mag / magst', 'möge / magst', 'mag / magst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(518, 3, '_____ du Zeit? _____ du mir bitte helfen? [haben / können]', 'Hast / Können', 'Hat / Kannst', 'Hat / Können', 'Hast / Kannst', 'Hast / Kannst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(519, 4, 'Er _____ einen guten Film und _____ dabei Popcorn. [sehen / essen]', 'sehen / isst', 'sieht / bist', 'sieht / isst', 'sehen / bist', 'sieht / isst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(520, 5, '_____ du gerne Bücher oder _____ du lieber Filme? [lesen / sehen]', 'Liest / siehst', 'Liest / sehten', 'Lesste / siehst', 'Lesste / sehten', 'Liest / siehst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(521, 1, 'Ich _____ Englisch sprechen. _____ jetzt aber Deutsch lernen. [können / wollen]', 'kannst / Willst', 'kann / Will', 'kann / Willst', 'kannst / Will', 'kann / Will');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(522, 2, 'Ich _____ meine Hausaufgaben machen, _____ aber lieber spielen. [müssen / wollen]', 'müssen / will', 'muss / darf', 'muss / will', 'müssen / darf', 'muss / will');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(523, 3, 'Du _____ hier nicht rein, du _____ draußen warten. [dürfen / müssen]', 'willst / kannst', 'willst / musst', 'darfst / kannst', 'darfst / musst', 'darfst / musst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(524, 4, 'Nächste Woche _____ wir nach Berlin _____ . [können + fahren]', 'müssen / fahren', 'dürfen / fahren', 'können / fahren', 'wollen / fahren', 'können / fahren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(525, 5, 'Wir _____ nächste Woche die Küche _____ . [müssen + putzen]', 'dürfen / putzen', 'müssen / putzen', 'wollen / putzen', 'können / putzen', 'müssen / putzen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(526, 1, 'Ich _____ zwei Brüder und ich _____ 25 Jahre alt.', 'habe / bin', 'hat / bin', 'habe / sind', 'hast / ist', 'habe / bin');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(527, 2, 'Mein Opa _____ 60 Jahre alt und _____ einen Hund.', 'bist / haben', 'ist / hat', 'sind / hast', 'bin / hatte', 'ist / hat');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(528, 3, 'Mein Freund _____ älter als ich und _____ einen Hund.', 'bist / haben', 'sind / hast', 'ist / hat', 'bin / hatte', 'ist / hat');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(529, 4, 'Paris _____ in Frankreich und _____ bekannte Sehenswürdigkeiten.', 'bist / haben', 'sind / hast', 'bin / hatte', 'ist / hat', 'ist / hat');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(530, 5, 'Wer _____ du? Wir _____ dich noch nie gesehen.', 'sind / hat', 'ist / hast', 'bist / haben', 'bin / hatte', 'bist / haben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(531, 1, 'Wir _____ uns bei dem Projekt nicht beeinflussen. [lassen]', 'lassen', 'lasse', 'läßt', 'lässt', 'lassen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(532, 2, 'Ob wir die Aufgabe erledigen, _____ wir uns noch offen. [lassen]', 'lassen', 'lasse', 'läßt', 'lässt', 'lasse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(533, 3, 'Ich _____ den Luftballon fliegen. [lassen]', 'lassen', 'lasse', 'läßt', 'lässt', 'lassen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(534, 4, 'Wir _____ uns gerne bei der Hausarbeit _____ . [lassen / helfen]', 'lassen / helfen', 'lasse / helfen', 'läßt / helfen', 'lässt / helfen', 'lassen / helfen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(535, 5, 'Wir sind nicht dazu bereit, uns die Party verderben zu _____ . [lassen]', 'lassen', 'lasse', 'läßt', 'lässt', 'lassen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(536, 1, 'Das Baby lässt _____ Finger nicht mehr los.', 'den', 'dem', 'des', 'der', 'den');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(537, 2, 'Hat Angelika eine sehr _____ Krankheit?', 'schwerer', 'schweres', 'schwere', 'schwer', 'schwere');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(538, 3, 'Toni kauft einen _____ CD-Player für seiner _____ Schwester als Geschenk.', 'neuer / seiner kleinen', 'neuen / seines kleinen', 'neues / seine kleine', 'neue / seiner kleine', 'neuen / seines kleinen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(539, 4, 'Meine Eltern laden _____ morgen _____ derin Theater ein.', 'uns / ins', 'wir / im', 'unseren / in der', 'unseres / in', 'uns / ins');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(540, 5, 'Tereza liebt _____ Tiere sehr.', 'ihren', 'ihr', 'ihres', 'ihre', 'ihre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(541, 1, 'Armin gab _____ Freund das geliehene Geld wieder zurück.', 'seiner', 'seinem', 'seines', 'seinen', 'seinem');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(542, 2, 'Roman erteilt _____ Frau das Wort.', 'die', 'den', 'deren', 'der', 'der');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(543, 3, 'Meine Mutter verzeiht _____ immer gleich.', 'mich', 'ich', 'mein', 'mir', 'mir');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(544, 4, 'Wir schenkten _____ eine tolle Reise nach Afrika.', 'ihn', 'er', 'ihres', 'ihm', 'ihm');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(545, 5, 'Susi gab _____ Mann ein süßes Bonbon aus der Tüte.', 'ihrem', 'ihrer', 'ihres', 'ihrem', 'ihrem');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(546, 1, '_____ Handy funktioniert nicht richtig.', 'Mein', 'Mir', 'Mich', 'Ich', 'Mein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(547, 2, '_____ arbeite morgen sicher nicht.', 'Ich', 'Mir', 'Mich', 'Mein', 'Ich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(548, 3, '_____ hat meine tollen Schuhe an.', 'Sich', 'Sein', 'Seine', 'Er', 'Er');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(549, 4, '_____ Tante isst furchtbar gerne Knoblauch.', 'Ihres', 'Ihrem', 'Ihre', 'Ihren', 'Ihre');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(550, 5, '_____ Hund von David ist sehr groß.', 'Den', 'Der', 'Dem', 'Des', 'Der');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(551, 1, 'Die Sonnenbrille ist die eleganteste _____ _____.', 'des / Geschäfts', 'das / Geschäft', 'den / Geschäfts', 'dem / Geschäft', 'des / Geschäfts');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(552, 2, 'Der Mann wurde _____ Mordes beschuldigt.', 'der', 'des', 'den', 'dem', 'des');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(553, 3, 'Mein Handy ist das neueste Produkt _____ _____.', 'die / Firmas', 'den / Firma', 'dem / Firmas', 'der / Firma', 'der / Firma');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(554, 4, 'Die Gruppe wurde gestern _____ _____ verwiesen.', 'des / Restaurants', 'das / Restaurant', 'den / Restaurants', 'dem / Restaurant', 'des / Restaurants');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(555, 5, 'Meine Mutter ist die älteste Tochter _____ _____.', 'ihrer / Mutter', 'ihre / Mutters', 'ihren / Mutter', 'ihres / Mutters', 'ihrer / Mutter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(556, 1, 'Meine Mutter bringt _____ eine _____ Suppe.', 'mir / heiße', 'mich / heißer', 'ich / heißen', 'mein / heiße', 'mir / heiße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(557, 2, 'Unser Hund bringt _____ _____ Ball immer wieder zurück.', 'mir / den', 'mich / der', 'ich / des', 'mein / dem', '');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(558, 3, 'Meine Oma strickt _____ einen _____ Schal.', 'ich / neuer', 'mein / neues', 'mir / neuen', 'mich / neue', 'mir / neuen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(559, 4, 'Mein Opa schenkt _____ ein _____ Handy.', 'mich / neuen', 'ich / neuer', 'mein / neu', 'mir / neuneues', 'mir / neuneues');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(560, 5, 'Meine Mutter backte _____ netten Mann _____ duftenden Kuchen.', 'dem / einen', 'der / ein', 'den / einem', 'des / einer', 'dem / einen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(561, 1, '_____ Kellner bringt hurtig _____ frischen Salat.', 'Den / der', 'Dem / dem', 'Des / des', 'Der / den', 'Der / den');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(562, 2, '_____ Katze sucht _____ kleinen Ball.', 'Meiner / ihres', 'Meine / ihren', 'Meine / ihrer', 'Meines / ihrem', 'Meine / ihren');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(563, 3, '_____ Oma strickt _____ bunten Pullover heute fertig.', 'Mein / meinem', 'Meiner / meiner', 'Meines / mein', 'Meine / meinen', 'Meine / meinen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(564, 4, '_____ dankt _____ Kindern für ihr tolles Geschenk.', 'Die / den', 'Dem / der', 'Der / des', 'Den Mutter / dem', 'Die / den');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(565, 5, '_____ grüne Frosch hüpft über _____ frisch gemähten Rasen.', 'Dem / der', 'Der / den', 'Des / dein', 'Den / des', 'Der / den');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(566, 1, '_____ Kellner bringt _____ einen fruchtigen Cocktail.', 'Den / unseren', 'Des / unseres', 'Der / uns', 'Dem / wir', 'Der / uns');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(567, 2, '_____ Oma will _____ einen leckeren Kuchen backen.', 'Unserer / unseren', 'Unseres / unseres', 'Unsere / uns', 'Unseren / unserer', 'Unsere / uns');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(568, 3, '_____ Mutter kocht _____ eine heiße Suppe.', 'Meinem / mich', 'Meine / mir', 'Meiner / mein', 'Meinen / ihr', 'Meine / mir');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(569, 4, '_____ Vater grillt _____ ein saftiges Steak.', 'Meines / mich', 'Mein / mir', 'Meinen / ich', 'Meinem / meine', 'Mein / mir');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(570, 5, '_____ spiele mit _____ Hund im Garten.', 'mich / meinen', 'mir / mein', 'ich / meinem', 'mein / meine', 'ich / meinem');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(571, 1, 'Ich habe gehört, _____ dasdass Wetter morgen besser wird.', 'das / das', 'das / dass', 'dass / das', 'dass / dass', 'dass / das');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(572, 2, 'Ich hoffe, _____ _____ Essen gut schmeckt.', 'das / das', 'das / dass', 'dass / das', 'dass / dass', 'dass / das');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(573, 3, 'Wer ist _____? _____ist der Bruder meiner Mutter.', 'das / das', 'das / dass', 'dass / das', 'dass / dass', 'das / das');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(574, 4, '_____ ist _____ schnellste Auto der Welt.', 'das / das', 'das / dass', 'dass / das', 'dass / dass', 'das / das');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(575, 5, '_____ London eine große Stadt ist, weiß jeder, aber nicht jeder weiß, _____ London schön ist.', 'das / das', 'das / dass', 'dass / das', 'dass / dass', 'dass / dass');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(576, 1, '_____ isst du gerade? Einen Apfel.', 'Was', 'Wann', 'Wenn', 'Wen', 'Was');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(577, 2, '_____ gehst es dir? Gut und dir?', 'Was ', 'Wie', 'Warum', 'Wer', 'Wie');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(578, 3, '_____ heißt du? Jan.', 'Wie', 'Was', 'Wer', 'Wem', 'Wie');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(579, 4, '_____ wirst du 18? Am 7. September.', 'Wie', 'Was', 'Wo', 'Wann', 'Wann');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(580, 5, '_____ kommst du nicht in die Schule? Ich bin krank.', 'Wann', 'Wie', 'Warum', 'Wer', 'Warum');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(581, 1, 'Woher kommst du?', 'Aus München.', 'Nach München.', 'Zu München.', 'Durch München.', 'Aus München.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(582, 2, 'Wann kommst du nach Hause?', 'Meine Mutter holt mich ab.', 'Ich fahre mit dem Bus.', 'Um 20 Uhr.', 'Weil ich müde bin.', 'Um 20 Uhr.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(583, 3, 'In welchem Land befindet sich London?', 'London ist kein Land!', 'Dort wohnen über 8 Millionen Menschen.', 'Es ist die Hauptstadt.', 'In England.', 'In England.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(584, 4, 'Hier stehen drei Autos. Welches ist dein Auto?', 'Das Auto.', 'Ich suche einen anderen Parkplatz.', 'Das rote Auto.', 'Dort stehen drei Autos.', 'Das rote Auto.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(585, 5, 'Wer von diesen Männern ist dein Vater?', 'Der große Mann mit dem Bart.', 'Die hübsche Damen.', 'In der Mitte steht mein Sohn.', 'Nein, es ist der hinten links.', 'Der große Mann mit dem Bart.');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(586, 1, 'Das ist die Familie, _____ ein neues Haus gebaut hat.', 'die', 'dem', 'der', 'den', 'die');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(587, 2, 'Ich wünsche mir einen Mann, mit _____ ich durch mein Leben gehe.', 'der', 'dem', 'des', 'den', 'dem');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(588, 3, 'Das ist die Frau, mit _____ mein Bruder verheiratet ist.', 'die', 'dem', 'der', 'den', 'der');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(589, 4, 'Die Katze, _____ der alten Frau gehört.', 'die', 'der', 'den', 'dem', 'die');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(590, 5, 'Ist das die Frau, _____ du heiraten möchtest?', 'der', 'die', 'das', 'deren', 'die');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(591, 1, 'Bist du zu Hause? Nein ich _____ zu Hause.', 'bin nicht', 'sein nicht', 'nicht sein', 'niemand', 'bin nicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(592, 2, 'Ich _____ Geld, um ein Auto zu kaufen.', 'habe kein', 'haben nicht', 'nicht haben', 'kein', 'habe kein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(593, 3, 'Ich _____ Zeit, um dich besuchen zu kommen.', 'nicht haben', 'haben nicht', 'keine haben', 'habe keine', 'habe keine');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(594, 4, 'Ich habe nichts gestohlen. Ich _____ Dieb.', 'nicht sein', 'nicht bin', 'bin kein', 'bin nein', 'bin kein');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(595, 5, 'Warum antwortest du _____ ?', 'keines', 'nicht', 'nein', 'kein', 'nicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(596, 1, 'Ich fahre _____ Berlin.', 'nach', 'zu', 'zur', 'zum', 'nach');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(597, 2, 'Nächste Woche fliegen wir _____ London.', 'nach', 'zu', 'zur', 'zum', 'nach');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(598, 3, '12:15 = Viertel _____ zwölf', 'nach', 'zu', 'zur', 'zum', 'nach');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(599, 4, 'Ich wünsche dir alles Gute _____ Geburtstag.', 'nach', 'zu', 'zur', 'zum', 'zum');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(600, 5, 'Ich arbeite noch nicht. Ich gehe noch _____ Schule.', 'nach', 'zu', 'zur', 'zum', 'zur');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(601, 1, 'Er ist Amerikaner. Er kommt _____ Amerika.', 'aus', 'von', 'vom', 'ab', 'aus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(602, 2, '_____  hier bis nach Hause habe ich es nicht weit.', 'aus', 'von', 'vom', 'ab', 'von');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(603, 3, 'Ich habe _____ meiner Oma ein Geschenk bekommen.', 'aus', 'von', 'vom', 'ab', 'von');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(604, 4, 'Wir sind _____ Freitag bis Samstag im Urlaub.', 'aus', 'von', 'vom', 'ab', 'von');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(605, 5, 'Der Eiffelturm ist _____  Metall (Stahl) gebaut.', 'aus', 'von', 'vom', 'ab', 'aus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(606, 1, 'Was wird auf dem Bild gezeigt?', 'der Schraubendreher', 'die Sähe', 'die Rohrzange', 'der Bohrer', 'der Schraubendreher');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(607, 2, 'Was wird auf dem Bild gezeigt?', 'der Werkzeugkoffer', 'die Axt', 'der Schraubenschlüssel', 'die Zange', 'die Axt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(608, 3, 'Was wird auf dem Bild gezeigt?', 'die Werkzeuge', 'die Leiter', 'die Zange', 'die Feile', 'die Leiter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(609, 4, 'Was wird auf dem Bild gezeigt?', 'die Wasserwaage', 'der Nagel', 'die Bohrmaschine', 'die Schaufel', 'die Bohrmaschine');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(610, 5, 'Was wird auf dem Bild gezeigt?', 'der Nagel', 'die Zange', 'der Schraubenschlüssel', 'der Nagel', 'der Schraubenschlüssel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(611, 6, 'Was wird auf dem Bild gezeigt?', 'der Hammer', 'die Bohrmaschine', 'der Werkzeugkoffer', 'die Axt', 'der Hammer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(612, 7, 'Was wird auf dem Bild gezeigt?', 'die Schaufel', 'die Leiter', 'die Feile', 'die Zange', 'die Feile');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(613, 8, 'Was wird auf dem Bild gezeigt?', 'die Schaufel', 'der Bohrer', 'die Wasserwaage', 'die Rohrzange', 'die Schaufel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(614, 9, 'Was wird auf dem Bild gezeigt?', 'die Rohrzange', 'der Nagel', 'der Bohrer', 'der Schutzhelm', 'die Rohrzange');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(615, 10, 'Was wird auf dem Bild gezeigt?', 'das Sägeblatt', 'die Bohrmaschine', 'der Schraubenschlüssel', 'das Maßband', 'das Maßband');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(616, 1, 'Was wird auf dem Bild gezeigt?', 'die Orchidee', 'die Kirschblüte', 'der Lotus', 'die Tulpe', 'der Lotus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(617, 2, 'Was wird auf dem Bild gezeigt?', 'die Tulpe', 'die Orchidee', 'der Mohn', 'der Pilz', 'die Orchidee');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(618, 3, 'Was wird auf dem Bild gezeigt?', 'der Mohn', 'der Lotus', 'die Orchidee', 'das Blatt', 'der Mohn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(619, 4, 'Was wird auf dem Bild gezeigt?', 'der Baumstumpf', 'die Palme', 'der Bambus', 'der Pilz', 'der Pilz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(620, 5, 'Was wird auf dem Bild gezeigt?', 'das Blatt', 'der Baumstumpf', 'der Bambus', 'der Pilz', 'das Blatt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(621, 6, 'Was wird auf dem Bild gezeigt?', 'der Baumstumpf', 'der Bambus', 'die Alge', 'die Palme', 'die Alge');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(622, 7, 'Was wird auf dem Bild gezeigt?', 'der Baumstumpf', 'die Alge', 'die Palme', 'der Pilz', 'die Palme');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(623, 8, 'Was wird auf dem Bild gezeigt?', 'der Baumstumpf', 'der Pilz', 'das Blatt', 'die Alge', 'der Baumstumpf');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(624, 9, 'Was wird auf dem Bild gezeigt?', 'der Baumstumpf', 'die Palme', 'das Grass', 'der Pilz', 'das Grass');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(625, 10, 'Was wird auf dem Bild gezeigt?', 'die Palme', 'die Alge', 'der Bambus', 'das Grass', 'der Bambus');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(626, 1, 'Was wird auf dem Bild gezeigt?', 'das Feuer', 'der Baum', 'der Mond', 'die Orchidee', 'das Feuer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(627, 2, 'Was wird auf dem Bild gezeigt?', 'der Baum', 'der Berg', 'der Stern', 'der Mond', 'der Baum');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(628, 3, 'Was wird auf dem Bild gezeigt?', 'die Palme', 'der Mond', 'der Vulkan', 'das Feuer', 'der Mond');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(629, 4, 'Was wird auf dem Bild gezeigt?', 'der Berg', 'die Galaxie', 'der Tornado', 'der Mond', 'der Tornado');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(630, 5, 'Was wird auf dem Bild gezeigt?', 'die Rose', 'der Stern', 'das Meer', 'der Nebel', 'die Rose');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(631, 6, 'Was wird auf dem Bild gezeigt?', 'die Wolke', 'der Berg', 'der Stern', 'der Mond', 'die Wolke');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(632, 7, 'Was wird auf dem Bild gezeigt?', 'der Stern', 'das Meer', 'der Sand', 'die Palme', 'der Stern');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(633, 8, 'Was wird auf dem Bild gezeigt?', 'das Meer', 'der Sand', 'der Stern', 'das Grass', 'der Sand');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(634, 9, 'Was wird auf dem Bild gezeigt?', 'das Meer', 'das Feuer', 'der Baum', 'der Berg', 'das Meer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(635, 10, 'Was wird auf dem Bild gezeigt?', 'der Stern', 'der Mond', 'der Berg', 'die Wolke', 'der Berg');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(636, 1, 'Was wird auf dem Bild gezeigt?', 'die Orange', 'die Traube', 'die Zitrone', 'der Zimt', 'die Orange');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(637, 2, 'Was wird auf dem Bild gezeigt?', 'der Knoblauch', 'die Limone', 'die Traube', 'die Kartoffel', 'die Traube');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(638, 3, 'Was wird auf dem Bild gezeigt?', 'die Zitrone', 'die Orange', 'die Kartoffel', 'die Ananas', 'die Kartoffel');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(639, 4, 'Was wird auf dem Bild gezeigt?', 'die Zitrone', 'die Traube', 'der Knoblauch', 'die Orange', 'die Zitrone');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(640, 5, 'Was wird auf dem Bild gezeigt?', 'die Limone', 'der Zimt', 'die Traube', 'die Ananas', 'der Zimt');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(641, 6, 'Was wird auf dem Bild gezeigt?', 'die Limone', 'die Mandel', 'der Kürbis', 'der Zimt', 'die Limone');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(642, 7, 'Was wird auf dem Bild gezeigt?', 'der Knoblauch', 'die Kartoffel', 'der Zimt', 'die Orange', 'der Knoblauch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(643, 8, 'Was wird auf dem Bild gezeigt?', 'die Ananas', 'die Süßkartoffel', 'der Apfel', 'die Mandel', 'die Ananas');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(644, 9, 'Was wird auf dem Bild gezeigt?', 'der Knoblauch', 'die Ananas', 'die Haselnuss', 'der Zimt', 'die Haselnuss');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(645, 10, 'Was wird auf dem Bild gezeigt?', 'die Kartoffel', 'der Kohl', 'der Knoblauch', 'der Zimt', 'der Kohl');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(646, 1, 'Was wird auf dem Bild gezeigt?', 'der Tee', 'der Kaffee', 'die Lasagne', 'der Käse', 'die Lasagne');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(647, 2, 'Was wird auf dem Bild gezeigt?', 'der Tee', 'die Torte', 'die Marmelade', 'die Lasagne', 'der Tee');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(648, 3, 'Was wird auf dem Bild gezeigt?', 'das Sandwich', 'der Käse', 'der Tee', 'die Marmelade', 'das Sandwich');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(649, 4, 'Was wird auf dem Bild gezeigt?', 'der Käse', 'die Wurst', 'die Lasagne', 'der Tee', 'der Käse');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(650, 5, 'Was wird auf dem Bild gezeigt?', 'die Torte', 'die Marmelade', 'der Käse', 'der Ketchup', 'die Torte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(651, 6, 'Was wird auf dem Bild gezeigt?', 'der Ketchup', 'das Sandwich', 'die Torte', 'die Lasagne', 'der Ketchup');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(652, 7, 'Was wird auf dem Bild gezeigt?', 'die Süßigkeit', 'der Kaffee', 'das Sandwich', 'die Wurst', 'der Kaffee');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(653, 8, 'Was wird auf dem Bild gezeigt?', 'die Wurst', 'der Tee', 'der Kaffee', 'die Torte', 'die Wurst');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(654, 9, 'Was wird auf dem Bild gezeigt?', 'das Hendl', 'der Tee', 'die Süßigkeit', 'die Wurst', 'die Süßigkeit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(655, 10, 'Was wird auf dem Bild gezeigt?', 'das Sandwich', 'der Kaffee', 'der Tee', 'das Hendl', 'das Hendl');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(656, 1, 'Was wird auf dem Bild gezeigt?', 'die Schildkröte', 'das Eichhörnchen', 'die Kuh', 'das Krokodil', 'das Eichhörnchen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(657, 2, 'Was wird auf dem Bild gezeigt?', 'die Ziege', 'das Krokodil', 'das Eichhörnchen', 'die Krabbe', 'die Ziege');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(658, 3, 'Was wird auf dem Bild gezeigt?', 'die Kuh', 'der Hirsch', 'das Nashorn', 'die Krabbe', 'die Krabbe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(659, 4, 'Was wird auf dem Bild gezeigt?', 'das Nashorn', 'der Hirsch', 'die Kuh', 'die Ziege', 'die Kuh');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(660, 5, 'Was wird auf dem Bild gezeigt?', 'der Eisbär', 'das Nashorn', 'das Krokodil', 'die Schildkröte', 'die Schildkröte');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(661, 6, 'Was wird auf dem Bild gezeigt?', 'das Eichhörnchen', 'die Krähe', 'der Hirsch', 'die Kuh', 'die Krähe');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(662, 7, 'Was wird auf dem Bild gezeigt?', 'die Krabbe', 'der Hirsch', 'die Schildkröte', 'der Eisbär', 'der Eisbär');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(663, 8, 'Was wird auf dem Bild gezeigt?', 'die Ziege', 'die Kuh', 'der Eisbär', 'das Nashorn', 'das Nashorn');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(664, 9, 'Was wird auf dem Bild gezeigt?', 'der Eisbär', 'die Schildkröte', 'das Krokodil', 'der Hirsch', 'das Krokodil');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(665, 10, 'Was wird auf dem Bild gezeigt?', 'die Ziege', 'die Krähe', 'der Hirsch', 'das Krokodil', 'der Hirsch');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(666, 1, 'Was wird auf dem Bild gezeigt?', 'das Haar', 'die Füße', 'die Augen', 'die Nase', 'die Augen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(667, 2, 'Was wird auf dem Bild gezeigt?', 'die Knie', 'die Schulter', 'das Haar', 'die Lippen', 'die Lippen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(668, 3, 'Was wird auf dem Bild gezeigt?', 'das Gesicht', 'die Hand', 'die Beine', 'die Schulter', 'die Schulter');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(669, 4, 'Was wird auf dem Bild gezeigt?', 'die Nase', 'die Knie', 'die Schulter', 'das Haar', 'die Nase');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(670, 5, 'Was wird auf dem Bild gezeigt?', 'die Füße', 'die Nase', 'das Gesicht', 'die Augen', 'die Füße');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(671, 6, 'Was wird auf dem Bild gezeigt?', 'das Gesicht', 'die Augen', 'das Haar', 'die Lippen', 'das Haar');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(672, 7, 'Was wird auf dem Bild gezeigt?', 'die Hand', 'die Knie', 'das Gesicht', 'die Füße', 'die Knie');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(673, 8, 'Was wird auf dem Bild gezeigt?', 'das Haar', 'die Hand', 'die Augen', 'das Gesicht', 'das Gesicht');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(674, 9, 'Was wird auf dem Bild gezeigt?', 'die Augen', 'die Schulter', 'die Beine', 'die Hand', 'die Beine');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(675, 10, 'Was wird auf dem Bild gezeigt?', 'die Füße', 'die Lippen', 'die Hand', 'die Augen', 'die Hand');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(676, 1, 'Was wird auf dem Bild gezeigt?', 'das Weiß', 'das Grau', 'das Gelb', 'das Rot', 'das Gelb');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(677, 2, 'Was wird auf dem Bild gezeigt?', 'das Gelb', 'das Hellblau', 'das Grün', 'das Schwarz', 'das Schwarz');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(678, 3, 'Was wird auf dem Bild gezeigt?', 'das Hellgrün', 'das Weiß', 'das Rot', 'das Dunkelblau', 'das Dunkelblau');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(679, 4, 'Was wird auf dem Bild gezeigt?', 'das Grau', 'das Gelb', 'das Rot', 'das Schwarz', 'das Rot');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(680, 5, 'Was wird auf dem Bild gezeigt?', 'das Weiß', 'das Gelb', 'das Dunkelblau', 'das Dunkelgrün', 'das Dunkelgrün');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(681, 6, 'Was wird auf dem Bild gezeigt?', 'das Rot', 'das Grün', 'das Schwarz', 'das Weiß', 'das Grün');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(682, 7, 'Was wird auf dem Bild gezeigt?', 'das Gelb', 'das Grau', 'das Schwarz', 'das Dunkelgrün', 'das Grau');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(683, 8, 'Was wird auf dem Bild gezeigt?', 'das Hellgrün', 'das Grau', 'das Dunkelblau', 'das Schwarz', 'das Hellgrün');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(684, 9, 'Was wird auf dem Bild gezeigt?', 'das Hellblau', 'das Rot', 'das Weiß', 'das Dunkelgrün', 'das Weiß');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(685, 10, 'Was wird auf dem Bild gezeigt?', 'das Grün', 'das Schwarz', 'das Gelb', 'das Hellblau', 'das Hellblau');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(686, 1, 'Was wird auf dem Bild gezeigt?', 'der Golf', 'der Fußball', 'das Skateboard', 'das Laufen', 'das Laufen');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(687, 2, 'Was wird auf dem Bild gezeigt?', 'das Laufen', 'der Marathon', 'der Golf', 'das Skateboard', 'der Golf');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(688, 3, 'Was wird auf dem Bild gezeigt?', 'das Wandern', 'das Cricket', 'der Marathon', 'das Tennis', 'das Tennis');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(689, 4, 'Was wird auf dem Bild gezeigt?', 'das Tennis', 'die Meditation', 'das Skateboard', 'das Gewichtheben', 'die Meditation');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(690, 5, 'Was wird auf dem Bild gezeigt?', 'der Fußball', 'die Meditation', 'das Cricket', 'das Wandern', 'der Fußball');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(691, 6, 'Was wird auf dem Bild gezeigt?', 'der Fußball', 'das Cricket', 'das Wandern', 'das Gewichtheben', 'das Wandern');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(692, 7, 'Was wird auf dem Bild gezeigt?', 'der Fußball', 'das Tennis', 'das Skateboard', 'das Laufen', 'das Skateboard');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(693, 8, 'Was wird auf dem Bild gezeigt?', 'das Cricket', 'der Golf', 'die Meditation', 'das Gewichtheben', 'das Gewichtheben');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(694, 9, 'Was wird auf dem Bild gezeigt?', 'der Golf', 'das Tennis', 'das Cricket', 'das Skateboard', 'das Cricket');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(695, 10, 'Was wird auf dem Bild gezeigt?', 'das Tennis', 'die Meditation', 'das Wandern', 'der Marathon', 'der Marathon');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(696, 1, 'Was wird auf dem Bild gezeigt?', 'der Satellit', 'der USB', 'die CD', 'der Fernseher', 'der Satellit');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(697, 2, 'Was wird auf dem Bild gezeigt?', 'der Rechner', 'der Laptop', 'die Tastatur', 'der Ordner', 'der Laptop');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(698, 3, 'Was wird auf dem Bild gezeigt?', 'der Ordner', 'das Smartphone', 'der Fernseher', 'der Kopfhörer', 'der Ordner');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(699, 4, 'Was wird auf dem Bild gezeigt?', 'der Satellit', 'der Laptop', 'die CD', 'der Kopfhörer', 'der Kopfhörer');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(700, 5, 'Was wird auf dem Bild gezeigt?', 'der Rechner', 'das Smartphone', 'der USB', 'die CD', 'die CD');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(701, 6, 'Was wird auf dem Bild gezeigt?', 'der USB', 'die CD', 'der Laptop', 'der Kopfhörer', 'der USB');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(702, 7, 'Was wird auf dem Bild gezeigt?', 'der Fernseher', 'der Satellit', 'das Smartphone', 'der Rechner', 'der Fernseher');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(703, 8, 'Was wird auf dem Bild gezeigt?', 'die CD', 'die Tastatur', 'der Rechner', 'der Laptop', 'die Tastatur');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(704, 9, 'Was wird auf dem Bild gezeigt?', 'der USB', 'der Satellit', 'das Smartphone', 'der Kopfhörer', 'das Smartphone');
INSERT INTO `questions` (`idQuestion`, `onPageOrder`, `questionText`, `option1`, `option2`, `option3`, `option4`, `correctAnswer`) VALUES(705, 10, 'Was wird auf dem Bild gezeigt?', 'der USB', 'der Rechner', 'die Tastatur', 'der Laptop', 'der Rechner');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reading`
--

CREATE TABLE IF NOT EXISTS `reading` (
  `idReading` int(11) NOT NULL,
  `level` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `text` text COLLATE utf8mb4_bin DEFAULT NULL,
  `foreignLanguage` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `reading`
--

INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(1, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Sprachen%20lernen-a1.jpg', 'Sprachen lernen', '<p>&nbsp; &nbsp; &nbsp; Julija Fuchs ist Anw&auml;ltin und kommt aus London. Sie wohnt seit 8 Monaten in M&uuml;nchen. Sie hat einen deutschen Mann geheiratet und lebt jetzt in Deutschland. Sie muss Deutsch lernen und besucht einen Deutschkurs. In dem Kurs von Julija sind 12 Teilnehmer. Julija braucht Deutsch f&uuml;r den Beruf. Sie will wieder als Anw&auml;ltin arbeiten. Sie hat schon eine Stelle gefunden, aber sie braucht Deutsch Stufe B2 f&uuml;r die Arbeit. In der Gruppe lernt sie schnell und spricht viel mit den Kolleginnen und Kollegen. Der Lehrer hilft ihr auch sehr. Zu Hause spricht sie mit ihrem Mann immer noch Englisch, aber bald k&ouml;nnen sie auch Deutsch sprechen. Julija lernt mit dem Lehrbuch und hat auch ein tolles W&ouml;rterbuch f&uuml;r die neunen W&ouml;rter bekommen. Ein Geschenk von Kai. Ihr Mann Kai Fuchs ist Arzt und er arbeitet viel. Er kommt erst am Abend nach Hause. Dann essen sie gemeinsam und sprechen &uuml;ber den Tagesablauf.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(2, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Einkaufen-a1.jpg', 'Einkaufen', '<p>&nbsp; &nbsp; &nbsp; Nach der Arbeit haben die Leute nicht viel Zeit. Sie kaufen schnell im Supermarkt ein und kochen etwas zu Hause. Ich kaufe auch oft im Supermarkt ein. In der N&auml;he von meiner Wohnung gibt es 3 verschiedene Superm&auml;rkte. Aber am liebsten gehe ich zu Lidl. Ich mache meinen Wocheneinkauf meistens am Samstag, denn da arbeite ich nicht und habe mehr Zeit. In den Tante-Emma-Laden gehe ich sehr selten einkaufen. Da bekommt man auch Lebensmittel, aber die Sachen sind einfach zu teuer. Fr&uuml;hst&uuml;ck kaufe ich fast immer beim B&auml;cker und da muss ich nur &uuml;ber die Stra&szlig;e. Die Backwaren sind sehr lecker und die Verk&auml;uferin ist ziemlich nett. Am liebsten esse ich eine Brezel und eine Nussschnecke und trinke Orangensaft dazu. Gem&uuml;se kaufe ich immer auf dem Markt. Da ist das Gem&uuml;se ganz frisch. Wenn wir grillen, brachen wir Fleisch und W&uuml;rstchen. Das kann man in der Metzgerei kaufen. Manchmal gehe ich mit meinen Freuden ins Einkaufzentrum. Da kaufen wir aber keine Lebensmittel ein, da kaufen wir Kleidung.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(3, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Am%20Morgen-a1.jpg', 'Am Morgen', '<p>&nbsp; &nbsp; &nbsp; Der Wecker klingelt um 7 Uhr. Marko steht jeden Morgen um 7 Uhr auf. Zuerst duscht er, dann zieht er sich an. Um halb acht kocht er Wasser und macht Kaffee. Er trinkt seinen Kaffee ohne Zucker, aber mit ein bisschen Milch. Marko fr&uuml;hst&uuml;ckt heute nicht zu Hause. Er kauft sich unterwegs etwas vom Becker. Zeitungen liest er auch nicht, denn er hat alle Nachrichten auf dem Handy. Um Viertel vor acht geht er los. Heute f&auml;hrt er mit der U-Bahn. Die U-Bahn ist immer p&uuml;nktlich. Er wartet nur 2 Minuten und steigt ein. Marko hat seinen Freund Michael gesehen und geht zu ihm. Marko und Michael arbeiten in der gleichen Firma und sogar in derselben Abteilung. Die Haltestelle ist direkt vor der Firma und sie steigen aus. Marko ist immer p&uuml;nktlich, aber Michael kommt auch manchmal zu sp&auml;t. Sie begr&uuml;&szlig;en alle Kollegen und fangen mit der Arbeit an.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(4, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Ferien-a1.jpg', 'Ferien', '<p>&nbsp; &nbsp; &nbsp; Wir fahren in den Ferien immer ans Meer. Wir baden gerne und freuen uns &uuml;ber die Wellen. Besonders wenn die Sonne scheint und es richtig hei&szlig; ist, f&uuml;hlen wir uns am Meer sehr wohl. Das Wasser ist k&uuml;hl und wir k&ouml;nnen auch am Strand im Schatten liegen und ein interessantes Buch lesen. Muscheln suchen macht uns viel Spa&szlig; oder wir bauen eine gro&szlig;e Burg. Dort k&ouml;nnen wir dann auch unsere Handt&uuml;cher ausbreiten.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Wenn das Wetter nicht so sch&ouml;n ist, gehen wir am Meer spazieren oder wir gehen in die n&auml;chste Stadt und machen einen Einkaufsbummel. Ein Urlaub am Meer ist f&uuml;r uns immer gut f&uuml;r eine Pause im Sommer.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(5, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Fr%c3%bchst%c3%bcck-a1.jpg', 'Frühstück', '<p>&nbsp; &nbsp; &nbsp; Es ist 7 Uhr am Morgen. Familie M&uuml;ller sitzt am Fr&uuml;hst&uuml;ckstisch. Der Vater hei&szlig;t Bernd. Der Name der Mutter ist Angelika. Thomas und Lisa sind die Kinder der beiden. Thomas sitzt neben Angelika. Bernd sitzt neben seiner Tochter.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Die Eltern trinken eine Tasse Kaffee. Der Vater liest dabei Zeitung. Die beiden Kinder trinken Milch. Auf dem Tisch stehen vier Teller und vier Tassen. In der Mitte steht ein Korb mit Brot. Daneben liegt die Butter. Ein Teller mit Wurst und K&auml;se ist auch da. Dahinter steht ein Glas Marmelade.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Der Vater isst ein Brot mit Butter und Wurst. Angelika mag am liebsten K&auml;se. Die Kinder essen ihr Brot mit Marmelade.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(6, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/In%20der%20Schule-a1.jpg', 'In der Schule', '<p>&nbsp; &nbsp; &nbsp; Heute ist der erste Schultag. Lena steht mit ihrer Schult&uuml;te vor der Schule. Sandra, Susanne und Paul sind auch da. Die Kinder kennen sich aus dem Kindergarten. Jetzt gehen sie in die gleiche Klasse. Sie freuen sich schon auf den Unterricht. Lena freut sich besonders auf das Rechnen. Sandra und Susanne aufs Schreiben. Und Paul? Paul sagt, er freut sich besonders auf die Pausen.</p>\r\n<p>&nbsp; &nbsp; &nbsp; In der Klasse lernen sie ihren Lehrer, Herrn Mayer, kennen. Herr Mayer ist noch sehr jung und lustig. In der ersten Stunde lernen die Kinder das ABC-Lied. Alle singen begeistert mit.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Danach schreibt der Lehrer die ersten Buchstaben an die Tafel: A wie Affe, B wie Banane. Herr Mayer zeichnet einen Affen dazu, der einen Banane frisst. Die Kinder lachen laut. Dann l&auml;utet auch schon die Schulglocke.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Der erste Tag in der Schule ist vorbei. Vor der Schule warten die Eltern auf die Kinder. Die Kinder erz&auml;hlen vom ersten Tag. Sie freuen sich schon auf morgen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(7, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Martin,%20Leonie%20und%20Christian-a1.jpg', 'Martin, Leonie und Christian', '<p>&nbsp; &nbsp; &nbsp; Martin Stubbe ist 15 Jahre alt. Er lebt mit seinen Eltern und seiner Schwester in Berlin. Sie wohnen in einer gro&szlig;en Wohnung im Zentrum. Martins Vater ist Arzt. Seine Mutter ist Krankenschwester. Martin lernt Mathe und Biologie gern. Er spielt Fu&szlig;ball. Seine Schwester ist 17 Jahre alt. Sie lernt Englisch gern und spielt Tennis.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Leonie Klein ist 21 Jahre alt. Sie kommt aus Frankfurt am Main. Sie studiert Betriebswirtschaft an der Ludwig-Maximillians-Universit&auml;t in M&uuml;nchen. Sie wohnt mit ihren beiden Freundinnen in einer kleinen Wohnung in Garching. Leonie arbeitet jeden Samstag in einem Restaurant als Kellnerin. Die drei Studentinnen lieben das Nachtleben in M&uuml;nchen und die vielen Partys.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Christian Hart ist 28 Jahre alt. Er ist Logistiker von Beruf. Er arbeitet bei Mercedes in Stuttgart. Er wohnt nicht in Stuttgart. Er lebt mit seiner Frau und seinen zwei Kindern in Kirchheim unter Teck. Sie wohnen in einem Einfamilienhaus. Seine Frau ist 26 Jahre alt. Sie ist Germanistin von Beruf. Sie arbeitet an der P&auml;dagogischen Hochschule in Ludwigsburg. An den Wochenenden macht Familie Hart Ausfl&uuml;ge.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(8, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Struppi-a1.jpg', 'Struppi', '<p>&nbsp; &nbsp; &nbsp; Jan hat einen kleinen Hund. Er hei&szlig;t Struppi und ist noch jung. Er hat ein wei&szlig;es Fell und kleine, spitze Ohren. Jan spielt viel mit ihm. Junge Hunde wollen noch viel unternehmen und so geht Jan jeden Tag mit ihm spazieren. Struppi hat immer Hunger. Er bekommt morgens seine Hundekuchen, aber mittags will er schon wieder etwas essen. Jan gibt ihm aber nichts. Erst am Abend bekommt Struppi noch eine Mahlzeit.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Struppi schl&auml;ft in einem runden Korb. Dort f&uuml;hlt er sich sehr wohl. Wenn Jan in der Schule ist, ist Struppi traurig und wartet auf ihn. Er freut sich sehr, wenn sein Freund wieder zur&uuml;ck nach Hause kommt.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Jan m&ouml;chte nie mehr ohne Hund leben.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(9, 'A1', 'http://localhost/Zusammen/main/lessons/reading%20images/Unser%20Haus-a1.jpg', 'Unser Haus', '<p>&nbsp; &nbsp; &nbsp; Ich bin Klara und erz&auml;hle heute von unserem Haus. Unser Haus ist sehr gro&szlig;. Es hat 250 Quadratmeter. Es gibt auch einen Garten. Im Garten haben wir viele Blumen und einige B&auml;ume. Im Garten gibt es immer viel Arbeit. Ich helfe meinen Eltern gerne im Garten.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Manchmal kommen zu uns Freunde und die Familie. Dann grillen wir im Garten. Das macht viel Spa&szlig;. Im Haus gibt es zwei Badezimmer. Ein Badezimmer ist f&uuml;r meine Eltern. Das andere Badezimmer f&uuml;r meine Schwester und mich.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Unser Wohnzimmer ist sehr gro&szlig; und sch&ouml;n. Es gibt ein bequemes Sofa. Neben dem Sofa stehen ein Tisch und eine Lampe. In der Ecke gibt es einen gro&szlig;en Tisch mit St&uuml;hlen an dem wir essen. In der Mitte des Zimmers liegt ein gro&szlig;er Teppich. Der Teppich kommt aus dem Iran. Es gibt auch einen Kamin im Wohnzimmer. Das ist im Winter sehr gem&uuml;tlich und sch&ouml;n warm.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Neben dem Wohnzimmer ist die K&uuml;che. Ich mag unsere K&uuml;che nicht. Die M&ouml;bel sind alt und sehr dunkel. In der K&uuml;che ist auch ein Esstisch. Unsere Familie isst aber lieber im Wohnzimmer. In der K&uuml;che gibt es eine Sp&uuml;lmaschine, einen Herd und viele Schr&auml;nke. Es gibt dort keine Waschmaschine. Die Waschmaschine steht im Keller.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Im ersten Stock sind zwei Kinderzimmer und das Schlafzimmer. Ich finde mein Zimmer sch&ouml;n. Es ist sehr gro&szlig; und hat wei&szlig;e M&ouml;bel.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(10, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Im%20Ausland%20arbeiten-a2.jpg', 'Im Ausland arbeiten', '<p>&nbsp; &nbsp; &nbsp; Anna Malkov lebt in einem Dorf, in der N&auml;he von Moskau. Sie hat eine Ausbildung als Krankenschwester gemacht und arbeitet zurzeit in einem Krankenhaus in Moskau. Sie mag ihre Arbeit sehr, weil sie damit vielen Menschen helfen kann. Anna besucht eine Deutschkurs und hat schon Stufe B1 abgeschlossen. Sie will nach Deutschland auswandern und dort arbeiten. Anna hat auch schon eine Stelle in einem Krankenhaus in Berlin gefunden. Aber als erstes braucht sie eine Aufenthalts- und Arbeitsgenehmigung. Diese Genehmigungen hat sie bei der deutschen Botschaft beantragt. Sie hat schon einen Termin bekommen. F&uuml;r das Visum braucht sie einen g&uuml;ltigen Reisepass und andere Unterlagen, die sie einreichen muss. Nach zwei Wochen hat sie ein Schreiben von der Botschaft bekommen. Sie hat ein Visum bekommen und freut sich auf die Reise nach Deutschland. Als erstes muss sie ihren Arbeitsplatz k&uuml;ndigen und sich von den Kollegen verabschieden. Dann kann sie sich auf das neue Kapitel in ihrem Leben konzentrieren.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(11, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Das%20Praktikum-a2.png', 'Das Praktikum', '      Ich habe in diesem Jahr ein Praktikum in Österreich gemacht. Ich wollte in einem anderen Land leben und neue Leute treffen.\r\n\r\n      Mit der fremden Sprache hatte ich am Anfang Probleme. Ich habe nicht alles verstanden und konnte kaum mit den Kollegen sprechen. Ich habe in meiner Heimat Deutsch gelernt, aber das war leider nicht genug. Zum Glück gab es da auch einige Kollegen, mit denen ich Englisch gesprochen habe. Ich hatte auch viele Kollegen aus anderen europäischen Ländern. Und mit den österreichischen Kollegen musste ich Deutsch sprechen. Das war auch gut für mich, denn so konnte ich mein Deutsch verbessern und das war ja auch mein Ziel.\r\n\r\n      Dieses Praktikum war eine gute Erfahrung für mich. Es war für mich als Praktikant nicht immer angenehm, aber dann habe ich an den sehr guten Lohn gedacht. Die Arbeit war nicht besonders interessant. Aber eines ist mir klar geworden: Bei einem Praktikum im Ausland lernst du die Sprache schneller als in der Schule.', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(12, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Am%20Flughafen-a2.jpg', 'Am Flughafen', '<p>&nbsp; &nbsp; &nbsp; Familie M&uuml;ller plant ihren Urlaub. Sie geht in ein Reiseb&uuml;ro und l&auml;sst sich von einem Angestellten beraten. Als Reiseziel w&auml;hlt sie Mallorca aus. Familie M&uuml;ller bucht einen Flug auf die Mittelmeerinsel. Sie bucht au&szlig;erdem zwei Zimmer in einem gro&szlig;en Hotel direkt am Strand. Familie M&uuml;ller badet gerne im Meer.</p>\r\n<p><br></p>\r\n<p>&nbsp; &nbsp; &nbsp;Am Abflugtag fahren Herr und Frau M&uuml;ller mit ihren beiden Kindern im Taxi zum Flughafen. Dort warten schon viele Urlauber. Alle wollen nach Mallorca fliegen. Familie M&uuml;ller hat viel Gep&auml;ck dabei: drei gro&szlig;e Koffer und zwei Taschen. Die Taschen sind Handgep&auml;ck. Familie M&uuml;ller nimmt sie mit in das Flugzeug. Am Flugschalter checkt die Familie ein und erh&auml;lt ihre Boardkarten. Die Angestellte am Flugschalter erkl&auml;rt Herrn M&uuml;ller den Weg zum Flugsteig. Es ist nicht mehr viel Zeit bis zum Abflug. Familie M&uuml;ller geht durch die Sicherheitskontrolle. Als alle das richtige Gate erreichen, setzen sie sich in den Wartebereich. Kurz darauf wird ihre Flugnummer aufgerufen und Familie M&uuml;ller steigt mit vielen anderen Passagieren in das Flugzeug nach Mallorca. Beim Starten f&uuml;hlt sich Herr M&uuml;ller nicht wohl. Ihm wird ein wenig &uuml;bel. Nach zwei Stunden landet das Flugzeug. Am Gep&auml;ckband warten alle Passagiere noch auf ihr fehlendes Gep&auml;ck. Danach kann endlich der Urlaub beginnen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(13, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Die%20Farben-a2.jpg', 'Die Farben', '<p>&nbsp; &nbsp; &nbsp; Farben machen das Leben bunt. Der Regenbogen besteht aus vielen Farben. Obst und Gem&uuml;se ist oft sehr farbig. Und unsere Kleidung kann auch sch&ouml;n bunt sein. Eine starke Farbe ist rot. Viele Fr&uuml;chte sind rot, zum Beispiel Erdbeeren oder Himbeeren. Es gibt auch rotes Gem&uuml;se: Tomaten. Viele Blumen sind rot, zum Beispiel Rosen. Gelb wie die Sonne sind auch Bananen, Zitronen oder Mais. Blau ist der Himmel bei sch&ouml;nem Wetter oder auch das Meer oder ein See. Es gibt viele verschiedene Arten von blau: helles blau oder dunkles, t&uuml;rkis oder himmelblau.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Alle Farben zusammen ergeben schwarz. Schwarz ist die Nacht. Das Gegenteil von schwarz ist wei&szlig;. Es gibt wei&szlig;e Blumen, die Wolken sind wei&szlig;. Oder der Schnee. Sehr viel in der Natur ist gr&uuml;n: Bl&auml;tter, Gras und B&auml;ume. Die St&auml;mme der B&auml;ume sind meistens braun. Oder auch Kaffee oder gebackenes Brot.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Es gibt noch sehr viele Farben: Grau sind zum Beispiel Tauben, orange ist der Himmel bei einem Sonnenuntergang. Eine starke Farbe ist pink: sie f&auml;llt auf. In der Natur gibt es pinke Blumen oder auch V&ouml;gel. Lila ist &auml;hnlich, viele Blumen sind lila oder rosarot. Die edlen Farben sind golden und silber: Wir finden sie bei Edelsteinen und Schmuck.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(14, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Einkauf%20im%20Supermarkt-a2.jpg', 'Einkauf im Supermarkt', '<p>&nbsp; &nbsp; &nbsp; Ich gehe mit meinem Bruder in den Supermarkt. Damit wir nichts vergessen, haben wir alles aufgeschrieben. Wir brauchen zwanzig verschiedene Sachen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;In den Einkaufswagen stellen wir eine Kiste Mineralwasser. In der Kiste sind zw&ouml;lf Flaschen. Eine gro&szlig;e Packung Nudeln, zwei Kilo Zucker und drei Kilo Mehl brauchen wir auch.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Es kommen vier Erwachsene und zwei Kinder zu Besuch. Dann sind wir zehn Personen beim Essen. Wir m&uuml;ssen viel einkaufen und viel kochen. Alle essen gerne Kartoffeln. Wir brauchen vier Kilogramm davon. Sechs Flaschen Bier brauchen wir auch. Weil Besuch kommt, kaufen wir Saft f&uuml;r die Kinder. F&uuml;nf Packungen Apfelsaft sind im Angebot und kosten nur vier Euro. Es gibt W&uuml;rstchen. Davon kaufen wir achtzehn St&uuml;ck. Wir brauchen auch Obst. In einer T&uuml;te sind sieben kleine &Auml;pfel verpackt. Die &Auml;pfel wiegen zwei Kilo. Wir backen daheim Apfelkuchen. Daraus werden 25 Portionen. Die G&auml;ste kommen um acht Uhr. Da muss das Essen fertig sein. Wir feiern Geburtstag. Mutter ist 38 Jahre alt, Gro&szlig;mutter wird 65 Jahre.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der Einkauf kostet nicht ganz 60 Euro. An der Kasse bezahlen wir mit einem 100 Euro-Schein. Die Kassierin gibt zwei 20 Euro-Scheine und einige M&uuml;nzen zur&uuml;ck.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(15, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/In%20der%20Schule-a2.jpg', 'In der Schule 2', '<p>&nbsp; &nbsp; &nbsp; Ich gehe gerne in die Schule. In der Klasse sind 30 Sch&uuml;ler. Es sind M&auml;dchen und Jungen. Die meisten Lehrer sind nett und der Schuldirektor auch. Neben mir in der Schulbank sitzt mein bester Freund Klaus. Florian ist ein Klassenkamerad. Er ist auch ein Freund. Im Rucksack habe ich ein Buch, Papier zum Schreiben, zwei Kugelschreiber, Buntstifte, Bleistifte und einen Radiergummi. Das Lineal brauche ich f&uuml;r Mathematik. Da bin ich nicht gut. Ich verstehe die Aufgaben nicht richtig.</p>\r\n<p>&nbsp; &nbsp; &nbsp; In der Pause ist es immer lustig. Wir essen und trinken etwas. In einer gro&szlig;en Pause gehen wir in den Hof und spielen Fu&szlig;ball. Diese Pause ist immer zu kurz.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Ich mag nicht alle Schulf&auml;cher gleich gerne. Sport ist mein Lieblingsfach. Sport k&ouml;nnte jeden Tag sein. Deutsch ist eine schwere Sprache. Ich muss viele &Uuml;bungen machen. Dann kann ich es bald besser. Englisch spreche ich gut. Ich mache nur wenige Fehler. Auch Biologie und Kunst habe ich gerne. Biologie ist interessant. Ich mag Tiere. Auch Geschichte interessiert mich sehr.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Vor den Ferien schreiben wir noch zwei Schularbeiten. Eine in Deutsch und eine in Englisch. Ich hoffe, ich bekomme eine gute Note.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(16, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Lebensmittel%20Einkaufen-a2.jpg', 'Lebensmittel Einkaufen', '<p>&nbsp; &nbsp; &nbsp;Oscar geht einkaufen in einen gro&szlig;en Supermarkt. Seine Einkaufsliste ist lang, er kauft f&uuml;r das ganze Wochenende ein. Au&szlig;erdem kommen G&auml;ste, f&uuml;r die er kochen wird. Beim Obstregal kauft er verschiedene Fr&uuml;chte: &Auml;pfel, Bananen, Erdbeeren und Kirschen wird er f&uuml;r den Nachtisch verwenden, es gibt Obstsalat. Die Trauben verwendet er f&uuml;r die Vorspeise. Er m&ouml;chte gerne kleine Spie&szlig;e mit K&auml;se und Trauben anbieten.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Mit dem Gem&uuml;se kocht er eine Suppe. Daf&uuml;r braucht er ein Kilo Karotten, einige gro&szlig;e Kartoffeln, ein halbes Kilo Zwiebeln und verschiedene Pilze. Er findet Champignons und getrocknete Steinpilze. Diese eignen sich sehr gut f&uuml;r eine Suppe. Au&szlig;erdem nimmt er gr&uuml;nen Salat und Tomaten mit f&uuml;r die zweite Vorspeise.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Im ersten K&uuml;hlregal gibt es eine gro&szlig;e Auswahl an Fleisch und Fisch. Oscar entscheidet sich f&uuml;r ein Huhn. Er kauft zus&auml;tzlich noch eine Packung Reis als Beilage zum Fleisch. Damit hat er bereits alles, was er f&uuml;r das Essen braucht. Er nimmt aber einiges mit, das ihm zu Hause fehlt: einen gro&szlig;en Laib Brot, ein halbes Kilo Salz, ein Kilo Mehl und zwei Kilo Zucker findet er neben dem K&uuml;hlregal. Dort nimmt er auch eine Flasche Milch mit. Was ihm jetzt noch fehlt: K&auml;se und zehn Eier. Die findet er auch im K&uuml;hlregal um die Ecke.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(17, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Meine%20Familie-a2.jpg', 'Meine Familie', '<p>&nbsp; &nbsp; &nbsp;Ich habe sehr viele Verwandte, die ich auch fast alle kenne. Meine Familie ist gro&szlig;, weil meine Eltern beide viele Geschwister haben. Meine Mutter hat vier Schwestern. Sie ist die j&uuml;ngste. Die Kinder meiner Tanten sind meine Cousinen und Cousins. Sie leben nicht alle in meiner Umgebung, manche wohnen sehr weit entfernt. Aber zu Familienfeiern kommen meistens alle angereist.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Auch mein Vater hat nicht nur einen Bruder oder eine Schwester, sondern insgesamt 4 Geschwister. Mein &auml;ltester Onkel ist aber schon gestorben. Er ist auch der einzige, der keine Kinder hatte.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Ich habe auch von der Seite meines Vaters viele Cousins und Cousinen. Aber meine liebste Cousine ist die Tochter meiner &auml;ltesten Tante, der Schwester meiner Mutter.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Ich mag alle Kinder meiner Onkel und Tanten, ob S&ouml;hne oder T&ouml;chter. Wir verstehen uns sehr gut, auch wenn wir sehr unterschiedlich sind. Meine Onkel und Tanten k&uuml;mmern sich sehr um die anderen in der Familie. Auch um mich und meine Geschwister als ihre Nichten und Neffen. Ich habe eine Schwester und einen Bruder. Ich bin die mittlere.</p>\r\n<p>&nbsp; &nbsp; &nbsp;Meine Gro&szlig;eltern sind nicht mehr alle am Leben. Meine Gro&szlig;mutter ist schon 90 Jahre alt. Ihr Ehemann, also mein Gro&szlig;vater, ist vor zwei Jahren gestorben. Er war schon 93 Jahre alt.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(18, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Meine%20Woche-a2.jpg', 'Meine Woche', '<p>&nbsp; &nbsp; &nbsp; Von Montag bis Freitag besuche ich vormittags die Schule. Der Unterricht dauert meistens bis um 13 Uhr. Manchmal habe ich nach der Mittagspause noch einmal Unterricht. In der Mittagspause k&ouml;nnen wir essen oder uns ausruhen. Viele machen auch ihre Hausaufgaben in der Mittagspause. Nach der Schule muss ich die Hausaufgaben machen. Daf&uuml;r brauche ich meistens nicht sehr viel Zeit. Oft nur eine Stunde. Danach habe ich Freizeit und kann machen, was ich m&ouml;chte. Montags gehe ich am Nachmittag zum Sport. Ich spiele Tennis. Viele meiner Freunde machen Sport nach der Schule. Manche haben auch Musikunterricht.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Dienstag und Donnerstag gehe ich au&szlig;erdem zum Fu&szlig;balltraining. Ich spiele mit meinem Bruder und vielen Freunden in einer Mannschaft. Am Samstag oder am Sonntag sind oft Spiele gegen die anderen Fu&szlig;ballvereine, das macht am meisten Spa&szlig;.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Abends esse ich gemeinsam mit meiner Familie. Anschlie&szlig;end kann ich noch ein wenig am Computer spielen oder mir einen Film ansehen. W&auml;hrend der Woche gehe ich selten nach 22 Uhr schlafen, weil ich fr&uuml;h am Morgen aufstehen muss. Denn die Schule beginnt bei mir schon um 7:45 Uhr. Mittwoch nachmittags habe ich kein besonderes Programm, meistens treffe ich Freunde oder mache Erledigungen mit meiner Mutter.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Samstag und Sonntag ist keine Schule. Aber oft muss ich f&uuml;r Schularbeiten oder Tests lernen. So habe ich meistens auch am Wochenende etwas f&uuml;r die Schule zu erledigen. Aber es bleibt doch Zeit f&uuml;r einen Besuch bei meiner Gro&szlig;mutter. Manchmal sind wir auch bei meinem Onkel zum Essen eingeladen oder wir machen einen Ausflug aufs Land.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(19, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Pl%c3%a4ne%20f%c3%bcr%20die%20Freizeit-a2.jpg', 'Pläne für die Freizeit', '<p>&nbsp; &nbsp; &nbsp; F&uuml;r das Wochenende und die Ferien mache ich gern Pl&auml;ne. An den freien Samstagen und Sonntagen werde ich lange schlafen. Dann klingelt der Wecker nicht. Aber ich werde f&uuml;r die Wochenenden nicht zu viel planen, weil ich gern faul bin und nichts tue. Aber ich werde vielleicht zum Sport gehen. Manchmal habe ich am Wochenende ein Turnier. Diesen Sonntag zum Beispiel werde ich mit meinem Team in eine andere Stadt fahren. Wir werden dort ein Match gegen einen anderen Hockeyverein spielen. Das wird bestimmt ein Spa&szlig;. Wenn das Wetter sch&ouml;n ist, werde ich anschlie&szlig;end mit meinen Freunden schwimmen gehen. In der N&auml;he gibt es einen See, der wird schon warm genug sein.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Wenn ich l&auml;nger frei habe, mache ich gerne gr&ouml;&szlig;ere Pl&auml;ne. In den Sommerferien werde ich sehr oft mit meinen Freunden unterwegs sein. Wir werden zum See fahren. Dort werden wir im Zelt &uuml;bernachten und beim Lagerfeuer sitzen. Eine oder zwei Wochen m&ouml;chte ich gerne reisen. Ein Freund wird mich auf der Reise begleiten, wir werden mit dem Zug losfahren. Wir planen eine Route durch das ganze Land, von West bis Ost und von S&uuml;d bis Nord. Mit Rucks&auml;cken und Wanderschuhen werden wir auch in die Berge fahren. Am liebsten w&uuml;rde ich dort in einer H&uuml;tte &uuml;bernachten. Wir werden sehen, ob wir das auch schaffen werden. Ein Abenteuer wird es aber ganz bestimmt.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(20, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Tom%20unterwegs-a2.jpg', 'Tom unterwegs', '<p>&nbsp; &nbsp; &nbsp; Im letzten Jahr ist Tom gemeinsam mit seinem Freund Michel in den Urlaub gefahren. Lange hatten die beiden &uuml;berlegt, wo es hin gehen soll.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Schlussendlich habe sie sich auf Italien geeinigt, denn die Schweiz war ihnen zu nah und in Frankreich waren sie beide schon gewesen. Au&szlig;erdem gibt es in Italien viel leckeres Essen, vor allem Michels Leibgericht Pizza.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Die beiden Freunde entschieden sich daf&uuml;r, mit dem Flugzeug nach Venedig zu fliegen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Als sie dort ankamen, waren sie von der Sch&ouml;nheit der Stadt fasziniert, die Stra&szlig;en waren aus Wasser und die Autos waren kleine Boote. So etwas hatte Tom noch nie gesehen. Michel hatte kaum Augen f&uuml;r die Fl&uuml;sse, die die Stadt durchziehen, sondern konnte von den vielen Pizzerien gar nicht genug bekommen. Er schlemmte zwei ganze Wochen lang.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Tom und Michel hatten einen tollen Urlaub und besuchten viele ber&uuml;hmte Pl&auml;tze, am besten gefiel beiden aber der ber&uuml;hmte Markusdom.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(21, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Weinachten-a2.jpg', 'Weinachten', '<p>&nbsp; &nbsp; &nbsp; Das wichtigste Fest in Deutschland ist Weihnachten. Dann wird an die Weihnachtgeschichte mit der Geburt von Jesus Christus in einem Stall in Bethlehem gedacht. Es ist das Fest der Liebe und der Geschenke.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Vor diesem Fest findet die Adventszeit statt. Die vier Sonntage vor Weihnachten sind der erste, der zweite, der dritte und der vierte Advent. In dieser Zeit dekoriert man die Fenster und stellt einen Adventskranz mit vier Kerzen in die Wohnung. Die Kerzen werden an den vier Sonntagen nacheinander angez&uuml;ndet.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;F&uuml;r die Kinder gibt es einen Adventskalender mit 24 Tagen bis zum Weihnachtsfest. Aber schon am 6. Dezember kommt der Heilige Nikolaus mit kleinen Geschenken f&uuml;r die Kinder, wenn sie ihre geputzten Schuhe vor die T&uuml;r stellen. Er steckt die Geschenke heimlich hinein, sagt man den Kindern.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Am 24. Dezember ist der Heilige Abend. Das ist f&uuml;r viele der wichtigste Tag beim Weihnachtsfest. Vor diesem Tag kaufen sich die meisten Familien einen Tannenbaum und stellen ihn in ihrer Wohnung auf. Der Weihnachtsbaum wird mit bunten Glaskugeln, Sternen, Engeln und Kerzen geschm&uuml;ckt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Am Heiligabend gehen die meisten Familien zun&auml;chst zum Gottesdienst in die Kirche. Bei der R&uuml;ckkehr feiern sie die Bescherung unter dem Christbaum. So nennt man die gegenseitigen Geschenke und die Gaben f&uuml;r die Kinder. Manchmal spielt jemand den Weihnachtsmann oder das Christkind, um den Kindern die Geschenke zu bringen. Au&szlig;erdem gibt es f&uuml;r sie zu Weihnachten viele S&uuml;&szlig;igkeiten und Pl&auml;tzchen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(22, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Der%20Skiurlaub-a2.jpg', 'Der Skiurlaub', '<p>&nbsp; &nbsp; &nbsp; Hartmut hat im Februar eine Reise gemacht: Er ist in die Alpen gefahren, in ein kleines Dorf in &Ouml;sterreich. Er hat in einem h&uuml;bschen Hotel ein Einzelzimmer bekommen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Das Essen im Hotel hat ihm sehr gut geschmeckt. Jeden Morgen ist Hartmut zum Skikurs gegangen. Der Skilehrer, Herr Winter, hat gesagt: &ldquo;Hartmut ist der beste von meinen Sch&uuml;lern!&ldquo; Hartmut hat sich sehr gefreut.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Am letzten Abend hat die ganze Gruppe Abschied gefeiert. Sie haben viel Wein getrunken. Dann hat Hartmut gesagt: &ldquo;Ich habe eine Idee! Wir wollen in der Dunkelheit Ski laufen!&ldquo; Alle haben geantwortet: &ldquo;Das ist eine tolle Idee!&ldquo;</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Sie sind in der Dunkelheit Ski gelaufen. Hartmut hat sich das Bein gebrochen. Armer Hartmut!</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(23, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Die%20Jahreszeiten-a2.jpg', 'Die Jahreszeiten', '<p>&nbsp; &nbsp; &nbsp; Ein neues Jahr besteht aus insgesamt vier Jahreszeiten. Fr&uuml;hling, Sommer, Herbst und Winter folgen nacheinander. Das Jahr beginnt im Januar. Im Januar und Februar ist es drau&szlig;en noch sehr kalt und man muss sich warm anziehen, um nicht zu frieren und krank zu werden.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der Fr&uuml;hling beginnt im M&auml;rz. Dann steigen die Temperaturen und es wird wieder w&auml;rmer. In den Monaten M&auml;rz, April und Mai ist Fr&uuml;hling.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Von Juni bis September findet der Sommer statt. Der Sommer ist die hei&szlig;este Jahreszeit in Deutschland. Viele Menschen fahren in dieser Zeit in den Urlaub. Ab Mitte September bis November gibt es in Deutschland den Herbst. Dann wird es drau&szlig;en langsam k&auml;lter und man muss sich wieder w&auml;rmer anziehen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der November und Dezember sind die letzten Monate des Jahres. Dann stellt sich der Winter ein. Wenn es besonders kalt ist, kann es im Winter schneien.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(24, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Im%20Einkaufszentrum-a2.jpg', 'Im Einkaufszentrum', '<p>&nbsp; &nbsp; &nbsp; Viele Leute lieben Einkaufszentren. Auch wenn man nicht unbedingt etwas kaufen m&ouml;chte, gibt es immer etwas zu sehen. Im Winter ist es warm und im Sommer k&uuml;hl. Man kann durch die Galerien schlendern und sich die Angebote anschauen. Vielleicht findet man ja doch etwas Interessantes, oder etwas, was man schon lange gesucht hat.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Auch wenn man mit Freunden in ein Einkaufszentrum geht, macht der Spa&szlig;. Da es in den meisten Zentren auch Caf&eacute;s und Eisdielen gibt, kann man sich zusammensetzen und ein bisschen diskutieren, ohne vom Wetter abh&auml;ngig zu sein. In einem Einkaufszentrum kann man alle verschiedenen Arten von Gesch&auml;ften an einem Ort finden und muss nicht von einem zum anderen gehen oder fahren. Es gibt ebenso Lebensmittel wie Kleider oder Haushaltswaren und Drogerieartikel.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(25, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Meine%20erste%20Wohnung-a2.jpg', 'Meine erste Wohnung', '<p>&nbsp; &nbsp; &nbsp; Lange habe ich hart gearbeitet und auf die Kaution f&uuml;r meine erste eigene Wohnung gespart. Jetzt habe ich eine kleine Wohnung gefunden, die ich bezahlen kann. Sie hat 50 Quadratmeter: Ein Schlafzimmer, eine Wohnk&uuml;che, ein Badezimmer und eine Toilette. F&uuml;r die Miete bezahle ich 450 Euro. Strom, Gas und Internet bezahle ich extra. Au&szlig;erdem musste ich 1200 Euro Kaution bezahlen, die ich wieder bekomme, wenn ich ausziehe und ich die Wohnung sauber und ohne Sch&auml;den &uuml;bergebe.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Besonders gef&auml;llt mir, dass es hinter dem Wohnhaus eine gro&szlig;e Wiese gibt, auf der ich mich im Sommer sonnen lassen kann. Vor dem Haus gibt es f&uuml;r jeden Bewohner einen Parkplatz mit einer Stromtankstelle. Auf dem Dach gibt es eine Solaranlage, die daf&uuml;r den Strom produziert.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Seit einer Woche wohne ich jetzt hier. Gestern sind die letzten M&ouml;bel gekommen und jetzt ist die Wohnung sch&ouml;n eingerichtet. Morgen feiere ich mit Freunden und den Nachbarn eine Einweihungsparty. F&uuml;r die Party habe ich einen Kuchen gebacken und Br&ouml;tchen vorbereitet.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Ich hoffe, dass ich mich mit meinen neuen Nachbarn gut verstehen werde und wir uns in Zukunft gegenseitig helfen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(26, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Meine%20Stadt-a2.jpg', 'Meine Stadt 2', '<p>&nbsp; &nbsp; &nbsp; Kannst du erraten, wo ich wohne? In meiner Stadt leben fast zwei Millionen Menschen. Eigentlich sprechen hier alle Deutsch, aber viele Leute sprechen einen Dialekt. Diesen Dialekt zu verstehen ist sehr schwierig, wenn man noch Deutsch lernt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Im Zentrum der Stadt steht eine gro&szlig;e und sehr alte Kirche. Rundherum stehen Pferdekutschen, die auf Touristen warten. Nicht so weit davon entfernt, steht das Riesenrad. Wer damit f&auml;hrt, hat einen wunderbaren Blick auf die alte Stadt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Auf der anderen Seite der Stadt steht ein gro&szlig;es Schloss. Darin hat fr&uuml;her eine sch&ouml;ne Kaiserin gewohnt. Sie ging im Park gerne spazieren. Heute gehen dort statt der Kaiserin Touristen aus aller Welt ein und aus.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der Zoo gleich neben dem Park ist der &auml;lteste in Europa. Dort leben Elefanten, Pinguine und L&ouml;wen. Na, kennst du meine Stadt?</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Ich wohne in Wien, der Hauptstadt von &Ouml;sterreich.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(27, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/%c3%96sterreich-a2.jpg', 'Österreich', '<p>&nbsp; &nbsp; &nbsp; Im Sommer reisen viele Menschen gerne nach &Ouml;sterreich. Besonders in Wien und Salzburg treffen sich Touristen aus aller Welt, um auf Konzerte zu gehen, Museen zu besuchen und au&szlig;erhalb der St&auml;dte kurze Wanderungen zu unternehmen. In Wien besuchen die Touristen am liebsten den Stephansdom und das Schloss Sch&ouml;nbrunn; in Salzburg besonders die Festung Hohensalzburg und das Haus, in dem der Komponist Wolfgang Amadeus Mozart geboren wurde.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Wer nach &Ouml;sterreich reist, schl&auml;ft gerne im Hotel, deswegen sind manche Hotels im Sommer ausgebucht. Andere Leute &uuml;bernachten gerne in Jugendherbergen oder mieten Wohnungen, in denen sie sich selbst versorgen m&uuml;ssen. Im Internet vergleichen sie die Preise und finden so das g&uuml;nstigste und das f&uuml;r sie beste Angebot in der Stadt. &Uuml;berrascht sind sie oft, weil die Superm&auml;rkte in &Ouml;sterreich am Wochenende und in der Nacht nicht ge&ouml;ffnet sind. Trotzdem gef&auml;llt es den meisten Touristen in Wien und Salzburg sehr gut, schlie&szlig;lich kommen viele auch gerne wieder nach &Ouml;sterreich zur&uuml;ck.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(28, 'A2', 'http://localhost/Zusammen/main/lessons/reading%20images/Was%20will%20Tom-a2.jpg', 'Was will Tom', '<p>&nbsp; &nbsp; &nbsp; Tom will am Samstag in die Disko gehen. Kann Tom tanzen? Tom kann tanzen. Tom m&ouml;chte Anne und John abholen. Tom m&ouml;chte mit Anna und John in die Disko gehen. Tom muss f&uuml;nf Kilometer in die Stadt fahren. Hat Tom genug Benzin? Nein, Tom muss tanken. Tom will nicht tanken, das Benzin ist teuer.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Er fragt seinen Vater: &ldquo;Darf ich heute dein Auto nehmen?&ldquo; Der Vater sagt: &ldquo;Du darfst das Auto nehmen. Aber komm bitte bis um Mitternacht wieder heim!&ldquo; Tom f&auml;hrt los. Er denkt: &ldquo;Ich soll um Mitternacht wieder zu Hause sein. Das ist bl&ouml;d. Aber ich muss nicht tanken. Das ist toll!&ldquo;</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(29, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Roboter-b1.jpg', 'Roboter', '<p>&nbsp; &nbsp; &nbsp; Heute sind es immer noch viele Menschen, die die Arbeitsvorg&auml;nge in einer Fabrik erledigen. Leider wird diese Zahl immer geringer. Die Maschinen, die sogenannten Roboter sind aber auch ein wichtiger Bestandteil der Herstellungsfabriken. Da sie schneller und pr&auml;ziser als der Mensch arbeiten und zu jeder Zeit zur Verf&uuml;gung stehen, sind sie immer beliebter und angesagter. Sogar im Haushalt haben sie schon ihre eigene Rolle. Sie k&ouml;nnen sowohl den Wohnungsboden sauber machen, als auch den Rasen im Garten m&auml;hen. Einige Robotermaschinen werden sogar in der K&uuml;che eingesetzt. Es werden nur die Zutaten und die Gew&uuml;rze in diese Maschinen reingetan und sie machen fast alles von allein. Jede Sache hat einen plus und minus Punkt. Weder der Roboter im Garten noch der Roboter in der K&uuml;che funktionieren ohne Strom. Der Mensch verf&uuml;gt &uuml;ber eine Funktion, die noch keine Maschine hat und zwar sich ohne Strom, ohne Akku, ohne Wind und ohne Wasser zu bewegen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(30, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Die%20Bef%c3%b6rderung-b1.jpg', 'Die Beförderung', '<p>&nbsp; &nbsp; &nbsp; Seit zehn Jahren bin ich in diesem Unternehmen t&auml;tig und bin jetzt einer der besten in der Marketingabteilung. Heute Morgen rief mich der Gesch&auml;ftsf&uuml;hrer pers&ouml;nlich an und behauptete, dass er etwas mit mir kl&auml;ren will. Irgendwie klang seine Stimme komisch und ich hatte ein bisschen Angst bekommen. Ich dachte mir, er ruft niemanden pers&ouml;nlich an, nur wenn es ein richtig gro&szlig;es Problem gib. Hoffentlich stecke ich nicht in Schwierigkeiten. Vor dem B&uuml;ro sa&szlig; auch nicht mal seine Assistentin, die sich sehr selten vom Platz r&uuml;hrt. Aber heute war sie entweder abwesend oder in der Kantine. Dann ist es passiert. Ich klopfte an der T&uuml;r, ging rein und bemerkte, dass fast unsre ganze Abteilung hier versammelt war. Geburtstag hatte ich nicht, aber es kam noch besser. Man hatte mich zur f&uuml;hrenden Person der Marketingabteilung benannt. Endlich wurde ich daf&uuml;r belohnt, wof&uuml;r ich jeden Tag so hart gearbeitet hatte. Die &Uuml;berraschung ist gelungen und das musste gefeiert werden.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(31, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Bonn-b1.png', 'Leben in Bonn', '<p>&nbsp; &nbsp; &nbsp; Ich bin vor f&uuml;nf Jahren nach Bonn gekommen, weil ich bei der Deutschen Welle arbeite. Meine Arbeitsaufgaben sind Artikel schreiben und ich moderiere eine Sendung &uuml;ber Politik. In meiner Sendung treffe und lerne viele Politiker kennen. Die Personen, die bei mir in der Sendung zu Gast sind, sprechen immer &uuml;ber die aktuellsten Themen in unserem Bundesland. Bonn ist eine ideale Stadt f&uuml;r mich. Es ist sch&ouml;n hier zu leben. Mir gef&auml;llt zum Beispiel, dass sie nicht zu gro&szlig; ist und es gibt eine U-Bahn. Es gibt nicht so viel Verkehr und wir nutzen auch st&auml;ndig die &ouml;ffentlichen Verkehrsmittel, obwohl wir zwei Autos haben. Fr&uuml;her, als wir noch auf dem Land gewohnt haben, mussten wir die Kinder immer in die Stadt fahren. Jetzt ist es einfacher. Sie k&ouml;nnen selber mit den &ouml;ffentlichen Verkehrsmitteln fahren und &uuml;berall rechtzeitig ankommen. Ich freue mich echt dar&uuml;ber, weil wir so auch viel Zeit sparen. Am Wochenende besuchen wir oft K&ouml;ln. Das ist aber eine Millionenstadt, in der das Leben ein bisschen anders ist.</p>\r\n<p>Nadine M&uuml;ller, Journalistin</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(32, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Erholung-b1.jpg', 'Erholung', '<p>&nbsp; &nbsp; &nbsp; Ich erhole mich gut, wenn ich zu Hause bin und meine Ruhe habe. Bevor ich angefangen habe zu arbeiten, war ich nie m&uuml;de und ersch&ouml;pft. Aber jetzt ist es nicht dasselbe. Seit einiger Zeit arbeite ich als Paketzusteller und bin w&auml;hrend meiner Arbeitszeit sehr aktiv. Das ist keine leichte Arbeit, obwohl ich das am Anfang gedacht hatte. Es ist immer dasselbe, wenn ich zu Hause ankomme. Als erstes dusche ich, dann esse ich schnell was und lege mich auf das Sofa und erhole mich f&uuml;r den n&auml;chsten Tag. Nur am Wochenende ist es nicht so, da bin ich st&auml;ndig unterwegs und habe Spa&szlig; mit meinen Freunden.<br />Herbert, Angestellter bei der Post</p>\r\n<p>&nbsp; &nbsp; &nbsp; Ich kann mir mein Leben ohne Sport und Natur nicht vorstellen. Immer wenn ich alleine durch die Gegend jogge oder mit dem Rad fahre, erhole ich mich von der anstr&auml;ngenden B&uuml;roarbeit. Ich bin Manager in einem der gr&ouml;&szlig;ten Unternehmen in der Region und sitze viel am Arbeitstisch. Da bin ich st&auml;ndig in geschlossenen R&auml;umen und kann es kaum erwarten den Duft der Natur zu riechen und mich zu erholen.<br />Bernd, Manager bei AMB Logistik.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(33, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Reklamation%20und%20Umtausch-b1.jpg', 'Reklamation und Umtausch', '<p>&nbsp; &nbsp; &nbsp; Gestern war ich mit meiner Freundin im Einkaufszentrum unterwegs. Wir haben viele Gesch&auml;fte besucht und auch was gegessen. Ich habe mir eine elegante schwarze Hose bei Zara gekauft. Leider habe ich die Hose nicht anprobiert, weil es eine lange Warteschlange vor der Umkleidekabine gab. Ich kenne aber meine Gr&ouml;&szlig;e und habe die Hose direkt bezahlt und mitgenommen. Als ich zu Hause ankam, probierte ich sie an und stellte fest, dass sie nicht passt. Am n&auml;chsten Morgen bin ich sofort los und wollte die Hose umtauschen. Ich hatte leider kein Gl&uuml;ck. Die schwarzen waren ausverkauft und der Verk&auml;ufer hat sie mir nur in blau oder braun angeboten. Nat&uuml;rlich habe ich die braune genommen. Das war aber nicht mein erstes Missgeschick am vergangenen Tag. Ich habe n&auml;mlich auch eine fehlerhafte Jacke von einem neunen Gesch&auml;ft gekauft, das ich gar nicht kannte. Die Jacke hatte ein Loch im rechten &Auml;rmel. Die Verk&auml;uferin hat sie mir sofort zur&uuml;ckgenommen und mir das Geld zur&uuml;ckgegeben. Ich musste nur den Kassenzettel vorlegen. Also nicht sofort bezahlen, sondern erst probieren, ob die Ware passt und nach Fehler pr&uuml;fen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(34, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Bewerbung-b1.png', 'Bewerbung', '<p>&nbsp; &nbsp; &nbsp; Der erste Schritt bei der Jobsuche: eine passende Stellenanzeige finden. Sehr viele offene Stellen kann man im Internet finden. Es gibt viele Webseiten, die diese Stellen sammeln. Dort kann man sich meistens direkt bewerben. Viele dieser Seiten sind auch f&uuml;r bestimmte Gruppen: Studierende zum Beispiel oder f&uuml;r Leute, die eine bestimmte Ausbildung haben, zum Beispiel Journalisten oder Handwerker. Stellenanzeigen findet man aber auch in Zeitungen. Dort gibt es eigene Seiten mit Stellenanzeigen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Bei der Bewerbung gibt es einiges zu beachten. Zu Beginn stehen die wichtigsten Daten: Name, Alter, Wohnort, Nationalit&auml;t und oft auch ein Bewerbungsfoto. Darunter schreibt man die Ausbildung: Welche Schulen hat man besucht, welche Berufsausbildung, welche Universit&auml;t. Sehr wichtig sind auch die Berufserfahrung oder die eigenen Interessen. Wer besondere F&auml;higkeiten hat, sollte die auch angeben: Zum Beispiel, welche Sprachen man spricht, welche Kurse man schon besucht hat oder welche Computerkenntnisse man hat. Zu dem Bewerbungsschreiben geh&ouml;rt neben dem Lebenslauf auch ein Anschreiben. Das spricht die Firma direkt an, die einen neuen Arbeitnehmer sucht. Hier sollte stehen, warum man diese Stelle gerne h&auml;tte und warum man sich daf&uuml;r eignet. Au&szlig;erdem geh&ouml;ren auch Zeugnisse dazu von Schulen oder Ausbildungen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Gl&uuml;ck hat, bekommt dann eine Einladung zu einem Vorstellungsgespr&auml;ch. Dort lernt man den Arbeitgeber kennen, erf&auml;hrt mehr &uuml;ber die Arbeit und kann sich selbst pr&auml;sentieren. Wer eine Absage bekommt, versucht es mit der n&auml;chsten offenen Stelle.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(35, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Der%20K%c3%b6rper-b1.jpg', 'Der Körper', '<p>&nbsp; &nbsp; &nbsp; Von Kopf bis Fu&szlig;: Der K&ouml;rper besteht aus vier Gliedma&szlig;en und Organen. Die Gliedma&szlig;en sind Arme und Beine. Oben ist der Kopf. Der Hals verbindet Kopf und Rumpf. Am Kopf finden wir die meisten Haare. Am Kopf sind mehrere Sinnesorgane: Augen, Ohren, Nase und Mund. Die Augenbrauen sch&uuml;tzen die Augen. Im Mund sind die Z&auml;hne und die Zunge. Beide brauchen wir auch zum Sprechen. Unter dem Mund ist das Kinn.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Der Kopf sitzt auf dem Hals. Weiter unten sind die Brust und der Bauch. Hier sind sehr viele Organe: der Magen, die Leber, die Nieren, das Herz und die Lungen und der Darm. Herz und Lunge sind vom Brustkorb und den Rippen gesch&uuml;tzt.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Andere Organe sind Gehirn, Blase oder Haut. Es gibt noch viele Organe mehr. Sie sind genauso wichtig. Der K&ouml;rper besteht auch aus Knochen und Muskeln. Die Gliedma&szlig;en bestehen auch aus vielen Teilen. Der Arm teilt sich in Schulter, Oberarm, Ellenbogen und Unterarm. An den H&auml;nden haben wir zehn Finger, f&uuml;nf Finger pro Hand. Die Gelenke an den Beinen sind Knie und Kn&ouml;chel. Am Fu&szlig; haben wir zehn Zehen. Die Muskeln halten die Knochen und die Organe zusammen. Sie sind genauso wichtig wie die Organe. Nur zusammen kann alles so toll funktionieren.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(36, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Frankfurt%20am%20Main-b1.jpg', 'Ein Tag in Frankfurt am Main', '<p>&nbsp; &nbsp; &nbsp; Peter aus Wien landet am Flughafen Frankfurt am Main. Dieser Flughafen ist der gr&ouml;&szlig;te deutsche Flughafen. Damit Peter in die Innenstadt kommt, f&auml;hrt er mit der S-Bahn. In 15 Minuten ist er schon dort. In Frankfurt leben viele Studenten. Sie studieren an Fachhochschulen und der Universit&auml;t.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;In Frankfurt stehen die h&ouml;chsten H&auml;user Europas. Diese Stadt wird auch &ldquo;Mainhattan&ldquo; genannt. Peter m&ouml;chte gerne die Stadt von oben sehen. Der Main Tower eignet sich daf&uuml;r sehr gut. Es gibt hier zwei Aussichtsterrassen in 198 Meter H&ouml;he. Es ist gut, wenn man f&uuml;r diesen Anblick schwindelfrei ist. Der h&ouml;chste Geb&auml;ude ist der Europaturm mit 337 Meter. Er ist au&szlig;erhalb der Stadt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Ganz neu erbaut ist die &ldquo;Neue Altstadt&ldquo;. Im Krieg wurden die H&auml;user zerst&ouml;rt. Jetzt wurden im &auml;ltesten Stadtteil zwischen Dom und R&ouml;merberg historische Altstadth&auml;user nachgebaut.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der Rathausplatz hei&szlig;t auch R&ouml;merberg. Hier stehen viele sch&ouml;ne Fachwerkh&auml;user. Das Rathaus mit seinen drei stufenf&ouml;rmigen Giebeln ist Ziel von vielen Besuchern. Der Dom von Frankfurt ist ein Kaiserdom. Hier wurden deutsche Kaiser gekr&ouml;nt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Eine Shopping-Tour geh&ouml;rt bei einem Aufenthalt in Frankfurt dazu. Die Einkaufsstra&szlig;e hei&szlig;t &ldquo;Zeil&ldquo;. Hier findet man nicht nur teure Designerware, sondern auch preiswerte Gesch&auml;fte. Peter m&ouml;chte hier etwas f&uuml;r seine Freundin kaufen. Er geht gerne auf den Flohmarkt. Leider findet der in Frankfurt nur am Samstag statt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Typisches Essen und Getr&auml;nke m&ouml;chte er noch probieren. Im Stadteil Sachsenhausen gibt es besonders viele Kneipen. Dort trinkt Peter &ldquo;Ebbelwoi&ldquo;. Einen Apfelwein, das Nationalgetr&auml;nk in Hessen. Dazu geh&ouml;rt deftiges Essen, am liebsten Rippchen mit Sauerkraut.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(37, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Heidelberg-b1.jpg', 'Ein Tag in Heidelberg', '<p>&nbsp; &nbsp; &nbsp; Heidelberg ist eine wundersch&ouml;ne Stadt. Die &auml;lteste Universit&auml;t Deutschlands befindet sich in Heidelberg. Daher leben hier viele Studenten, viele Wissenschaftler. Bei Touristen ist diese Stadt sehr beliebt. Es gibt sehr viele Sehensw&uuml;rdigkeiten. Ein Tag ist zu wenig, um alles zu sehen. Wir m&uuml;ssen das Wichtigste ausw&auml;hlen. Viele Sehensw&uuml;rdigkeiten befinden sich in der Altstadt und im Zentrum.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Das Wahrzeichen von Heidelberg ist die Schlossruine aus rotem Sandstein. An dem Schloss wurde 300 Jahre gebaut. Es befindet sich oberhalb der Altstadt. Die Schlossruine erreicht man zu Fu&szlig; oder mit den Heidelberger Bergbahnen. Diese Bahn besteht aus zwei Teilen. Der untere Teil ist sehr modern. Der obere Teil ist die &auml;lteste Bergbahn Deutschlands. Dieser Teil steht unter Denkmalschutz. Eine traumhafte Aussicht haben die Besucher vom Gipfel des Kaiserstuhls. Zum Schloss geh&ouml;rt der Schlosspark &ldquo;Hortus Palatinus&ldquo;. Hier ist es wundersch&ouml;n. Besondere Pflanzen, Wasserspiele und Skulpturen sind zu sehen.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Heidelberg liegt am Neckar. Die Karl-Theodor-Br&uuml;cke ist eine Fu&szlig;g&auml;ngerbr&uuml;cke &uuml;ber den Fluss. Die Bogenbr&uuml;cke wurde im zweiten Weltkrieg gesprengt. Seit 1947 ist sie wieder aufgebaut und wird &ldquo;Alte Br&uuml;cke&ldquo; genannt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;In Heidelberg gibt es viele enge Gassen, viele kleine Gesch&auml;fte und Lokale. Der Marktplatz geh&ouml;rt zu den &auml;ltesten Pl&auml;tzen der Stadt. Hier sind wundersch&ouml;ne alte H&auml;user zu sehen. Auch das Rathaus und die gotische Heiliggeistkirche befinden sich hier. Es ist ein autofreier Platz. Jung und Alt treffen sich gerne hier in Stra&szlig;encaf&eacute;s und Kneipen. In der Mitte des Marktplatzes steht der sehenswerte Herkulesbrunnen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(38, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/M%c3%bcnchen-b1.jpg', 'Ein Tag in München', '<p>&nbsp; &nbsp; &nbsp; Ich mag Fu&szlig;ball und habe zum Geburtstag Eintrittskarten f&uuml;r ein tolles Fu&szlig;ballspiel in der Allianz Arena bekommen. Das Fu&szlig;ballstadion ist die neueste Sehensw&uuml;rdigkeit in M&uuml;nchen. Das Stadion hat au&szlig;en 3.000 Luftkissen, die mit LED-Beleuchtung in vielen Farben leuchten k&ouml;nnen. Auf diesen Anblick freue ich mich.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Ich habe den ganzen Tag Zeit und m&ouml;chte etwas von M&uuml;nchen kennenlernen. Der Marienplatz ist ein guter Ausgangspunkt f&uuml;r eine Stadtbesichtigung. Hier steht das Rathaus. M&uuml;nchen ist die Landeshauptstadt von Bayern. Das Rathaus schaut alt aus, ist aber erst 1905 im neugotischen Stil erbaut worden. In dem pr&auml;chtigen Bauwerk ist der Sitz des Oberb&uuml;rgermeisters. Mit dem Lift fahre ich auf die Aussichtsplattform und bewundere die fantastische Aussicht.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Es ist nicht weit zur Frauenkirche. Diese Kirche mit den zwei Zwiebelt&uuml;rmen und ist ein Wahrzeichen der Stadt. Der Anblick der T&uuml;rme ist sehr bekannt. Von dort oben hat der Besucher einen Blick &uuml;ber die ganze Stadt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Der Englische Garten ist das Freizeitparadies der Stadt. Die M&uuml;nchner machen auf der Wiese Picknick, spielen Fu&szlig;ball, treffen Freunde. Der Park ist ideal f&uuml;r einen Spaziergang. Es gibt viele Gastst&auml;tten.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;M&uuml;nchen ist f&uuml;r die Bierg&auml;rten bekannt. Gem&uuml;tlichkeit und Gastfreundschaft lerne ich hier kennen. In zentraler Lage befindet sich das weltber&uuml;hmte Hofbr&auml;uhaus. Kellnerinnen und Kellner in bayerischer Tracht servieren typische K&ouml;stlichkeiten wie Schweinshaxen, Wei&szlig;wurst, Leberk&auml;s oder Steckerlfisch. Das Bier wird im Ma&szlig;krug serviert. Der enth&auml;lt einen Liter Bier.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(39, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Kleidung-b1.jpg', 'Kleidung', '<p>&nbsp; &nbsp; &nbsp; Am liebsten trage ich ein T-Shirt. Der Stoff ist weich und praktisch. Das ist beim Hemd anders: Ein Hemd hat Kn&ouml;pfe und einen Kragen. Jeans kann man fast immer tragen. Sie passen zum Hemd und zum T-Shirt. Im Sommer sind kurze Hosen am besten. Sie sind nicht so warm wie lange Hosen oder Jeans. Frauen haben es im Sommer einfacher: Sie k&ouml;nnen ein Kleid tragen. Das ist meistens einfacher und nicht so warm. Ein Rock kann lang oder kurz sein und ist im Winter und im Sommer praktisch. Unter dem Rock tr&auml;gt man Str&uuml;mpfe, wenn es kalt ist. Zu Schuhen oder Stiefeln tr&auml;gt man Socken.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Manche Leute tragen im Sommer einen Hut als Schutz vor der Sonne. Eine M&uuml;tze h&auml;lt im Winter den Kopf warm.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Einen Anzug tragen viele Leute bei der Arbeit. Zu einem Anzug geh&ouml;ren ein G&uuml;rtel und eine Krawatte. Viele Frauen tragen ein Halstuch oder einen Schal. Eine Brille brauchen viele Leute, wenn sie schlecht sehen. Und im Sommer tragen viele Leute Sonnenbrillen. Die sch&uuml;tzen die Augen vor der Sonne. Manche tragen auch Schmuck: M&auml;nner zum Beispiel tragen am Handgelenk eine Armbanduhr. Bei Frauen sieht man oft eine Halskette. An Regentagen benutzen die Leute einen Regenschirm.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(40, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Sport-b1.jpg', 'Sport', '<p>&nbsp; &nbsp; &nbsp; In Deutschland interessieren sich sehr viele Menschen f&uuml;r Sport. In den Zeitungen, im Radio und im Fernsehen wird regelm&auml;&szlig;ig &uuml;ber Sport berichtet. Besonders beliebt bei den Zuschauern sind Sportarten wie Fu&szlig;ball oder Tennis, wenn sie im Fernsehen &uuml;bertragen werden.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Beim Fu&szlig;ball spielen zwei Mannschaften gegeneinander und versuchen, einen Ball in das Tor zu schie&szlig;en. Ein Team besteht aus 10 Spielern und einem Tormann. Mehrere Schiedsrichter achten darauf, dass alle Spieler die Regeln einhalten.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Beim Tennis spielen zwei gegeneinander und versuchen mit einem Schl&auml;ger einen Ball so &uuml;ber ein Netz zu spielen, dass der andere ihn nicht erwischt. Man sammelt Punkte, das Spiel besteht aus mehreren Matches.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Was die Deutschen sonst noch gern im Fernsehen anschauen: Leichtathletik, Basketball, Handball, Eishockey und Formel 1. Das letzte ist Motorsportrennen, bei dem die Fahrer mit speziellen Autos sehr schnell viele Runden auf eigenen Strecken fahren. Der schnellste gewinnt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Die beliebtesten Sportarten der Deutschen, die sie selbst aus&uuml;ben, sind: Schwimmen, Fahrrad fahren, Fu&szlig;ball und Tennis spielen, Golf spielen, Reiten und auch Ski fahren. Viele betreiben auch Fitness in ihrer Freizeit, meist in eigenen Fitnesscentern.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Beim Golf wird ein kleiner, harter Ball mit einem langen Schl&auml;ger von einem Abschlagspunkt oft sehr weit &uuml;ber H&uuml;gel und Wiesen gespielt. Er soll in einem bestimmten Loch landen. Je weniger Schl&auml;ge ein Spieler dazu braucht, desto besser ist er.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Viele Deutsche gehen im Winter auch Ski fahren. Auch in Deutschland gibt es viele Berge, wo Lifte die Skifahrer auf die speziell angelegten Pisten bringen. Viele fahren auch in die benachbarten L&auml;nder &Ouml;sterreich und Schweiz, dort gibt es sehr viele gro&szlig;e Skigebiete.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(41, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Bayern-b1.jpg', 'Ferien in Bayern', '<p>&nbsp; &nbsp; &nbsp; F&uuml;r viele Leute, vor allem aus dem europ&auml;ischen Ausland, ist Deutschland kein Land, in dem man seine Ferien verbringen kann. In ihrer Phantasie regnet es dort immer und sie fahren lieber rund ums Mittelmeer mit seiner Sonnengarantie.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Wenn man aber einmal zum Beispiel nach Bayern in die Ferien gefahren ist, hat man Lust, immer wiederzukommen. Die Seen s&uuml;dlich von M&uuml;nchen erm&ouml;glichen Urlaub am Wasser mit Segeln und Wasserski. Die nahen Alpen sind ein bevorzugtes Ziel f&uuml;r Wanderfreunde und Fans von Paragliding und Rafting.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Nicht zu vergessen die Schl&ouml;sser des K&ouml;nigs Ludwig II., die jedes Jahr mehrere Millionen Besucher anziehen. Und zum Schluss, auch M&uuml;nchen, die Landeshauptstadt, ist immer einen Besuch wert.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(42, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Gesunde%20Lebensweise-b1.jpg', 'Gesunde Lebensweise', '<p>&nbsp; &nbsp; &nbsp; Um gesund zu bleiben, sollte man verschiedene Dinge beachten. Dazu geh&ouml;rt eine gesunde Ern&auml;hrung. Es ist wichtig, t&auml;glich Obst und Gem&uuml;se zu essen. Zucker und Fleisch sollten nur selten verspeist werden.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Au&szlig;erdem muss man viel Wasser trinken. Zwei Liter pro Tag sind ideal. Ein gesunder K&ouml;rper braucht ausreichend Bewegung. Man sollte mindestens zwei mal pro Woche Sport treiben, um fit zu bleiben. Viele Menschen sagen, dass sie keine Zeit f&uuml;r Sport haben. Oft ist das eine Ausrede. Dabei kann Sport Spa&szlig; machen, denn Bewegung tut gut.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Genauso wichtig ist ein erholsamer Schlaf. Als Erwachsener sollte man mindestens sieben Stunden pro Tag schlafen. Vor allem sollte man auf Alkohol und Zigaretten verzichten, um gesund zu bleiben.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(43, 'B1', 'http://localhost/Zusammen/main/lessons/reading%20images/Im%20Ausland%20arbeiten%202-b1.jpg', 'Im Ausland arbeiten 2', '<p>&nbsp; &nbsp; &nbsp; F&uuml;r viele Berufe ist es von Vorteil, eine Zeitlang im Ausland zu studieren oder sogar zu arbeiten. Manchmal ist es nicht einfach, einen Platz zu finden, aber es gibt schon seit geraumer Zeit Organisationen, die sich auf die internationale Vermittlung von Arbeitnehmern spezialisiert haben.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Schon im Vorfeld sollte man sich auf ein Leben in einer anderen Kultur vorbereiten und sich die Frage stellen, was man bereit ist, von seinen eigenen Gewohnheiten und Bed&uuml;rfnissen aufzugeben oder zu ver&auml;ndern. Einmal in seiner neuen Umgebung angekommen, ist eine klare Kommunikation von Vorteil, was jedoch nicht hei&szlig;t, die Grundregeln der H&ouml;flichkeit und R&uuml;cksichtnahme zu vernachl&auml;ssigen. Kulturelle Unterschiede lassen sich nur durch eine gute Vermittlung fruchtbar machen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(44, 'B2', 'http://localhost/Zusammen/main/lessons/reading%20images/Genf-b2.jpg', 'Ein Tag in Genf', '<p>&nbsp; &nbsp; &nbsp; Ich wollte die Stadt Genf, das Zentrum der Westschweiz, so erleben, wie es in keinem Reisef&uuml;hrer steht. Also fuhr ich mit der Stra&szlig;enbahn in die Genfer Altstadt. Zuerst wollte ich unbedingt die &bdquo;Kathedrale St. Peter&ldquo;, die sich majest&auml;tisch &uuml;ber die Altstadt erhebt, besichtigen. Der Panoramablick von der Aussichtsplattform war atemberaubend, nachdem ich die 157 Stufen des Turms hinauf gestiegen war. Anschlie&szlig;end ging ich zum &bdquo;Bourg-de-Four Platz&ldquo;, der ein beliebter Treffpunkt f&uuml;r Einwohner und Touristen aus aller Welt ist. Ich nutzte die Gelegenheit, um in einem Cafe die bezaubernde Atmosph&auml;re der Altstadt mit ihren historischen Geb&auml;uden und dem einzigartigen &bdquo;Blumenbrunnen&ldquo; aus dem 18. Jahrhundert zu geniessen. Ich hatte mir vorgenommen, das &bdquo;Museum f&uuml;r Kunst und Geschichte&ldquo; zu besuchen, in dem ich viele interessante Kunstsammlungen bewundern konnte. Die Ausstellung mit den Musikinstrumenten und Uhren war einfach gro&szlig;artig!</p>\r\n<p>&nbsp; &nbsp; &nbsp; Nach dem Museumsbesuch spazierte ich den Boulevard Helvetique entlang, um die weltber&uuml;hmte Blumenuhr zu besichtigen. Aber dann entdeckte ich das italienische Restaurant &bdquo;Luigia&ldquo;, in dem mir mein Lieblingsessen, eine leckere Spaghetti Bolognese, serviert wurde. Perfekt gest&auml;rkt gelangte ich nach einer Stunde zum Englischen Garten, dem &bdquo;Jardin Anglais&ldquo;, und bestaunte die faszinierende Blumenuhr mit ihren &uuml;ber 6000 verschiedenen Blumensorten. Sie wird zu jeder Jahreszeit mit neuen Blumen dekoriert. Nat&uuml;rlich machte ich auch viele Fotos von dieser durftenden, funkgesteuerten Uhr. Von hier aus konnte ich auch an der Promenade das Wahrzeichen der Stadt, die fantastische Wasserfontaine &bdquo;Jet d \'Eau&ldquo; im Genfer See sehen. Ein unvergessliches Erlebnis! Leider hatte ich nicht genug Zeit, um auch das &bdquo;Internationale Rotkreuz- und Rothalbmondmuseum&ldquo; zu besuchen. Vielleicht klappt es das n&auml;chsten Mal, denn Genf ist eine eindrucksvolle Stadt, die ich gern wieder besuchen m&ouml;chte.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(45, 'B2', 'http://localhost/Zusammen/main/lessons/reading%20images/Ein%20Tag%20in%20Wien-b2.jpg', 'Ein Tag in Wien', '<p>&nbsp; &nbsp; &nbsp; Familie Huber wohnt in der N&auml;he von Wien. Frank und Monika haben den Kindern einen Tag in Wien versprochen. Am Samstag fahren sie gemeinsam nach Wien, in die Hauptstadt von &Ouml;sterreich. Das Auto stellen sie in einem Parkhaus ab und fahren mit der U-Bahn weiter in die Innenstadt. Als Erstes besichtigen sie den Stephansdom. Das Wahrzeichen von Wien. Diese alte gotische Kirche wollen alle Besucher sehen. Wer Zeit hat, kann den Turm besteigen oder die Katakomben unter der Kirche besichtigen. Die &ldquo;Pummerin&ldquo; ist die gr&ouml;&szlig;te Glocke &Ouml;sterreichs. Sie h&auml;ngt im Nordturm und kann mit einem Aufzug erreicht werden. Familie Huber ist beeindruckt. Sie z&uuml;nden in der Kirche eine Kerze an und gehen weiter.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Inzwischen haben alle Hunger und essen bei einem W&uuml;rstelstand eine Burenwurst. Das ist eine Wiener Spezialit&auml;t. Es schmeckt ihnen und sie spazieren quer durch die Altstadt. Als N&auml;chstes machen sie eine Besichtigungsfahrt mit der Stra&szlig;enbahn. Die Ringstra&szlig;e f&uuml;hrt rund um das Zentrum der Stadt. Sie nutzen die ganz normale Stra&szlig;enbahn und k&ouml;nnen beim Vorbeifahren die pr&auml;chtigen Bauten bewundern. Sie sehen die Votivkirche, das Wiener Rathaus, das Burgtheater, das Parlament, zwei gro&szlig;e Museen und die Wiener Staatsoper.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Sie wollten noch zum wundersch&ouml;nen Schloss Sch&ouml;nbrunn und in den Tiergarten. Daf&uuml;r reicht die Zeit aber nicht. Das machen sie beim n&auml;chsten Besuch in Wien.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(46, 'B2', 'http://localhost/Zusammen/main/lessons/reading%20images/Feste%20und%20Brauchtum%20in%20Deutschland-b2.jpg', 'Feste und Brauchtum in Deutschland', '<p>&nbsp; &nbsp; &nbsp; In Deutschland gibt es das ganze Jahr &uuml;ber viele Feste, von denen viele einen christlichen Hintergrund haben. Fasching, auch Fastnacht genannt, wird insbesondere im Rheinland, aber auch in S&uuml;ddeutschland gefeiert. Die Menschen verkleiden sich, durch die Stra&szlig;en ziehen Paraden, die man &bdquo;Umz&uuml;ge&ldquo; nennt. Die meisten Feiern finden am Rosenmontag oder Faschingsdienstag statt, am Aschermittwoch ist alles vorbei.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Ostern hat keinen festen Termin, es findet immer im Fr&uuml;hling statt. Am Karfreitag gedenkt man Christus, der gestorben und am Ostermontag wieder auferstanden ist. Am Ostersonntag suchen die Kinder Ostereier.</p>\r\n<p>&nbsp; &nbsp; &nbsp; Weihnachten feiert man die Geburt Christi. Am 24. Dezember, dem Heiligen Abend, kommt die Familie zusammen, man beschenkt sich, geht in die Kirche und singt Weihnachtslieder. An Heiligabend schlie&szlig;en sich zwei Festtage an, alle Gesch&auml;fte sind w&auml;hrend der Feiertage geschlossen.</p>', 'Deutsch');
INSERT INTO `reading` (`idReading`, `level`, `imagePath`, `title`, `text`, `foreignLanguage`) VALUES(47, 'B2', 'http://localhost/Zusammen/main/lessons/reading%20images/Mein%20bester%20Freund-b2.jpg', 'Mein bester Freund', '<p>&nbsp; &nbsp; &nbsp; Heute m&ouml;chte ich von meinem besten Freund erz&auml;hlen. Zun&auml;chst zu seinem &Auml;u&szlig;eren. Er ist sehr gro&szlig; und ragt mit seinen 1,94 Meter K&ouml;rpergr&ouml;&szlig;e aus fast jeder Menschengruppe heraus. Dazu hat er sehr gro&szlig;e F&uuml;&szlig;e, was bei einer solchen Gr&ouml;&szlig;e ja auch nicht ungew&ouml;hnlich ist. Auch seine H&auml;nde und Ohren erscheinen riesig. Seine Arme und Beine sind zwar lang, aber kr&auml;ftig, da er sehr gerne Sport treibt.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Mein Freund ist Basketballer. Schon als Kind war er immer gr&ouml;&szlig;er als alle anderen Kinder in seiner Klasse. Er wurde deshalb sehr oft verspottet und geh&auml;nselt und hatte kaum Selbstbewusstsein. Er wusste nicht wohin mit seinen langen Armen und Beinen. Au&szlig;er im Sportunterricht. Hier war er oftmals Klassenbester. Wo die kleineren Klassenkameraden beim Wettlauf noch schnauften und st&ouml;hnten, war er meistens schon im Ziel. Beim Hochsprung oder Weitsprung war er absolute Spitze.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Aber sein Lieblingssport war schon immer Basketball. Ganz leicht und mit nur einem kleinen Sprung kann er den Korb erreichen und zielsicher fast jeden Ball einwerfen. Seine Eltern erkannten, dass ihm der Sport nicht nur Spa&szlig; machte, sondern auch die M&ouml;glichkeit gab, Selbstvertrauen aufzubauen. Im Verein mit vielen anderen sehr gro&szlig;en Kindern trainierte er nun viermal die Woche, ging auf eine Sportschule und studierte im Anschluss.</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;Niemand h&auml;nselt ihn nun mehr aufgrund seines Aussehens. Mein Freund ist deswegen mein bester Freund, weil er inzwischen als Basketballtrainer sehr viele andere Kinder davon &uuml;berzeugt hat, Sport im Verein zu treiben, dort Freunde zu finden und durch ihr Hobby Spa&szlig;, Freude und Selbstvertrauen zu finden. Daf&uuml;r bewundere ich ihn.</p>', 'Deutsch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `readinginvoice`
--

CREATE TABLE IF NOT EXISTS `readinginvoice` (
  `idReading` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `readinginvoice`
--

INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(1, 1);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(1, 2);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(1, 3);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(1, 4);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(1, 5);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(2, 6);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(2, 7);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(2, 8);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(2, 9);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(2, 10);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(3, 11);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(3, 12);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(3, 13);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(3, 14);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(3, 15);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(4, 16);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(4, 17);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(4, 18);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(4, 19);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(4, 20);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(5, 21);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(5, 22);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(5, 23);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(5, 24);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(5, 25);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(6, 26);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(6, 27);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(6, 28);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(6, 29);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(6, 30);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(7, 31);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(7, 32);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(7, 33);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(7, 34);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(7, 35);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(8, 36);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(8, 37);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(8, 38);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(8, 39);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(8, 40);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(9, 41);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(9, 42);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(9, 43);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(9, 44);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(9, 45);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(10, 46);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(10, 47);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(10, 48);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(10, 49);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(10, 50);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(11, 51);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(11, 52);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(11, 53);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(11, 54);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(11, 55);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(12, 56);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(12, 57);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(12, 58);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(12, 59);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(12, 60);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(13, 61);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(13, 62);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(13, 63);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(13, 64);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(13, 65);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(14, 66);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(14, 67);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(14, 68);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(14, 69);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(14, 70);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(15, 71);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(15, 72);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(15, 73);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(15, 74);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(15, 75);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(16, 76);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(16, 77);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(16, 78);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(16, 79);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(16, 80);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(17, 81);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(17, 82);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(17, 83);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(17, 84);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(17, 85);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(18, 86);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(18, 87);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(18, 88);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(18, 89);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(18, 90);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(19, 91);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(19, 92);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(19, 93);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(19, 94);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(19, 95);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(20, 96);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(20, 97);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(20, 98);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(20, 99);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(20, 100);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(21, 101);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(21, 102);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(21, 103);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(21, 104);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(21, 105);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(22, 106);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(22, 107);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(22, 108);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(22, 109);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(22, 110);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(23, 111);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(23, 112);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(23, 113);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(23, 114);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(23, 115);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(24, 116);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(24, 117);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(24, 118);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(24, 119);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(24, 120);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(25, 121);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(25, 122);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(25, 123);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(25, 124);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(25, 125);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(26, 126);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(26, 127);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(26, 128);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(26, 129);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(26, 130);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(27, 131);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(27, 132);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(27, 133);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(27, 134);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(27, 135);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(28, 136);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(28, 137);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(28, 138);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(28, 139);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(28, 140);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(29, 141);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(29, 142);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(29, 143);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(29, 144);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(29, 145);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(30, 146);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(30, 147);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(30, 148);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(30, 149);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(30, 150);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(31, 151);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(31, 152);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(31, 153);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(31, 154);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(31, 155);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(32, 156);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(32, 157);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(32, 158);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(32, 159);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(32, 160);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(33, 161);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(33, 162);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(33, 163);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(33, 164);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(33, 165);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(34, 166);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(34, 167);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(34, 168);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(34, 169);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(34, 170);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(35, 171);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(35, 172);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(35, 173);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(35, 174);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(35, 175);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(36, 176);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(36, 177);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(36, 178);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(36, 179);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(36, 180);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(37, 181);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(37, 182);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(37, 183);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(37, 184);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(37, 185);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(38, 186);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(38, 187);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(38, 188);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(38, 189);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(38, 190);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(39, 191);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(39, 192);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(39, 193);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(39, 194);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(39, 195);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(40, 196);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(40, 197);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(40, 198);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(40, 199);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(40, 200);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(41, 201);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(41, 202);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(41, 203);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(41, 204);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(41, 205);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(42, 206);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(42, 207);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(42, 208);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(42, 209);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(42, 210);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(43, 211);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(43, 212);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(43, 213);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(43, 214);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(43, 215);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(44, 216);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(44, 217);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(44, 218);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(44, 219);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(44, 220);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(45, 221);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(45, 222);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(45, 223);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(45, 224);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(45, 225);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(46, 226);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(46, 227);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(46, 228);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(46, 229);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(46, 230);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(47, 231);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(47, 232);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(47, 233);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(47, 234);
INSERT INTO `readinginvoice` (`idReading`, `idQuestion`) VALUES(47, 235);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sprache`
--

CREATE TABLE IF NOT EXISTS `sprache` (
  `idLanguage` int(11) NOT NULL,
  `nativeLanguage` varchar(30) NOT NULL,
  `foreignLanguage` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `sprache`
--

INSERT INTO `sprache` (`idLanguage`, `nativeLanguage`, `foreignLanguage`) VALUES(1, 'Română', 'Deutsch');
INSERT INTO `sprache` (`idLanguage`, `nativeLanguage`, `foreignLanguage`) VALUES(2, 'Română', 'English');
INSERT INTO `sprache` (`idLanguage`, `nativeLanguage`, `foreignLanguage`) VALUES(3, 'English', 'Română');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vocabulary`
--

CREATE TABLE IF NOT EXISTS `vocabulary` (
  `idVocabulary` int(11) NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `foreignLanguage` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `vocabulary`
--

INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(1, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/tools.jpg', 'Werkzeuge', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(2, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/plants.jpg', 'Pflanzen', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(3, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/nature.jpg', 'Natur', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(4, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/fruits.jpg', 'Obst und Gemüse', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(5, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/food.jpg', 'Essen und Getränken', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(6, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/animals.jpg', 'Tiere', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(7, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/body.jpg', 'Körperteile', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(8, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/colors.jpg', 'Farbe', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(9, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/sport.jpg', 'Sport', 'Deutsch');
INSERT INTO `vocabulary` (`idVocabulary`, `imagePath`, `title`, `foreignLanguage`) VALUES(10, 'http://localhost/Zusammen/main/lessons/vocabulary%20images/technology.png', 'Technologie', 'Deutsch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vocabularyimage`
--

CREATE TABLE IF NOT EXISTS `vocabularyimage` (
  `idImage` int(11) NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `vocabularyimage`
--

INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(1, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/der%20Schraubendreher.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(2, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Axt.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(3, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Leiter.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(4, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Bohrmaschine.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(5, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/der%20Schraubenschl%c3%bcssel.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(6, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/der%20Hammer.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(7, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Feile.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(8, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Schaufel.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(9, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/die%20Rohrzange.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(10, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/tools/das%20Ba%c3%9fband.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(11, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/der%20Lotus.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(12, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/die%20Orchidee.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(13, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/der%20Mohn.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(14, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/Der%20Pilz.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(15, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/das%20Blatt.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(16, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/die%20Alge.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(17, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/die%20Palme.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(18, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/der%20Baumstumpf.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(19, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/das%20Grass.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(20, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/plants/der%20Bambus.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(21, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/das%20Feuer.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(22, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Baum.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(23, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Mond.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(24, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Tornado.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(25, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/die%20Rose.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(26, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/die%20Wolke.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(27, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Stern.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(28, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Sand.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(29, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/das%20Meer.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(30, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/nature/der%20Berg.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(31, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Orange.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(32, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Traube.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(33, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Kartoffel.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(34, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Zitrone.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(35, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/der%20Zimt.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(36, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Limone.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(37, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/der%20Knoblauch.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(38, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Ananas.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(39, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/die%20Haselnuss.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(40, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/fruits/der%20Kohl.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(41, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/die%20Lasagne.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(42, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/der%20Tee.png');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(43, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/das%20Sandwich%20%20der%20Sandwich.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(44, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/der%20K%c3%a4se.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(45, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/die%20Torte.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(46, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/der%20Ketchup.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(47, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/der%20Kaffee.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(48, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/die%20Wurst.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(49, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/die%20S%c3%bc%c3%9figkeit.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(50, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/food%20and%20drink/das%20Hendl.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(51, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/das%20Eichh%c3%b6rnchen.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(52, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Ziege.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(53, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Krabbe.png');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(54, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Kuh.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(55, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Schildkr%c3%b6te.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(56, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Kr%c3%a4he.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(57, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/der%20Eisb%c3%a4r.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(58, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/das%20Nashorn.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(59, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/das%20Krokodil.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(60, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/animals/die%20Hirsch.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(61, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Augen.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(62, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Lippen.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(63, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Schulter.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(64, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Nase.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(65, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20F%c3%bc%c3%9fe.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(66, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/das%20Haar.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(67, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Knie.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(68, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/das%20Gesicht.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(69, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Beine.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(70, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/body/die%20Hand.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(71, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Gelb.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(72, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Schwarz.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(73, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Dunkelblau.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(74, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Rot.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(75, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Dunkelgr%c3%bcn.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(76, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Gr%c3%bcn.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(77, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Grau.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(78, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Hellgr%c3%bcn.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(79, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Wei%c3%9f.png');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(80, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/colors/das%20Hellblau.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(81, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Laufen.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(82, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/der%20Golf.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(83, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Tenis.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(84, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/die%20Meditation.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(85, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/der%20Fu%c3%9fball.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(86, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Wandern.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(87, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Skateboard.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(88, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Gewichtheben.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(89, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Cricket.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(90, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/sport/das%20Marathon.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(91, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Satellit.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(92, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Laptop.webp');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(93, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Ordner.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(94, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Kopfh%c3%b6rer.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(95, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/die%20CD.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(96, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20USB.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(97, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Fernseher.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(98, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/die%20Tastatur.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(99, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/das%20Smartphone.jpg');
INSERT INTO `vocabularyimage` (`idImage`, `imagePath`) VALUES(100, 'http://localhost/Zusammen/main/lessons/vocabulary%20quiz%20images/technology/der%20Rechner.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vocabularyinvoice`
--

CREATE TABLE IF NOT EXISTS `vocabularyinvoice` (
  `idVocabulary` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `idImage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Daten für Tabelle `vocabularyinvoice`
--

INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 606, 1);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 607, 2);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 608, 3);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 609, 4);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 610, 5);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 611, 6);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 612, 7);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 613, 8);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 614, 9);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 615, 10);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(1, 1000, 2);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 616, 11);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 617, 12);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 618, 13);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 619, 14);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 620, 15);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 621, 16);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 622, 17);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 623, 18);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 624, 19);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(2, 625, 20);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 626, 21);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 627, 22);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 628, 23);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 629, 24);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 630, 25);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 631, 26);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 632, 27);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 633, 28);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 634, 29);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(3, 635, 30);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 636, 31);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 637, 32);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 638, 33);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 639, 34);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 640, 35);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 641, 36);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 642, 37);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 643, 38);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 644, 39);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(4, 645, 40);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 646, 41);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 647, 42);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 648, 43);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 649, 44);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 650, 45);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 651, 46);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 652, 47);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 653, 48);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 654, 49);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(5, 655, 50);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 656, 51);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 657, 52);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 658, 53);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 659, 54);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 660, 55);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 661, 56);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 662, 57);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 663, 58);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 664, 59);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(6, 665, 60);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 666, 61);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 667, 62);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 668, 63);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 669, 64);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 670, 65);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 671, 66);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 672, 67);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 673, 68);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 674, 69);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(7, 675, 70);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 676, 71);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 677, 72);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 678, 73);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 679, 74);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 680, 75);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 681, 76);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 682, 77);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 683, 78);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 684, 79);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(8, 685, 80);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 686, 81);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 687, 82);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 688, 83);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 689, 84);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 690, 85);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 691, 86);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 692, 87);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 693, 88);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 694, 89);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(9, 695, 90);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 696, 91);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 697, 92);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 698, 93);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 699, 94);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 700, 95);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 701, 96);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 702, 97);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 703, 98);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 704, 99);
INSERT INTO `vocabularyinvoice` (`idVocabulary`, `idQuestion`, `idImage`) VALUES(10, 705, 100);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `worterbuch`
--

CREATE TABLE IF NOT EXISTS `worterbuch` (
  `idWord` int(11) NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `translation` varchar(255) NOT NULL,
  `audioPath` varchar(255) DEFAULT NULL,
  `idLanguage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `worterbuch`
--

INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(1, 'wie', 'la fel de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(2, 'ich', 'eu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(3, 'seine', 'a lui', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(4, 'das', 'aces', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(5, 'er', 'el', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(6, 'war', 'a fost', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(7, 'zum', 'pentru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(8, 'auf', 'pe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(9, 'sind', 'suntem', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(10, 'mit', 'cu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(11, 'Sie', 'ei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(12, 'Sein', 'a fi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(13, 'beim', 'la', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(14, 'ein', 'unu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(15, 'haben', 'a avea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(16, 'diese', 'acest', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(17, 'von', 'din', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(18, 'durch', 'de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(19, 'heiß', 'fierbinte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(20, 'Wort', 'cuvânt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(21, 'aber', 'dar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(22, 'Was?', 'ce? poftim?', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(23, 'etwas', 'niste', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(24, 'ist', 'este', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(25, 'es', 'aceasta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(26, 'du', 'tu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(27, 'oder', 'sau', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(28, 'hätten', 'a avut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(29, 'zu', 'la', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(30, 'und', 'și', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(31, 'im', 'în', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(32, 'wir', 'noi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(33, 'können', 'putem', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(34, 'aus', 'afară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(35, 'andere', 'altu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(36, 'wurden', 'erau', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(37, 'welche', 'care', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(38, 'tun', 'a face', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(39, 'ihr', 'al lor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(40, 'Zeit', 'timp', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(41, 'wenn', 'dacă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(42, 'werden', 'voi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(43, 'sagte', 'a spus', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(44, 'jeder', 'fiecare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(45, 'sagen', 'a spune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(46, 'einstellen', 'a stabilit', 'http://localhost/Zusammen/main/dictionary/audio/einstellen.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(47, 'drei', 'trei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(48, 'wollen', 'a vrea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(49, 'Luft', 'aer', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(50, 'gut', 'bine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(51, 'ebenfalls', 'de asemenea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(52, 'spielen', 'a juca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(53, 'klein', 'mic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(54, 'Ende', 'Sfârșit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(55, 'stellen', 'a pune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(56, 'Zuhause', 'acasă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(57, 'lesen', 'a citi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(58, 'Hand', 'mână', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(59, 'Hafen', 'port (de corăbii)', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(60, 'groß', 'mare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(61, 'buchstabieren', 'a vrăji', 'http://localhost/Zusammen/main/dictionary/audio/buchstabieren.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(62, 'hinzufügen', 'a adăuga', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(63, 'sogar', 'chiar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(64, 'Land', 'teren', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(65, 'Hier', 'aici', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(66, 'Muss', 'trebuie să', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(67, 'hoch', 'înalt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(68, 'eine solche', 'astfel de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(69, 'folgen', 'a urmări', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(70, 'Handlung', 'acțiune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(71, 'Warum?', 'de ce?', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(72, 'fragen', 'a întreba', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(73, 'Männer', 'bărbați', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(74, 'Veränderung', 'schimbare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(75, 'ging', 'a mers', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(76, 'Licht', 'lumină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(77, 'nett', 'drăguț', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(78, 'brauchen', 'a avea nevoie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(79, 'Haus', 'casă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(80, 'Bild', 'imagine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(81, 'versuchen', 'a încerca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(82, 'uns', 'ne', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(83, 'nochmal', 'din nou', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(84, 'Tier', 'animal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(85, 'Punkt', 'punct', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(86, 'Mutter', 'mama', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(87, 'Welt', 'lume', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(88, 'in der Nähe von', 'aproape', 'http://localhost/Zusammen/main/dictionary/audio/in%20der%20N%c3%a4he%20von.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(89, 'bauen', 'a construi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(90, 'selbst', 'de sine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(91, 'Erde', 'Pământ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(92, 'Vater', 'tata', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(93, 'irgendein', 'orice', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(94, 'Neu', 'nou', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(95, 'Arbeit', 'muncă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(96, 'Teil', 'parte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(97, 'nehmen', 'a lua', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(98, 'erhalten', 'a obține', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(99, 'Platz', 'loc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(100, 'gemacht', 'făcut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(101, 'wohnen', 'a trăi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(102, 'wo?', 'unde?', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(103, 'nach dem', 'după', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(104, 'zurück', 'înapoi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(105, 'wenig', 'mic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(106, 'nur', 'numai', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(107, 'Runden', 'rundă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(108, 'Mann', 'om', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(109, 'Jahr', 'an', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(110, 'kam', 'a venit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(111, 'Schau', 'spectacol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(112, 'mich', 'pe mine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(113, 'geben', 'a da', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(114, 'unsere', 'al nostru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(115, 'unter', 'sub', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(116, 'Name', 'nume', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(117, 'sehr', 'foarte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(118, 'gerade', 'doar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(119, 'bilden', 'a forma', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(120, 'Satz', 'propoziție', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(121, 'denken', 'a gândi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(122, 'hilfen', 'a ajuta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(123, 'niedrig', 'scăzut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(124, 'Linie', 'linie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(125, 'sich unterscheiden', 'diferă', 'http://localhost/Zusammen/main/dictionary/audio/sich%20unterscheiden.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(126, 'Wende', 'întoarce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(127, 'Ursache', 'cauză', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(128, 'viel', 'mult', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(129, 'bedeutend', 'semnificativ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(130, 'Bewegung', 'mișcare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(131, 'Junge', 'băiat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(132, 'alt', 'vechi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(133, 'auch', 'de asemenea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(134, 'gleich', 'la fel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(135, 'alle', 'toate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(136, 'Dort', 'acolo', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(137, 'wann', 'cand', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(138, 'benutzen', 'utilizare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(139, 'Ihre', 'a ta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(140, 'Weg', 'cale', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(141, 'Über', 'despre', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(142, 'viele', 'mulți', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(143, 'dann', 'atunci', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(144, 'schreiben', 'a scrie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(145, 'würde', 'ar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(146, 'mögen', 'ca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(147, 'so', 'asa de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(148, 'machen', 'face', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(149, 'Sache', 'lucru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(150, 'ihm', '-l', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(151, 'zwei', 'doi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(152, 'hast', 'are', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(153, 'sehen', 'a privi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(154, 'mehr', 'mai mult', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(155, 'Tag', 'zi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(156, 'gehen', 'a merge', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(157, 'Nummer', 'număr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(158, 'Klang', 'sunet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(159, 'Nein', 'nu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(160, 'die meisten', 'cel mai', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(161, 'Menschen', 'oameni', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(162, 'meine', 'ale mele', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(163, 'Wasser', 'apă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(164, 'als', 'decât', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(165, 'Anruf', 'apel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(166, 'zuerst', 'primul', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(167, 'kann', 'poate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(168, 'Nieder', 'jos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(169, 'Seite', 'latură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(170, 'gewesen', 'fost', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(171, 'jetzt', 'acum', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(172, 'finden', 'a găsi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(173, 'Kopf', 'cap', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(174, 'Stand', 'stand', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(175, 'besitzen', 'proprii', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(176, 'sollte', 'ar trebui să', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(177, 'gefunden', 'găsite', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(178, 'Antworten', 'răspuns', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(179, 'Schule', 'şcoală', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(180, 'wachsen', 'a crește', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(181, 'Studie', 'studiu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(182, 'immer noch', 'încă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(183, 'lernen', 'învăța', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(184, 'Pflanze', 'plantă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(185, 'Startseite', 'pagina principala', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(186, 'Lebensmittel', 'alimente', 'http://localhost/Zusammen/main/dictionary/audio/Lebensmittel.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(187, 'Sonne', 'soare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(188, 'vier', 'patru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(189, 'zwischen', 'între', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(190, 'Zustand', 'statut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(191, 'behalten', 'a păstra', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(192, 'Auge', 'ochi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(193, 'noch nie', 'niciodată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(194, 'letzte', 'ultimul', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(195, 'lassen', 'a lăsa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(196, 'gedacht', 'gândit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(197, 'Stadt', 'oraș', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(198, 'Baum', 'copac', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(199, 'Kreuz', 'traversa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(200, 'Bauernhof', 'fermă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(201, 'schwer', 'greu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(202, 'Start', 'start', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(203, 'Geschichte', 'poveste', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(204, 'sah', 'a văzut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(205, 'weit', 'departe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(206, 'Meer', 'mare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(207, 'zeichnen', 'a desena', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(208, 'links', 'stânga', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(209, 'spät', 'târziu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(210, 'Lauf', 'alergare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(211, 'nicht', 'nu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(212, 'während', 'in timp ce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(213, 'schließen', 'închide', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(214, 'Nacht', 'noapte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(215, 'Real', 'real', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(216, 'Leben', 'viaţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(217, 'wenige', 'mai putin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(218, 'Norden', 'Nord', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(219, 'Buch', 'carte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(220, 'dauerte', 'a luat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(221, 'Wissenschaft', 'ştiinţă', 'http://localhost/Zusammen/main/dictionary/audio/Wissenschaft.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(222, 'Essen', 'mâncare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(223, 'Zimmer', 'cameră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(224, 'Freund', 'prietene', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(225, 'begann', 'a inceput', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(226, 'Idee', 'idee', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(227, 'Fisch', 'peşte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(228, 'Berg', 'Munte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(229, 'Stopp', 'Stop', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(230, 'einmal', 'o singura data', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(231, 'Base', 'baza', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(232, 'hören', 'a auzi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(233, 'Pferd', 'cal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(234, 'schnitten', 'a tăia', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(235, 'Uhr', 'ceas', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(236, 'Farbe', 'culoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(237, 'Gesicht', 'față', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(238, 'Holz', 'lemn', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(239, 'Haupt', 'principal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(240, 'öffnen', 'deschis', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(241, 'scheinen', 'a părea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(242, 'zusammen', 'împreună', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(243, 'Nächster', 'următorul', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(244, 'Weiß', 'alb', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(245, 'Kinder', 'copii', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(246, 'Beispiel', 'exemplu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(247, 'Leichtigkeit', 'usurință', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(248, 'Papier', 'hârtie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(249, 'Gruppe', 'grup', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(250, 'immer', 'mereu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(251, 'Musik', 'muzică', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(252, 'beide', 'ambii', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(253, 'Kennzeichen', 'marcă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(254, 'häufig', 'de multe ori', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(255, 'Brief', 'scrisoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(256, 'bis um', 'pana cand', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(257, 'Meile', 'mile', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(258, 'Fluss', 'râu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(259, 'Wagen', 'mașină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(260, 'Füße', 'picioare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(261, 'Pflege', 'întreținere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(262, 'zweite', 'al doilea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(263, 'genug', 'suficient', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(264, 'einfach', 'simplu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(265, 'Mädchen', 'fată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(266, 'gewöhnlich', 'ca de obicei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(267, 'jung', 'tineri', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(268, 'bereit', 'gata', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(269, 'rot', 'roșu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(270, 'aufführen', 'listă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(271, 'obwohl', 'deşi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(272, 'Gefühl', 'simt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(273, 'Vogel', 'pasăre', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(274, 'bald', 'curând', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(275, 'Körper', 'corp', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(276, 'Hund', 'câine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(277, 'Familie', 'familie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(278, 'Direkte', 'direct', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(279, 'Pose', 'poză', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(280, 'verlassen', 'a părăsi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(281, 'Lied', 'cântec', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(282, 'messen', 'a măsura', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(283, 'Tür', 'uşă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(284, 'Produkt', 'produs', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(285, 'schwarz', 'negru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(286, 'kurz', 'mic de statura', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(287, 'Ziffer', 'numeral', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(288, 'Klasse', 'clasă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(289, 'Wind', 'vânt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(290, 'geschehen', 'a se întâmpla', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(291, 'Komplett', 'complet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(292, 'Schiff', 'navă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(293, 'Bereich', 'zonă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(294, 'Hälfte', 'jumătate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(295, 'Felsen', 'stâncă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(296, 'Auftrag', 'ordin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(297, 'Feuer', 'foc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(298, 'Süd', 'sud', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(299, 'Problem', 'problemă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(300, 'Stück', 'bucată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(301, 'erzählte', 'a spus', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(302, 'wusste', 'știa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(303, 'bestehen', 'trece', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(304, 'schon seit', 'de cand', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(305, 'oben', 'vârf', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(306, 'ganze', 'întreg', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(307, 'König', 'rege', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(308, 'Straße', 'stradă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(309, 'Zoll', 'inch', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(310, 'multiplizieren', 'a multiplica', 'http://localhost/Zusammen/main/dictionary/audio/multiplizieren.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(311, 'nichts', 'nimic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(312, 'Kurs', 'curs', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(313, 'bleibe', 'a sta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(314, 'Rad', 'roată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(315, 'voll', 'plin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(316, 'Blau', 'albastru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(317, 'Objekt', 'obiect', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(318, 'entscheiden', 'a decide', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(319, 'Oberfläche', 'suprafaţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(320, 'tief', 'adânc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(321, 'Mond', 'lună', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(322, 'Insel', 'insulă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(323, 'Fuß', 'picior', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(324, 'System', 'sistem', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(325, 'beschäftigt', 'ocupat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(326, 'Prüfung', 'dovadă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(327, 'Aufzeichnung', 'înregistrare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(328, 'Boot', 'barcă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(329, 'verbreitet', 'uzual', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(330, 'Gold', 'aur', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(331, 'möglich', 'posibil', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(332, 'Flugzeug', 'avion', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(333, 'Statt', 'în loc de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(334, 'trocken', 'uscat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(335, 'Wunder', 'mirare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(336, 'lachen', 'a râde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(337, 'tausend', 'o mie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(338, 'lief', 'a fugit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(339, 'gestalten', 'formă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(340, 'gleichsetzen', 'a echivala', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(341, 'Fräulein', 'domnișoară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(342, 'gebracht', 'adus', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(343, 'Hitze', 'căldură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(344, 'Schnee', 'zăpadă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(345, 'reifen', 'a obosi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(346, 'bringen', 'a aduce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(347, 'Ja', 'Da', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(348, 'entfernt', 'îndepărtat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(349, 'füllen', 'a completa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(350, 'Ost', 'Est', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(351, 'Sprache', 'limbă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(352, 'Einheit', 'unitate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(353, 'Leistung', 'putere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(354, 'fliege', 'a zbura', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(355, 'fallen', 'a cădea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(356, 'führen', 'a conduce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(357, 'Schrei', 'strigăt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(358, 'dunkel', 'întuneric', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(359, 'Maschine', 'mașinărie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(360, 'Hinweis', 'Notă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(361, 'warten', 'a aștepta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(362, 'planen', 'a planifica', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(363, 'Zahl', 'număr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(364, 'Stern', 'stea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(365, 'Kasten', 'cutie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(366, 'Substantiv', 'substantiv', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(367, 'Feld', 'câmp', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(368, 'sich ausruhen', 'a se odihni', 'http://localhost/Zusammen/main/dictionary/audio/sich%20ausruhen.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(369, 'fähig', 'in stare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(370, 'Pfund', 'livră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(371, 'getan', 'terminat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(372, 'Schönheit', 'frumuseţe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(373, 'enthalten', 'conține', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(374, 'Vorderseite', 'frontal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(375, 'lehren', 'a preda', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(376, 'Woche', 'săptămână', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(377, 'Finale', 'final', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(378, 'gegeben', 'a dat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(379, 'Grün', 'verde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(380, 'entwickeln', 'a dezvolta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(381, 'Ozean', 'ocean', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(382, 'warm', 'cald', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(383, 'kostenlos', 'gratuit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(384, 'Minute', 'minut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(385, 'stark', 'puternic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(386, 'Besondere', 'special', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(387, 'Verstand', 'minte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(388, 'hinter', 'in spate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(389, 'klar', 'clar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(390, 'produzieren', 'a produce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(391, 'Fakt', 'fapt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(392, 'gehört', 'auzit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(393, 'beste', 'cel mai bun', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(394, 'Stunde', 'ora', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(395, 'besser', 'mai bine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(396, 'wahr', 'adevărat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(397, 'hundert', 'sută', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(398, 'fünf', 'cinci', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(399, 'merken', 'tine minte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(400, 'Schritt', 'etapă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(401, 'früh', 'devreme', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(402, 'halt', 'a ține', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(403, 'Westen', 'Vest', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(404, 'Boden', 'sol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(405, 'Interesse', 'interes', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(406, 'erreichen', 'a ajunge', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(407, 'schnell', 'rapid', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(408, 'Verb', 'verb', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(409, 'singen', 'a cânta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(410, 'zuhören', 'a asculta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(411, 'sechs', 'şase', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(412, 'Tabelle', 'tabel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(413, 'Reise', 'voiaj', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(414, 'weniger', 'mai puțin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(415, 'Morgen', 'dimineaţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(416, 'zehn', 'zece', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(417, 'mehrere', 'mai multe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(418, 'Vokal', 'vocală', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(419, 'Krieg', 'război', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(420, 'legen', 'a întinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(421, 'gegen', 'împotriva', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(422, 'Muster', 'model', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(423, 'langsam', 'încet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(424, 'Zentrum', 'centru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(425, 'Liebe', 'dragoste', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(426, 'Person', 'persoană', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(427, 'Geld', 'bani', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(428, 'dienen', 'a servi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(429, 'erscheinen', 'a apărea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(430, 'Regen', 'ploaie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(431, 'Regel', 'regulă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(432, 'regieren', 'guvernează', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(433, 'ziehen', 'a trage', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(434, 'kalt', 'rece', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(435, 'beachten', 'a înștiința', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(436, 'Stimme', 'voce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(437, 'Energie', 'energie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(438, 'Jagd', 'vânătoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(439, 'wahrscheinlich', 'probabil', 'http://localhost/Zusammen/main/dictionary/audio/wahrscheinlich.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(440, 'Bett', 'pat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(441, 'Bruder', 'frate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(442, 'Ei', 'ou', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(443, 'Reiten', 'plimbare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(444, 'Zelle', 'celulă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(445, 'glauben', 'a crede', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(446, 'vielleicht', 'poate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(447, 'plötzlich', 'brusc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(448, 'Quadrat', 'pătrat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(449, 'Grund', 'motiv', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(450, 'Länge', 'lungime', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(451, 'vertreten', 'a reprezinta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(452, 'Kunst', 'artă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(453, 'Gegenstand', 'subiect', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(454, 'Region', 'regiune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(455, 'Größe', 'mărime', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(456, 'variieren', 'a varia', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(457, 'niederlassen', 'a stabili', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(458, 'sprechen', 'a vorbi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(459, 'Gewicht', 'greutate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(460, 'Allgemeines', 'general', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(461, 'Eis', 'gheaţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(462, 'Angelegenheit', 'materie', 'http://localhost/Zusammen/main/dictionary/audio/Angelegenheit.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(463, 'Kreis', 'cerc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(464, 'Paar', 'pereche', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(465, 'einschließen', 'include', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(466, 'teilen', 'a distribui', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(467, 'Silbe', 'silabă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(468, 'fühlte', 'a simțit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(469, 'großartig', 'foarte mare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(470, 'Ball', 'bal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(471, 'noch', 'inca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(472, 'Welle', 'val', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(473, 'Herz', 'inima', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(474, 'vorhanden', 'disponibil', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(475, 'tanzen', 'a dansa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(476, 'Motor', 'motor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(477, 'Position', 'poziţie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(478, 'Arm', 'braţ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(479, 'breit', 'lat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(480, 'Segel', 'navigare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(481, 'Material', 'material', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(482, 'Fraktion', 'fracțiune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(483, 'Wald', 'pădure', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(484, 'sitzen', 'a sta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(485, 'Rennen', 'rasă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(486, 'Fenster', 'fereastră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(487, 'Geschäft', 'depozit de magazin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(488, 'Sommer', 'vară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(489, 'Zug', 'tren', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(490, 'schlafen', 'a dormi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(491, 'beweisen', 'a dovedi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(492, 'einsam', 'singuratic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(493, 'Bein', 'picior', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(494, 'Übung', 'exercițiu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(495, 'Wand', 'perete', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(496, 'Fang', 'captură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(497, 'montieren', 'montură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(498, 'Wunsch', 'dorință', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(499, 'Himmel', 'cer', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(500, 'Tafel', 'tablă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(501, 'Freude', 'bucurie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(502, 'Winter', 'iarnă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(503, 'saß', 'stat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(504, 'geschrieben', 'scris', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(505, 'wild', 'sălbatic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(506, 'Instrument', 'instrument', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(507, 'gehalten', 'ținut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(508, 'Glas', 'sticlă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(509, 'Gras', 'iarbă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(510, 'Kuh', 'vacă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(511, 'Beruf', 'profesie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(512, 'Schild', 'semn', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(513, 'Besuch', 'vizită', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(514, 'Vergangenheit', 'trecut', 'http://localhost/Zusammen/main/dictionary/audio/Vergangenheit.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(515, 'Spaß', 'distracţie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(516, 'hell', 'luminos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(517, 'Gas', 'gaz', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(518, 'Wetter', 'vreme', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(519, 'Monat', 'lună', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(520, 'Million', 'milion', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(521, 'Fertig', 'finalizarea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(522, 'glücklich', 'fericit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(523, 'hoffen', 'speranţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(524, 'Blume', 'floare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(525, 'kleiden', 'îmbrăcați', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(526, 'seltsam', 'ciudat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(527, 'Handel', 'Melodie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(528, 'Ausflug', 'călătorie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(529, 'Büro', 'birou', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(530, 'Reihe', 'rând', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(531, 'Mund', 'gură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(532, 'genau', 'corect', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(533, 'Symbol', 'simbol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(534, 'sterben', 'a muri', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(535, 'am wenigsten', 'cel mai puţin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(536, 'Ärger', 'necaz', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(537, 'schreien', 'strigăt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(538, 'außer', 'cu exceptia', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(539, 'schrieb', 'scris', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(540, 'Samen', 'sămânță', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(541, 'Ton', 'ton', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(542, 'beitreten', 'a te alatura', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(543, 'vorschlagen', 'a sugera', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(544, 'sauber', 'curat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(545, 'Pause', 'pauză', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(546, 'Dame', 'doamnă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(547, 'Hof', 'curte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(548, 'erhebt euch', 'creştere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(549, 'Schlag', 'a sufla', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(550, 'Öl', 'ulei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(551, 'Blut', 'sânge', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(552, 'berühren', 'atingere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(553, 'wuchs', 'crescut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(554, 'Cent', 'cent', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(555, 'mischen', 'a mesteca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(556, 'Mannschaft', 'echipă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(557, 'Draht', 'sârmă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(558, 'Kosten', 'cost', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(559, 'verloren', 'pierdut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(560, 'braun', 'maro', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(561, 'tragen', 'a purta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(562, 'Garten', 'grădină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(563, 'geschickt', 'trimis', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(564, 'wählen', 'a alege', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(565, 'fiel', 'căzut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(566, 'passen', 'potrivi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(567, 'fließen', 'curgere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(568, 'Messe', 'corect', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(569, 'Bank', 'bancă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(570, 'sammeln', 'colectarea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(571, 'speichern', 'a salva', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(572, 'Steuerung', 'control', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(573, 'Dezimal', 'decimal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(574, 'Ohr', 'ureche', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(575, 'sonst', 'altfel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(576, 'ganz', 'destul de', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(577, 'Pleite', 'rupt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(578, 'Fall', 'caz', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(579, 'Mitte', 'mijloc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(580, 'töten', 'a ucide', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(581, 'Sohn', 'fiu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(582, 'See', 'lac', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(583, 'Moment', 'moment', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(584, 'Rahmen', 'scară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(585, 'Frühling', 'primăvara', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(586, 'beobachten', 'a observa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(587, 'Konsonant', 'consoană', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(588, 'Nation', 'naţiune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(589, 'Wörterbuch', 'dicţionar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(590, 'Milch', 'lapte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(591, 'Geschwindigkeit', 'viteză', 'http://localhost/Zusammen/main/dictionary/audio/Geschwindigkeit.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(592, 'Methode', 'metodă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(593, 'Organ', 'organ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(594, 'Zahlen', 'a plati', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(595, 'Alter', 'vârstă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(596, 'Sektion', 'secțiune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(597, 'Kleid', 'rochie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(598, 'Wolke', 'nor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(599, 'Überraschung', 'surprinde', 'http://localhost/Zusammen/main/dictionary/audio/%c3%9cberraschung.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(600, 'ruhig', 'Liniște', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(601, 'Stein', 'piatră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(602, 'winzig', 'minuscul', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(603, 'steigen', 'a urca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(604, 'Design', 'design', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(605, 'Experiment', 'experiment', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(606, 'Unterseite', 'fund', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(607, 'Schlüssel', 'cheie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(608, 'Eisen', 'fier', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(609, 'eben', 'doar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(610, 'zwanzig', 'douăzeci', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(611, 'Haut', 'piele', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(612, 'Lächeln', 'zâmbet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(613, 'Falte', 'cută', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(614, 'Loch', 'gaură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(615, 'springen', 'a sări', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(616, 'acht', 'opt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(617, 'Dorf', 'sat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(618, 'Wurzel', 'rădăcină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(619, 'Kaufen', 'cumpărare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(620, 'lösen', 'rezolva', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(621, 'Metall', 'metal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(622, 'ob', 'dacă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(623, 'Sieben', 'șapte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(624, 'Absatz', 'paragraf', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(625, 'dritte', 'al treilea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(626, 'soll', 'trebuie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(627, 'Haar', 'păr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(628, 'beschreiben', 'a descrie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(629, 'Koch', 'bucătar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(630, 'Fußboden', 'podea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(631, 'entweder', 'fie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(632, 'brennen', 'a arde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(633, 'Hügel', 'deal', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(634, 'sicher', 'sigur', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(635, 'Katze', 'pisică', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(636, 'Jahrhundert', 'secol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(637, 'Art', 'tip', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(638, 'Recht', 'lege', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(639, 'bisschen', 'pic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(640, 'Küste', 'coasta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(641, 'Kopieren', 'copie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(642, 'Phrase', 'frază', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(643, 'Leise', 'tăcut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(644, 'Sand', 'nisip', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(645, 'rollen', 'rola', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(646, 'Temperatur', 'temperatura', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(647, 'Finger', 'deget', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(648, 'Industrie', 'industrie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(649, 'Wert', 'valoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(650, 'Kampf', 'luptă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(651, 'Lüge', 'minciună', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(652, 'schlagen', 'a bate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(653, 'begeistern', 'a excita', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(654, 'natürlich', 'natural', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(655, 'Aussicht', 'vedere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(656, 'Sinn', 'sens', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(657, 'Hauptstadt', 'capitală', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(658, 'Gewohnheit', 'obicei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(659, 'Stuhl', 'scaun', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(660, 'Achtung', 'pericol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(661, 'Obst', 'fructe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(662, 'Reich', 'bogat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(663, 'dick', 'gros', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(664, 'Soldat', 'soldat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(665, 'Prozess', 'proces', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(666, 'trainieren', 'a se practica', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(667, 'trennen', 'a separa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(668, 'Arzt', 'doctor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(669, 'Bitte', 'vă rog', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(670, 'schützen', 'a proteja', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(671, 'Mittag', 'amiază', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(672, 'Ernte', 'a decupa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(673, 'Modern', 'modern', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(674, 'Element', 'element', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(675, 'Schüler', 'elev', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(676, 'Ecke', 'colţ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(677, 'Party', 'petrecere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(678, 'liefern', 'a livra', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(679, 'Lokalisieren', 'a localiza', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(680, 'Ring', 'inel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(681, 'Charakter', 'caracter', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(682, 'Insekt', 'insectă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(683, 'gefangen', 'prins', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(684, 'Zeitraum', 'perioadă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(685, 'zeigen', 'a indica', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(686, 'Radio', 'radio', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(687, 'Atom', 'atom', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(688, 'Mensch', 'uman', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(689, 'bewirken', 'cauză', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(690, 'elektrisch', 'electric', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(691, 'erwarten', 'aşteptat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(692, 'Knochen', 'os', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(693, 'Schiene', 'șină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(694, 'zustimmen', 'de acord', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(695, 'sanft', 'blând', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(696, 'Frau', 'femeie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(697, 'Kapitän', 'căpitan', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(698, 'notwendig', 'necesar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(699, 'Scharf', 'ascuțit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(700, 'Flügel', 'aripă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(701, 'erstellen', 'a crea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(702, 'Nachbar', 'vecin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(703, 'waschen', 'a spăla', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(704, 'Schläger', 'băţ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(705, 'Menge', 'mulțime', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(706, 'Mais', 'porumb', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(707, 'vergleichen', 'comparaţie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(708, 'Gedicht', 'poem', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(709, 'Zeichenfolge', 'şir', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(710, 'Glocke', 'clopot', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(711, 'abhängen', 'depinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(712, 'Fleisch', 'carne', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(713, 'reiben', 'a freca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(714, 'Tube', 'tub', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(715, 'berühmt', 'faimos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(716, 'Dollar', 'dolar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(717, 'Strom', 'furtună', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(718, 'Angst', 'frică', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(719, 'Sicht', 'vedere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(720, 'dünn', 'subţire', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(721, 'Dreieck', 'triunghi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(722, 'Planet', 'planetă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(723, 'Eile', 'grabă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(724, 'Chef', 'şef', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(725, 'Kolonie', 'colonie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(726, 'Bergwerk', 'ceas', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(727, 'Krawatte', 'cravată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(728, 'eingeben', 'a introduce', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(729, 'frisch', 'proaspăt', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(730, 'Suche', 'căutare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(731, 'senden', 'a trimite', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(732, 'Gelb', 'galben', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(733, 'Gewehr', 'pistol', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(734, 'ermöglichen', 'a permite', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(735, 'drucken', 'a imprima', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(736, 'tot', 'mort', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(737, 'Stelle', 'loc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(738, 'Wüste', 'deşert', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(739, 'Aufzug', 'lift', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(740, 'Rose', 'Trandafir', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(741, 'ankommen', 'a ajunge', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(742, 'Meister', 'maestru', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(743, 'Elternteil', 'părinte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(744, 'Ufer', 'ţărm', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(745, 'Einteilung', 'diviziune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(746, 'Blatt', 'frunză', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(747, 'Substanz', 'substanţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(748, 'Gefallen', 'favoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(749, 'verbinden', 'conectat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(750, 'Post', 'post', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(751, 'Akkord', 'coard', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(752, 'Fett', 'gras', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(753, 'froh', 'bucuros', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(754, 'Original', 'original', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(755, 'Bahnhof', 'stație', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(756, 'Papa', 'tata', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(757, 'Brot', 'pâine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(758, 'aufladen', 'a încărca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(759, 'richtig', 'corect', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(760, 'Bar', 'bar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(761, 'Angebot', 'ofertă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(762, 'Segment', 'segment', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(763, 'Sklave', 'sclav', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(764, 'Ente', 'rață', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(765, 'sofortig', 'instantaneu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(766, 'Markt', 'piaţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(767, 'Grad', 'grad', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(768, 'bevölkern', 'a popula', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(769, 'Küken', 'puișor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(770, 'geehrter', 'drag', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(771, 'Feind', 'dușman', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(772, 'trinken', 'a bea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(773, 'auftreten', 'a apărea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(774, 'Unterstützung', 'susținere', 'http://localhost/Zusammen/main/dictionary/audio/Unterst%c3%bctzung.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(775, 'Rede', 'vorbire', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(776, 'Natur', 'natură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(777, 'Reichweite', 'gamă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(778, 'Dampf', 'aburi', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(779, 'Pfad', 'cale', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(780, 'Flüssigkeit', 'lichid', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(781, 'gemeint', 'însemnat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(782, 'Quotient', 'coeficient', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(783, 'Zähne', 'dinții', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(784, 'Schale', 'coajă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(785, 'Hals', 'gât', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(786, 'Sauerstoff', 'oxigen', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(787, 'Zucker', 'zahăr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(788, 'Tod', 'moarte', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(789, 'ziemlich', 'frumos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(790, 'Fertigkeit', 'pricepere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(791, 'Frauen', 'femei', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(792, 'Jahreszeit', 'sezon', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(793, 'Lösung', 'soluţie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(794, 'Magnet', 'magnet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(795, 'Silber', 'argint', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(796, 'danken', 'mulțumesc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(797, 'Ast', 'ramură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(798, 'Suffix', 'sufix', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(799, 'insbesondere', 'in mod deosebit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(800, 'Feige', 'smochină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(801, 'enorm', 'imens', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(802, 'Schwester', 'soră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(803, 'Stahl', 'oţel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(804, 'diskutieren', 'a discuta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(805, 'ähnlich', 'similar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(806, 'leiten', 'a ghida', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(807, 'Erfahrung', 'experienţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(808, 'Ergebnis', 'scor', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(809, 'Apfel', 'măr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(810, 'gekauft', 'cumparat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(811, 'Tonhöhe', 'pas', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(812, 'Mantel', 'palton', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(813, 'Masse', 'masă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(814, 'Karte', 'card', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(815, 'Band', 'grup', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(816, 'Seil', 'frânghie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(817, 'Unterhose', 'chiloți', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(818, 'Sieg', 'victorie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(819, 'Traum', 'vis', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(820, 'Abend', 'seară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(821, 'Bedingung', 'condiție', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(822, 'Werkzeug', 'instrument', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(823, 'gesamt', 'total', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(824, 'Geruch', 'miros', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(825, 'Senke', 'vale', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(826, 'doppelt', 'a dubla', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(827, 'Sitz', 'scaun', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(828, 'fortsetzen', 'a continua', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(829, 'Block', 'bloc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(830, 'Diagramm', 'diagramă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(831, 'Hut', 'pălărie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(832, 'verkaufen', 'a vinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(833, 'Erfolg', 'succes', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(834, 'Unternehmen', 'companie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(835, 'subtrahieren', 'a scădea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(836, 'Veranstaltung', 'eveniment', 'http://localhost/Zusammen/main/dictionary/audio/Veranstaltung.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(837, 'besonders', 'special', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(838, 'schwimmen', 'înot', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(839, 'Begriff', 'termen', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(840, 'Gegenteil', 'opus', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(841, 'Ehefrau', 'soție', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(842, 'Schuh', 'pantof', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(843, 'Schulter', 'umăr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(844, 'Verbreitung', 'răspândire', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(845, 'ordnen', 'a aranja', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(846, 'Lager', 'tabără', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(847, 'erfinden', 'a inventa', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(848, 'Baumwolle', 'bumbac', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(849, 'geboren', 'născut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(850, 'bestimmen', 'a determina', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(851, 'Quart', 'sfert', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(852, 'neun', 'nouă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(853, 'LKW', 'camion', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(854, 'Lärm', 'zgomot', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(855, 'Niveau', 'nivel', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(856, 'Chance', 'şansă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(857, 'versammeln', 'a aduna', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(858, 'strecken', 'întinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(859, 'werfen', 'a arunca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(860, 'Eigentum', 'proprietate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(861, 'Säule', 'coloană', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(862, 'Molekül', 'moleculă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(863, 'falsch', 'gresit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(864, 'grau', 'gri', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(865, 'wiederholen', 'a repeta', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(866, 'benötigen', 'a solicita', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(867, 'bereiten', 'a pregati', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(868, 'Salz', 'sare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(869, 'Nase', 'nas', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(870, 'Plural', 'plural', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(871, 'Zorn', 'furie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(872, 'Anspruch', 'revendicare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(873, 'Kontinent', 'continent', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(874, 'zuvor', 'odinioară', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(875, 'erstaunt', 'uluit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(876, 'entsetzt', 'îngrozit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(877, 'distanziert', 'departe', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(878, 'verhaftet', 'hărțuit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(879, 'Fluch', 'nenorocire', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(880, 'Glatze', 'cingătoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(881, 'Bucht', 'dafin', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(882, 'gebogen', 'îndoit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(883, 'besetzt', 'asediați', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(884, 'Steinhaufen', 'cairn', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(885, 'Carcanet', 'carcanet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(886, 'zechen', 'carouse', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(887, 'Carven', 'cioplit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(888, 'Katarakt', 'cataractă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(889, 'zierlich', 'plin de graţie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(890, 'Damast ', 'damasc', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(891, 'Dunkelheit', 'întunecată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(892, 'entmutigen', 'a descuraja', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(893, 'deklamieren', 'a declama', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(894, 'Traufe', 'streaşină', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(895, 'umkämpft', 'crenelat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(896, 'Schießscharte', 'ambrazură', 'http://localhost/Zusammen/main/dictionary/audio/Schie%c3%9fscharte.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(897, 'umfassen', 'a cuprinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(898, 'Irrtum', 'rătăcire', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(899, 'gern', 'fain', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(900, 'Echtheit', 'rapiditate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(901, 'Kitz', 'cafeniu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(902, 'vortäuschen', 'a preface', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(903, 'Fessel', 'încătuşare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(904, 'Oberbeleuchter', 'gaffer', 'http://localhost/Zusammen/main/dictionary/audio/Oberbeleuchter.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(905, 'widersprechen', 'supunere', 'http://localhost/Zusammen/main/dictionary/audio/widersprechen.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(906, 'Galopp', 'galop', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(907, 'Galgen', 'spânzurătoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(908, 'arglistig', 'viclean', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(909, 'Habergeon', 'habergeon', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(910, 'gesund', 'hale', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(911, 'aufhängen', 'a atârna', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(912, 'kaum', 'cu greu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(913, 'krank', 'bolnav', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(914, 'Strandgut', 'rebut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(915, 'Randstein', 'bordură', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(916, 'entzünden', 'a aprinde', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(917, 'Jalousie', 'jaluzele', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(918, 'Loth', 'loth', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(919, 'Lob', 'lob', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(920, 'abgeneigt', 'urât', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(921, 'lissom', 'mlădios', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(922, 'Liever', 'mincinos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(923, 'Blutegel', 'lipitoare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(924, 'Liga', 'ligă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(925, 'Übeltäter', 'răufăcător', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(926, 'beschädigen', 'măr', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(927, 'März', 'martie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(928, 'Met', 'mied', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(929, 'meed', 'tain', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(930, 'bloß', 'doar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(931, 'abgebaut', 'dispărut', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(932, 'Unheil', 'greșeală', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(933, 'Bedenken', 'răgaz', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(934, 'Mondschein', 'vorbe de clacă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(935, 'aufbringen', 'adunare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(936, 'unterste', 'cel mai de jos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(937, 'Feinheit', 'frumos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(938, 'nahe', 'aproape', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(939, 'Nachtschatten', 'umbră de noapte', 'http://localhost/Zusammen/main/dictionary/audio/Nachtschatten.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(940, 'laut', 'zgomotos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(941, 'Winkel', 'colţ', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(942, 'Ehrerbietung', 'ascultare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(943, 'oft', 'adesea', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(944, 'verdrängen', 'expulza', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(945, 'abgenutzt', 'uzat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(946, 'überwinden', 'a predomina', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(947, 'bleich', 'palid', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(948, 'Palette', 'panoplie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(949, 'Passward', 'trecător', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(950, 'Pastete', 'pateu', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(951, 'Penthouse', 'penthouse', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(952, 'Ritzel', 'pinion', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(953, 'Plätschern', 'plescăit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(954, 'Lustgarten', 'plăcere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(955, 'Pled', 'pledat', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(956, 'Plenilune', 'plenilune', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(957, 'Portage', 'portaj', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(958, 'Zeichen', 'semn', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(959, 'Stiche', 'înțepături', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(960, 'tiefgreifend', 'profund', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(961, 'prosy', 'prozaic', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(962, 'entwenden', 'filet', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(963, 'Wachtel', 'prepeliţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(964, 'Gewand', 'haine', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(965, 'Nachhut', 'spate', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(966, 'gereichen', 'a contribui', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(967, 'Wiedergutmachung', 'reparare', 'http://localhost/Zusammen/main/dictionary/audio/Wiedergutmachung.mp3', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(968, 'Miete', 'chirie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(969, 'Reparatur', 'reparație', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(970, 'Aufschub', 'răgaz', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(971, 'Festlichkeit', 'orgie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(972, 'Bächlein', 'grătar', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(973, 'gerundet', 'rotunjit', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(974, 'unhöflich', 'nepoliticos', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(975, 'bereuen', 'strada', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(976, 'Gerücht', 'zvon', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(977, 'Weide', 'salcie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(978, 'Saps', 'seve', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(979, 'Selenite', 'a seleniți', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(980, 'Anschein', 'înfățișare', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(981, 'Schatten', 'umbră', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(982, 'Schalotte', 'șalop', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(983, 'Schaft', 'coadă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(984, 'Garbe', 'snop', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(985, 'Schwarm', 'banc de nisip', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(986, 'meiden', 'evită', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(987, 'Slot', 'slot', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(988, 'Schnupftabak', 'snuff', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(989, 'Aufenthalt', 'ședere', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(990, 'beruhigen', 'a calma', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(991, 'Ausfall', 'eșec', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(992, 'Gehölz', 'Lemn', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(993, 'Sprint', 'sprint', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(994, 'Stengel', 'tulpina', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(995, 'bücken', 'a se apleca', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(996, 'alsbald', 'curând', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(997, 'verklagt', 'dat în judecată', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(998, 'Beistand', 'asistenţă', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(999, 'Nachname', 'nume de familie', '', 1);
INSERT INTO `worterbuch` (`idWord`, `word`, `translation`, `audioPath`, `idLanguage`) VALUES(1000, 'Spitzname', 'Poreclă', '', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indizes für die Tabelle `grammar`
--
ALTER TABLE `grammar`
  ADD PRIMARY KEY (`idGrammar`);

--
-- Indizes für die Tabelle `grammarinvoice`
--
ALTER TABLE `grammarinvoice`
  ADD PRIMARY KEY (`idGrammar`,`idQuestion`);

--
-- Indizes für die Tabelle `listening`
--
ALTER TABLE `listening`
  ADD PRIMARY KEY (`idListening`);

--
-- Indizes für die Tabelle `listeninginvoice`
--
ALTER TABLE `listeninginvoice`
  ADD PRIMARY KEY (`idListening`,`idQuestion`);

--
-- Indizes für die Tabelle `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indizes für die Tabelle `personen`
--
ALTER TABLE `personen`
  ADD PRIMARY KEY (`idPerson`);

--
-- Indizes für die Tabelle `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Indizes für die Tabelle `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`idReading`),
  ADD UNIQUE KEY `const` (`title`);

--
-- Indizes für die Tabelle `readinginvoice`
--
ALTER TABLE `readinginvoice`
  ADD PRIMARY KEY (`idReading`,`idQuestion`);

--
-- Indizes für die Tabelle `sprache`
--
ALTER TABLE `sprache`
  ADD PRIMARY KEY (`idLanguage`);

--
-- Indizes für die Tabelle `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`idVocabulary`);

--
-- Indizes für die Tabelle `vocabularyimage`
--
ALTER TABLE `vocabularyimage`
  ADD PRIMARY KEY (`idImage`);

--
-- Indizes für die Tabelle `vocabularyinvoice`
--
ALTER TABLE `vocabularyinvoice`
  ADD PRIMARY KEY (`idVocabulary`,`idQuestion`);

--
-- Indizes für die Tabelle `worterbuch`
--
ALTER TABLE `worterbuch`
  ADD PRIMARY KEY (`idWord`),
  ADD UNIQUE KEY `word` (`word`),
  ADD KEY `FK` (`idLanguage`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `grammar`
--
ALTER TABLE `grammar`
  MODIFY `idGrammar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT für Tabelle `listening`
--
ALTER TABLE `listening`
  MODIFY `idListening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT für Tabelle `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `personen`
--
ALTER TABLE `personen`
  MODIFY `idPerson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `questions`
--
ALTER TABLE `questions`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT für Tabelle `reading`
--
ALTER TABLE `reading`
  MODIFY `idReading` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT für Tabelle `sprache`
--
ALTER TABLE `sprache`
  MODIFY `idLanguage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `idVocabulary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `vocabularyimage`
--
ALTER TABLE `vocabularyimage`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `worterbuch`
--
ALTER TABLE `worterbuch`
  MODIFY `idWord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `worterbuch`
--
ALTER TABLE `worterbuch`
  ADD CONSTRAINT `FK` FOREIGN KEY (`idLanguage`) REFERENCES `sprache` (`idLanguage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
