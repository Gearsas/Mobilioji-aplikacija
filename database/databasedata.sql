-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2022 m. Bir 27 d. 12:18
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18674286_random`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `eksponatai`
--

CREATE TABLE `eksponatai` (
  `id` int(11) NOT NULL,
  `pav` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `extra` text COLLATE utf8_unicode_ci NOT NULL,
  `museum` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `eksponatai`
--

INSERT INTO `eksponatai` (`id`, `pav`, `data`, `extra`, `museum`) VALUES
(1, 'Jak-50', 'Jak-50 yra vienvietis akrobatinio pilotažo lėktuvas, pagamintas 1977 metais. Tai pirmas šio modelio lėktuvas Lietuvoje, gautas tiesiai iš gamyklos. Kadangi akrobatiniams lėktuvams yra suteikiamas santykinai nedidelis skraidymo valandų skaičius, gavus visiškai naują lėktuvą, atsirado daugiau galimybių kelti pilotažo meistriškumo lygį. Lietuvos aviacinio sporto klubuose šio modelio lėktuvai buvo naudojami pilotažo stovyklose, treniruotėse ir varžybose. Su šios serijos lėktuvais Sovietų Sąjungos aukštojo pilotažo čempionais yra tapę Jurgis Kairys (1978 m.), Steponas Artiškevičius (1979 m.), Rolandas Paksas (1980 m., 1981 m.). Po tragiškos lakūno S. Artiškevičiaus žūties 1981 m. (nelaimė įvyko dėl Jak-50 lėktuvo sparno lonžerono įtrūkimo), šiuos lėktuvus buvo leista naudoti tik treniruočių metu klubuose. 1983 m. žuvus kitam šio modelio lėktuvu skridusiam lakūnui, Sovietų Sajungos čempionui S. Gomyliajevui, – Jak-50 buvo leista naudoti tik skraidymui rikiuotėje (be akrobatinio pilotažo).', 'https://arvr.google.com/scene-viewer/1.0?file=https://raw.githubusercontent.com/Raviolliox/models/main/Yakk.gltf', 'Lietuvos Aviacijos Muziejus'),
(2, 'Revolveris', 'Revolveris – nedidelis vienvamzdis pistoleto tipo rankinis šaunamasis ginklas, turintis, skirtingai nuo automatinio ar savitaisio pistoleto, besisukančią būgnelio pavidalo šovinių dėtuvę.', 'https://arvr.google.com/scene-viewer/1.0?file=https://raw.githubusercontent.com/Raviolliox/models/main/revolver.gltf', 'Kauno karo muziejus'),
(3, 'cherokke', 'Tai lėktuvas, kuriuo 1993 m. liepos 15–19 d. lakūnai Edvardas Slušnys ir Jonas Juknius perskrido Atlantą ir pasiekė Kauną.\r\n„Piper PA-28-140 Cherokee“ yra vienmotoris keturvietis lėktuvas su trirate neįtraukiama važiuokle, pagamintas 1964 m. Pripylus\r\n pilnus bakus degalų, šiuo orlaiviu galėjo nuskristi 1285 km, todėl juo Atlantą pilotai įveikė su tarpiniais nusileidimais Kanadoje, Grenlandijoje, Islandijoje ir Norvegijoje.\r\nLėktuvo išorę greta kitų emblemų puošia užrašai: „Žemaičių kultūros draugija“, „1993 metais šiuo lėktuvu žemaičiai J. Juknius ir E. Slušnys perskrido Atlantą“ bei Lietuvos\r\nsklandymo federacijos ir Žemaičių kultūros draugijos „Patria Una“ lipdukai. Po transatlantinio skrydžio lėktuvą buvo perėmusi Žemaičių kultūros draugija. Ji lėktuvą iki\r\nperdavimo Lietuvos aviacijos muziejui naudojo Telšių aeroklube.', 'https://arvr.google.com/scene-viewer/1.0?file=https://raw.githubusercontent.com/Raviolliox/models/main/Cherokee3.gltf', 'Kauno Aviacijos muziejus'),
(4, 'LAK-12E', 'Tai pirmasis 25 metrų sparnų mojo sklandytuvas Lietuvoje.\r\nLAK-12E yra eksperimentinis atviros klasės sklandytuvas, pagamintas 1988 m. Jo sparnų apačioje,\r\nsiekiant aerodinaminės kokybės pagerinimo, įrengta paviršinio sluoksnio nupūtimo įranga su orgaudžiais.\r\nTam, kad per juos pakliuvęs oro srautas pasiskirstytų ir sumažintų pasipriešinimą, sparnų viršuje ir apačioje\r\nprigręžta skylučių. Ant vieno sparno jų yra – 788. Tokia įranga sklandytuvuose vėliau nebetaikyta dėl projektavimo\r\nir priežiūros sudėtingumo. Bandymai su sklandytuvu nuo 1989 m. vasaros nebevykdomi.', 'https://arvr.google.com/scene-viewer/1.0?file=https://raw.githubusercontent.com/Raviolliox/models/main/LAK12FinishedGLTF.gltf', 'Kauno aviacijos muziejus');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sukurta duomenų kopija lentelei `Users`
--

INSERT INTO `Users` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, '', 'email', 'username', '$2y$10$i0hzTv4pnF4rgqpphfKrp.UEhwnTPZkrSRbFY7it8bo92z8p5WyXy'),
(2, '', 'gmailas', 'userneimas', '$2y$10$CO6A7qF54JdcqCehvuEAjuuGI74LvcQ8TO62GIoZzM1hKUAjhTZkq'),
(3, 'fdss', 'ffddd', 'dfffff', '$2y$10$fHRhR32DiSBMk9rwfuHGje0W84V9MQTDbobqUaBjA9gYk2OJGJBI2'),
(4, 'tgfyh', 'yfvv', 'tfvbj', '$2y$10$IaKRAUZc7112HmOy8md.yeOwxiaw9ozOBbAqrh/Lz5ZWMEZS7i082'),
(5, 'fsc', 'vxh', 'htg', '$2y$10$Xa2K8IkvR2LaMtnStpqwg.RQaNLXNgzlB/DPst5HRaxgLIOiwsYLO'),
(6, 'testas', 'testas', 'testas', '$2y$10$Ed4T6XbDYhDbcSpInMYcb.HZKtSUg01/pglAUDK.I4YVWGRft7yTK'),
(8, 'testukas', 'testukaas', 'oka', '$2y$10$Ot1wwIbwK8ze6tT2CCOSkukaV.cHWflB/qKg7pKku83W5eYBw2m3e'),
(9, 'eksdy', 'wdfss', 'zcsscf', '$2y$10$b5qtRk9sZ9lj1D4E.sGuwuKPbkfVa8AsDYXeUTgT/79twkA18f8lm'),
(10, 'bruh', 'eksdy', 'nub', '$2y$10$YTCTFjsDnzFV9ubNQOwV9uoaE7j9eGwl6BxhWhyqrLv/3e4OsKPmG'),
(11, 'ctvt', 'dfd', 'byby', '$2y$10$vYq/yMBuoQkvMYGq.VbFheqLLgV3UQVe/tS17voxv5AfLBBAxsF2O'),
(12, 'ywjdfe', 'cescde', 'cfdscd', '$2y$10$/pHg11AxyeNIr8JvjoN6rOziWGji/VDWNUe5SwfVTqrl7bcqNkpO6'),
(13, 'taip', 'naip', 'rwsd', '$2y$10$BSb97tzE9U22C0tBQmql/.VQ1vOzbzjGoZs0fpamhjn77Vlgiqiw2'),
(14, 'nudavai', 'bandom', 'sutvarkyr', '$2y$10$EjbaQ6Mznw72hKaKIBAn3u20GQ4yXM1PUGQ8pk45l5BWObJgH81fu'),
(15, 'v2', 'ddfvv', 'cvff', '$2y$10$rXaM9Q4NACIzzzADssAehezMofTB2a3mXYoD38UFWFF5Cn4hkum5G'),
(16, '122', 'dff', 'cvgf', '$2y$10$KmsKju4WVCpaBXxICUsAYOUsjZYiH0AhdAcdJ6HCH/Jm1X.O5w4cu'),
(17, '123', 'jgfv', 'gcghj', '$2y$10$SCdH4hs.V/5bJcVHlrIZ4O4jGMWtxztMrcndljRkrpp8T.r2Qqh4a'),
(18, '124', 'vbjg', 'gdvv', '$2y$10$jQYOulq676S78em.MGzZdu0uSYRLO8pfH9bcl35n2BEcEO4qhL08u'),
(19, '125', 'd vcxcvfd', 'ddcc', '$2y$10$EJcNq74jLZc75FaFuOYiMeRgivq6I0AdQO6a.0tEXOrFzLL9oj8UO'),
(20, '126', 'dsffec', 'edgrdvf', '$2y$10$3oh.B7SgjzHguP4QE.MOve5sAd1N5gO9WBI9tkBrjpzSCFOYV10cG'),
(21, 'asffd', 'admin', 'admin', '$2y$10$3FBzYemc3yMVzxd35Aijke2OHTj.8FdnAlSJwsazbIy/eT.J3GD/u'),
(22, 'ajaja', 'eacfss', 'cedvfe', '$2y$10$9.NTjev34aeQDXaqG308aO8h6u0Vw9wq3/fGJkG5s1m.VQA6BNcMi'),
(24, '127', 'kahsveg', 'exvfesv', '$2y$10$QkCCHiOQSNzPMXLN1sDsJulcTBQ2x5l9s.e4l.KT3WyKz.GAne0kK'),
(25, '128', 'kahsvegtr', 'exvfesvfd', '$2y$10$.MJB5NCszCLGJ7syb7CiaOQ/yhaC2DMdHVGg.AuGRZsUxfnDZ58/W'),
(26, '129', 'hcygubihi', 'ufycjvj', '$2y$10$pEpuUnj3V4NMbbf3Ed/1P.QMhbMiX1J24Bwfmy781yZU99/ShOXLu'),
(27, '130', 'uvudycupv', 'ufycjvjctc ', '$2y$10$uk/QQpbkarp9Ape1fOOiJOvPNZy1wmdsbxw2v6XbSEu5c9WJzjTlu'),
(28, '131', 'uvjbufyf', 'svsuvjbed', '$2y$10$Mt9Wuu15w6r/P/V/sZvbL.bLdVO8u3Mc9ttK5uHJy.uhb3HWWt2s.'),
(29, 'we', 'decf', 'escd', '$2y$10$9.nzFg9OOaCrrXSvbwesjeU3BZPJRKOWvszjoNmD5XXcJhCrazv0y'),
(30, 'qheheve', 'grfgrd', 'fecgrd', '$2y$10$UumKjwxlldKwTBixz1tGZeD1DqUCuSrBiIVmvVKuhJe1xBgmSEe.a'),
(31, 'vardenis', 'vardenis@gmail.com', 'vardenis', '$2y$10$XVsuleK0n303BO0IksaUjOiwzxV/gtUhtU8ag6WMa4buPBB1TOfPS'),
(32, 'vardas', 'vardas@gmail.com', 'vardas', '$2y$10$ykmpLo1RHprD41PHGRKzs.zjmepqMa1D9u34ZuTEKBELQzgyc7JXK'),
(33, 'vardas1', 'vardass@gmail.com', 'vardas1', '$2y$10$8RV9FdzzIvlysJ241l5fo.1sJMjgj3xYeR.wQDUGkLno1nARkCGMO'),
(34, 'naujas', 'naujas@gmail.com', 'naujas', '$2y$10$sBx5Ng/6Hm4tCjn8drtrNeTM9T0ouskWRDKHuZjijFYyXcPZJsQ4i'),
(35, 'aa', 'a', 'a', '$2y$10$XjFF/jXNNsRZ6i77OZJnROLDW0t4QL8FcpzzmJDCLqQSdpdql7Klu'),
(36, 'd', 'd', 'd', '$2y$10$tRpZ2yc9sjeYTb2IWfgs4.itTlkJNCQH08XGDRshrTnHEJfquAOZO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eksponatai`
--
ALTER TABLE `eksponatai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eksponatai`
--
ALTER TABLE `eksponatai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
