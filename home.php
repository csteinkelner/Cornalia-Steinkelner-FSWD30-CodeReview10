<?php  
	ob_start();
	session_start();

	require_once 'db_connection.php';

	// if session is not set this will redirect to login page
	if( !isset($_SESSION['user']) ) {
		header("Location: index.php");
		exit;
	}

	$res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);

	$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);

	$sql = "SELECT * FROM media";
	// $sql = "SELECT name, surname FROM author_interpret";
	// $sql = "SELECT name FROM publisher";
	// $sql = "SELECT type FROM type";
	$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	Hi' <?php echo $userRow['userName']; ?>

	<a href="logout.php?logout">Sign Out</a>

<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>Cover</th>
			<th>ISBM</th>
			<th>Title</th>
			<th>Author/interpret</th>
			<th>short description</th>
			<th>publishing date</th>
			<th>publisher</th>
			<th>type</th>
		</tr>
	</thead>
	<tbody>
		<?php 
			while ($row = mysqli_fetch_assoc($result)) {
				echo 
					" 
					<tr>
						<td>".$row["media_id"]."</td>
						<td> <img src='".$row["image"]."'></td>
						<td>".$row["ISBN_code"]."</td>
						<td>".$row["title"]."</td>
						<td>".$row["fk_author_id"]."</td>
						<td>".$row["short_description"]."</td>
						<td>".$row["publish_date"]."</td>
						<td>".$row["fk_publisher_id"]."</td>
						<td>".$row["fk_type_id"]."</td>
					</tr>
					";
			};
		?>
	</tbody>
</table>

</body>
</html>

<?php ob_end_flush(); ?>