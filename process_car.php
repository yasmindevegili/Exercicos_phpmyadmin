<!DOCTYPE html>
<html>
<head>
<title>Carros</title>
</head>
<body>
<form action="process_form.php" method="post">
<h2>Carros</h2>
<?php
//Database connection details to mySQL
$host = 'localhost'; 
$user = 'aluno'; 
$passw = 'aluno'; 
$dbname = 'atv_prt_043_bd';

//Make a connection to the database
$conn = mysqli_connect($host, $user, $passw, $dbname) or die("Unable to connect!");
//Create the SQL query
$query = "SELECT auto_id, fabricante, ano_fabricacao, quilometragem FROM autos ORDER BY auto_id ASC";
$result = mysqli_query( $conn, $query ) or die ("Error in query");

//Fetch the result into an associative array
while ( $row = mysqli_fetch_assoc( $result ) ) {
$table[] = $row; //add each row into the table array
}

?>
<table>
<tr>
<td><strong>ID</strong></td>
<td width="20">&nbsp;</td>
<td><strong>Fabricante</strong></td>
<td width="20">&nbsp;</td>
<td><strong>Ano de Fabricação</strong></td>
<td width="20">&nbsp;</td>
<td><strong>Quilômetragem</strong></td>

</tr>
<?php

if ($table) { //Check if there are any rows to be displayed
//Retrieve each element of the array
foreach($table as $d_row) {

?>
<tr>
<td><?php echo($d_row["auto_id"]); ?></td>
<td width="10">&nbsp;</td>
<td><?php echo($d_row["fabricante"]); ?></td>
<td width="10">&nbsp;</td>
<td><?php echo($d_row["ano_fabricacao"]); ?></td>
<td width="10">&nbsp;</td>
<td><?php echo($d_row["quilometragem"]); ?></td>
</tr>

<?php

}
}

?>
</table>
<p>Número de Registros : <?php echo(mysqli_num_rows($result)); ?></p>

<?php

mysqli_close($conn);

?>
</body>
</html>