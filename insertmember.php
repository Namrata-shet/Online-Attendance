<?php
  if(isset($_POST["btnsubmit"]))
  {
  	extract($_POST);
  	include "z_db.php";
	  $rec = $con->query("SELECT member_id FROM member order by member_id desc limit 1");
  	
    if($rec=mysqli_fetch_array($rec))
  	{
  		$bid= 1+ $rec['member_id'];
      
  	}
    $rec = $con->query("SELECT enrollment_no FROM member order by enrollment_no desc limit 1");
    
    if($rec=mysqli_fetch_array($rec))
    {
      $en= 1+ $rec['enrollment_no'];
    }

  
    $query = "INSERT INTO member VALUES ('', '$en','$name','$mobile','$email')";
    $q = $con->query($query)or die("insert error");
           print "<script>";
           print "alert('Member add successfully....');";
           print "self.location='index.php';";
           print "</script>";
    }else {
       	header("location:index.php");
    }

?>