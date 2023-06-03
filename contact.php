<?php
use PHPMailer\PHPMailer\PHPMailer;

require_once 'PHPMailer/src/Exception.php';
require_once 'PHPMailer/src/PHPMailer.php';
require_once 'PHPMailer/src/SMTP.php';

$mail = new PHPMailer(true);

$alert= '';

if(isset($_POST['submit'])){
    $userName = $_POST['name'];
    $userEmail = $_POST['email'];
    $messageSubject = $_POST['subject'];
    $message = $_POST['message'];

    try{
        $mail->isSMTP();
        $mail->Host='smtp.gamil.com';
        $mail->SMTPAuth= true;
        $mail->Username = 'yourmail@gmail.com';
        $mail-> Password='dbgodnswmimolrij';
        $mail->SMTPSecure='tls';
        $mail->Port='587';

        $mail->setFrom('yourmail@gmail.com');
        $mail->addAddress('ijadijukaj123@gmail.com');

        $mail->isHTML(true);
        $mail->Subject='Message Received from Contact:'.$name;
        $mail->Body= "Name: $name <br>Email: $userEmail <br>Subject: $messageSubject <br>$message";

        $mail->send();
        $alert= "<div class='alert-success'><span>Message Sent! Thanks for contacting u.</span></div>";
    } catch(Exception $e){
        $alert ="<div class='alert-error'><span>something is wrong</span></div>";
    }
}
?>









<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:index.php');
}
else{  



    ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Online Library Management System |  Issued Books</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- DATATABLE STYLE  -->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <style>
        .form-invalid{
        outline:2px solid red !important;
    }

    .alert-success{
        z-index: 1;
        background: #D4edda;
        font-size: 14px;
        font-weight: 700;
        padding: 20px 40px;
        width: 100%;
        border-left: 8px solid #3ad66e;
        border-radius: 4px;
    }

    .alert-error{
        z-index: 1;
        background: #fff3cd;
        font-size: 14px;
        font-weight: 700;
        padding: 20px 40px;
        width: 100%;
        border-left: 8px solid #ffa502;
        border-radius: 4px;
    }
        </style>

</head>
<body>
    
<!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Manage Issued Books</h4>
    </div>
    
    <?php
if($message_sent):
?>

<h3>Thank you, we'll be in touch</h3>


<?php

else:
?>

            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Contact Us
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            
                            <form action="contact.php" method="POST" class="form">
            <div class="form-group">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" class="form-control <?= $invalid_class_name ??"" ?>" id="name" name="name" placeholder="Jane Doe" tabindex="1" required>
            </div>
            <div class="form-group">
                <label for="email" class="form-label">Your Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="jane@doe.com" tabindex="2" required>
            </div>
            <div class="form-group">
                <label for="subject" class="form-label">Subject</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Hello There!" tabindex="3" required>
            </div>
            <div class="form-group">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" rows="5" cols="50" id="message" name="message" placeholder="Enter Message..." tabindex="4"></textarea>
            </div>
            <div>
                <div class="col-md-12"><?php echo $aler; ?></div>
                <button type="submit"  class="submit-btn">Send Message!</button>
            </div>
        </form>
</div>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

 <!-- CONTENT-WRAPPER SECTION END-->
 <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- DATATABLE SCRIPTS  -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>

    <?php

    endif; ?>


</body>
</html>
<?php } ?>