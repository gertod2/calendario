
CREATE TABLE `Usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` VARCHAR(200) NOT NULL,
  `apellidosUsuario` VARCHAR(200) NOT NULL,
  `correoUsuario` VARCHAR(200) NOT NULL,
  `nivelAcceso` int(1) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


CREATE TABLE `Evento` (
  `idEvento` int(11) NOT NULL,
  `nombreEvento` VARCHAR(200) NOT NULL,
  `HorafechaEvento` DATETIME NOT NULL,
  `urlSesion` int(1) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE `Reservacion` (
  `idReservacion` int(11) NOT NULL,
  `idEvento` int(11) NOT NULL,
  `usuarioAlumno` VARCHAR(11) NOT NULL,
  `nombreAlumno` VARCHAR(11) NOT NULL,
  `correoAlumno` VARCHAR(11) NOT NULL,
  `tipoReservacion` VARCHAR(11) NOT NULL,
  `limiteReservacion` int(11) NOT NULL,
  `statusReservacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
