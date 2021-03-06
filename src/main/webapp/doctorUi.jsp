<%-- 
    Document   : doctorUi
    Created on : Jul 28, 2020, 11:38:24 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="styles/doctorUi.css"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <% String email=(String)session.getAttribute("message");
                     if(email==null)
                     {
                         response.sendRedirect("Login.jsp");
                     } %>
        <nav class="navbar navbar-expand-sm mt-0" style="background-color:blueviolet">
               <ul class="navbar-nav">
                   <li class="nav-item">
                       <a class="nav-link" href="index.jsp" style="color:white;font-size:20px;font-weight:bold">Home</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#" style="color: white;font-size:20px;font-weight:bold">About Us</a>
                   </li>
                   <li class="nav-item">
                       <a class="nav-link" href="#" style="color: white;font-size:20px;font-weight:bold">Contact Us</a>
                   </li>
               </ul>
              <div class="fromLeft">
                   <div class="nav-item">
                       <a class="nav-link" href="logOut.jsp" style="color: white;font-size:20px;font-weight:bold">LogOut</a>
                   </div>                   
                   <div class="nav-item">
                       <a class="nav-link" href="#" style="color: white;font-size:20px;font-weight:bold">Donate Us</a>
                   </div>
                </div>
          </nav>
        <div class="row row1 ">
            <div class="menuIcon col-lg-3 col-sm-3 col-xs-2">
                <span class="menuOpener"><img class="imgMenu" src="images/menuLogo.png" style="width:20px;height:20px;margin-right:6px"/>Menu</span>
            </div>
            <div class="menuHeader col-lg-8 col-sm-8 col-xs-10">
                <div class="menuHeaderContent">
                    <h3>Doctor Platform</h3>
                </div>
            </div>
        </div> 
        <div class="menuList">
            <div class="ProfileContainer mb-2" style="border-bottom:1px solid white;">
                <div class="imgContainer">
                    <img class="profileImage" src=""/>
                </div>
                <div class="usrContainer">
                    <h3 class="userName"></h3>
                </div>
            </div>
            <div class="menuBar">
                <div class="Home">
                    <p class="HomeLink">Home<span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
                <div class="profile">
                    <p class="proifleLink">Profile<span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
                <div class="pateint">
                    <p class="patientLink">Your Patients<span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
                <div class="appointment">
                    <p class="appointmentLink">Appointment  <span class="notifiactions badge badge-pill badge-primary"></span><span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
                <div class="records">
                    <p class="recordsLink">Past Records<span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
                <div class="mail">
                    <p class="mailLink">Write Mail<span style='font-size:15px;margin-left:6px'>&#10087;</span></p>
                </div>
            </div>
        </div>
       <div class="mainContent">
           <div class="cardDecker">
                    <div class="card" >
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Know More About Specialization</h5>
                        <p class="card-text">
                            To know more about the specialization we provide click below
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                    </div>
                    <div class="card" >
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Maintain Your health</h5>
                        <p class="card-text">
                            Click here and follow the steps and diet to maintain health
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                    <div class="card" >
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Diet tables</h5>
                        <p class="card-text">
                            Click here to know about the diet tables and choose your own.
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                                                          
                    <div class="card">
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Donate us</h5>
                        <p class="card-text">
                            Click here to give us funds to rise orphan childrens
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                   <div class="card">
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Customer Support</h5>
                        <p class="card-text">
                            Click here to get our service.
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                </div>
           <div class="profileContainer">
               <div class="container-fluid firstContainer">
            <form   enctype="multipart/form-data">
                  <div class="row"> 
                   <div class="sideContainer1 col-lg-4 col-sm-6">
                       <div class="alert alert-danger alert-Sname">
                           <p>Sorry!!! user already exist with same mail Id or  you are trying to resubmit your data.</p><span><b>Note:-</b> You can't  enter the same phone number and email.please use a different one.</span> 
                           <span class="close" data-dismiss="alert">&times;</span>
                       </div>
                       <div class="form-group">
                           <label for="phonenumber">You role:</label>
                           <input class="form-control" type="text" name="role" value="Doctor" id="role" >
                       </div>
                       <div class="form-group">
                           <div class="alert alert-fname alert-dismissible alert-danger">Name cannot contain special character and numbers!!</div>  
                           <label for="firstname">First Name:</label>
                           <input class="form-control dFName" type="text" id="firstname" name="firstname" placeholder="First Name" required maxlength="16">
                       </div>
                       <div class="form-group">
                           <div class="alert alert-lname alert-dismissible alert-danger">Name cannot contain special character and numbers!!</div>       
                           <label for="lastname">Last Name:</label>
                           <input class="form-control dLName" type="text" id="lastname" name="lastname" placeholder="Last Name" required maxlength="16">
                       </div>
                       <div class="form-group">
                           <label for="birthdate">Birth Date:</label>
                           <input class="form-control dBirthDate" type="text" id="birthdate" name="birthdate" placeholder="mm/dd/yyyy" required >
                       </div>
                       <div class="form-group">
                          <div class="alert alert-Oname alert-dismissible alert-danger">Occupation cannot contain special character and numbers!!</div>     
                           <label for="address">Address</label>
                           <input class="form-control dAddress" type="text" id="address" name="address" placeholder="Address" required maxlength="16">
                       </div>
                       <div class="form-group">
                           <label for="place_name">Place of Working:</label>
                           <input class="form-control dPlaceName" type="text" name="place_name" id="place_name" placeholder="Place Name" required maxlength="20">
                       </div>
                       
                   </div>
                   <div class="sideContainer2 col-lg-4 col-sm-6">
                      <div class="form-group">
                           <div class="alert alert-Ename alert-dismissible alert-danger">Email format entered is wrong!!</div>         
                           <label for="email">Email:</label>
                           <input class="form-control dEmail" type="email" id="email" name="email" placeholder="Email" required maxlength="30">
                       </div>                       
                      
                       <div class="form-group">
                           <div class="alert  alert-Pname alert-dismissible alert-danger">Phone Number should contain only numbers and should be 10 digits</div>                          
                           <label for="phonenumber">Phone Number:</label>
                           <input class="form-control dPhoneNumber" type="text" name="phonenumber" id="phonenumber" placeholder="Phone Number" required maxlength="10">
                       </div>
                       <div class="form-group">
                           <label for="sex">Sex:</label>
                          <input class="form-control dSex" type="text" name="sex" id="sex" placeholder="Qualification">     
                       </div>        
                       <div class="form-group">
                           <label for="specialization">Specialization:</label>
                           <input class="form-control dSpecialization" type="text" name="specialization" id="specialization" placeholder="Specialization">
                       </div>
                       <div class="form-group">
                           <label for="qualification">Qualification:</label>
                           <input class="form-control dQualification" type="text" name="qualification" id="qualification" placeholder="Qualification">
                       </div>
                       <div class="form-group">
                           <label for="exp">Experience:</label>
                           <input name="exp" id="exp" class="form-control dExp" type="number" maxlength="10" placeholder="Experience"/>
                       </div>                           
                   </div>
                 <div class="sideContainer3 col-lg-12 col-sm-12">
                       <div class="form-group">
                           <input id="login" class="btn btn-primary" type="button" value="Update"/>
                       </div>
                       </div>
                   </div>
            </form>
        </div>
      </div>
           <div class="appointmentContainer">
               <div class="appointmentContent">
                   
               </div>
           </div>
           <div class="myPatientContainer">
               <div class="myPatientContent">
               </div>
               
           </div>
       </div>
           <div class='updater'>
               <span class="close">&times;</span>
               <div class='updateContainer'>
                   <hr style="color:gainsboro">
                   <p class="updateContent"></p>
                   <hr style="color:gainsboro">
               </div>
           </div>    

        <script>
                               var email="<%=email%>";   
            
        $(".profileImage").attr("src","pateintimageRetriver?email="+email+"&role=doctor");
            $(".menuOpener").on("click",function(){
                var left=$(".menuList").css("left");
                if(left<"0px")
                {    
                $(".menuList").animate({
                    left:"0%" 
                });
                }
                else
                {
                    $(".menuList").animate({
                        left:"-120%"
                    });
                }                
            });
            $(".mainContent .cardDecker").on("click",function(){
                $(".menuList").animate({
                     left:"-120%"          
                });
            });
            $(".row1 .menuHeader").on("click",function(){
                $(".menuList").animate({
                     left:"-120%"          
                }); 
            });
            $(".mainContent").on("click",function(){
               $(".menuList").animate({
                     left:"-120%"          
                });  
            });
            $(".proifleLink").on("click",function(){
               $(".profileContainer").css("display","block"); 
               $(".cardDecker").css("display","none");
               $(".appointmentContainer").css("display","none");
               $(".menuHeaderContent").html("Your Profile");
               $(".menuHeaderContent").css("font-size","20px");
               $(".myPatientContainer").css("display","none");
               
            });
            $(".HomeLink").on("click",function(){
               $(".profileContainer").css("display","none"); 
               $(".cardDecker").css("display","flex");              
               $(".appointmentContainer").css("display","none");
               $(".menuHeaderContent").html("Doctor Platform");
               $(".menuHeaderContent").css("font-size","20px");
               $(".myPatientContainer").css("display","none");
               
           });
            $(".profileContainer").on("click",function(){
               $(".menuList").animate({
                   left:"-120%"
               }); 
            });
              $("#firstname").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-fname").css("display","none");
                         var reg=new RegExp("^[a-zA-Z]{1,}$");
                         if(!reg.test(warn) && warn!=='')
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-fname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-fname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                     });
                     $("#lastname").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-lname").css("display","none");
                         var reg=new RegExp("^[a-zA-Z]{1,}$");
                         if(!reg.test(warn) && warn!=='')
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-lname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-lname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                     });
                    $("#occupation").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-Oname").css("display","none");
                         var reg=new RegExp("^[a-zA-Z]{1,}$");
                         if(!reg.test(warn) && warn!=='')
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-Oname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-Oname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                     });
                 $('#email').on("blur",function()  {
                        var email_address=$(this).val();
                        var email_regex=new RegExp( "^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");                        
                        $(".alert-Ename").css("display","none");
                        if(!email_regex.test(email_address) && email_address!=='')
                        {
                           $(".btn").prop("disabled","true");
                             $(".alert-Ename").fadeIn(500).css("display","block"); 
                        }
                        else
                        {
                          $(".alert-Ename").css("display","none");
                             $(".btn").removeAttr("disabled");   
                        }
                     });
                   $("#occupation").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-Oname").css("display","none");
                         var reg=new RegExp("^[a-zA-Z]{1,}$");
                         if(!reg.test(warn) && warn!=='')
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-Oname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-Oname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                     });         
                      $("#phonenumber").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-Pname").css("display","none");
                         var reg=new RegExp("^[0-9]{1,}$");
                         if(!reg.test(warn) && warn!==''||warn.length<10)
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-Pname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-Pname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                         //(?i).*\.(gif|jpe?g|png|bmp)$
                     });
                     $("#photo").on("blur",function(){
                         var warn=$(this).val();
                         //alert(warn);
                         $(".alert-PHname").css("display","none");
                         var reg=new RegExp(".*\.(gif|jpe?g|png|bmp)$");
                         if(!reg.test(warn) && warn!=='')
                         {
                             $(".btn").prop("disabled","true");
                             $(".alert-PHname").fadeIn(500).css("display","block");
                         }
                         else
                         {
                             $(".alert-PHname").css("display","none");
                             $(".btn").removeAttr("disabled");
                         }
                        
                     });
                    $.ajax({
                           type:"POST",
                           url:"upadter",
                           data:{
                             email:email,
                             function:"name",
                             role:"doctor"
                           },
                           success: function (data, textStatus, jqXHR) {
                                $(".userName").html(data);
                           }
                        }); 
                    $(".proifleLink").on("click",function(){
                         
                     $.ajax({
                       type:"POST",
                       url:"upadter",
                       data:{
                           email:email,
                           function:"profile",
                           role:"doctor"
                       },
                       success: function (data, textStatus, jqXHR) {
                   var array=new Array();
                   array=data.split(",");
                   if(array[0]!=="")
                   {
                   $(".dFName").val(array[0]);     
                   }
                   else
                   {
                    $(".dFName").val("Not Provided");   
                   }
                   if(array[1]!=="")
                   {
                   $(".dLName").val(array[1]);     
                   }
                   else
                   {
                    $(".dLName").val("Not Provided");   
                   }
                   if(array[2]!=="")
                   {
                       var date=array[2];
                   $(".dBirthDate").val(date.slice(0,10));     
                   }
                   else
                   {
                     $(".dBirthDate").val("Not Provided");
                  }
                   if(array[3]!=="")
                   {
                    $(".dAddress").val(array[3]);   
                   }
                   else
                   {
                     $(".dAddress").val("Not Provided");
                   }
                   if(array[4]!=="")
                   {
                       $(".dPlaceName").val(array[4]);
                   }
                   else
                   {
                     $(".dPlaceName").val("Not Provided");  
                   }
                   if(array[5]!=="")
                   {
                      $(".dEmail").val(array[5]); 
                   }
                   else
                   {
                       $(".dEmail").val("Not Provided");
                   }
                   if(array[6]!=="")
                   {
                    $(".dPhoneNumber").val(array[6]);   
                   }
                   else
                   {
                     $(".dPhoneNumber").val("Not Provided");  
                   }
                   if(array[7]!=="")
                   {
                      $(".dSex").val(array[7]); 
                   }
                   else
                   {
                     $(".dSex").val("Not Provided");
                   }
                   if(array[8]!=="")
                   {
                      $(".dSpecialization").val(array[8]); 
                   }
                   else
                   {
                      $(".dSpecialization").val("Not Provided"); 
                   }
                   if(array[9]!=="")
                   {
                       $(".dQualification").val(array[9]);  
                   }
                   else
                   {
                       $(".dQualification").val("Not Provided");
                   }
                   if(array[10]!=="")
                   {
                       $(".dExp").val(array[10]);
                   }
                   else
                   {
                       $(".dExp").val("Not Provided");
                   }
                   
                   }
                     });  
               });    
               $("#login").on("click",function(){
                  var data1=$(".dFName").val(); 
                  var data2=$(".dLName").val(); 
                  var data3=$(".dBirthDate").val(); 
                  var data4=$(".dAddress").val(); 
                  var data5=$(".dPlaceName").val();
                  var data6=$(".dEmail").val();
                  var data7=$(".dPhoneNumber").val(); 
                  var data8=$(".dSex").val(); 
                  var data9=$(".dSpecialization").val(); 
                  var data10=$(".dQualification").val(); 
                  var data11=$(".dExp").val(); 
                  $.ajax({
                     type:"POST",
                     url:"upadter",
                     data:{
                       data1:data1,
                       data2:data2,
                       data3:data3,
                       data4:data4,
                       data5:data5,
                       data6:data6,
                       data7:data7,
                       data8:data8,
                       data9:data9,
                       data10:data10,
                       data11:data11,
                       data12:email,
                       role:"doctor",
                       function:"update"
                     },
                     success: function (data, textStatus, jqXHR) {
                         $(".updater").css("display","block");
                         $(".updateContent").html("Hey Doc ,your have successfully updated your details");
                     }
                  });
               });
               $(".close").on("click",function(){
                  $(".updater").css("display","none"); 
               });
               var patientImageArray=new Array();
               var patientDetailArray=new Array();
               var AppointmentDetailArray=new Array();
               var newRequest;
               $(".appointmentLink").on("click",function(){
                   $(".profileContainer").css("display","none");
                   $(".cardDecker").css("display","none");
                   $(".appointmentContainer").css("display","block");
                   $(".appointmentContent").html("");
                   $(".myPatientContainer").css("display","none");

                   $.ajax({
                       type:"POST",
                       url:"doctorAppointmentController",
                       data:{
                           email:email,
                           function:"request"
                       },
                       success: function (data, textStatus, jqXHR) {
//                           alert(data);
                           if(data.includes("|"))
                           { 
                           patientDetailArray=data.split("|");
                           newRequest=patientDetailArray[patientDetailArray.length-1];
                          for(var x=0;x< patientDetailArray.length-1;x++)
                          {                               AppointmentDetailArray=patientDetailArray[x].split(",");
                              patientImageArray.push(AppointmentDetailArray[1]);
                              $(".appointmentContent").append(
                          "<div class='appointmentDividingContainer' id='box"+AppointmentDetailArray[5]+"'>\n\
                               <div class='appointmentMainContainer'>\n\
                                        <div class='.patientImageContainer'>\n\
                                             <img class='patientImage"+x+" patImage' src=''> \n\
                                                  \n\
                                        </div>\n\
                                        <div class='patientDetailContainer'> \n\
                                               <h4>Patient Request For Appointment</h4>               \n\
                                               <p>Patient Name : "+AppointmentDetailArray[0]+"</p>\n\
                                               <p>Patient Email : "+AppointmentDetailArray[1]+"</p>  \n\
                                               <p>Patient Phone Number : "+AppointmentDetailArray[2]+"</p>\n\
                                               <p>Patient Address : "+AppointmentDetailArray[3]+"</p> \n\
                                               <p>Patient Place Name : "+AppointmentDetailArray[4]+"</p>     \n\
                                       \n\
                                        </div> \n\
                                         <div class='AppointmentFixing"+AppointmentDetailArray[5]+" appointmentFixingContainer'> \n\
\n\                                                 <div class='alert alert-dismissible alert-danger onFail'> \n\
                                                        Sorry, Appointment cant be fixed <span clas='close' data-dismiss='alert'>&times;</span>   \n\
                                                    </div>         \n\
                                                      \n\
                                                    <div class='alert alert-dismissible alert-success onSuccess'> \n\
                                                        Succefully fixed the appointment <span clas='close' data-dismiss='alert'>&times;</span>   \n\
                                                    </div>         \n\
                                               <form>\n\
                                                   <div class='form-group'>\n\
                                                        <label for='appDate'>Appointment Date :</label>  \n\
                                                        <input class='form-control' id='appDate"+AppointmentDetailArray[5]+"' name='appDate' placeholder='Appointment Date' type='date' required/>      \n\
                                                   </div>     \n\
                                                   <div class='form-group'>\n\
                                                        <label for='appTime'>Appointment Time :</label>  \n\
                                                        <input class='form-control' id='appTime"+AppointmentDetailArray[5]+"' name='appTime' placeholder='Appointment Time' type='time' required/>      \n\
                                                   </div>     \n\
                                               </form>\n\
                                                <div class='confirmBox'> \n\
                                                <button class='btn btn-primary confirmButton' id='"+AppointmentDetailArray[5]+"'>Confirm</button> \n\
                                                   </div>                            \n\
                                              \n\
                                        </div>     \n\
                                    </div> \n\
                                        <div class='decidingContainer'>  \n\
                                              <button class='btn btn-primary accept' id='"+AppointmentDetailArray[5]+"'>Accept</button>  \n\
                                              <button class='btn btn-danger cancel' id='"+AppointmentDetailArray[5]+"'>Reject</button>      \n\
                                        </div>\n\
                                  </div>      \n\
                                            \n\ "
                              );
                          }
                          for(var x=0;x<patientImageArray.length;x++)
                          {
                             $(".patientImage"+x).attr("src","./pateintimageRetriver?email="+patientImageArray[x]+"&role=patient");
                          }
                      }
                      else
                      {
                          $(".appointmentContent").html("Sorry there is no appointment");
                      }
                     }
                       
                  });
               });
               
                var patientImageArray1=new Array();
                var patientDetailArray1=new Array();
               var AppointmentDetailArray1=new Array();
               $(".patientLink").on("click",function(){
                   $(".profileContainer").css("display","none");
                   $(".cardDecker").css("display","none");
                   $(".appointmentContainer").css("display","none");
                   $(".myPatientContainer").css("display","block");
                   $(".appointmentContent").html("");
                   $(".myPatientContent").html("");
                   $.ajax({
                       type:"POST",
                       url:"doctorAppointmentController",
                       data:{
                           email:email,
                           function:"confirmed"
                       },
                       success: function (data, textStatus, jqXHR) {
//                           alert(data);
                           if(data.includes("|"))
                           {
                           patientDetailArray1=data.split("|");
                          for(var x=0;x< patientDetailArray1.length-1;x++)
                          {                               AppointmentDetailArray1=patientDetailArray1[x].split(",");
                              patientImageArray1.push(AppointmentDetailArray1[1]);
                              $(".myPatientContent").append(
                              "<div class='appointmentDividingContainer1' id='box"+AppointmentDetailArray1[5]+"'>\n\
                                   <div class='appointmentMainContainer1'>\n\
                                        <div class='.patientImageContainer1'>\n\
                                             <img class='patientImage1"+x+" patImage' src=''> \n\
                                                  \n\
                                        </div>\n\
                                        <div class='patientDetailContainer1'> \n\
                                               <h4>Patient Request For Appointment</h4>               \n\
                                               <p>Patient Name : "+AppointmentDetailArray1[0]+"</p>\n\
                                               <p>Patient Email : "+AppointmentDetailArray1[1]+"</p>  \n\
                                               <p>Patient Phone Number : "+AppointmentDetailArray1[2]+"</p>\n\
                                               <p>Patient Address : "+AppointmentDetailArray1[3]+"</p> \n\
                                               <p>Patient Place Name : "+AppointmentDetailArray1[4]+"</p>     \n\
                                       \n\
                                        </div > \n\
                                          <div class='patientDetailContainer1'>\n\
                                               <p>Appointment Date : "+AppointmentDetailArray1[6]+"</p>   \n\
                                               <p>Appointment Reason : "+AppointmentDetailArray1[7]+"</p>   \n\
                                               <p>Appointment Time : "+AppointmentDetailArray1[8]+"</p>   \n\
                                               <p>Appointment Confirmation : "+AppointmentDetailArray1[9]+"</p>   \n\
\n\
                                          </div>     \n\
                                       \n\
                                         <div class='appointmentFixingContainer1 updaterContainer"+AppointmentDetailArray1[5]+"'> \n\
                                                <div class='alert alert-success updateMessage"+AppointmentDetailArray1[5]+"'> \n\
                                                    Successfully Updated the Appointment    \n\
                                                </div>   \n\
                                                <div class='form-group'>\n\
                                                      <label>Appointment Date : </label>\n\
                                                      <input type='date' class='form-control' id='AppointmentDate"+AppointmentDetailArray1[5]+"' name='AppointmentDate"+AppointmentDetailArray1[5]+"' placeholder='Appointment Date' required>       \n\
                                                </div>\n\
                                                <div class='form-group'>\n\
                                                      <label>Appointment Time : </label>\n\
                                                      <input type='time' class='form-control' id='AppointmentTime"+AppointmentDetailArray1[5]+"' name='AppointmentTime"+AppointmentDetailArray1[5]+"' placeholder='Appointment Time' required>       \n\
                                                </div>\n\
                                                 <div class='form-group'>\n\
                                                      <label>Appointment Confirmation : </label>\n\
                                                      <input type='text'  class='form-control' id='AppointmentConfirmation1"+AppointmentDetailArray1[5]+"' name='AppointmentConfirmation1"+AppointmentDetailArray1[5]+"' placeholder='Yes/No' required>       \n\
                                                </div>\n\
                                                <div class='updaterDecider'> \n\
                                                      <button class='btn btn-primary updaterDeciderButtton' id='"+AppointmentDetailArray1[5]+"'>Update </button> \n\
                                                </div>                              \n\
                             \n\
                                         </div> \n\
                                            <div class='decidingContainer'>  \n\
                                              <button class='btn btn-primary updaterButton' id='"+AppointmentDetailArray1[5]+"'>Update</button>  \n\
                                              <button class='btn btn-danger cancel' id='"+AppointmentDetailArray1[5]+"'>Remove</button>      \n\
                                            </div>      \n\
                                     </div>\n\
                                       <div class='workingButtons'>\n\
                                            <button class='btn btn-light note' id='"+AppointmentDetailArray1[5]+"'>Note from patient</button>\n\
                                            <button class='btn btn-light pres' id='"+AppointmentDetailArray1[5]+"' >Wirte prescription</button>\n\
                                            <button class='btn btn-light past' id='"+AppointmentDetailArray1[5]+"'>Past Records</button>\n\
\n\
                                       </div>        \n\
                               </div>   \n\
                                 <div class='noteContainer"+AppointmentDetailArray1[5]+" disappear col-lg-9' id='"+AppointmentDetailArray1[5]+"'>\n\
                                      <div class='noteContainerDetails'>  \n\
                                          <h4>Patient Problems</h4> \n\
                                          <div class='noteDetails'>\n\
                                          <label>Problem :</label>\n\
                                          <p class='reason'></p>\n\
                                          <label>Symptoms :</label>\n\
                                          <p class='symptoms'></p>\n\
                                          <label>Effects :</label>\n\
                                          <p class='effects'></p>\n\
                                          <label>Complication :</label>\n\
                                          <p class='complication'></p>\n\                            \n\
                                          </div>\n\
                                      </div>  \n\
\n\                             <div class='presSender1'><button class='btn btn-danger backPager' id='"+AppointmentDetailArray1[5]+"'>Back</button></div>\n\
                            \n\
                                             \n\
                                 </div> \n\
                                 <div class='prescriptionDetials"+AppointmentDetailArray1[5]+"  disappear col-lg-9' id='"+AppointmentDetailArray1[5]+"'>\n\
                                        <div class='alert alert-success successMed"+AppointmentDetailArray1[5]+"'>Sucessfully sent the detials</div>\n\
                                        <div class='prescriptionContainerDetails'>     \n\
                                        <div class='form-group morning'><label>Morning Medicine :</label><input type='text' placeholder='Medicine' class='form-control' id='morningMedicine"+AppointmentDetailArray1[5]+"' name='morningMedicine'></div>\n\
                                        <div class='form-group '><label>Timing for morning medicine : </label><select class='morningTime"+AppointmentDetailArray1[5]+" form-control'><option value='After Breakfast'>After Breakfast</option><option value='Before Breakfast'>Before Breakfast</option></select></div>\n\
                                        <div class='form-group morning'><label>Noon Medicine :</label><input type='text' placeholder='Medicine' class='form-control' id='noonMedicine"+AppointmentDetailArray1[5]+"' name='noonMedicine'></div>\n\  \n\
                                        <div class='form-group'><label>Timing for noon medicine : </label><select class='noonTime"+AppointmentDetailArray1[5]+" form-control'><option value='After Lunch'>After Lunch</option><option value='Before Lunch'>Before Lunch</option></select></div>\n\
                                        <div class='form-group morning'><label>Night Medicine</label><input type='text' placeholder='Medicine' class='form-control' id='nightMedicine"+AppointmentDetailArray1[5]+"' name='nightMedicine'></div>\n\
                                        <div class='form-group'><label>Timing for night medicine : </label><select class='nightTime"+AppointmentDetailArray1[5]+" form-control'><option value='After dinner'>After dinner</option><option value='Before dinner'>Before dinner</option></select></div> \n\
                                        <div class='form-group'><label>Possible Cause of problem : </label><input class='cause form-control' id='causeProblem"+AppointmentDetailArray1[5]+"' name='causeProblem' type='text' placeholder='Cause of Problem' required> \n\
                                        <div class='form-group'><label>Procedure to be followed : </label><input class='procedure form-control' id='procedure"+AppointmentDetailArray1[5]+"' name='procedure' type='text' placeholder='Procedure to be followed' required></div>\n\
                                        <div class='presSender'><button class='btn btn-primary presSendDetails' id='"+AppointmentDetailArray1[5]+"'>Send</button><button class='btn btn-danger backPager' id='"+AppointmentDetailArray1[5]+"'>Back</button></div>   \n\
                                        </div>    \n\
                                 </div>       \n\ "
                                     
                              );
                          }
                          for(var x=0;x<patientImageArray1.length;x++)
                          {
                             $(".patientImage1"+x).attr("src","./pateintimageRetriver?email="+patientImageArray1[x]+"&role=patient");
                          }
                      }
                      else
                      {
                          $(".myPatientContent").html("Sorry there is no appointment now");
                      }
                     }
                       
                  });
               }); 
               $(document).on("click",".presSendDetails",function(){
                  var id=$(this).attr("id");
                  var mornMed=$("#morningMedicine"+id).val();
                  var mornTime=$(".morningTime"+id).val();
                  var noonMed=$("#noonMedicine"+id).val();
                  var noonTime=$(".noonTime"+id).val();
                  var nightMed=$("#nightMedicine"+id).val();
                  var nightTime=$(".nightTime"+id).val();
                  var prob=$("#causeProblem"+id).val();
                  var procedure=$("#procedure"+id).val();
                  $.ajax({
                     type:"POST",
                     url:"medicineSavingController",
                     data:{
                         mornMed:mornMed,
                         mornTime:mornTime,
                         noonMed:noonMed,
                         noonTime:noonTime,
                         nightMedicine:nightMed,
                         nightTime:nightTime,
                         problem:prob,
                         procedure:procedure,
                         id:id
                     },
                     success: function (data, textStatus, jqXHR) {
                         alert(data);
                         if(data==="true")
                         {
                             $(".successMed"+id).fadeIn(1000).css("display","block");
                         }
                     }
                  });                  
               });
               
               $(document).on("click",".note",function(){
                   var id=$(this).attr("id");
                   $(".appointmentDividingContainer1").css("display","none");
                   $(".noteContainer"+id).css("display","block");
                   alert(id);
                   $.ajax({
                       type:"POST",
                       url:"patientBodyDetailsController",
                       data:{
                           presId:id,
                           function:"getting"
                       },
                       success: function (data, textStatus, jqXHR) {
                           var array1=new Array();
                           array1=data.split(",");
                           $(".reason").html(array1[0]);
                           $(".symptoms").html(array1[3]);
                           $(".effects").html(array1[1]);
                           $(".complication").html(array1[2]);
                       }
                   })
               });
              $(document).on("click",".backPager",function(){
                  var id=$(this).attr("id");
                 $(".appointmentDividingContainer1").css("display","block");
                 $(".noteContainer"+id).css("display","none");
                 $(".prescriptionDetials"+id).css("display","none");
               });
              $(document).on("click",".pres",function(){
                  var id=$(this).attr("id");
                 $(".prescriptionDetials"+id).css("display","block");
                 $(".appointmentDividingContainer1").css("display","none");
              }); 
               var acceptId;
               $(document).on("click",".accept",function(){
                   acceptId=$(this).attr("id");
                  $(".AppointmentFixing"+acceptId).css("display","block");
               });
               $(document).on("click",".confirmBox",function(){
                     var appTime=$("#appTime").val();
                     var appDate=$("#appDate").val();
                     if(appTime!=="" && appDate!=="")
                     {    
                     $.ajax({
                      type:"POST",
                      url:"AppointmentFixerandCancelerController",
                      data:{
                          presId:acceptId,
                          appTime:$("#appTime"+acceptId).val(),
                          appDate:$("#appDate"+acceptId).val(),
                          function:"accept"
                      },
                      success: function (data, textStatus, jqXHR) {
                        if(data==="true")
                       {  
                        $(".onSuccess").fadeIn(500).css("display","block").delay(1500).queue(function(next){
                             $("#box"+acceptId).addClass("goOut").delay(500).queue(function(next){
                             $("#box"+acceptId).css("display","none");
                             next();     
                             });
                             next();
                        });
                        getMailData(acceptId,"accept");
                       }
                      }
                       });
                     }
               });
               $(document).on("click",".cancel",function(){
                  var cancelId=$(this).attr("id");
                  $("#box"+cancelId).addClass("goOut").delay(500).queue(function(next){
                    $("#box"+cancelId).css("display","none");
                    next();     
                  });
                  getMailData(cancelId,"cancel");
                   $.ajax({
                      type:"POST",
                      url:"AppointmentFixerandCancelerController",
                      data:{
                          presId:cancelId,
                          function:"cancel"
                      },
                      success: function (data, textStatus, jqXHR) {
                     }
                  }); 
               });
             $(document).ready(function(){
                setInterval( function(){
                 $.ajax({
                  type:"POST",
                  url:"NotificationController",
                  data:{
                  role:"doctor",
                  email:email    
                  },
                  success: function (data, textStatus, jqXHR) {
                      if(data!=="0")
                      {
                         $(".notifiactions").html(data);
                      }
                      else
                      {
                          $(".notifiactions").html("");
                      }
                    }
                });
               },500);
             });  
             $(document).on("click",".updaterButton",function(){
                    var id=$(this).attr("id");
                      $('.updaterContainer'+id).css("display","block");                
             });
             $(document).on("click",".updaterDeciderButtton",function(){
                 var presId1=$(this).attr("id");
                 var appDate1=$("#AppointmentDate"+presId1).val();
                 var appTime1=$("#AppointmentTime"+presId1).val();
                 var appConfirmation1=$("#AppointmentConfirmation1"+presId1).val();
                 
                 $.ajax({
                    type:"POST",
                    url:"AppointmentFixerandCancelerController",
                    data:{
                        presId:presId1,
                        AppDate:appDate1,
                        AppTime:appTime1,
                        AppConfirmation:appConfirmation1,
                        function:"update"
                    },
                    success: function (data, textStatus, jqXHR) {
                        if(data==='true')
                        {
                            $(".updateMessage"+presId1).fadeIn(1000).css("display","block");
                        }
                        
                    }
                            
                 });
             });
                 function getMailData(presId1,status)
                 {
                     $.ajax({
                         type:"POST",
                    url:"AppointmentFixerandCancelerController",
                    data:{
                        presId:presId1,
                        function:"mail",
                        role:"doctor"
                    },
                    success: function (data, textStatus, jqXHR) {
                        var emailArray=new Array();
                        emailArray=data.split(",");
                        sendEmail(emailArray[0],status,emailArray[1],emailArray[2],"doctor",emailArray[3],emailArray[4],"Appointment");
                     }
                         });
                 }

                 function sendEmail( Email,status, patientName,doctorName,person,date,time,function1 )
                 {
                     alert(date+"hiiii");
                     $.ajax({
                         type:"POST",
                         url:"emailSenderServlet",
                         data:{
                             Email:Email,
                             status:status,
                             patientName:patientName,
                             doctorName:doctorName,
                             person:person,
                             date:date,
                             time:time,
                             function:function1
                         },
                         success: function (data, textStatus, jqXHR) {
                          }
                     });
                 }
        </script>
    </body>
</html>
