<?php

$hostname = "localhost";
$nombreUsuario = "root";
$password = "root";

$conexion = mysqli_connect($hostname , $nombreUsuario, $password);

mysqli_select_db($conexion, "ejercicioPrueba1");

if (!$conexion) {
    die("Connection failed: " . mysqli_connect_error());
}

$consultaAlumnos= mysqli_query($conexion,"SELECT * FROM alumnos");
$consultaEmpresas = mysqli_query($conexion,"SELECT * FROM empresas");

$datosAlumnos = mysqli_fetch_all($consultaAlumnos,MYSQLI_ASSOC);
$datosEmpresas = mysqli_fetch_all($consultaEmpresas,MYSQLI_ASSOC);

var_dump($datosAlumnos);
echo "<br>";
echo "<br>";
var_dump($datosEmpresas);