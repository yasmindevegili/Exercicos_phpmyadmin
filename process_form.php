<?php
//Database connection details to mySQL
$host = 'localhost'; 
$user = 'aluno'; 
$passw = 'aluno'; 
$dbname = 'atv_prt_043_bd';

//Make a connection to the database
$link = mysqli_connect($host, $user, $passw, $dbname) or die
("Unable to connect!");

$fabricante = $_POST['fabricante'];
$ano_fabricacao = $_POST['ano_fabricacao'];
$quilometragem = $_POST['quilometragem'];

//Create the SQL query
$query = "INSERT INTO autos (fabricante, ano_fabricacao, quilometragem) VALUES ('$fabricante', '$ano_fabricacao', '$quilometragem')";
$result = mysqli_query($link, $query) or die ("Error in query");

mysqli_close($link);

?>
</body>
</html>