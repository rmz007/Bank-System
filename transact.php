<?php 
	session_start();
	include 'connection.php';

	if(isset($_GET['name'])){
		$name=$_GET['name'];
	}

	$q="select * from customers where name='$name'";
	$result=mysqli_query($con,$q);
	$row_count=mysqli_num_rows($result);
	$_SESSION['name']=$name;
?>

<html>
<head>
	<title>transact</title>
	<link rel = "stylesheet" type = "text/css" href = "menu.css">
	<link rel = "stylesheet" type = "text/css" href = "Headerbtn.css">
	<style>
		table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		width: 100%;
		}

		h1{
		font-family: gabriola;
		font-size:40px;
		}
		
		td, th {
		border: 1px solid #dddddd;
		text-align: center;
		padding: 8px;
		}

		tr:nth-child(even) {
		background-color: #dddddd;	
		}
	</style>
</head>

<body style="background-image: url('cust.jpg');">
	<div align="center" style="top:0px">        
		<table width="1316" align="center" class = "t">
			<tr>
            <td style = "text-align:center"><a href="index.php" target="frame"> <button class = "btn2"> Home </button></td>	 	
			<td style = "text-align:center"><a href="custDetails.php" target="frame"><button class = "btn2">Customers</button></a></td>
			<td style = "text-align:center"><a href="selectuser.php" target="frame"><button class = "btn2">Transact</button></a></td>
			<td style = "text-align:center"><a href="history.php" target="frame"><button class = "btn2">Transaction History</button></a></td>
			</tr>
        </table>	
	<div>
		<h1 align=center font-family=gabriola>User Information</h1>
		<h3 align=left font-family=gabriola>Transact from</h1>
		<table style="background-image: url('blue.png');">
           <th>ID</th>
           <th>NAME </th>
           <th>EMAIL</th>
		   <th>ACCOUNT NUMBER</th>
		   <th>CURRENT BALANCE</th>
		   <th>LOCATION</th>
           <tr>
		   
			<?php  
				$row=mysqli_fetch_array($result);
			?>
			
			<td><?php echo  $row["id"]; ?></td>
			<td><?php echo  $row["name"]; ?></td>
			<td><?php echo  $row["email"]; ?></td>
			<td><?php echo  $row["acc_no"]; ?></td>
			<td><?php echo  $row["balance"]; ?></td>
			<td><?php echo  $row["location"]; ?></td>
           </tr>
        </table>
	</div>
        
	<?php echo "<form method='post' action='transaction.php?name=$name'>"?><br><br>
	
	<h3 align=left font-family=gabriola>Transact To</h1><br>
	<table border="0px" style="background-image: url('blue.png');">
		<tr>
		<td>Transfer To:</td>
		<td><select name="user">
			<option>--Select--</option>
   
			<?php  
				$q1="select * from customers";
				$result1=mysqli_query($con,$q1);
				while($row=mysqli_fetch_array($result1)){
			?>

			<option value="<?php echo $row['name']; ?>"> <?php echo $row["name"]; ?></option>

			<?php }
			?>
			
            </select></td></tr> 
			<tr><td>Amount:</td><td><input type="text" name="amount"></td></tr>
			<tr><td></td><td><input type="submit" name="submit" value="Submit" align=center style="margin-top: 10px; width:6em; height:2em; font-size:15px; background-color: #6699ff; font-weight: bold;"></td></tr>
	</table>

</form>
<br><br><br>

<?php include 'footer.php'; ?>

</body>
</html>