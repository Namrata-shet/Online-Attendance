<?php
	include "z_db.php";
	$member_id = $_GET['d'];

	$deleteQuery = "DELETE FROM member WHERE member_id = '$member_id' LIMIT 1;";
	if($con->query($deleteQuery)) {
		print "<script>";
		print "alert('member deleted successfully....');";
		print "self.location='viewmember.php';";
		print "</script>";
	}  else {
		echo "ERROR";
	}
?>