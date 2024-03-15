
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `admin_user` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `admin_login` (`id`, `name`, `admin_user`, `admin_password`, `admin_status`) VALUES
(13, 'Malal Dia', 'malaldia@gmail.com', '$2y$12$ZS8Xb7xjMMKRidFayE7Vu.I7dEWI0.2ViMG6ubkuCpjX5Yc5PNNnG', 'Admin'),
(14, 'Souleymane sall', 'souleymane@gmail.com', '$2y$12$FmYvhM7ddwlB8da1OOUNj.FKO7fpSpvYy67JvE.fb6djyhVum0Odq', ''),
(15, 'khadija Aidara', 'khadija@gmail.com', '$2y$12$zLYmXNSwyGP7Fx3c3hAeXOcqT7xZywaXNSR7WGeZqb7YzzaQcRety', ''),
(16, 'admin', 'admin@gmail.com', '$2y$12$2MbvU7cePjvRFEBdnKN54.67lI98BtoJWh.gvKSAE7rNvnz7xMZYe', 'Admin');


CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `history_log` (`log_id`, `id`, `email_address`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 3, 'malal@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 06:55 AM', 'Mar-15-2024 06:56 AM'),
(0, 5, 'naruto@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 06:58 AM', 'Mar-15-2024 06:58 AM');


CREATE TABLE `history_log1` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `history_log1` (`log_id`, `id`, `admin_user`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(0, 13, 'malaldia@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 06:53 AM', 'Mar-15-2024 03:03 PM'),
(0, 13, 'malaldia@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 06:59 AM', 'Mar-15-2024 03:03 PM'),
(0, 13, 'malaldia@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 03:02 PM', 'Mar-15-2024 03:03 PM'),
(0, 16, 'admin@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 03:03 PM', ''),
(0, 13, 'malaldia@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'DESKTOP-RGVQ0R6', 'Mar-15-2024 10:35 PM', '');


CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_address` text NOT NULL,
  `user_password` text NOT NULL,
  `user_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `login_user` (`id`, `name`, `email_address`, `user_password`, `user_status`) VALUES
(3, 'Malal Dia', 'malal@gmail.com', '$2y$12$nt.Q4TNvcNz.sWipqGyZaO2cxRfGNJnyC5Ewt9fvN2MyDC0RgxB7C', ''),
(4, 'gojo saturo', 'gojo@gmail.com', '$2y$12$9co60anARNhXVHvN/ghCFOH/NMNMtq45EZTNg/8wVnNdF2FwBnJai', 'Etudiant'),
(5, 'naruto uzumaki', 'naruto@gmail.com', '$2y$12$OUs8YoBD6qOPTjheMMYCJu3xWATfkAAs8ClEjFHaMMpHN7thNVa6u', 'Etudiant');


CREATE TABLE `upload_files` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `TIMERS` varchar(200) NOT NULL,
  `ADMIN_STATUS` varchar(300) NOT NULL,
  `EMAIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `upload_files` (`ID`, `NAME`, `SIZE`, `DOWNLOAD`, `TIMERS`, `ADMIN_STATUS`, `EMAIL`) VALUES
(4, 'memoire 2.pdf', '221168', '2', 'Mar-15-2024 06:28 AM', 'Admin', 'Khadija Aidara'),
(5, 'memoire 3.pdf', '1184025', '0', 'Mar-15-2024 06:29 AM', 'Admin', 'Khadija Aidara'),
(6, 'memoire 5.pdf', '564963', '0', 'Mar-15-2024 06:38 AM', 'Admin', 'Souleymane Sall'),
(7, 'memoire 6.pdf', '221168', '0', 'Mar-15-2024 06:39 AM', 'Admin', 'Souleymane Sall'),
(8, 'memoire 7.pdf', '1184025', '0', 'Mar-15-2024 06:40 AM', 'Admin', 'Malal Dia'),
(9, 'memoire 8.pdf', '564963', '0', 'Mar-15-2024 06:40 AM', 'Admin', 'Malal Dia');

ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `upload_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;


