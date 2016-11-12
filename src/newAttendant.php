<!DOCTYPE html>
<html>
<?php include "includes/header.php";
include('database/db_conection.php');

?>

    <body class="fixed-left">

        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                  <div class="spinner-wrapper">
                    <div class="rotator">
                      <div class="inner-spin"></div>
                      <div class="inner-spin"></div>
                    </div>
                  </div>
                </div>
            </div>
        </div>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
     <?php include "includes/navbar.php";?>
	 <?php include "includes/leftsidemenu.php";?>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box">
                                    <h4 class="page-title">New Staff </h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Zircos</a>
                                        </li>
                                        <li>
                                            <a href="#">Pages </a>
                                        </li>
                                        <li class="active">
                                            Blank Page
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
								 <div class="p-20">
                                                <form action="" method="post" data-parsley-validate novalidate>

                                                	<div class="form-group">
                                                        <label for="dobe">Full Names <span class="text-danger">*</span></label>
                                                        <input type="Text" name="names" parsley-trigger="change" required
                                                               placeholder="Enter Staff Names here" class="form-control" id="dob">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="dobe">Date of Appointment<span class="text-danger">*</span></label>
                                                        <input type="date" name="date_joined" parsley-trigger="change" required
                                                               placeholder="Enter date of birth" class="form-control" id="=dob">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="emailAddress">Residence<span class="text-danger">*</span></label>
                                                        <input type="text" name="weaning" parsley-trigger="change" required
                                                               placeholder="Where do you live" class="form-control" id="emailAddress">
                                                    </div>
													 <div class="form-group">
                                                        <label for="emailAddress">Contact<span class="text-danger">*</span></label>
                                                        <input type="text" name="contact" parsley-trigger="change" required
                                                               placeholder="" class="form-control" id="emailAddress">
                                                    </div>
                                           	       <div class="form-group">
                                                        <label for="emailAddress">Next Of Kin <span class="text-danger">*</span></label>
                                                        <input type="text" name="nok" parsley-trigger="change" required
                                                               placeholder="" class="form-control" id="emailAddress">
                                                        
                                                    </div>
												<div class="form-group">
                                                        <label for="emailAddress">Next Of Kin contact <span class="text-danger">*</span></label>
                                                        <input type="text" name="nokc" parsley-trigger="change" required
                                                               placeholder="" class="form-control" id="emailAddress">
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="emailAddress">Primary Role <span class="text-danger">*</span></label>
                                                        <textarea name="pri_role" placeholder="Main Responsibilities" class="form-control"  required></textarea>
                                                        
                                                    </div>

                                                    

                                                    <div class="form-group">
                                                        <label for="emailAddress">Secondary Role <span class="text-danger">*</span></label>
                                                        <textarea name="pri_role" placeholder="Other Responsibilities" class="form-control"  required></textarea>
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="emailAddress">Qualifications<span class="text-danger">*</span></label>
                                                        <textarea name="qualify" placeholder="Enter Qualifications here e.g. BSc Agriculture" class="form-control"  required></textarea>
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="emailAddress">Additional Training<span class="text-danger">*</span></label>
                                                        <textarea name="train" placeholder="Other Qualifications or Trainings" class="form-control"  required></textarea>
                                                        
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="emailAddress">Current Salary <span class="text-danger">*</span></label>
                                                        <input type="text" name="nokc" parsley-trigger="change" required
                                                               placeholder="Current Salary" class="form-control" id="emailAddress">
                                                        
                                                    </div>

												   <div class="form-group m-b-20">
                                                        <label class="m-b-10">Gender</label>
                                                        <br/>
                                                        <div class="radio radio-info radio-inline">
                                                            <input type="radio" id="inlineRadio1" value="male"
                                                                   name="gender" checked>
                                                            <label for="inlineRadio1"> Male </label>
                                                        </div>
                                                        <div class="radio radio-info radio-inline">
                                                            <input type="radio" id="inlineRadio2" value="female"
                                                                   name="gender">
                                                            <label for="inlineRadio2"> Female </label>
                                                        </div>
                                                    </div>
													
                                                    <div class="form-group">
                                                        <!--<div class="checkbox">
                                                            <input id="remember-1" type="checkbox">
                                                            <label for="remember-1"> Remember me </label>
                                                        </div>-->
                                                    </div>

                                                    <div class="form-group text-right m-b-0">
                                                        <button name="submit" class="btn btn-primary waves-effect waves-light" type="submit">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                            Cancel
                                                        </button>
                                                    </div>

                                                </form>
                                            </div>
							</div>
						</div>
                        <!-- end row -->



                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    2016 © Zircos.
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="mdi mdi-close-circle-outline"></i>
                </a>
                <h4 class="">Settings</h4>
                <div class="setting-list nicescroll">
                    <div class="row m-t-20">
                        <div class="col-xs-8">
                            <h5 class="m-0">Notifications</h5>
                            <p class="text-muted m-b-0"><small>Do you need them?</small></p>
                        </div>
                        <div class="col-xs-4 text-right">
                            <input type="checkbox" checked data-plugin="switchery" data-color="#7fc1fc" data-size="small"/>
                        </div>
                    </div>

                    <div class="row m-t-20">
                        <div class="col-xs-8">
                            <h5 class="m-0">API Access</h5>
                            <p class="m-b-0 text-muted"><small>Enable/Disable access</small></p>
                        </div>
                        <div class="col-xs-4 text-right">
                            <input type="checkbox" checked data-plugin="switchery" data-color="#7fc1fc" data-size="small"/>
                        </div>
                    </div>

                    <div class="row m-t-20">
                        <div class="col-xs-8">
                            <h5 class="m-0">Auto Updates</h5>
                            <p class="m-b-0 text-muted"><small>Keep up to date</small></p>
                        </div>
                        <div class="col-xs-4 text-right">
                            <input type="checkbox" checked data-plugin="switchery" data-color="#7fc1fc" data-size="small"/>
                        </div>
                    </div>

                    <div class="row m-t-20">
                        <div class="col-xs-8">
                            <h5 class="m-0">Online Status</h5>
                            <p class="m-b-0 text-muted"><small>Show your status to all</small></p>
                        </div>
                        <div class="col-xs-4 text-right">
                            <input type="checkbox" checked data-plugin="switchery" data-color="#7fc1fc" data-size="small"/>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->



        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
<?php
  
    
    if(isset($_POST['submit']))
    {
       $message = "Data Save In Database";
       $animalId = $_POST['animalId'];
         $birth=   $_POST['birth'];
         $weaning = $_POST['weaning'];
         $breed= $_POST['breed'];
         $location = $_POST['location'];
         $gender = $_POST['gender'];
         
    
       
         $query = "INSERT INTO `animal`(`Animal_ID`, `Date_Of_Birth`, `Date_Of_Weaning`, `Breed_Of_Animal`, `Location_ID`,`Gender`) VALUES ('$animalId','$birth','$weaning','$breed','$location','$gender') " or die(mysqli_error($dbcon));
        // $query .= "";
         
         $result = mysqli_query($dbcon , $query);
       if  (!$result){
          die ('QUERY FAILED' . mysqli_error($dbcon));
       }else{
          ?>

          <script>window.open('index.php?message=entered','_self')</script>

          <?php



        }


       }


    
  ?>

    </body>
</html>