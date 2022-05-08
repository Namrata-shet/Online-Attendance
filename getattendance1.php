<?php
if (isset($_POST["btnsubmit"]))
 {
     include "z_db.php";
     // var_dump($_POST);

     $year = $_POST["cyear"];
     $month = $_POST["cmonth"];
     $cdate = $_POST["cdate"];

     // $date = $_POST["cyear"] ."-".$_POST["cmonth"]."-".$_POST["cdate"];
     $date = $year ."-". $month ."-". $cdate;

     $query ="select * from member";
     $result = $con->query($query)or die("select error");

     // var_dump($result);
     $members = [];

     foreach ($result as $member) {
        $members[] = $member;
     }

     /* Debug purpoe only
     foreach ($members as $member) {
        echo $member["member_id"] ." ". $member["enrollment_no"] ." ". $member["mobile"] ." ". $member["email"] ."<br />";
     }
     */

     foreach($members as $member)
      {
     		$mno =$member["member_id"];
     		if(isset($_POST[$mno]))
     		{
     		   $query1 ="INSERT INTO attendance VALUES ('', '$mno','$date','1')";

     		 } else {
     		   	 $query1 ="INSERT INTO attendance VALUES ('', '$mno','$date','0')";
                }

     		   	 $con->query($query1) or die("insert error".$mno);
     		   	 print"<script>";
     		   	 print "alert('attandance get successfully....');";
                 print "self.location='getattendance1.php';";
                 print"</script>";
     	}
} else {
	header("Location:index.php");
    }

?>