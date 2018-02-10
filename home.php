<?php  
	ob_start();
	session_start();

	require_once 'db_connection.php';

	// // if session is not set this will redirect to login page
	// if( !isset($_SESSION['users']) ) {
	// 	header("Location: index.php");
	// 	exit;
	// }

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
	<title>Big Library</title>

	<link rel="stylesheet" type="text/css" href="style.css">

	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- font -->
	<link href="https://fonts.googleapis.com/css?family=Dancing+Script|Great+Vibes" rel="stylesheet">
</head>
<body>

	<header id="header" class="">
		<h1>Welcome to the big Library, <?php echo $userRow['userName']; ?>!</h1>
		<h3><?php echo $userRow['userName']; ?></h3>


	</header><!-- /header -->
	<nav class="navbar navbar-dark bg-primary">
		<ul class="nav nav-pills">
			<li>
				<button class="btn">
					<a href="logout.php?logout">Sign Out</a>
				</button>
			</li>  	    
	  	</ul>
	</nav>
		

	<div class="container">

		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Cover</th>
					<th>ISBM</th>
					<th>Title</th>
					<th>Author/interpret</th>
					<th>short description</th>
					<th id="thA">publishing date</th>
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
		
	</div>
</body>
</html>

<?php ob_end_flush(); ?>