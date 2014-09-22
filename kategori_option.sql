-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Eyl 2014, 23:34:10
-- Sunucu sürümü: 5.6.16
-- PHP Sürümü: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `kategori_option`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alt_kategoriler`
--

CREATE TABLE IF NOT EXISTS `alt_kategoriler` (
  `alt_kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_kategori_adi` varchar(100) NOT NULL,
  `alt_ana_kategori` int(11) NOT NULL,
  PRIMARY KEY (`alt_kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `alt_kategoriler`
--

INSERT INTO `alt_kategoriler` (`alt_kategori_id`, `alt_kategori_adi`, `alt_ana_kategori`) VALUES
(1, 'alt_kat1', 1),
(2, 'alt_kat1', 1),
(3, 'alt_kat2', 2),
(4, 'alt_kat2', 2),
(5, 'alt_kat3', 3),
(6, 'alt_kat3', 3),
(7, 'alt_kat4', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_kategori`
--

CREATE TABLE IF NOT EXISTS `ana_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(100) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Tablo döküm verisi `ana_kategori`
--

INSERT INTO `ana_kategori` (`kategori_id`, `kategori_adi`) VALUES
(1, 'ana_kat'),
(2, 'ana_kat2'),
(3, 'ana_kat3'),
(4, 'ana_kat3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
