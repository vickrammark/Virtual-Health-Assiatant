<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="styles/patientUi.css"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>

    <body>
         <%
                     String email=(String)session.getAttribute("message");
                     if(email==null)
                     {
                         response.sendRedirect("Login.jsp");
                     }
        %>
        <div class="nav">
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
                       <a class="nav-link " href="logOut.jsp" style="color: white;font-size:20px;font-weight:bold">LogOut</a>
                   </div>                
                   <div class="nav-item">
                       <a class="nav-link " href="#" style="color: white;font-size:20px;font-weight:bold">Donate Us</a>
                   </div>                   
                </div>
          </nav>
        </div>    
        <div class="row row1 m-0">
            <div class="menu col-lg-3 col-sm-3 col-xs-2">
                <span class="menuOpener"><img class="imgMenu" src="images/menuLogo.png" style="width:20px;height:20px"/>Menu</span>
            </div>
            <div class="menuHeader col-lg-8 col-sm-8 col-xs-10">
                <h1 class="menuHeaderContent">Patient Platform</h1>
            </div>
          </div>   
            <div class="menuList ">
                <div class="profileImage">
                    <img class="imgProfile" name="temp" src="pateintimageRetriver" alt="No image available" style=" width:120px;height:120px"/>
                    <p class="userName"></p>
                </div>
                <div class="Home menuitems">
                    <a class="HomeLink" href="#">Home<span style='font-size:15px;margin-left:6px'>&#10087;</span></a>
                </div>
                <div class="menuStack">
                <div class="profile menuitems">
                    <a href="#" class="profileLink">Profile<span style='font-size:15px;margin-left:6px'>&#10087;</span></a>
                </div>
                <div class="doctor menuitems">
                    <a href="#" class="doctorLink">Your Doctors<span class="docnotifiactions badge badge-pill badge-primary"></span><span style='font-size:15px;margin-left:6px'>&#10087;</span></a>
                </div>
                <div class="result menuitems">
                    <a href="#" class="resultLink">Lab Results<span style='font-size:15px;margin-left:6px'>&#10087;</span></a>
                </div>
                <div class="appointment menuitems">
                    <a href="#" class="appointmentLink">Appointment<span class="notifiactions badge badge-pill badge-primary"></span><span style='font-size:15px;margin-left:6px'>&#10087;</span></a>
                </div>
                </div>
            </div>
            <div class="mainContent m-0 p-0" style="height:550px;">
                <div class="cardDecker" style="height:100%">
                    <div class=" card" >
                        <img class="card-img-top" src="images/specialization.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Book Doctor</h5>
                        <p class="card-text">
                            Please click here to have an appointment;
                        </p>
                    </div>
                        <button class="btn btn-primary" id="booking">Book Now!!<span style='font-size:15px;'>&#10087;</span></button>
                   </div>
      
                    <div class=" card " >
                        <img class="card-img-top" src="images/KnowMoreSpec.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Know More About Specialization</h5>
                        <p class="card-text">
                            To know more about the specialization we provide click below
                        </p>
                    </div>
                    <button class="btn btn-primary spec">See More <span style='font-size:15px;'>&#10087;</span></button>
                    </div>
                    <div class="card " >
                        <img class="card-img-top" src="images/dietTable Icon.png" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Diet tables</h5>
                        <p class="card-text">
                            Click here to know about the diet tables and choose your own.
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                                                          
                    <div class=" card ">
                        <img class="card-img-top" src="images/donate us icon.png" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Donate us</h5>
                        <p class="card-text">
                            Click here to give us funds to rise orphan childrens
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                   <div class="card ">
                       <img class="card-img-top" src="images/customerIcon.png" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Customer Support</h5>
                        <p class="card-text">
                            Click here to get our service.
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                    <div class="card" >
                        <img class="card-img-top" src="images/bodyStatistics.jpg" style="width:100%;height:200px">   
                    <div class="card-body">
                        <h5 class="card-header">Your Body Statistics</h5>
                        <p class="card-text">
                             To know about your body and  your health statistics click here 
                        </p>
                    </div>
                    <button class="btn btn-primary">See More <span style='font-size:15px;'>&#10087;</span></button>
                   </div>
                </div>
                <div class="profileContainer" style="height:100%">
            <form   method="POST"  class="formMain" action="Updater" enctype="multipart/form-data">
                  <div class="row"> 
                   <div class="sideContainer1 col-lg-4 col-sm-6">
                       <div class="form-group">
                           <div class="alert alert-fname alert-dismissible alert-danger">Name cannot contain special character and numbers!!</div>  
                           <label for="firstname">First Name:</label>
                           <input class="form-control pFName" type="text" id="firstname" name="firstname" placeholder="First Name"  maxlength="16">
                       </div>
                       <div class="form-group">
                           <div class="alert alert-lname alert-dismissible alert-danger">Name cannot contain special character and numbers!!</div>       
                           <label for="lastname">Last Name:</label>
                           <input class="form-control pLName" type="text" id="lastname" name="lastname" placeholder="Last Name"  maxlength="16">
                       </div>
                       <div class="form-group">
                           <label for="birthdate">Birth Date:</label>
                           <input class="form-control pBirthdate" type="text"  placeholder="mm/dd/yyyy" id="birthdate" name="birthdate"   >
                       </div>
                       <div class="form-group">
                          <div class="alert alert-Oname alert-dismissible alert-danger">Occupation cannot contain special character and numbers!!</div>     
                           <label for="occupation">Occupation:</label>
                           <input class="form-control pOccupation" type="text" id="occupation" name="occupation" placeholder="Occupation"  maxlength="16">
                       </div>
                       <div class="form-group">
                           <label for="sex">Sex:</label>
                           <input class="form-control pSex" id="sex" type="text" >
                       </div>        
                       <div class="form-group">
                           <div class="alert alert-Ename alert-dismissible alert-danger">Email format entered is wrong!!</div>         
                           <label for="email">Email:</label>
                           <input class="form-control pEmail" type="email" id="email" name="email" placeholder="Email"  maxlength="30">
                       </div>                       
                   </div>
                      <div class="update">
                          <span class="close" data-dismiss="update">&times;</span>
                          <div ><p class="updateContent"></p></div>
                      </div>
                   <div class="sideContainer2 col-lg-4 col-sm-6">
                       <div class="form-group">
                           <div class="alert  alert-Pname alert-dismissible alert-danger">Phone Number should contain only numbers and should be 10 digits</div>                          
                           <label for="phonenumber">Phone Number:</label>
                           <input class="form-control pPhoneNumber" type="text" name="phonenumber" id="phonenumber" placeholder="Phone Number"  maxlength="10">
                       </div>
                       <div class="form-group">
                           <label for="address">Address:</label>
                           <input class="form-control pAddress" type="text" name="address" id="address" placeholder="Address"  maxlength="30">
                       </div>
                       <div class="form-group">
                           <label for="place_name">Place Name:</label>
                           <input class="form-control pPlaceName" type="text" name="place_name" id="place_name" placeholder="Place Name"  maxlength="20">
                       </div>
                       <div class="form-group">
                           <label for="age">Age:</label>
                           <input class="form-control pAge" type="number" name="age" id="age" placeholder="Age">
                       </div>
                       <div class="form-group">
                           <label for="height">Height:</label>
                           <input class="form-control pHeight" type="number" name="height" id="height" placeholder="Height">
                       </div>
                       <div class="form-group">
                           <label for="weight">weight:</label>
                           <input class="form-control pWeight" type="number" name="weight" id="weight" placeholder="Weight">
                       </div>                           
                   </div>
                 <div class="sideContainer3 col-lg-4 col-sm-8">
                     <div class="form-group"> 
                               <label for="bloodtype">Blood Type:</label>
                               <input name="bloodtype" id="bloodtype"  class="form-control pBloodGroup">   
                     </div>
                     
                       <div class="form-group">
                           <label for="body_marks">Body Mark:</label>
                           <input name="body_marks" id="body_marks" class="form-control pBodyMark" type="text" maxlength="10" placeholder="Body Marks"/>
                       </div>
                     <div class="form-group">
                         <input id="login" class="btn btn-primary" type="button" value="Upadte"/>
                       </div>
                       </div>
                   </div>
               </form>
                </div>
                <div class="specializationContainer">
        <p style="font-size:20px;" class="mapper mainPageMapper"><span style="font-size:20px;margin-left:6px"></span>Go Back</p>
                    <div class="specializationOption">
                        <h3 class='specHeader'>Please choose the specialization</h3>
                        <div class="con"> 
                        <div class="eyeContainer option" id="eye">
                            <div class="Img" >
                                <img src="images/eye.png" class="icon">
                            </div>
                            <p class="Opcontent">
                                Eye
                            </p>
                        </div>
                            <div class="diabetesContainer option" id="diabetes">
                            <div class="Img">
                                <img src="images/diabetesCare.png" class="icon">
                            </div>
                            <p class="Opcontent">
                               Diabetes
                            </p>
                        </div>
                       </div>  
                        <div class="con"> 
                            <div class="boneContainer option" id="bone">
                            <div class="Img" >
                                <img src="images/bone care.png" class="icon">
                            </div>
                            <p class="Opcontent">
                                Bone
                            </p>
                        </div>
                            <div class="childContainer option" id="child">
                            <div class="Img" >
                                <img src="images/chidCare.jpg" class="icon">
                            </div>
                            <p class="Opcontent">
                                Child
                            </p>
                        </div>
                        </div>
                       <div class="con"> 
                           <div class="hairContainer option" id="hair">
                            <div class="Img">
                                <img src="images/hairCare.jpg" class="icon">
                            </div>
                            <p class="Opcontent">
                                Hair
                            </p>
                        </div>
                           <div class="earContainer option" id="ear">
                            <div class="Img">
                                <img src="images/earCare.jpg" class="icon">
                            </div>
                            <p class="Opcontent">
                               Ear
                            </p>
                        </div>
                       </div>    
                       <div class="con">  
                           <div class="psychoContainer option" id="psychology">
                            <div class="Img" >
                                <img src="images/psychology.webp" class="icon">
                            </div>
                            <p class="Opcontent">
                               Psychological Care
                            </p>
                        </div>
                           <div class="physioConatiner option" id="physiology">
                            <div class="Img">
                                <img src="images/physiotherapy.png" class="icon">
                            </div>
                            <p class="Opcontent">
                                Physiotherapy
                            </p>
                        </div>
                        </div> 
                    </div>
                  </div>
                <div class="hospitalContainer">
                    <div class="hospitalBodyContainer"> 
        <p style="font-size:20px;" class="mapper specializationMapper"><span style="font-size:20px;margin-left:6px"></span>Go Back</p>
                    <div class="searchCotainer">                           
                    <div class="form-group col-lg-4">
                        <label for="placeSearcher">Select your place:</label>
                        <select class="placeSearcher form-control" required>
                            <option value="dindugul">Dindugul</option>
                            <option value="coimbatore">Coimbatore</option>
                            <option value="madurai">Madurai</option>
                        </select>
                    </div>
                    </div> 
                   <div class="hospitalContent">
                     </div>   
                </div>
                    
            </div>
                <div class="doctorContainer">
        <p style="font-size:20px;" class="mapper doctorChoosingMapper"><span style="font-size:20px;margin-left:6px"></span>Go Back</p>                    
                    <div class="doctorContent">
                                                                         
                    </div>
                </div>  
              <div class="appointmentContainer">
        <p style="font-size:20px;" class="mapper appointmentChoosingMapper"><span style="font-size:20px;margin-left:6px"></span>Go Back</p>                    
                  <div class="appointmentContent" data-min="">
                  </div>
              </div>
            <div class="myDoctorContainer">
                <div class="myDoctorContent">
                    <div class="row m-0"> 
                        <div class="workingArea">
                            <div class="fixedDoctorDetails">
                            </div>
                            <div class="noteContainer">
                                
                            </div>
                            <div class="prescriptionDetials">
                            </div>
                        </div>
                    </div>     
                </div> 
          </div>
                <div class="specContainer">
                    <div class="specContent">
                        <div class="SpecContainer">
                            <div class="eyeSpec spec1 eyeLink"><img class='specImg ' src="images/eyeSpec.png" ></div>
                            <div class="earSpec spec2 earLink"><img class='specImg ' src='images/earSpec.png'></div>
                        </div>
                        <div class="SpecContainer ">
                            <div class="diabetesSpec spec1 diabetesLink"><img class='specImg ' src='images/diabetesSpec.png'></div>
                            <div class="boneSpec spec2 boneLink"><img class='specImg ' src='images/boneSpec.png'></div>
                        </div>
                        <div class="SpecContainer">
                            <div class="childSpec spec1 childLink"><img class='specImg' src='images/childSpec.png'></div>
                            <div class="hairSpec spec2 hairLink"><img class='specImg ' src='images/hairSpec.png'></div>
                        </div>
                        <div class="SpecContainer">
                            <div class="phsyologicalSpec spec1 phsyologicalLink"><img class='specImg ' src='images/psychologySpec.png'></div>
                            <div class="physiotherapySpec spec2 physiotherapyLink"><img class='specImg ' src='images/physioSpec.png'></div>
                        </div>

                    </div>
                    <div class='specMainContent'>
                         <p style="font-size:20px;" class="mapper1 mainPageMapper"><span style="font-size:20px;margin-left:6px"></span>Go Back</p>
                        <div class='eyeSpecContent'>
                            <h4>Eye</h4>
                            <div class='heading1'>
                                <div class='eyePara'>
                                   <h4>What is Eye?</h4> 
                                    To better understand a student’s vision, it is important to know how each part of the eye contributes to a person's ability to see. Each area of the eye has an important role and must function properly in order for the eye to function properly. The following is a quick lesson in the structure and functions of the eye.
There are three ways areas, or underlying reasons for, a visual impairment. The first, there may be damage or a result of an injury to one or more parts of the eye essential to vision.  This damage may interfere with the way the eye receives or processes visual information. Second, the eyeball may be proportioned incorrectly (have different dimensions than usual), making it harder to focus on objects or may not have developed correctly. And finally, the part of the brain that processes visual information may not work properly.  The eye may be perfectly normal, but the brain is not able to analyze and interpret visual information so that the person can see.
                                </div>
                                <div class='eyePara'>
                                    <h4>Parts of Eye</h4>
                                    As part of the coursework for becoming certified as a Teacher of Students with Visual Impairments, it is necessary to take a class on the structure and function of the eye. Understanding the significance of each area of the eye can help a TVI understand the possible effects of various visual diagnosis.
                                    <h5>1. Tear Layer</h5>
The Tear Layer (The Lacrimal System) is the first layer of the eye that light strikes.  It is clear, moist, and salty.  Its purpose is to keep the eye smooth and moist.  
<h5>2. Cornea</h5>
The Cornea is the second structure that light strikes.  It is the clear, transparent front part of the eye that covers the iris, pupil and anterior chamber and provides most of an eye’s optical power (if too flat = hyperopia/farsightedness; if too steep = myopia/nearsightedness).  It needs to be smooth, round, clear, and tough. It is like a protective window. The function of the cornea is to let light rays enter the eye and converge the light rays.
<h5>3. Anterior Chamber</h5>
The Anterior Chamber is filled with Aqueous Humor.  Aqueous Humour is a clear, watery fluid that fills the space between the back surface of the cornea and the front surface of the vitreous, bathing the lens (The anterior and posterior chambers.  Both are located in the front part of the eye, in front of the lens).  The eye receives oxygen through the aqueous.  Its function is to nourish the cornea, iris, and lens by carrying nutrients, it removes waste products excreted from the lens, and maintain intraocular pressure and thus maintains the shape of the eye.  This gives the eye its shape.  It must be clear to function properly.
<h5>4. Iris</h5>
The iris is the pigmented tissue lying behind the cornea that gives color to the eye and controls the amount of light entering the eye by varying the size of the papillary opening.  It functions like a camera. The color of the iris affects how much light gets in.  The iris controls light constantly, adapts to lighting changes, and is responsible for near point reading (to see close, pupils must constrict)
Pupil. It is a variable-sized black circular opening in the center of the iris that regulates the amount of light that enters the eye.  The pupil needs to be round in order to constrict.
Constricted. A constricted pupil occurs when the pupil size is reduced to constriction of the iris or relaxation of the iris dilator muscle. The iris constricts with bright illumination, with certain drugs, and can be a consequence of ocular inflammation. 
Dilated. A dilated pupil is an enlarged pupil, resulting from contraction of the dilator muscle or relaxation of the iris sphincter.  It occurs normally in dim illumination, or may be produced by certain drugs (mydriatics) or result from blunt trauma.
<h5>5. Lens</h5>
The lens is the natural lens of the eye (chrystaline lens).  Transparent, biconvex intraocular tissue that helps bring rays of light to focus on the retina (It bends light, but not as much as the cornea).  Suspended by fine ligaments (zonules) attached between ciliary processes. It has to be clear, has to have a power of about +16, and has to be pliable so it can control refraction (This becomes less pliable as you age leading to presbiopia).

Ciliary Body. The circumferential tissue (a ring of tissue between the end of the choroids and the beginning of the iris) inside the eye composed of the ciliary muscle (involved in lens accommodation and control of intraocular pressure and thus the shape of the lens) and 70 ciliary processes that produce aqueous fluid.
<h5>6. Vitreous Humour (Chamber)</h5>
Vitreous Humour (Chamber) is the transparent, colorless gelatinous mass that fills rear two-thirds of the eyeball, between the lens and the retina.  It has to be clear so light can pass through it and it has to be there or eye would collapse.
<h5>7. Retina</h5>
The retina is the light sensitive nerve tissue in the eye that converts images from the eye’s optical system into electrical impulses that are sent along the optic nerve to the brain, to interpret as vision.  Forms a thin membranous lining of the rear two-thirds of the globe; consists of layers that include two types of cells: rods and cones.  There is no retina over the optic nerve which causes a blind spot (This is the sightless area within the visual field of a normal eye.  It is caused by absence of light sensitive photoreceptors where the optic nerve enters the eye.)
Cones The cones are the light-sensitive retinal receptor cell that provides the sharp visual acuity (detail vision) and color discrimination; most numerous in macular area.  Function under bright lighting.
Rods The light-sensitive, specialized retinal receptor cell that works at low light levels (night vision).  The rods function with movement and provide light/dark contrast.  It makes up peripheral vision.
Macula It is the “yellow spot” in the small (3 °) central area of the retina surrounding the fovea.  It is the area of acute central vision (used for reading and discriminating fine detail and color). Within this area is the largest concentration of cones
​Fovea The fovea is the central pit in the macula that produces the sharpest vision. It contains a high concentration of cones within the macula and no retinal blood vessels.
<h5>8. Choroid</h5>
The vascular (major blood vessel), central layer of the eye lying between the retina and sclera. Its function is to provide nourishment to the outer layers of the retina through blood vessels. It is part of the uveal tract.
<h5>9. Sclera</h5>
The sclera is the opaque, fibrous, tough, protective outer layer of the eye (“white of the eye”) that is directly continuous with the cornea in front and with the sheath covering the optic nerve behind. The sclera provides protection and form.
<h5>10. Optic Nerve</h5>
The Optic Nerve is the largest sensory nerve of the eye. It carries impulses for sight from the retina to the brain.  Composed of retinal nerve fivers that exit the eyeball through the optic disc, traverse the orbit, pass through the optic foramen into the cranial cavity, where they meet fibers from the other optic nerve at the optic chiasm.
<h5>11. Extraocular Muscles</h5>
There are six extraocular muscles in each eye:
Rectus Muscles. There are four Rectus muscles that are responsible for straight movements: Superior (upward), Inferior (lower), Lateral (toward the outside, or away from the nose), and Medial (toward the inside, or toward the nose). 
Oblique Muscles. There are two Oblique muscles that are responsible for angled movements. The superioroblique muscles control angled movements upward toward the right or left. Inferior oblique muscles control angled movements downward toward the right or left.
<h4>Common Problems and Remedies</h4>
Most people have eye problems at one time or another. Some are minor and will go away on their own, or are easy to treat at home. Others need a specialist’s care.

Whether your vision isn’t what it used to be, or never was that great, there are things you can do to get your eye health back on track.

See if any of these common problems sound familiar. And always check with a doctor if your symptoms are really bad or don’t clear up within a few days.

<h5>Eyestrain</h5>
Anyone who reads for hours, works at a computer, or drives long distances knows about this one. It happens when you overuse your eyes. They get tired and need to rest, just like any other part of your body.

If your eyes feel strained, give them some time off. If they’re still weary after a few days, check with your doctor to make sure it isn’t another problem.

<h5>Red Eyes</h5>
Your eyes look bloodshot. Why?

Their surface is covered in blood vessels that expand when they’re irritated or infected. That gives your eyes the red look.

Eyestrain can do it, and so can a late night, a lack of sleep, or allergies. If an injury is the cause, get it checked by your doctor.

Red eyes could be a symptom of another eye condition, like conjunctivitis (pinkeye) or sun damage from not wearing shades over the years. If over-the-counter eye drops and rest don’t clear it up, see your doctor.

<h5>Night Blindness</h5>
Is it hard to see at night, especially while driving? Is it tough to find your way around in dark places, such as movie theaters?

That sounds like night blindness. It’s a symptom, not a problem in its own right. Nearsightedness, cataracts, keratoconus, and a lack of vitamin A all cause a type of night blindness that doctors can fix.

Some people are born with this problem, or it might develop from a degenerative disease involving the retina, and that usually can’t be treated. If you have it, you’ll need to be extra careful in areas of low light.

<h5>Lazy Eye</h5>
Lazy eye, or amblyopia, happens when one eye doesn’t develop properly. Vision is weaker in that eye, and it tends to move “lazily” around while the other eye stays put. It’s found in infants, children, and adults, and rarely affects both eyes. Treatment needs to be sought immediately for infants and children.

Lifelong vision problems can be avoided if a lazy eye is detected and treated during early childhood. Treatment includes corrective glasses or contact lenses and using a patch or other strategies to make a child use the lazy eye.

<h5>Cross Eyes (Strabismus) and Nystagmus</h5>
If your eyes aren’t lined up with each other when you look at something, you could have strabismus. You might also hear it called crossed eyes or walleye.

This problem won’t go away on its own. You’ll need to get an ophthalmologist, or eye specialist, to correct it.

With nystagmus, the eye moves or "jiggles" all the time on its own. 

There are many treatments, including vision therapy to make your eyes stronger. Surgery is also an option. Your doctor will examine your eyes to see which treatment might work best for you.

<h5>Colorblindness</h5>
When you can’t see certain colors, or can’t tell the difference between them (usually reds and greens), you may be colorblind. It happens when the color cells in your eye (the doctor will call them cone cells) are absent or don’t work.

When it’s most severe, you can only see in shades of gray, but this is rare. Most people who have it are born with it, but you can get it later in life from certain drugs and diseases. Your doctor can tell you what’s to blame. Men are much more likely to be born with it than women.

Your eye doctor can diagnose it with a simple test. There’s no treatment if you’re born with it, but special contacts and glasses can help some people tell the difference between certain colors.

<h5>Uveitis</h5>
This is the name for a group of diseases that cause inflammation of the uvea. That’s the middle layer of the eye that contains most of the blood vessels.

These diseases can destroy eye tissue, and even cause eye loss. People of all ages can have it. Symptoms may go away quickly or last for a long time.

People with immune system conditions like AIDS, rheumatoid arthritis, or ulcerative colitis may be more likely to have uveitis. Symptoms may include:
<ul>
<li>Blurred vision</li>
<li>Eye pain</li>
<li>Eye redness</li>
<li>Light sensitivity</li>
</ul>
See your doctor if you have these symptoms and they don’t go away within a few days. There are different kinds of treatment for uveitis, depending on the type you have.

<h5>Presbyopia</h5>
This happens when you lose the ability, despite good distance vision, to clearly see close objects and small print.

After age 40 or so, you may have to hold a book or other reading material farther away from your eyes to make it easier to read. Sort of like your arms are too short.

Reading glasses, contact lenses, LASIK, which is laser eye surgery, and other procedures can be used to restore good reading vision.

<h5>Floaters</h5>>
These are tiny spots or specks that float across your field of vision. Most people notice them in well-lit rooms or outdoors on a bright day.

Floaters are usually normal, but they sometimes can be a sign of a more serious eye problem, like retinal detachment. That’s when the retina at the back of your eye separates from the layer underneath. When this happens, you might also see light flashes along with the floaters or a dark shadow come across the edge of your sight.

If you notice a sudden change in the type or number of spots or flashes you see or a new dark “curtain" in your peripheral vision, go to your eye doctor as soon as possible.

<h5>Dry Eyes</h5>
This happens when your eyes can't make enough good-quality tears. You might feel like something is in your eye or like it’s burning. Rarely, in severe cases, extreme dryness can lead to some loss of vision. Some treatments include:

Using a humidifier in your home
<ul>
<li>Special eye drops that work like real tears</li>
<li>Plugs in your tear ducts to lessen drainage</li>
<li>Lipiflow, a procedure that uses heat and pressure to treat dry eyes<li>
<li>Testosterone eyelid cream<li>
<li>Nutritional supplements with fish oil and omega-3</li>
<li>If your dry eye problem is chronic, you may have dry eye disease. You doctor could prescribe medicated drops like cyclosporine (Cequa, Restasis) or lifitegrast (Xiidra) to stimulate tear production.</li>
</ul>
<h5>Excess Tearing</h5>
It has nothing to do with your feelings. You might be sensitive to light, wind, or temperature changes. Try to protect your eyes by shielding them or wearing sunglasses (go for wraparound frames -- they block more wind than other types).

Tearing may also signal a more serious problem, like an eye infection or a blocked tear duct. Your eye doctor can treat or correct both of these conditions.

<h5>Cataracts</h5>
These are cloudy areas that develop in the eye lens.

A healthy lens is clear like a camera's. Light passes through it to your retina -- the back of your eye where images are processed. When you have a cataract, light can't get through as easily. The result: You can't see as well and may notice glare or a halo around lights at night.

Cataracts often form slowly. They don't cause symptoms like pain, redness, or tearing in the eye.

Some stay small and don't affect your sight. If they do progress and affect your vision, surgery almost always works to bring it back.

<h5>Glaucoma</h5>
Your eye is like a tire: Some pressure inside it is normal and safe. But levels that are too high can damage your optic nerve. Glaucoma is the name for a group of diseases that cause this condition.

A common form is primary open angle glaucoma. Most people who have it don’t have early symptoms or pain. So it's important to keep up with your regular eye exams.

It doesn’t happen often, but glaucoma can be caused by:

<h5>An injury to the eye</h5>
<ul><li>Blocked blood vessels</li>
<li>Inflammatory disorders of the eye</li>
<li>Treatment includes prescription eye drops or surgery.</li></ul>

<h5>Retinal Disorders</h5>
The retina is a thin lining on the back of your eye that is made up of cells that collect images and pass them on to your brain. Retinal disorders block this transfer. There are different types:
<ul>
<li>Age-related macular degeneration refers to a breakdown of a small portion of the retina called the macula.</li>
<li>Diabetic retinopathy is damage to the blood vessels in your retina caused by diabetes.</li>
<li>Retinal detachment happens when the retina separates from the layer underneath.</li>
<li>It’s important to get an early diagnosis and have these conditions treated.</li>
</ul>
<h5>Conjunctivitis (Pinkeye)</h5>
In this condition, tissue that lines the back of your eyelids and covers your sclera gets inflamed. It can cause redness, itching, burning, tearing, discharge, or a feeling that something is in your eye.

People of all ages can get it. Causes include infection, exposure to chemicals and irritants, or allergies.

Wash your hands often to lower your chance of getting it.

<h5>Corneal Diseases</h5>
The cornea is the clear, dome-shaped "window" at the front of your eye. It helps to focus the light that comes in. Disease, infection, injury, and exposure to toxins can damage it. Signs include:

<ul>
<li>Red eyes</li>
<li>Watery eyes</li>
<li>Pain</li>
<li>Reduced vision, or a halo effect</li></ul>
The main treatment methods include:
<ul>
<li>A new eyeglasses or contacts prescription</li>
<li>Medicated eye drops</li>
<li>Surgery</li>
</ul> 

<h5>Eyelid Problems</h5>
Your eyelids do a lot for you. They protect your eye, spread tears over its surface, and limit the amount of light that can get in.

Pain, itching, tearing, and sensitivity to light are common symptoms of eyelid problems. You might also have blinking spasms or inflamed outer edges near your eyelashes.

Treatment could include proper cleaning, medication, or surgery.

<h5>Vision Changes</h5>
As you get older, you may find that you can’t see as well as you once did. That’s normal. You’ll probably need glasses or contacts. You may choose to have surgery (LASIK) to correct your vision. If you already have glasses, you may need a stronger prescription.

Other, more serious conditions also happen as you age. Eye diseases like macular degeneration, glaucoma, and cataracts, can cause vision problems. Symptoms vary a lot among these disorders, so keep up with your eye exams.

Some vision changes can be dangerous and need immediate medical care. Anytime you have a sudden loss of vision, or everything looks blurry -- even if it’s temporary -- see a doctor right away. Go to the emergency room or call 911.

<h5>Problems With Contact Lenses</h5>
They work well for many people, but you need to take care of them. Wash your hands before you touch them. Follow the care guidelines that came with your prescription. And follow these rules:
<ul>
<li>Never wet them by putting them in your mouth. That can make an infection more likely.</li>
<li>Make sure your lenses fit properly, so they don’t scratch your eyes.</li>
<li>Use eye drops that say they're safe for contact lenses.</li>
<li>Never use homemade saline solutions. Even though some lenses are FDA-approved for sleeping in them, doing so raises the risk of a serious infection.</li>
<li>If you do everything right and still have problems with your contacts, see your eye doctor. You might have allergies, dry eyes, or just be better off with glasses. Once you know what the problem is, you can decide what’s best for you.</li>
</ul>
                                </div>
                            </div>
                        </div>
      <div class="earSpecContent">
                             <h4>Ear</h4>
                             The ear is an advanced and very sensitive organ of the human body. The ear’s function is to transmit and transduce sound to the brain through the parts of the ear: the outer ear, the middle ear and the inner ear.
The major task of the ear is to detect, transmit and transduce sound. Another very important function of the ear is to maintain our sense of balance.

The best way to describe the functioning of the ear is to describe the path which the sound waves take on their way through the ear. In the video you can see the journey of the sound waves through the ear.



The sound waves travel from the outer ear and in through the auditory canal, causing the eardrum, or tympanic membrane, to vibrate. This, in turn, causes the three small bones, known as the ossicles, or the hammer, the anvil and the stirrup, in the middle ear to move. The vibrations move via the oval window through the fluid in the cochlea in the inner ear, stimulating thousands of tiny hair cells. This results in the transformation of the vibrations into electrical impulses finally perceived by the brain as sound.

The ear consists of many small parts, but can be divided into three major parts:
<ul>
<li>The outer ear</li>
<li>The middle ear</li>
<li>The inner ear</li>
</ul>
<h5>Parts of Ear</h5>
The most-striking differences between the human ear and the ears of other mammals are in the structure of the outermost part, the auricle. In humans the auricle is an almost rudimentary, usually immobile shell that lies close to the side of the head. It consists of a thin plate of yellow elastic cartilage covered by closely adherent skin. The cartilage is molded into clearly defined hollows, ridges, and furrows that form an irregular shallow funnel. The deepest depression, which leads directly to the external auditory canal, or acoustic meatus, is called the concha. It is partly covered by two small projections, the tonguelike tragus in front and the antitragus behind. Above the tragus a prominent ridge, the helix, arises from the floor of the concha and continues as the incurved rim of the upper portion of the auricle. An inner, concentric ridge, the antihelix, surrounds the concha and is separated from the helix by a furrow, the scapha, also called the fossa of the helix. In some ears a little prominence known as Darwin’s tubercle is seen along the upper, posterior portion of the helix; it is the vestige of the folded-over point of the ear of a remote human ancestor. The lobule, the fleshy lower part of the auricle, is the only area of the outer ear that contains no cartilage. The auricle also has several small rudimentary muscles, which fasten it to the skull and scalp. In most individuals these muscles do not function, although some persons can voluntarily activate them to produce limited movements. The external auditory canal is a slightly curved tube that extends inward from the floor of the concha and ends blindly at the tympanic membrane. In its outer third, the wall of the canal consists of cartilage; in its inner two-thirds, of bone. The entire length of the passage (24 mm, or almost 1 inch) is lined with skin, which also covers the outer surface of the tympanic membrane. Fine hairs directed outward and modified sweat glands that produce earwax, or cerumen, line the canal and discourage insects from entering it.

<h5>Middle-ear cavity</h5>
The cavity of the middle ear is a narrow air-filled space. A slight constriction divides it into an upper and a lower chamber, the tympanum (tympanic cavity) proper below and the epitympanum above. These chambers are also referred to as the atrium and the attic, respectively. The middle-ear space roughly resembles a rectangular room with four walls, a floor, and a ceiling. The outer (lateral) wall of the middle-ear space is formed by the tympanic membrane. The ceiling (superior wall) is a thin plate of bone that separates the middle-ear cavity from the cranial cavity and brain above. The floor (inferior wall) is also a thin bony plate, in this case separating the middle-ear cavity from the jugular vein and the carotid artery below. The back (posterior) wall partly separates the middle-ear cavity from another cavity, the mastoid antrum, but an opening in this wall leads to the antrum and to the small air cells of the mastoid process, which is the roughened, slightly bulging portion of the temporal bone just behind the external auditory canal and the auricle. In the front (anterior) wall is the opening of the eustachian tube (or auditory tube), which connects the middle ear with the nasopharynx. The inner (medial) wall, which separates the middle ear from the inner ear, or labyrinth, is a part of the bony otic capsule of the inner ear. It has two small openings, or fenestrae, one above the other. The upper one is the oval window, which is closed by the footplate of the stapes. The lower one is the round window, which is covered by a thin membrane.

<h5>Auditory ossicles</h5>
Crossing the middle-ear cavity is the short ossicular chain formed by three tiny bones that link the tympanic membrane with the oval window and inner ear. From the outside inward they are the malleus (hammer), the incus (anvil), and the stapes (stirrup). The malleus more closely resembles a club than a hammer, and the incus looks more like a premolar tooth with uneven roots than an anvil. These bones are suspended by ligaments, which leave the chain free to vibrate in transmitting sound from the tympanic membrane to the inner ear.
The malleus consists of a handle and a head. The handle is firmly attached to the tympanic membrane from the centre (umbo) to the upper margin. The head of the malleus and the body of the incus are joined tightly and are suspended in the epitympanum just above the upper rim of the tympanic annulus, where three small ligaments anchor the head of the malleus to the walls and roof of the epitympanum. Another minute ligament fixes the short process (crus) of the incus in a shallow depression, called the fossa incudis, in the rear wall of the cavity. The long process of the incus is bent near its end and bears a small bony knob that forms a loose ligament-enclosed joint with the head of the stapes. The stapes is the smallest bone in the body. It is about 3 mm (0.1 inch) long and weighs scarcely 3 mg (0.0001 ounce). It lies almost horizontally, at right angles to the process of the incus. Its base, or footplate, fits nicely in the oval window and is surrounded by the elastic annular ligament, although it remains free to vibrate in transmitting sound to the labyrinth.

<h5>Muscles</h5>
Two minuscule muscles are located in the middle ear. The longer muscle, called the tensor tympani, emerges from a bony canal just above the opening of the eustachian tube and runs backward and then outward as it changes direction in passing over a pulleylike projection of bone. The tendon of this muscle is attached to the upper part of the handle of the malleus. When contracted, the tensor tympani tends to pull the malleus inward and thus maintains or increases the tension of the tympanic membrane. The shorter, stouter muscle, called the stapedius, arises from the back wall of the middle-ear cavity and extends forward and attaches to the neck of the head of the stapes. Its reflex contractions tend to tip the stapes backward, as if to pull it out of the oval window. Thus, it selectively reduces the intensity of sounds entering the inner ear, especially those of lower frequency.

<h5>Nerves</h5>
The seventh cranial nerve, called the facial nerve, passes by a somewhat circuitous route through the facial canal in the petrous portion of the temporal bone on its way from the brainstem to the muscles of expression of the face. A small but important branch, the chorda tympani nerve, emerges from the canal into the middle-ear cavity and runs forward along the inner surface of the pars tensa of the membrane, passing between the handle of the malleus and the long process of the incus. Since at this point it is covered only by the tympanic mucous membrane, it appears to be quite bare. Then it resumes its course through the anterior bony wall, bringing sensory fibres for taste to the anterior two-thirds of the tongue and parasympathetic secretory fibres to salivary glands.

<h5>Eustachian tube</h5>
The eustachian tube, about 31–38 mm (1.2–1.5 inches) long, leads downward and inward from the tympanum to the nasopharynx, the space that is behind and continuous with the nasal passages and is above the soft palate. At its upper end the tube is narrow and surrounded by bone. Nearer the pharynx it widens and becomes cartilaginous. Its mucous lining, which is continuous with that of the middle ear, is covered with cilia, small hairlike projections whose coordinated rhythmical sweeping motions speed the drainage of mucous secretions from the tympanum to the pharynx.

The eustachian tube helps ventilate the middle ear and maintain equal air pressure on both sides of the tympanic membrane. The tube is closed at rest and opens during swallowing so that minor pressure differences are adjusted without conscious effort. During an underwater dive or a rapid descent in an airplane, the tube may remain tightly closed. The discomfort that is felt as the external pressure increases can usually be overcome by attempting a forced expiration with the mouth and nostrils held tightly shut. This maneuver, which raises the air pressure in the pharynx and causes the tube to open, is called the Valsalva maneuver, named for Italian physician-anatomist Antonio Maria Valsalva (1666–1723), who recommended it for clearing pus from an infected middle ear.

<h5>Vestibule</h5>
The two membranous sacs of the vestibule, the utricle and the saccule, are known as the otolith organs. Because they respond to gravitational forces, they are also called gravity receptors. Each sac has on its inner surface a single patch of sensory cells called a macula, which is about 2 mm (0.08 inch) in diameter. The macula monitors the position of the head relative to the vertical. In the utricle the macula projects from the anterior wall of that tubular sac and lies primarily in the horizontal plane. In the saccule the macula is in the vertical plane and directly overlies the bone of the inner wall of the vestibule. In shape it is elongated and resembles the letter J. Each macula consists of neuroepithelium, a layer that is made up of supporting cells and sensory cells, as well as a basement membrane, nerve fibres and nerve endings, and underlying connective tissue. The sensory cells are called hair cells because of the hairlike cilia—stiff nonmotile stereocilia and flexible motile kinocilia—that project from their apical ends. The nerve fibres are from the superior, or vestibular, division of the vestibulocochlear nerve. They pierce the basement membrane and, depending on the type of hair cell, either end on the basal end of the cell or form a calyx, or cuplike structure, that surrounds it.

The membranous labyrinth of the vestibular system (centre), which contains the organs of balance, and (lower left) the cristae of the semicircular ducts and (lower right) the maculae of the utricle and saccule.

Each of the hair cells of the vestibular organs is topped by a hair bundle, which consists of about 100 fine nonmotile stereocilia of graded lengths and a single motile kinocilium. The stereocilia are anchored in a dense cuticular plate at the cell’s apex. The single kinocilium, which is larger and longer than the stereocilia, rises from a noncuticular area of the cell membrane at one side of the cuticular plate. The longest stereocilia are those closest to the kinocilium; the stereocilia decrease in length in stepwise fashion away from the kinocilium. Minute filamentous strands link the tips and shafts of neighbouring stereocilia to one another. When the hair bundles are deflected—e.g., because of a tilt of the head—the hair cells are stimulated to alter the rate of the nerve impulses that they are constantly sending via the vestibular nerve fibres to the brainstem. Covering the entire macula is a delicate acellular structure, the otolithic, or statolithic, membrane. This membrane is sometimes described as gelatinous, although it has a fibrillar pattern. The surface of the membrane is covered by a blanket of rhombohedral crystals, referred to as otoconia or statoconia, which consist of calcium carbonate in the form of calcite. These crystalline particles, which range in length from 1 to 20 μm (1 μm = 0.000039 inch), are much denser than the membrane—their specific gravity is almost three times that of the membrane and the endolymph—and thus add considerable mass to it.

The vestibular hair cells are of two types: type I cells have a rounded body enclosed by a nerve calyx, and type II cells have a cylindrical body with nerve endings at the base. They form a mosaic on the surface of the maculae, with the type I cells dominating in a curvilinear area (the striola) near the centre of the macula and the cylindrical cells around the periphery. The significance of these patterns is poorly understood, but they may increase sensitivity to slight tiltings of the head.

<h5>Semicircular canals</h5>
The three semicircular canals of the bony labyrinth are designated according to their position: superior, horizontal, and posterior. The superior and posterior canals are in diagonal vertical planes that intersect at right angles. Each canal has an expanded end, the ampulla, which opens into the vestibule. The ampullae of the horizontal and superior canals lie close together, just above the oval window, but the ampulla of the posterior canal opens on the opposite side of the vestibule. The other ends of the superior and posterior canals join to form a common stem, or crus, which also opens into the vestibule. Nearby is the mouth of a canal called the vestibular aqueduct, which opens into the cranial cavity. The other end of the horizontal canal has a separate opening into the vestibule. Thus, the vestibule completes the circle for each of the semicircular canals.

Each of the three bony canals and its ampulla enclose a membranous semicircular duct of much smaller diameter that has its own ampulla. The membranous ducts and ampullae follow the same pattern as the canals and ampullae of the bony labyrinth, with their openings into the utricle and with a common crus for the superior and posterior ducts. Like the other parts of the membranous labyrinth, they are filled with endolymph and surrounded by perilymph. The narrow endolymphatic duct passes from the utricle through the vestibular aqueduct into the cranial cavity, carrying excess endolymph to be absorbed by the endolymphatic sac.

Each membranous ampulla contains a saddle-shaped ridge of tissue called the crista, the sensory end organ that extends across it from side to side. The crista is covered by neuroepithelium, with hair cells and supporting cells. From this ridge rises a gelatinous structure, the cupula, which extends to the roof of the ampulla immediately above it, dividing the interior of the ampulla into two approximately equal parts. Like the hair cells of the maculae, the hair cells of the cristae have hair bundles projecting from their apices. The kinocilium and the longest stereocilia extend far up into the substance of the cupula, occupying fine parallel channels. Thus, the cupula is attached at its base to the crista but is free to incline toward or away from the utricle in response to the slightest flow of endolymph or a change in pressure. The tufts of cilia move with the cupula and, depending on the direction of their bending, cause an increase or a decrease in the rate of nerve impulse discharges carried by the vestibular nerve fibres to the brainstem.

<h5>Structure of the cochlea</h5>
The cochlea contains the sensory organ of hearing. It bears a striking resemblance to the shell of a snail and in fact takes its name from the Greek word for this object. The cochlea is a spiral tube that is coiled two and one-half turns around a hollow central pillar, the modiolus. It forms a cone approximately 9 mm (0.35 inch) in diameter at its base and 5 mm in height. When stretched out, the spiral tube is approximately 30 mm in length. It is widest—2 mm—at the point where the basal coil opens into the vestibule, and it tapers until it ends blindly at the apex. The otherwise hollow centre of the modiolus contains the cochlear artery and vein, as well as the twisted trunk of fibres of the cochlear nerve. This nerve, a division of the very short vestibulocochlear nerve, enters the base of the modiolus from the brainstem through an opening in the petrous portion of the temporal bone called the internal meatus. The spiral ganglion cells of the cochlear nerve are found in a bony spiral canal winding around the central core.

A thin bony shelf, the osseous spiral lamina, winds around the modiolus like the thread of a screw. It projects about halfway across the cochlear canal, partly dividing it into two compartments, an upper chamber called the scala vestibuli (vestibular ramp) and a lower chamber called the scala tympani (tympanic ramp). The scala vestibuli and scala tympani, which are filled with perilymph, communicate with each other through an opening at the apex of the cochlea, called the helicotrema, which can be seen if the cochlea is sliced longitudinally down the middle. At its basal end, near the middle ear, the scala vestibuli opens into the vestibule. The basal end of the scala tympani ends blindly just below the round window. Nearby is the opening of the narrow cochlear aqueduct, through which passes the perilymphatic duct. This duct connects the interior of the cochlea with the subdural space in the posterior cranial fossa (the rear portion of the floor of the cranial cavity).

A smaller scala, called the cochlear duct (scala media), lies between the larger vestibular and tympanic scalae; it is the cochlear portion of the membranous labyrinth. Filled with endolymph, the cochlear duct ends blindly at both ends—i.e., below the round window and at the apex. In cross section this duct resembles a right triangle. Its base is formed by the osseous spiral lamina and the basilar membrane, which separate the cochlear duct from the scala tympani. Resting on the basilar membrane is the organ of Corti, which contains the hair cells that give rise to nerve signals in response to sound vibrations. The side of the triangle is formed by two tissues that line the bony wall of the cochlea: the stria vascularis, which lines the outer wall of the cochlear duct, and the fibrous spiral ligament, which lies between the stria and the bony wall of the cochlea. A layer of flat cells bounds the stria, separating it from the spiral ligament. The hypotenuse is formed by the transparent vestibular membrane (or Reissner membrane), which consists of only two layers of flattened cells. A low ridge, the spiral limbus, rests on the margin of the osseous spiral lamina. The Reissner membrane stretches from the inner margin of the limbus to the upper border of the stria.

A cross section through one of the turns of the cochlea (inset) showing the scala tympani and scala vestibuli, which contain perilymph, and the cochlear duct, which is filled with endolymph.

The spiral ligament extends above the attachment of the Reissner membrane and is in contact with the perilymph in the scala vestibuli. Extending below the insertion of the basilar membrane, it is in contact with the perilymph of the scala tympani. It contains many stout fibres that anchor the basilar membrane and numerous connective-tissue cells. The structure of the spiral ligament is denser behind the stria than near the upper and lower margins. The spiral ligament, like the adjacent stria, is well supplied with blood vessels. It receives the radiating arterioles that pass outward from the modiolus in bony channels of the roof of the scala vestibuli. Branches from these vessels form a network of capillaries above the junction with the Reissner membrane that may be largely responsible for the formation of the perilymph from the blood plasma. Other branches enter the stria, and still others pass behind it to the spiral prominence. From these separate capillary networks, which are not interconnected, small veins descending below the attachment of the basilar membrane collect blood and deliver it to the spiral vein in the floor of the scala tympani.

At the lower margin of the stria is the spiral prominence, a low ridge parallel to the basilar membrane that contains its own set of longitudinally directed capillary vessels. Below the prominence is the outer sulcus. The floor of the outer sulcus is lined by cells of epithelial origin, some of which send long projections into the substance of the spiral ligament. Between these so-called root cells, capillary vessels descend from the spiral ligament. This region appears to have an absorptive rather than a secretory function, and it may be involved in removing waste materials from the endolymph.

In humans the basilar membrane is about 30 to 35 mm in length. It widens from less than 0.1 mm near its basal end to 0.5 mm near the apex. The basilar membrane is spanned by stiff elastic fibres that are connected at their basal ends in the modiolus. Their distal ends are embedded in the membrane but are not actually attached, which allows them to vibrate. The fibres decrease in calibre and increase in length from the basal end of the cochlea near the middle ear to the apex, so that the basilar membrane as a whole decreases remarkably in stiffness from base to apex. Furthermore, at the basal end the osseous spiral lamina is broader, the stria vascularis wider, and the spiral ligament stouter than at the apex. In contrast, however, the mass of the organ of Corti is least at the base and greatest at the apex. Thus, a certain degree of tuning is provided in the structure of the cochlear duct and its contents. With greater stiffness and less mass, the basal end is more attuned to the sounds of higher frequencies. Decreased stiffness and increased mass render the apical end more responsive to lower frequencies.

Beneath the fibrillar layer of the basilar membrane is the acellular ground substance of the membrane. This layer is covered in turn by a single layer of spindle-shaped mesothelial cells, which have long processes arranged longitudinally and parallel, facing the scala tympani and forming the tympanic lamella that is in contact with the perilymph.

Capillary blood vessels are found on the underside of the tympanic lip of the limbus and, in some species, including the guinea pig and humans, within the basilar membrane, beneath the tunnel. These vessels, called spiral vessels, do not enter the organ of Corti but are thought to supply most of the oxygen and other nutrients to its cells. Although the outer spiral vessel is seldom found in adult animals of certain species such as the dog, cat, and rat and is not found in the basilar membrane of every adult human, it is present in the human fetus. Its impressive diameter in the fetus suggests that it is an important channel for blood delivery to the developing organ of Corti.

<h5>Organ of Corti</h5>
Arranged on the surface of the basilar membrane are orderly rows of the sensory hair cells, which generate nerve impulses in response to sound vibrations. Together with their supporting cells they form a complex neuroepithelium called the basilar papilla, or organ of Corti. The organ of Corti is named after Italian anatomist Alfonso Corti, who first described it in 1851. Viewed in cross section, the most striking feature of the organ of Corti is the arch, or tunnel, of Corti, formed by two rows of pillar cells, or rods. The pillar cells furnish the major support of this structure. They separate a single row of larger, pear-shaped inner hair cells from three or more rows of smaller, cylindrical outer hair cells. The inner hair cells are supported and enclosed by the inner phalangeal cells, which rest on the thin outer portion, called the tympanic lip, of the spiral limbus. On the inner side of the inner hair cells and the cells that support them is a curved furrow called the inner sulcus. This is lined with more or less undifferentiated cuboidal cells.

Each outer hair cell is supported by a phalangeal cell of Deiters, or supporting cell, which holds the base of the hair cell in a cup-shaped depression. From each Deiters’ cell a projection extends upward to the stiff membrane, the reticular lamina, that covers the organ of Corti. The top of the hair cell is firmly held by the lamina, but the body is suspended in fluid that fills the space of Nuel and the tunnel of Corti. Although this fluid is sometimes referred to as cortilymph, its composition is thought to be similar, if not identical, to that of the perilymph. Beyond the hair cells and the Deiters’ cells are three other types of epithelial cells, usually called the cells of Hensen, Claudius, and Boettcher, after the 19th-century anatomists who first described them. Their function has not been established, but they are assumed to help in maintaining the composition of the endolymph by ion transport and absorptive activity.

Each hair cell has a cytoskeleton composed of filaments of the protein actin, which imparts stiffness to structures in which it is found. The hair cell is capped by a dense cuticular plate, composed of actin filaments, which bears a tuft of stiffly erect stereocilia, also containing actin, of graded lengths arranged in a staircase pattern. This so-called hair bundle has rootlets anchored firmly in the cuticular plate. On the top of the inner hair cells 40 to 60 stereocilia are arranged in two or more irregularly parallel rows. On the outer hair cells approximately 100 stereocilia form a W pattern. At the notch of the W the plate is incomplete, with only a thin cell membrane taking its place. Beneath the membrane is the basal body of a kinocilium, although no motile ciliary (hairlike) portion is present as is the case on the hair cells of the vestibular system.

The stereocilia are about 3 to 5 μm in length. The longest make contact with but do not penetrate the tectorial membrane. This membrane is an acellular gelatinous structure that covers the top of the spiral limbus as a thin fibrillar layer, then becomes thicker as it extends outward over the inner sulcus and the reticular lamina. Its fibrils extend radially and somewhat obliquely to end at its lateral border, just above the junction of the reticular lamina and the cells of Hensen. In the upper turns of the cochlea, the margin of the membrane ends in fingerlike projections that make contact with the stereocilia of the outermost hair cells.

The myelin-ensheathed fibres of the vestibulocochlear nerve fan out in spiral fashion from the modiolus to pass into the channel near the root of the osseous spiral lamina, called the canal of Rosenthal. The bipolar cell bodies of these neurons constitute the spiral ganglion. Beyond the ganglion their distal processes extend radially outward in the bony lamina beneath the limbus to pass through an array of small pores directly under the inner hair cells, called the habenula perforata. Here the fibres abruptly lose their multilayered coats of myelin and continue as thin, naked, unmyelinated fibres into the organ of Corti. Some fibres form a longitudinally directed bundle running beneath the inner hair cells and another bundle just inside the tunnel, above the feet of the inner pillar cells. The majority of the fibres (some 95 percent in the human ear) end on the inner hair cells. The remainder cross the tunnel to form longitudinal bundles beneath the rows of the outer hair cells on which they eventually terminate.

The endings of the nerve fibres beneath the hair cells are of two distinct types. The larger and more numerous endings contain many minute vesicles, or liquid-filled sacs, containing neurotransmitters, which mediate impulse transmission at neural junctions. These endings belong to a special bundle of nerve fibres that arise in the brainstem and constitute an efferent system, or feedback loop, to the cochlea. The smaller and less numerous endings contain few vesicles or other cell structures. They are the terminations of the afferent fibres of the cochlear nerve, which transmit impulses from the hair cells to the brainstem (see The physiology of hearing: Cochlear nerve and central auditory pathways).

The total number of outer hair cells in the cochlea has been estimated at 12,000 and the number of inner hair cells at 3,500. Although there are about 30,000 fibres in the cochlear nerve, there is considerable overlap in the innervation of the outer hair cells. A single fibre may supply endings to many hair cells, which thus share a “party line.” Furthermore, a single hair cell may receive nerve endings from many fibres. The actual distribution of nerve fibres in the organ of Corti has not been worked out in detail, but it is known that the inner hair cells receive the majority of afferent fibre endings without the overlapping and sharing of fibres that are characteristic of the outer hair cells.

Viewed from above, the organ of Corti with its covering, the reticular lamina, forms a well-defined mosaic pattern. In humans the arrangement of the outer hair cells in the basal turn of the cochlea is quite regular, with three distinct and orderly rows; but in the higher turns of the cochlea the arrangement becomes slightly irregular, as scattered cells form fourth or fifth rows. The spaces between the outer hair cells are filled by oddly shaped extensions (phalangeal plates) of the supporting cells. The double row of head plates of the inner and outer pillar cells cover the tunnel and separate the inner from the outer hair cells. The reticular lamina extends from the inner border cells near the inner sulcus to the Hensen cells but does not include either of these cell groups. When a hair cell degenerates and disappears as a result of aging, disease, or noise-induced injury, its place is quickly covered by the adjacent phalangeal plates, which expand to form an easily recognized “scar.”

<h5>Endolymph and perilymph</h5>
The perilymph, which fills the space within the bony labyrinth surrounding the membranous labyrinth, is similar, but not identical, in composition to other extracellular fluids of the body, such as cerebrospinal fluid. The concentration of sodium ions in the perilymph is high (about 150 milliequivalents per litre), and that of potassium ions is low (about 5 milliequivalents per litre), as is true of other extracellular fluids. Like these fluids, the perilymph is apparently formed locally from the blood plasma by transport mechanisms that selectively allow substances to cross the walls of the capillaries. Although it is anatomically possible for cerebrospinal fluid to enter the cochlea by way of the perilymphatic duct, experimental studies have made it appear unlikely that the cerebrospinal fluid is involved in the normal production of perilymph.


The membranous labyrinth is filled with endolymph, which is unique among extracellular fluids of the body, including the perilymph, in that its potassium ion concentration is higher (about 140 milliequivalents per litre) than its sodium ion concentration (about 15 milliequivalents per litre).

The process of formation of the endolymph and the maintenance of the difference in ionic composition between it and perilymph are not yet completely understood. The Reissner membrane forms a selective barrier between the two fluids. Blood-endolymph and blood-perilymph barriers, which control the passage of substances such as drugs from the blood to the inner ear, appear to exist as well. Evidence indicates that the endolymph is produced from perilymph as a result of selective ion transport through the epithelial cells of the Reissner membrane and not directly from the blood. The secretory tissue called the stria vascularis, in the lateral wall of the cochlear duct, is thought to play an important role in maintaining the high ratio of potassium ions to sodium ions in the endolymph. Other tissues of the cochlea, as well as the dark cells of the vestibular organs, which must produce their own endolymph, are also thought to be involved in maintaining the ionic composition of the endolymph. Because the membranous labyrinth is a closed system, the questions of flow and removal of the endolymph are also important. The endolymph is thought to be reabsorbed from the endolymphatic sac, although this appears to be only part of the story. Other cochlear and vestibular tissues may also have important roles in regulating the volume and maintaining the composition of the inner-ear fluids.
<h4>Common ear problems</h4>
<h5>Otitis media:</h5>
inflammation of the middle ear which causes a build-up of fluid, with or without an infection. If there is an infection, it is often viral. Many children will have several bouts of otitis media before they are 7 years old. Symptoms include crying, ear pulling, mild fever and irritability.
<h5>Glue ear:</h5> 
A type of chronic otitis media. A long-term build-up of thick or sticky fluid in the middle ear behind the eardrum causes hearing loss. This can make socialising and learning difficult, especially if hearing loss is not recognised in early childhood.
<h5>Ear wax:</h5> protects the ear and is normal. However, a build-up of wax may be a problem in some adults, and may require wax-softening ear drops. Sometimes the ears may also need to be syringed clean by a doctor. Impacted ear wax rarely causes an ear discharge or pain, but it may cause hearing impairment.
<h5>Swimmer’s ear:</h5> develops when humidity, heat and moisture cause the skin layer inside the ear to swell. The addition of further water, for example, through swimming, makes the skin lining the ear canal even softer and liable to infection. Attempts to remove the water with cotton buds or other objects may make the condition worse, causing pain and itching.
<h4>Preventing ear problems</h4>
Self-management of ear problems, particularly earache and ear discharge, is not recommended. However, the following tips may help prevent ear problems.

<ul>
<li>Do not use cotton buds or other devices for cleaning your ears. Repeated attempts to remove earwax with a cotton bud or similar object may result in the wax becoming more deeply impacted.</li>
<li>If you have swimmer’s ear, you should use earplugs to help prevent water entering your ears.</li>
<li>If you are working in a noisy environment, including a home environment, use ear protectors.</li>
<li>Blow your nose correctly. Do not squeeze the nose when blowing and do not sniff.</li>
<li>It is important that you get any hearing loss checked. Hearing impairment in a child is sometimes suspected if the child is inattentive at school, does not respond to instructions, seems to be disobedient or wants the television on loud. If you suspect a hearing impairment in your child, they should be taken to see a doctor. It is important that a doctor examines their ears, preferably using tympanometry to investigate ear pressure.</li></ul>

<h4>When should you seek medical advice?</h4>
You should seek medical advice if you have:

<ul>
<li>ear pain and/or dizziness;</li>
<li>pus or blood discharging from your ear;</li>
<li>earache and feel generally unwell, with a fever and malaise;</li>
<li>had any neck or head trauma before the ear pain started;</li>
<li>hearing that is acutely impaired or gradually deteriorating;</li>
<li>a foreign object in your ear or suspect you might have; or</li>
<li>used a medicine for your ear and it has not improved or has become itchy, as this may indicate allergic dermatitis as a result of the medicine.</li></ul>                   
      </div>     
                         <div class='diabetesSpecContent'>
                             <h4>Diabetes</h4>
                             Diabetes is a chronic disease that occurs when the pancreas is no longer able to make insulin, or when the body cannot make good use of the insulin it produces.

Insulin is a hormone made by the pancreas, that acts like a key to let glucose from the food we eat pass from the blood stream into the cells in the body to produce energy. All carbohydrate foods are broken down into glucose in the blood. Insulin helps glucose get into the cells. 

Not being able to produce insulin or use it effectively leads to raised glucose levels in the blood (known as hyperglycaemia). Over the long-term high glucose levels are associated with damage to the body and failure of various organs and tissues.

Quiz banner

<h4>Types of diabetes</h4>
There are three main types of diabetes – type 1, type 2 and gestational.

<ul>
<li><strong>Type 1 diabetes</strong> can develop at any age, but occurs most frequently in children and adolescents. When you have type 1 diabetes, your body produces very little or no insulin, which means that you need daily insulin injections to maintain blood glucose levels under control. Learn more.</li>
<li><strong>Type 2 diabetes</strong> is more common in adults and accounts for around 90% of all diabetes cases. When you have type 2 diabetes, your body does not make good use of the insulin that it produces. The cornerstone of type 2 diabetes treatment is healthy lifestyle, including increased physical activity and healthy diet. However, over time most people with type 2 diabetes will require oral drugs and/or insulin to keep their blood glucose levels under control. Learn more.</li>
<li><strong>Gestational diabetes (GDM)</strong> is a type of diabetes that consists of high blood glucose during pregnancy and is associated with complications to both mother and child. GDM usually disappears after pregnancy but women affected and their children are at increased risk of developing type 2 diabetes later in life.</li>
</ul>
<h5>Type 1 diabetes</h5>                       
Around 10% of all people with diabetes have type 1 diabetes.

Type 1 diabetes is caused by an autoimmune reaction where the body’s defence system attacks the cells that produce insulin. As a result, the body produces very little or no insulin. The exact causes of this are not yet known, but are linked to a combination of genetic and environmental conditions.

Type 1 diabetes can affect people at any age, but usually develops in children or young adults. People with type 1 diabetes need daily injections of insulin to control their blood glucose levels. If people with type 1 diabetes do not have access to insulin, they will die.

The risk factors for type 1 diabetes are still being researched. However, having a family member with type 1 diabetes slightly increases the risk of developing the disease. Environmental factors and exposure to some viral infections have also been linked to the risk of developing type 1 diabetes.

<h4>Symptoms of type 1 diabetes</h4>
The most common symptoms of type 1 diabetes include:

<ul>
<li>Abnormal thirst and dry </li>
<li>Sudden weight loss</li>
<li>Frequent urination</li>
<li>Lack of energy, tiredness</li>
<li>Constant hunger</li>
<li>Blurred vision</li>
<li>Bedwetting</li>
</ul>
Diagnosing type 1 diabetes can be difficult so additional tests may be required to confirm a diagnosis.

<h4>Management of type 1 diabetes</h4>
People with type 1 diabetes require daily insulin treatment, regular blood glucose monitoring and a healthy lifestyle to manage their condition effectively.

<h4>Insulin</h4>
All people with type 1 diabetes need to take insulin to control their blood glucose levels. There are different types of insulin depending on how quickly they work, when they peak, and how long they last. Insulin is commonly delivered with a syringe, insulin pen or insulin pump.

<h5>Types of insulin include:</h5>
<ul>
<li>    
<strong>Rapid-acting:</strong> usually taken just before or with a meal. These insulins act very quickly to limit the rise in blood sugar, which follows eating. It is essential to avoid overdosage to minimize the risk of low blood sugar (hypoglycemia). Rapid-acting insulins include Asparat, Glulisine, Lispro.
</li>
<li>
<strong>Short-acting:</strong> usually taken before meals. These insulins are also called regular or neutral insulins. They do not act as quickly as rapid-acting insulins and therefore may be more appropriate in certain people. Short-acting insulins include Actrapid, Humulin R, Insuman Rapid.
</li>
<li>
<strong>Intermediate-acting:</strong> often taken together with a short-acting insulin. Intermediate-acting insulins start to act within the first hour of injecting, followed by a period of peak activity lasting up to 7 hours. Intermediate acting insulins include Humulin NPH, Protaphane, Insulatard.
</li>
<li>
<strong>Long-acting:</strong> insulins that are steadily released and can last in the body for up to 24 hours. They are commonly taken in the morning or in the evening, before going to bed. Long-acting insulins include Detemir, Glargine.
</li>
</ul>
<h4>Two common insulin treatment plans include:</h4>

<h5>Twice-daily insulin:</h5> using both short-acting and intermediate-acting insulin.
<h5>Basal bolus regimen:</h5> short-acting insulin taken with main meals (usually three times a day) and intermediate-acting insulin given once or twice daily (evening or morning and evening).
<h5>Self-monitoring</h5>
People with diabetes who require insulin need to check their blood glucose levels regularly to inform insulin dosage. Self-monitoring of blood glucose (SBMG) is the name given to the process of blood glucose testing by people with diabetes at home, school, work or elsewhere. SMBG helps people with diabetes and their healthcare providers understand how their blood glucose levels vary during the day so that their treatment can be adjusted accordingly.

People with type 1 diabetes are usually advised to measure their blood glucose level at least four times a day. 

<h5>Healthy nutrition</h5>
Healthy nutrition — knowing what and when to eat — is an important part of diabetes management as different foods affect your blood glucose levels differently.

A healthy diet for all people with diabetes includes reducing the amount of calories if you are overweight, replacing saturated fats (eg. cream, cheese, butter) with unsaturated fats (eg. avocado, nuts, olive and vegetable oils), eating dietary fibre (eg. fruit, vegetables, whole grains), and avoiding tobacco use, excessive alcohol and added sugar.

<h5>Physical activity</h5>
Regular physical activity is essential to help keep blood glucose levels under control. It is most effective when it includes a combination of both aerobic (eg. jogging, swimming, cycling) exercise and resistance training, as well as reducing the amount of time spent being inactive.

<h5>Prevention of type 1 diabetes</h5>
No effective and safe intervention currently exists to prevent type 1 diabetes despite a large number of clinical trials aimed at halting the on-going autoimmune destruction of pancreatic beta cells. However, there is some evidence that overweight and a high growth rate in children are weak risk factors, indicating that a healthy lifestyle that avoids both over-eating and a sedentary lifestyle is recommended for high-risk groups such as the siblings of children with type 1 diabetes. However, this is just one of a number of factors that have also been implicated. These include not being breast-fed, being the first-born, being born by caesarean section and having an older or obese mother.
Although a ‘cure’ for type 1 diabetes is being actively sought, preventing or delaying it in those known to be at risk or, in those already diagnosed, slowing down the auto-immune destruction of beta cells and protecting those cells that are still active are likely to be more achievable goals in the foreseeable future. Neither has been convincingly achieved as yet. However, several studies are underway using interventions such as oral insulin in people known to have markers of islet autoimmunity, trialling drugs already used, for example in psoriasis, to prolong beta cell life and the use of peptide immunotherapies to ‘retrain’ killer T cells, the lymphocytes that are closely involved in the underlying mechanism of type 1 diabetes.
                       
<h4>Type 2 diabetes</h4>
Type 2 diabetes is the most common type of diabetes, accounting for around 90% of all diabetes cases.

It is generally characterized by insulin resistance, where the body does not fully respond to insulin. Because insulin cannot work properly, blood glucose levels keep rising, releasing more insulin. For some people with type 2 diabetes this can eventually exhaust the pancreas, resulting in the body producing less and less insulin, causing even higher blood sugar levels (hyperglycaemia).

Type 2 diabetes is most commonly diagnosed in older adults, but is increasingly seen in children, adolescents and younger adults due to rising levels of obesity, physical inactivity and poor diet.

The cornerstone of type 2 diabetes management is a healthy diet, increased physical activity and maintaining a healthy body weight. Oral medication and insulin are also frequently prescribed to help control blood glucose levels.

<h5>Risk factors</h5>
IDF risk factors T2D infographicSeveral risk factors have been associated with type 2 diabetes and include:
<ul>
<li>Family history of diabetes</li>    
<li>Overweight</li>
<li>Unhealthy diet</li>
<li>Physical inactivity</li>
<li>Increasing age</li>
<li>High blood pressure</li>
<li>Ethnicity</li>
<li>Impaired glucose tolerance (IGT)*</li>
<li>History of gestational diabetes</li>
<li>Poor nutrition during pregnancy</li>
</ul>
*Impaired glucose tolerance (IGT) is a category of higher than normal blood glucose, but below the threshold for diagnosing diabetes.

Changes in diet and physical activity related to rapid development and urbanisation have led to sharp increases in the numbers of people living with type 2 diabetes.

<h5>Symptoms of type 2 diabetes</h5>
t2d symptomsThe symptoms of type 2 diabetes are similar to those of type 1 diabetes and include:
<ul>
<li>Excessive thirst and dry mouth</li>
<li>Frequent urination</li>
<li>Lack of energy, tiredness</li>
<li>Slow healing wounds</li>
<li>Recurrent infections in the skin</li>
<li>Blurred vision</li>
<li>Tingling or numbness in hands and feet.</li>
<li>These symptoms can be mild or absent and so people with type 2 diabetes may live several years with the condition before being diagnosed.</li>
</ul>
<h5>Management of type 2 diabetes</h5>
The cornerstone of managing type 2 diabetes is a healthy lifestyle, which includes a healthy diet, regular physical activity, not smoking, and maintaining a healthy body weight.

Over time, a healthy lifestyle may not be enough to keep blood glucose levels under control and people with type 2 diabetes may need to take oral medication. If treatment with a single medication is not sufficient, combination therapy options may be prescribed.

When oral medication is not sufficient to control blood glucose levels, people with type 2 diabetes may require insulin injections.

<h5>Medications for type 2 diabetes</h5>
The most commonly used oral medications for type 2 diabetes include:

<h5>Metformin:</h5> reduces insulin resistance and allows the body to use its own insulin more effectively. It is regarded as the first-line treatment for type 2 diabetes in most guidelines around the world.
<h5>Sulfonylureas:</h5> stimulate the pancreas to increase insulin production. Sulfonylureas include gliclazide, glipizide, glimepiride, tolbutamide and glibenclamide.
<h5>Prevention of type 2 diabetes</h5>

There are a number of factors that influence the development of type 2 diabetes. The most influential are lifestyle behaviours commonly associated with urbanisation. Research indicates that a majority of cases, up to 80% according to some studies, of type 2 diabetes could be prevented through healthy diet and regular physical activity. A healthy diet includes reducing the amount of calories if you are overweight, replacing saturated fats (eg. cream, cheese, butter) with unsaturated fats (eg. avocado, nuts, olive and vegetable oils), eating dietary fibre (eg. fruit, vegetables, whole grains), and avoiding tobacco use, excessive alcohol and added sugar.

Regular physical activity is essential to help keep blood glucose levels under control. It is most effective when it includes a combination of both aerobic (eg. jogging, swimming, cycling) exercise and resistance training, as well as reducing the amount of time spent being inactive.

<h4>Know your risk of type 2 diabetes</h4>
Risk assessment Brief questionnaires are simple, practical and inexpensive ways to quickly identify people who may be at a higher risk of type 2 diabetes and who need to have their level of risk further investigated.

The Finnish Type 2 Diabetes Risk Assessment Form, developed in 2001, is an example of an effective questionnaire that can be used as the basis for developing national questionnaires which take into account local factors. It has eight scored questions, with the total test score providing a measure of the probability of developing type 2 diabetes over the following 10 years. The reverse of the form contains brief advice on what the respondent can do to lower their risk of developing the disease, and whether they should seek advice or have a clinical examination. The test takes only a couple of minutes to complete and can be done online, in pharmacies or at various public campaign events.

IDF has developed a type 2 diabetes online diabetes risk assessment that aims to predict an individual’s risk of developing type 2 diabetes within the next ten years. The test is based on the Finnish Diabetes Risk Score (FINDRISC) developed and designed by Adj. Prof Jaana Lindstrom and Prof. Jaakko Tuomilehto from the National Institute for Health and Welfare, Helsinki, Finland.
                         </div>
                         <div class='boneSpecContent'>
                             <h4>Bone</h4>
                             The human skeleton has a number of functions, such as protection and supporting weight. Different types of bones have differing shapes related to their particular function.

So, what are the different types of bones? How are they categorized?

There are five types of bones in the skeleton: flat, long, short, irregular, and sesamoid.
<br>
Let’s go through each type and see examples.
<br>
<strong>1.</strong><br> 
<img src='images/flat bones.webp' class='bone'><br>
Flat Bones Protect Internal Organs
Example of four types of flat bones
There are flat bones in the skull (occipital, parietal, frontal, nasal, lacrimal, and vomer), the thoracic cage (sternum and ribs), and the pelvis (ilium, ischium, and pubis). The function of flat bones is to protect internal organs such as the brain, heart, and pelvic organs. Flat bones are somewhat flattened, and can provide protection, like a shield; flat bones can also provide large areas of attachment for muscles.
<br>
<strong>2.</strong><br>
<img src='images/longbones.webp' class='bone'><br>
Long Bones Support Weight and Facilitate Movement
Examples of 9 Long bones found in the body
The long bones, longer than they are wide, include the femur (the longest bone in the body) as well as relatively small bones in the fingers. Long bones function to support the weight of the body and facilitate movement. Long bones are mostly located in the appendicular skeleton and include bones in the lower limbs (the tibia, fibula, femur, metatarsals, and phalanges) and bones in the upper limbs (the humerus, radius, ulna, metacarpals, and phalanges).
<br>
<strong>3.</strong><br>
<img src='images/short bones.webp' class='bone'> <br>
Short Bones Are Cube-shaped
Examples of short bones
Short bones are about as long as they are wide. Located in the wrist and ankle joints, short bones provide stability and some movement. The carpals in the wrist (scaphoid, lunate, triquetral, hamate, pisiform, capitate, trapezoid, and trapezium) and the tarsals in the ankles (calcaneus, talus, navicular, cuboid, lateral cuneiform, intermediate cuneiform, and medial cuneiform) are examples of short bones.
<br>
<strong>4.</strong><br>
<img src='images/irregularBones.webp' class='bone'><br>
Irregular Bones Have Complex Shapes
Vertebra and pelvis, examples of irregular bones of the human body
Irregular bones vary in shape and structure and therefore do not fit into any other category (flat, short, long, or sesamoid). They often have a fairly complex shape, which helps protect internal organs. For example, the vertebrae, irregular bones of the vertebral column, protect the spinal cord. The irregular bones of the pelvis (pubis, ilium, and ischium) protect organs in the pelvic cavity.
<br>
<strong>5.</strong><br> 
<img src='images/sesamoid bones.webp' class='bone'><br>
Sesamoid Bones Reinforce Tendons
A sesamoid bone of the body, the patella
Sesamoid bones are bones embedded in tendons. These small, round bones are commonly found in the tendons of the hands, knees, and feet. Sesamoid bones function to protect tendons from stress and wear. The patella, commonly referred to as the kneecap, is an example of a sesamoid bone.               

<h4>What is bone pain?</h4>
Bone pain is extreme tenderness, aching, or other discomfort in one or more bones. It differs from muscle and joint pain because it’s present whether you’re moving or not. The pain is commonly linked to diseases that affect the normal function or structure of the bone.

<h4>What causes bone pain?</h4>
Many conditions and events can lead to bone pain.

<h5>Injury</h5>
Injury is a common cause of bone pain. Typically, this pain arises when a person goes through some form of trauma, such as a car accident or fall. The impact may break or fracture the bone. Any damage to the bone can cause bone pain.

<h5>Mineral deficiency</h5>
To stay strong, your bones require a variety of minerals and vitamins, including calcium and vitamin D. A deficiency in calcium and vitamin D often leads to osteoporosis, the most common type of bone disease. People in the late stages of osteoporosis often have bone pain.

<h5>Metastatic cancer</h5>
This is cancer that started somewhere else in the body but spread to other body parts. Cancers of the breast, lung, thyroid, kidney, and prostate are among the cancers that commonly spread to the bones.

<h5>Bone cancer</h5>
Bone cancer describes cancer cells that originate in the bone itself. Bone cancer is much rarer than metastatic bone cancer. It can cause bone pain when the cancer disrupts or destroys the bone’s normal structure.

<h5>Diseases that disturb blood supply to bones</h5>
Some diseases, such as sickle cell anemia, interfere with the blood supply to the bone. Without a steady source of blood, bone tissue begins to die. This causes significant bone pain and weakens the bone.

<h5>Infection</h5>
If an infection originates in or spreads to the bones, it can cause a serious condition known as osteomyelitis. This infection of the bone can kill bone cells and cause bone pain.

<h5>Leukemia</h5>
Leukemia is cancer of the bone marrow. Bone marrow is found in most bones and is responsible for the production of bone cells. People with leukemia often experience bone pain, especially in the legs.

<h4>What are the symptoms?</h4>
The most noticeable symptom of bone pain is discomfort whether you’re still or moving.

Other symptoms depend on the particular cause of your bone pain.

<h5>Cause of bone pain</h5>
<ul>
<li>Other associated symptoms</li>
<li>Injury	Swelling, visible breaks or deformities, a snap or grinding noise upon injury</li>
<li>Mineral deficiency	Muscle and tissue pain, sleep disturbances, cramps, fatigue, weakness</li>
<li>Osteoporosis	Back pain, stooped posture, loss of height over time</li>
<li>Metastatic cancer	A large range of symptoms depending on where the cancer has spread that may include headache, chest pain, bone fractures, seizures, dizziness, jaundice, shortness of breath, swelling in the belly</li>
<li>Bone cancer	Increased bone breaks, a lump or mass under the skin, numbness or tingling (from when a tumor presses on a nerve)</li>
<li>Disrupted blood supply to the bones	Joint pain, loss of joint function, and weakness</li>
<li>Infection	Redness, streaks from the infection site, swelling, warmth at the infection site, decreased range of motion, nausea, loss of appetite</li>
<li>Leukemia	Fatigue, pale skin, shortness of breath, night sweats, unexplained weight loss</li>
</ul>
<h5>Bone pain in pregnancy</h5>
Pelvic bone pain is a common occurrence for many pregnant women. This pain is sometimes referred to as pregnancy-related pelvic girdle pain (PPGP). Symptoms include pain in the pubic bone and stiffness and pain in the pelvic joints.

PPGP typically doesn’t resolve until after delivery. Early treatment can reduce symptoms, though. Treatment options may include:

manual therapy to move the joints correctly
<ul>
<li>physical therapy</li>
<li>water exercises</li>
<li>exercises to strengthen the pelvic floor</li></ul>
While common, PPGP is still abnormal. You should contact your doctor for treatment if you experience pelvic pain.

<h4>How is bone pain diagnosed?</h4>
A doctor needs to identify the pain’s underlying cause to recommend treatment. Treating the underlying cause can drastically reduce or eliminate your pain.

Your doctor will perform a physical exam and ask about your medical history. Common questions include:

<ul>
<li>Where is the pain located?</li>
<li>When did you first experience the pain?</li>
<li>Is the pain getting worse?</li>
<li>Are there any other symptoms that accompany the bone pain?</li></ul>
Your doctor may order blood tests to look for vitamin deficiencies or cancer markers. Blood tests may also help your doctor detect infections and adrenal gland disorders that can interfere with bone health.

Bone X-rays, MRIs, and CT scans can help your doctor evaluate the affected area for injuries, bone lesions, and tumors within the bone.

Urine studies can be used to detect abnormalities within the bone marrow, including multiple myeloma.

In some cases, your doctor will need to run multiple tests to rule out certain conditions and to diagnose the exact cause of your bone pain.

<h4>How is bone pain treated?</h4>
When the doctor has determined the cause of the bone pain, they’ll start treating the underlying cause. They may advise you to rest the affected area as much as possible. They’ll likely prescribe you a pain reliever for moderate to severe bone pain.

If your doctor is unsure of the cause and suspects an infection, they’ll start you on antibiotics. Take the full course of the medication, even if your symptoms go away within a few days. Corticosteroids are also commonly used to reduce inflammation.

The treatment options for bone pain include:

<h5>Pain relievers</h5>
Pain relievers are among the most commonly prescribed medications to reduce bone pain, but they don’t cure the underlying condition. Over-the-counter treatments such as ibuprofen (Advil) or acetaminophen (Tylenol) can be used. Prescription medications such as Paracetamol or morphine may be used for moderate or severe pain.

Running low? Get Tylenol and ibuprofen now.

<h5>Antibiotics</h5>
If you have a bone infection, your doctor may prescribe powerful antibiotics to kill the germ that’s causing the infection. These antibiotics may include ciprofloxacin, clindamycin, or vancomycin.

<h5>Nutritional supplements</h5>
People who have osteoporosis need to restore their calcium and vitamin D levels. Your doctor will give you nutritional supplements to treat the mineral deficiency. Supplements are available in liquid, pill, or chewable form.

Find calcium supplements and vitamin D supplements online.

<h5>Cancer treatments</h5>
Bone pain caused by cancer is difficult to treat. The doctor will need to treat the cancer to relieve the pain. Common cancer treatments include surgery, radiation therapy, and chemotherapy (which can increase bone pain). Bisphosphonates are a type of medication that help prevent bone damage and bone pain in people with metastatic bone cancer. Opiate pain relievers may also be prescribed.

<h5>Surgery</h5>
You may need surgery to remove parts of bone that have died due to infection. Surgery may also be required to re-set broken bones and remove tumors caused by cancer. Reconstructive surgery may be used in severe cases where joints can be replaced or substituted.


<h5>How can bone pain be prevented?</h5>
Maintaining strong, healthy bones makes it easier to avoid bone pain. To maintain optimal bone health, remember to:
<ul>
<li>maintain a healthy exercise plan</li>
<li>get enough calcium and vitamin D</li>
<li>drink only in moderation</li>
<li>avoid smoking</li>
</ul>
Aside from improving bone health, you can also avoid injuries that lead to bone pain. Try to prevent falls by keeping your floors clutter-free and watching for loose rugs or poor lighting. You should also be careful when going up or down the stairs. For sporting activities, especially contact sports like football or boxing, wear proper protective gear.

<h4>What happens in recovery?</h4>
In many cases, it takes some time to heal the issue causing the bone pain, whether the pain comes from chemotherapy or a fracture.

During recovery, avoid aggravating or bumping the affected areas. This can prevent further injury and pain and allow healing. Rest the affected areas as much as possible and immobilize the area if there’s a risk of further injury.

For some people, aids such as braces, splints, and casts can offer support that can both protect the bone and relieve pain.


<h4>When to see a doctor?</h4>
Serious conditions are often the cause of bone pain. Even mild bone pain may indicate an emergency condition. If you experience unexplained bone pain that doesn’t improve within a few days, consult your doctor.

You should also see a doctor if the bone pain is accompanied by weight loss, decreased appetite, or general fatigue.

Bone pain that results from injury should also prompt a doctor’s visit. Medical treatment is required for fractures from direct trauma to the bone. Without proper treatment, bones can heal in incorrect positions and inhibit movement. Trauma also predisposes you to infection.

                        
                         </div>
                         <div class='childSpecContent'>
                             <h4>child</h4>
                             ​​​All children deserve high-quality medical care. As a parent, it is important to be aware of the most up-to-date treatment guidelines so you can be sure your child is getting the best care possible.

The following information from the American Academy of Pediatrics (AAP) lists some of the most common childhood illnesses and their approved treatments. The treatments discussed here are based on scientific evidence and best practices. However, there may be reasons why your pediatrician has different recommendations for your child, especially if your child has an ongoing medical condition or allergy. Your pediatrician will discuss any variations in treatment with you. If you have any questions about appropriate care for your child, please discuss them with your pediatrician.

<h5>1.  Sore Throat</h5>

Sore throats are common in children and can be painful. However, a sore throat that is caused by a virus does not need antibiotics. In those cases, no specific medicine is required, and your child should get better in seven to ten days. In other cases, a sore throat could be caused by an infection called streptococcal (strep throat).

Strep cannot be accurately diagnosed by simply looking at the throat. A lab test or in-office rapid strep test, which includes a quick swab of the throat, is necessary to confirm the diagnosis of strep. If positive for strep, your pediatrician will prescribe an antibiotic. It's very important that your child take the antibiotic for the full course, as prescribed, even if the symptoms get better or go away. Steroid medicines (such as prednisone) are not an appropriate treatment for most cases of sore throat.

Babies and toddlers rarely get it strep throat, but they are more likely to become infected by streptococcus bacteria if they are in child care or if an older sibling has the illness. Although strep spreads mainly through coughs and sneezes, your child can also get it by touching a toy that an infected child has played with.

See The Difference between a Sore Throat, Strep & Tonsillitis and When a Sore Throat is a More Serious Infection.

<h5>2.  Ear Pain</h5>
Ear pain is common in children and can have many causes—including ear infection (otitis media), swimmer's ear (infection of the skin in the ear canal), pressure from a cold or sinus infection, teeth pain radiating up the jaw to the ear, and others. . To tell the difference, your pediatrician will need to examine your child's ear. In fact, an in-office exam is still the best way for your pediatrician to make an accurate diagnosis. If your child's ear pain is accompanied by a high fever, involves both ears, or if your child has other signs of illness, your pediatrician may decide that an antibiotic is the best treatment.

Amoxicillin is the preferred antibiotic for middle ear infections—except when there is an allergy to penicillin or chronic or recurrent infections.

Many true ear infections are caused by viruses and do not require antibiotics. If your pediatrician suspects your child's ear infection may be from a virus, he or she will talk with you about the best ways to help relieve your child's ear pain until the virus runs its course.

See Ear Infection Information, Middle Ear Infections, and Your Child and Ear Infections.

<h5>3.  Urinary Tract Infection</h5>
Bladder infections, also called urinary tract infections or UTIs, occur when ­bacteria build up in the urinary tract. A UTI can be found in children from infancy through the teen years and into adulthood. Symptoms of a UTI include pain or burning during urination, the need to urinate frequently or urgently, bedwetting or accidents by a child who knows to use the toilet, abdominal pain, or side or back pain.

Your child's doctor will need a urine sample to test for a UTI before determining treatment. Your doctor may adjust the treatment depending on which bacteria is found in your child's urine.

See Detecting Urinary Tract Infections.

<h5>4.  Skin Infection</h5>
In most children with skin infections, a skin test (culture or swab) may be needed to determine the most-appropriate treatment. Tell your doctor if your child has a history of MRSA, staph infection, or other resistant bacteria or if he or she has been exposed to other family members or contacts with resistant bacteria.

See Boils, Abscess & Cellulitis and Tips for Treating Viruses, Fungi & Parasites.

<h5>5.  Bronchitis</h5>
Chronic bronchitis is an infection of the larger, more central airways in the lungs and is more often seen in adults. Often the word "bronchitis" is used to describe a chest virus and does not require antibiotics.

See Bronchitis (CDC.gov).

<h5>6.  Bronchiolitis</h5>
Bronchiolitis is common in infants and young children during the cold and flu season. Your doctor may hear "wheezing" when your child breathes.

Bronchiolitis is most often caused by a virus, which does not require antibiotics. Instead, most treatment recommendations are geared toward making your child comfortable with close monitoring for any difficulty in breathing, eating, or signs of dehydration. Medicines used for patients with asthma (such as albuterol or steroids) are not recommended for most infants and young children with bronchiolitis. Children who were born prematurely or have underlying health problems may need different treatment plans.

See Bronchiolitis and Treating Bronchiolitis in Infants.

<h5>7.  Pain</h5>
The best medicines for pain relief for children are acetaminophen or ibuprofen. Talk to your pediatrician about how much to give your child, as it should be based on your child's weight.

Narcotic pain medications are not appropriate for children with common injuries or complaints such as sprained ankle, ear pain, or sore throats. Codeine should never be used for children as it's been associated with severe respiratory problems and even death in children.

See Fever and Pain Medicine: How Much To Give Your Child.

<h5>8.  Common Cold</h5>
Colds are caused by viruses in the upper respiratory tract. Many young children—especially those in child care—can get 6 to 8 colds per year. Symptoms of a cold (including runny nose, congestion, and cough) may last for up to ten days.  

Green mucus in the nose does not automatically mean that antibiotics are needed; common colds never need antibiotics. However, if a sinus infection is suspected, your doctor will carefully decide whether antibiotics are the best choice based on your child's symptoms and a physical exam.

See Children and Colds and Caring for Your Child's Cold or Flu.

<h5>9.  Bacterial Sinusitis</h5>
Bacterial sinusitis is caused by bacteria trapped in the sinuses. Sinusitis is suspected when cold-like symptoms such as nasal discharge, daytime cough, or both last over ten days without improvement.

Antibiotics may be needed if this condition is accompanied by thick yellow nasal discharge and a fever for at least 3 or 4 days in a row. 

See The Difference Between Sinusitis and a Cold.

<h5>10.  Cough</h5>
Coughs are usually caused by viruses and do not often require antibiotics.

Cough medicine is not recommended for children 4 years of age and younger, or for children 4 to 6 years of age unless advised by your doctor. Studies have consistently shown that cough medicines do not work in the 4-years-and-younger age group and have the potential for serious side effects. Cough medicines with narcotics—such as codeine—should not be used in children.

                         </div>
                         <div class='hairSpecContent'>
<h4>Hair Disorders</h4>
A number of factors are involved in hair disorders. Genetic factors, diet,
endocrine abnormalities, systemic illnesses, drug intake, and hair shaft
abnormalities may cause hair loss. The diagnosis of hair disorders is
complex and an evaluation of the clinical presentation, history and physical
examination is necessary. Laboratory work-up might be helpful.
Clinical history should include duration of hair loss, family history, affected
areas (localized or diffuse scalp, and scalp alone or other hair bearing areas),
associated nail changes, and hair care habits (shampooing, bleaching,
perming).
Diagnostic office techniques include visual examination of all hair bearing
areas as well as of the nails. Signs of scalp inflammation, infection or scarring
(absense of hair follicle ostia) are helpful for the diferential diagnosis. The main
classification divides hair loss in cicatricial and non-cicatritial alopecia (table1).
Additional specific techniques are gentle hair pulls, hair clipping, hair plucks,
light microscopy of hair fibers, bacterial and fungal cultures of scalp scales,
and finaly scalp 4-mm punch biopsies.
<h4>Classification of Alopecia</h4>
<ul>
<li>Cicatricial alopecia Folliculitis</li>
<li>Lupus erythematosum</li>
<li>Lichen planus</li>
<li>Scleroderma</li>
<li>Non-cicatricial alopecia Telogen effluvium</li>
<li>Anagen effluvium</li>
<li>Androgenetic alopecia</li>
<li>Alopecia areata</li>
</ul>
<h4>Trichodystrophies</h4>
Cicatricial alopecias are difficult to differentiate from one another clinically,
and often require a scalp biopsy for a correct diagnosis. Non-cicatricial alopecia
include disorders that alterate the hair cycling, such as androgenetic alopecia,
the most common cause of hair loss, and shedding. Patients with noncicatricial alopecia may require thyroid-stimulating hormone and ferritin level
testing. The ferritin level should usualy be higher than 40mcg/l to ensure
normal hair growth. Associated acne or menstrual irregularities suggest
hormonal imbalance, and an androgen workup is advised.
Dehydroepiandrosterone-sulphate (DHEA-S) is most commonly elevated in
women with androgen excess.
<h4>Normal scalp hair growth patterns</h4>
Understanding normal hair growth facts is essential for correct
interpretations of the hair loss events. The average rate of hair growth for a
normal scalp is 0.35mm a day. However, slow growth occurs in elderly people
and patients with chronic illnesses. Scalp hair grows in an assynchronous 
pattern, with approximately 80% of hair follicles in an active growing phase
(anagen) and 10 to 20% in a resting phase (telogen). Telogen hair fibers shed in
2 or 3 months and are responsible for the daily hair shed. The average daily
hairloss is 25 to100 hair fibers. Any alteration of the hair growth cycling
manifests clinically as increased shedding of scalp hair.
<h4>Telogen Shed (Shedding or Teloen Effluvium)</h4>
The complaint “My hair is coming out by the roots” represensents an
alteration in the cyclic growth pattern of scalp hair and may manifest as a
telogen or anagen shed. The mechanism appears to reside in the severity of
insult to the growing germinal center of the anagen hair follicle. A severe insult,
interrupting keratinization and changing of the anagen hair follicle to a resting
or dying hair follicle, produces a telogen follicle. This results in telogen shed.
Normally, telogen (resting) follicles represent aproximately 20% of the total
volume of scalp hair. Any premature interrupiion of anagen phase induces
more telogen hair follicles. Ultimately, this results in incresed shedding of
excessive telogen hair. The diagnosis of telogen effluvium can be made by
excessive hair loss telogen hair as demonstrated with hair pull. This change is
experienced 6 weeks to 4 months after na initial cause or trigger. Common
triggers for a telogen effluvium are: medications, illnesses, childbirth and crash
diets. The etiology of telogen effluvium is generally elucidated by history, with
special concentration on events that have preceded the shed by 6 weeks to 4
months.
In general, telogen effuvium is self-limited, and no treatment is necessary
after initial cause is removed. However, chronic or persistent telogen shed
heralds androgen alopecia or other metabolic or disease states, such as thyroid
disorders. If telogen shedding persists, a more intense medical evaluation is
needed.
<h4> Anagen Shed (Effluvium)</h4>

 The anagen shedding is the result of a major insult to the growing anagen
hair follicle. The arrest of keratinization produces a progressively narrowing
hair shaft that is fragile and fractures easily on its exit from the scalp’s skin.
This type of shedding generally occurs 1 to 2 weeks after the insult. Typical
causes are chemotherapeutic, antimetabolic, alkylating, and cytotoxic agents.
<h4>Alopecia Areata</h4>
 Alopecia areata is considered an autoimmune disease that affects 1to 2% of
the population. It commonly manifests as an oval patch, singular or multiple,
and with occasional confluent patches. It is an inflammatory, non-cicatricial
alopecia. Twenty percent of the cases of alopecia areata proceed to alopecia
totalis, affecting the whole scalp, and 1% to alopecia universalis, or total body
hair loss. Alopecia areata is assciat with atopy, Hashimoto’s thyroiditis, and
other autoimmune diseases. Minor nail dystrophies are common. The primary 
diagnosis is based on the hair pull and light microscopy examination of hair
fibers, and biopsy of involved areas.
Treatment depends on the extent of the disease and age of the patient. For
mild to moderate patchy disease, topical corticosteroids are the preferred
treatment. For more extensive or recalcitrant disease, triamcinolone acetonide
(Kenalog suspension, 10 mg per ml) can be injected into the involved sites with
a 30-gauge needle, delivering tiny injections of 0.1ml to each small site. The
total amount should not exceed 10 to 15 mg of triamcinolone per visit every 6
to 8 weeks.
 Other options for marked to severe disease are topical minoxidil (Rogaine),
anthralin (Drithocreme), and topical contact sensitizers such as
diphenylcyclopropenone (DPCP), dinitroclorobenzene (DNCB) and squaric acid
dibutylester (SADBE). The expected result of sensitization therapy is around
40-58% cosmetically acceptaple regrowth of hair. DPCP is difficult to obtain in
the United States, being more readily available in Europe and Canada. Other
treatment options include psoralen (Oxsoralen) plus ultraviolet a radiation
(PUVA) and systemic corticosteroids. The use of systemic corticosteroids is
controversial because of the prolonged duration of therapy and the potential
side effects, i.e.; catarats, osteopenia, osteoporosis, and growth retardation.
 Patients with alopecia areata need a source of disease-specific information
and support therapy, such as the National Alopecia Areata Foundation
<h4>Androgenetic Alopecia</h4>
 Androgenetic alopecia, an autosomal dominant disorder, is the most
common alopecia in humans, with a prevalence of 23 to 87%. In both sexes, it
presents with a central scalp alopecia and is associated with clinical signs of
sexual development (puberty) and androgen excess. Central alopecia is more
severe in males than females, manifesting as several distinct areas of partial or
complete alopecia. In the female, there is a more diffuse thinning rather than
complete baldness. Androgenetic alopecia can be herald by a chronic telogen
effluvium and failure to regenerate terminal hair.
 Female androgenatic alopecia often appears in women with strong family
history of baldness or a personal history of hirsutism, acne, abnornal menses
as signs of androgen excess. Genetically predisposed women may present with
androgenetic alopecia in youth (puberty), in perimenopausal or in
postmenopausal times. Young women have a higer incidence of acquired
adrenal hyperplasia and policystic ovaries. In general, menopausal women have
lower levels of hormones, especially testosterone and estrogen. Testosterone,
however, is relatively high if compared to youth levels. Androgen excess
screening should include measurements of total testosterone and
dehydroepiandrosterone sulfate as well as other laboratory tests, such as a
complete blood count, ferritin measurement, thyroid screening, and antinuclear
factor measurement.
 In men, the treatment of androgenetic alopecia consists of creative hairstyles,
hair pieces, hair transplation, and scalp reduction. Medical therapies include
topical minoxidil 5% twice a day and selected antiandrogens. Oral finasteride, a 
5--reductase inhibitor, bloks the peripheral conversion of testosterone to
dehidrotestosterone (DHT). Serum and tissue (scalp) DHT concentrations is
decreased in men on finasteride. A significant increase in hair count was
demontrated at after at least 6 months in men treated with finasteride
 Women have similar treatment options, but in addition to antiandrogens,
estrogen replacement therapy can be used. These agents include estrogendominant oral contraceptive (Demulen 1/50) or conjugated estrogen (Premarin),
given daily or in conjunction with a progesterone such as medroxyprogesterone
(Provera). Spironolactone (Aldactone) in doses of 50 to 200 mg has been used as
an antiandrogen successfully. If adrenal suppression is needed for androgen
excess, dexamethasone, in doses of 0.125 to 0.25 mg at bedtime, may be used
for 4 months or longer.
<h4> Hair Shaft Abnormalities</h4>
 Hair shaft abnormalities (trichodystrophies) may be inherited or acquired.
Inherited abnormalities may indicate a systemic disorder and may be
associated with mental retardation, short stature, hypogonadism, and other
metabolic disorders. Examples of trichodystrophy are pili torti (corkscrew
hairs), Menkes’ (kinky-hair) syndrome, trichorrhexis nodosa in
argininosuccinicaciduria, trichoschisis (transverse fractures to the hair), and
trichothiodystrophy (sulfur-depleted hair).
 Acquired physical and chemical damage are more common than the
inherited ones. Sunlight, hair care techniques (coloring, perming and blow
drying) and chemical processes may result in fragile hair that is easily broken
with normal handling. Usually, this entity manifests as a complaint of failure to
grow (breakage) and is associated with short hair and normal scalp hair
density. Treatment consists of gentle handling and normal shampooing with the
use of leave on conditioners or volumizers. If the cause is not repeated, the hair
normally regrows within a few months.
 Trichorrhexis nodosa is the most common trichodystrophy that can be
either inherited or acquired. The inherited form can be associated with
aminoaciduria. The more common acquired form is the result of physical or
chemical trauma. Characteristically, the hair breaks off suddenly and becomes
strikingly short in the affected areas. Diagnosis is made by hair clipping and
microscopy identification of nodes or fractured nodes (“broomstick deformity”).
Treatment consists of discontinuation of hair care procedures except for normal
shampooing and the use of heavy conditioners.
<h4> Traction Alopecia and Trichotillomania</h4>
 Hair loss caused by traction results from physical damage to the hair
shaft, alterations in the growth cycle, and scalp inflammation. Diagnosis is
made by hair pluck, hair clipping, and scalp biopsy. Dystrophic anagen hair
follicles and a variety of traumatic changes to the hair can be noted. If traction
is chronic and repetitive, cicatricial alopecia may result. Practices such as tight
braiding, wearing a ponytail, using elastic hair bands, and rollers, and 
extremely repetitive teasing of the hair are responsible for most cases and
should be discontinued.
 Trichotillomania is a traction alopecia related to an underlying
psychologic, compulsive disorder. It is commonly seen in young and old women.
In general, the condition is produced by repetitively hair pulling, tugging,
plucking, or clipping. The hair loss manifests in a bizarre pattern. Individuals
presenting with complete hair loss and a short stubble of hair on the scalp,
eyebrows, lashes, or other hairy areas should be suspected of having
trichotillomania. Light microscopy examination of clipped hair demonstrates
fractures of the terminal ends. Scalp biopsy is often diagnostic. Therapy
requires psychologic counseling. The use of anticonvulsants and
antidepressants can be helpful. Such drugs include clomipramine (Anafranil),
fluoxetine (Prozac), and sertraline (Zoloft).
<h4>Cicatricial Alopecia</h4>
Cicatricial alopecia is irreversible hair loss associated with the destruction of
stem cell reservoir located in the midportion of the follicle. Cicatricial alopecia is
caused by a diverse group of cutaneous disorders with a variety of presentations.
Common causes of cicatricial alopecia are fungal or bacterial folliculitis,
discoid lupus erythematosus, and lichen planopilaris. Other causes are skin
diseases, trauma, scarring bullous disorders (epidermolysis bullosa, bullous
pemphigoid, porphyria cutanea), and neoplastic disease (skin tumors and
cutaneous metastasis). The evaluation of all chronic patchy inflammatory or
noninflammatory cicatricial alopecias comprises potassium hydroxide testing,
fungal and bacterial cultures, and optional serologic testing, depending on
history. Biopsy should be an early step in the evaluation of any case suspected to
represent cicatricial alopecia. A 4-mm punch biopsy generally provides a sufficient
number of hair follicles for examination. Smaller specimens may prove
unsatisfactory. Routine microscopy as well as immunefluorescent studies may be
diagnostic. Even though this group presents with irreversible alopecia, treatment
is always recommended to prevent the areas to spread.
<h4>Infeccious folliculitis</h4>
Fungal and bacterial infection may be responsible for focal areas of
cicatricial alopecia. Tinea capitis may manifest as an intense
<h4>Lupus Erythematosus</h4>
 Cutaneous lupus erythematosus may present with or without associated
systemic disease. In the scalp, it manifests as erythemathous, indurated
alopecic areas or patchy noninflammatory alopecia similar to alopecia areata.
The inflammatory type results in skin atrophy, hypopigmentation or
hyperpigmentation, and permanent hairloss. Diagnosis is made from clinical
history, skin biopsy for light microscopy and direct immunoflorescence testing,
and laboratory testing for lupus erythematosus, such as antinuclear antibody
profile.
 Therapy consist of the use of topical of intralesional corticosteroids. Potent
topical corticosteroids sunh as fluocinonide (Lidex) may be applied at bedtime.
Cutaneos atrophy and striae are the most common side effects, resulting from
overuse of potent topical steroids. Intralesional triamcinolone acetonide (Kenalog),
2.5 to 10 mg per ml, may be injected every 6 to 8 weeks as needed. Sid effects of
intralesional triamcinolone have already been discussed. Topical corticosteroids
and antimalarial agents may be helpful in refractory cases. On occsion, oral
corticosteroids are given. Quiescent, “burnt-out” lesions are best treated with hair
transplantation or scalp reduction.
<h4>Lichen Planopilares</h4>
 Lichen planopilares represents a patchy inflamatory and scarring alopecia,
often manifesting as follicular hyperkeratosis and erythema. It occurs primarily in
adults and may bedifficult to differentiate from cutaneous lupus erythematosus.
Searching for associated skin lesions of lichen planus, skin biopsy for light
microscopy, and immunofluorescence studies may diferentiate the two disorders.
 Treatment of lichen planopilares involvesthe use of corticosteroids. Guidelines
for the use of topical corticosteroids are essentially the same as those in chronic
cutaneous lupus erythematosus. Individual lesions in lichen planopilaris are often
quite small and widespread, so intralesionalcorticosteroids are often impractical.
Oral corticosteroids (prednisone) are often effective. The initial dose of 1 mg per kg
per day is tapered as signs of inflammation respond. Oral corticosteroid therapy
may be long-term, therefore requiring monitoring of side effects. Topical
antiinflammatory agents, antiseborrheic shampoos, and keratolytic agents can be
helpful. Chronic scarred, burnt-out areas are best treated with surgical
intervention, sunch has hair transplatation or scalp reduction.
View publication stats
                         </div>
                         <div class="phsyologicalSpecContent">
                             <h4>Psychological</h4>
<h5>What is mental health?</h5>
Mental health refers to your emotional and psychological well-being. Having good mental health helps you lead a relatively happy and healthy life. It helps you demonstrate resilience and the ability to cope in the face of life’s adversities.

Your mental health can be influenced by a variety of factors, including life events or even your genetics.

There are many strategies that can help you establish and keep good mental health. These can include:

<ul>
<li>keeping a positive attitude</li>
<li>staying physically active</li>
<li>helping other people</li>
<li>getting enough sleep</li>
<li>eating a healthy diet</li>
<li>asking for professional help with your mental health if you need it</li>
<li>socializing with people whom you enjoy spending time with</li>
<li>forming and using effective coping skills to deal with your problems</li>
</ul>
<h5>What is mental illness?</h5>
A mental illness is a broad term which encompasses a wide variety of conditions which affect the way you feel and think. It can also affect your ability to get through day-to-day life. Mental illnesses can be influenced by several different factors, including:
<ul>
<li>genetics</li>
<li>environment</li>
<li>daily habits</li>
<li>biology</li>
</ul>
<h5>Mental health statistics</h5>
Mental health issues are common in the United States. About one in five American adults experience at least one mental illness each year. And around one in five young people ages 13 to 18 experience a mental illness at some point in their lives, too.

Although mental illnesses are common, they vary in severity. About one in 25 adults experience a serious mental illness (SMI) each year. A SMI can significantly reduce your ability to carry out daily life. Different groups of people experience SMIs at different rates.

According to the National Institute of Mental Health, women are more likely to experience SMI than men. Those ages 18 to 25 are most likely to experience an SMI. People with a mixed-race background are also more likely to experience an SMI than people of other ethnicities.


<h5>Mental health disorders</h5>
The Diagnostic and Statistical Manual of Mental Disorders, Fifth Edition (DSM-5) helps mental health professionals diagnose mental illnesses. There are many types of mental health disorders. In fact, almost 300 different conditions are listed in DSM-5.

These are some of the most common mental illnesses affecting people in the United States:

<h5>Bipolar disorder</h5>
Bipolar disorder is a chronic mental illness that affects about 2.6 percent of Americans each year. It is characterized by episodes of energetic, manic highs and extreme, sometimes depressive lows.

These can affect a person’s energy level and ability to think reasonably. Mood swings caused by bipolar disorder are much more severe than the small ups and downs most people experience on a daily basis.

<h5>Persistent depressive disorder</h5>
Persistent depressive disorder is a chronic type of depression. It is also known as dysthymia. While dysthymic depression isn’t intense, it can interfere with daily life. People with this condition experience symptoms for at least two years.

About 1.5 percent of American adults experience dysthymia each year.

<h5>Generalized anxiety disorder</h5>
Generalized anxiety disorder (GAD) goes beyond regular everyday anxiety, like being nervous before a presentation. It causes a person to become extremely worried about many things, even when there’s little or no reason to worry.

Those with GAD may feel very nervous about getting through the day. They may think things won’t ever work in their favor. Sometimes worrying can keep people with GAD from accomplishing everyday tasks and chores. GAD affects about 3 percent of Americans every year.

<h5>Major depressive disorder</h5>
Major depressive disorder (MDD) causes feelings of extreme sadness or hopelessness that lasts for at least two weeks. This condition is also called also called clinical depression.

People with MDD may become so upset about their lives that they think about or try to commit suicide. About 7 percent of Americans experience at least one major depressive episode each year.

<h5>Obsessive-compulsive disorder</h5>
Obsessive-compulsive disorder (OCD) causes constant and repetitive thoughts, or obsessions. These thoughts happen with unnecessary and unreasonable desires to carry out certain behaviors, or compulsions.

Many people with OCD realize that their thoughts and actions are unreasonable, yet they cannot stop them. More than 2 percent of Americans are diagnosed with OCD at some point in their lifetime.

<h5>Post-traumatic stress disorder (PTSD)</h5>
Post-traumatic stress disorder (PTSD) is a mental illness that’s triggered after experiencing or witnessing a traumatic event. Experiences that can cause PTSD can range from extreme events, like war and national disasters, to verbal or physical abuse.

Symptoms of PTSD may include flashbacks or being easily startled. It’s estimated that 3.5 percent of American adults experience PTSD.

<h5>Schizophrenia</h5>
Schizophrenia impairs a person’s perception of reality and the world around them. It interferes with their connection to other people. It’s a serious condition that needs treatment.

They might experience hallucinations, have delusions, and hear voices. These can potentially put them in a dangerous situation if left untreated. It’s estimated that 1 percent of the American population experiences schizophrenia.

<h5>Social anxiety disorder</h5>
Social anxiety disorder, sometimes called social phobia, causes an extreme fear of social situations. People with social anxiety may become very nervous about being around other people. They may feel like they’re being judged.

This can make it hard to meet new people and attend social gatherings. Approximately 15 million adults in the United States experience social anxiety each year.

<h5>Coping with mental illnesses</h5>
The symptoms of many mental illnesses may get worse if they’re left untreated. Reach out for psychological help if you or someone you know may have a mental illness.

If you’re unsure where to start, visit your primary care doctor. They can help with the initial diagnosis and provide a referral to a psychiatrist.

It’s important to know that you can still have a full and happy life with a mental illness. Working with a therapist and other members of your mental health team will help you learn healthy ways to manage your condition.

<h5>Mental health symptoms</h5>
Each type of mental illness causes its own symptoms. But many share some common characteristics.

Common signs of several mental illnesses may include:
<ul>
<li>not eating enough or overeating</li>
<li>having insomnia or sleeping too much</li>
<li>distancing yourself from other people and favorite activities</li>
<li>feeling fatigue even with enough sleep</li>
<li>feeling numbness or lacking empathy</li>
<li>experiencing unexplainable body pains or achiness</li>
<li>feeling hopeless, helpless or lost</li>
<li>smoking, drinking, or using illicit drugs more than ever before</li>
<li>feeling confusion, forgetfulness, irritability, anger, anxiety, sadness, or fright</li>
<li>constantly fighting or arguing with friends and family</li>
<li>having extreme mood swings that cause relationship problems</li>
<li>having constant flashbacks or thoughts that you can’t get out of your head</li>
<li>hearing voices in your head that you can’t stop</li>
<li>having thoughts of hurting yourself or other people</li>
<li>being unable to carry out day-to-day activities and chores</li>
<li>Stress and periods of emotional distress can lead to an episode of symptoms. That may make it difficult for you to maintain normal behavior and activities. This period is sometimes called a nervous or mental breakdown. Read more about these episodes and the symptoms they cause.</li>
</ul>
<h5>Mental health diagnosis</h5>
Diagnosing a mental health disorder is a multi-step process. During a first appointment, your doctor may perform a physical exam to look for signs of physical issues that could be contributing to your symptoms.

Some doctors may order a series of laboratory tests to screen for underlying or less obvious possible causes.

Your doctor may ask you to fill out a mental health questionnaire. You may also undergo a psychological evaluation. You might not have a diagnosis after your first appointment.

Your doctor may refer you to a mental health expert. Because mental health can be complex and symptoms may vary from person to person, it may take a few appointments for you to get a full diagnosis.

<h5>Mental health treatment</h5>
Treatment for mental health disorders is not one size fits all, and it does not offer a cure. Instead, treatment aims to reduce symptoms, address underlying causes, and make the condition manageable.

You and your doctor will work together to find a plan. It may be a combination of treatments because some people have better results with a multi-angle approach. Here are the most common mental health treatments:

<h5>Medications</h5>
The four main categories of medications used to treat mental health disorders are antidepressants, anti-anxiety medications, antipsychotic medications, and mood-stabilizing medications.

Which type is best for you will depend on the symptoms you experience and other health issues you may face. People may try a few medications at different doses before finding something that’s right for them.

<h5>Psychotherapy</h5>
Talk therapy is an opportunity for you to talk with a mental health provider about your experiences, feelings, thoughts, and ideas. Therapists primarily act as a sounding board and neutral mediator, helping you learn coping techniques and strategies to manage symptoms.

<h5>Hospital and residential treatment</h5>
Some people may need brief periods of intensive treatment at hospitals or residential treatment facilities. These programs allow an overnight stay for in-depth treatment. There are also daytime programs, where people can participate in shorter periods of treatment.

<h5>Lifestyle treatments and home remedies</h5>
Alternative treatments can be used in addition to mainstream treatments as a supplement. These steps won’t eliminate mental health issues alone, but they can be helpful.

They include sticking to your treatment plan as closely as possible, avoiding alcohol and drugs, and adopting a healthy lifestyle that incorporates foods that may be a benefit to your brain. This includes omega-3 fatty acids, a type of fish oil that occurs naturally in some high-fat fish.

<h5>Mental health therapy</h5>
The term therapy refers to several styles of talk therapy. Therapy can be used to treat a variety of disorders, including panic disorders, anxiety, depression, anger issues, bipolar disorder, and post-traumatic stress disorder.

Therapy helps people identify mental health issues and unhealthy behaviors or thought patterns. During sessions you and your therapist can work to change these thoughts and behaviors.

In most cases, therapists focus on current issues, things that are affecting your daily life, and help you find solutions to what you’re experiencing in real time, but each doctor’s approach is different. Read more about the different types and what results you might expect from therapy.

<h5>Mental health first aid</h5>
Mental Health First Aid is a national public education course. It’s designed to teach people about the warning signs and risk factors of mental health issues. In the training, participants learn about treatments and approaches that can help people with mental health disorders.

This training program is made for people who regularly interact with patients in a healthcare setting. Through scenarios and role-playing, healthcare providers can learn how to help a person in crisis connect with professional and self-help treatment steps.

<h5>Mental health exercises</h5>
Physical exercise is great for your body. Dancing, swimming, walking, and jogging boost cardio health and strength. They’re also great for your mind. Research shows they can help reduce symptoms of depression and anxiety.

However, there are also “exercises” you can do for your brain. These include:
<ul>
<li>Striking a power pose. People who use “power poses” (aka hands on hips) may see a temporary drop in feelings of social anxiety.</li>
<li>Listening to calming music. A 2013 study of 60 women revealed that people who listen to relaxing music recover faster after stress than people who relax but do not listen to music.</li>
<li>Practicing progressive muscle relaxation. This process involves tightening and then slowly relaxing various muscle groups. It may be combined with other techniques like listening to calming music or breathing exercises.v
<li>Finding a yoga pose. One 2017 study showed that just two minutes of performing yoga poses can boost self-esteem and help increase bodily energy.</li>
<li>Mental health test</li>
</ul>
When you talk with your doctor or therapist about your mental health, they may go through a series of examinations in order to reach a diagnosis. These steps could include a physical examination, blood or laboratory tests, and a mental health questionnaire.

A series of questions helps doctors understand your thoughts, responses, and reactions to events and scenarios. While this test won’t return immediate results, it will help your doctor better understand what you’re experiencing.

Avoid taking online mental health tests. While these may provide some insight into causes of symptoms, they aren’t administered by a healthcare professional. The questions and answer options may not be as specific as a doctor or therapist might be in an in-person testing environment.

<h5>Mental health recovery</h5>
Most individuals with mental health issues can and will find treatments that are successful. That means you can get better. Some mental health issues, however, are chronic and ongoing, but even these can be managed with proper treatment and intervention.

Recovery from mental health disorders or issues requires ongoing attention to your mental and overall health, as well as adherence to any behavioral therapy techniques learned from a therapist.

In some cases, treatments like medication may be needed on an on-going basis; others may be able to stop using them at some point. What recovery will mean for you is different than recovery for another person.

<h5>Mental health awareness</h5>
Mental health is a vital concern for healthcare professionals. Most people know the signs and symptoms of physical illnesses, like a heart attack or stroke. But, they may not be able to pinpoint the physical effects of anxiety, PTSD, or panic.

Awareness campaigns are designed to help people understand these common signs and symptoms.

More than 40 million Americans experience some form of mental illness every year. Knowing that they’re not alone may invite people to seek treatment from a professional. Treatment is key to relief from symptoms and maintain a healthy, active life.

<h5>Mental health in teens</h5>
Around 21 percent of American teenagers between 13 and 18 years old have experienced a severe mental health disorder, according to the National Alliance on Mental Illness (NAMI). Half will develop a disorder by the time they’re 14 years old.

A significant number of youth are affected by depression in particular. According to the National Institute of Mental Health (NIMH), around 13 percent of Americans between 12 and 17 years old had at least one major depressive episode in 2017.

In fact, the American Academy of Pediatrics (AAP) now endorses universal depression screening for 12- to 18-year-olds. These screenings can be performed by a primary care physician.

<h5>Signs and symptoms in teens</h5>
The signs and symptoms of mental illness may be brushed aside as the angst of the turbulent teenage years. But, these may be the earliest predictors of mental health disorders or issues that require treatment.

Signs of mental health issues in teenagers include:

<ul>
<li>loss of self-esteem</li>
<li>excessive sleeping</li>
<li>loss of interest in activities or favorite hobbies</li>
<li>sudden and unexpected decline in academic performance</li>
<li>weight loss or changes in appetite</li>
<li>sudden personality changes, such as anger or aggression</li></ul>
                         </div>
                         <div class='physiotherapySpecContent'>
                             <h4>Physiotherapy</h4>
                             Physical Therapy is a branch of rehabilitative healthcare where trained and licensed medical professionals use specially designed equipment and exercise regimens to treat abnormal physical functions.

Physical therapists (PTs) evaluate the patient’s condition, such as an injury, disease, or disability and provide appropriate treatment. PT is a suitable treatment for a variety of health conditions and helps restore and maintain physical function and mobility.

Licensed physical therapists work in conjunction with other medical teams in rehab centers, hospitals, sports and fitness centers, schools, and offices. The list of diseases treated by physical therapy includes neurological disorders, genetic, or musculoskeletal disorders, as well as sports injuries or even common issues like dizziness.

<h5>Why Physical Therapy Is Important</h5>
A physical therapist is a medical professional who is knowledgeable about your body’s biomechanics. If there are any deficiencies in the physical movement of your body, they can identify the root cause and work on treating it.

Specific areas get weakened after injury or need strengthening post-surgery. By working with your physical therapist, you can target these areas and relieve stress without causing pain.

Particularly for post-operative therapy, physical therapy is seen as the most-effective solution for stress-free recovery.

Since they possess knowledge about your limitations after a surgical procedure, they can help bring out a successful outcome. With certain exercises on the target areas of weakness, they treat the pain source and help improve your well-being.

<h5>What Can You Expect from Physical Therapy</h5>
walking-pt-elderly-woman

Physical therapists work in tandem with other medical professionals or they can offer it as a standalone treatment.

Usually, in cases where it supports other treatments, your doctor refers you to a physical therapist. In the process of healing, your doctor may suggest physical therapy for preventive, restorative, or pain management procedures.

In other cases, the patients themselves may be aware of their weaknesses, such as stiffness in the neck and shoulder, and seek therapy on their own. People of all ages can improve their health for a long list of diseases treated by physical therapy.

Whichever way you approach a physical therapist, here is what you can expect:

<h5>1. Initial Evaluation</h5>
First of all, the physical therapist conducts certain tests including the range of motion measurements, evaluation of posture, muscle and joint movement, flexibility, motion, and performance.

<h5>2. Diagnosis</h5>
Secondly, the PT will provide a clinical diagnosis based on the testing procedures, discuss your short and long- term objectives, and give you a prognosis.

<h5>3. Treatment</h5>
After they set a plan of care, you receive regular physical therapy treatment, which may go on for weeks or months, based on the medical issue.

<h5>4. Self-Management</h5>
As a result of the rehab program, the therapist makes recommendations regarding the exercises you can do at home to help speed up the recovery.

<h5>Benefits of Physical Therapy</h5>
<ul>
<li>Physical therapists provide safety exercises that challenge and improve your balance in situations that mimic real-life.</li>
<li>Physical therapy offers recovery from a sports injury, stroke, trauma, or paralysis, and strengthen the core.</li>
<li>Persons with chronic medical history or chances of inheriting certain ailments can profit with physical therapy advised by their healthcare provider.</li>
<li>Pain and age-related medical issues can be managed with physical therapy.</li>
<li>Manual therapy techniques can reduce the need for surgery and eliminate pain without using medication.</li>
<li>Stretching and strengthening regularly according to the instructions of your physical therapists improves physical activity and mobility.</li>
<li>List of Diseases Treated by Physical Therapy</li>
<li>foot-physical-therapy-treatment</li>
</ul>
Here are the most common medical conditions treated by physical therapists:

<h5>1. Lymphedema</h5>
Excess fluids gather in the lymphatic system, which then moves around in the bloodstream, causing swelling. Physical therapists use Complete decongestive therapy (CDT) to reduce swelling and prevent future fluid buildup.

<h5>2. Sports Injuries</h5>
Specific types of sports injuries like stress fractures can be treated with appropriate recovery programs or prevention exercises for a safe and quick recovery.

<h5>3. Muscular Dystrophy</h5>
Muscles and skeleton degenerate and get progressively weakened owing to age or various disorders. This can be treated with mobility exercises and using supporting frames.

<h5>4. Back and Neck Pain</h5>
Acute pain that comes on suddenly or chronic back and neck pain that lasts for months or years restrict normal functioning. Physical therapy eases pain and improves mobility.

<h5>5. Limited Range of Motion (ROM)</h5>
Too much stress due to the overuse of some parts of your body causes swelling or you feel tenderness in those areas. Rage of motion gets impeded, which can be revived with therapy. Likewise, physical therapy will achieve better extension or flexion.

<h5>6. Osteoporosis</h5>
Thin and brittle, sponge-like bones have lots of holes inside them, causing them to break. Similarly, disabling fractures can be prevented with timely therapy.

<h5>7. Vertigo</h5>
Dizziness or lightheadedness is a general and frequent complaint of many people, leading to dangerous falls. Since physical therapy improves balance, vertigo can be treated.

<h5>8. Headaches</h5>
Migraine and tension-type headaches can lead to severe head or neck injury. A proper plan of care can be implemented to increase neck mobility and strengthen the upper back muscles.

<h5>9. Carpal Tunnel Syndrome</h5>
Sitting at a computer all day leads to repetitive stress injuries. However, wrist injuries and pain can be subdued by changing your posture and performing stretches and exercises.

<h5>10. Chronic Fatigue Syndrome</h5>
This complex disorder causes debilitating tiredness that cannot be improved with rest. Physical therapists, together with doctors, formulate a treatment plan with endurance training tasks.

<h5>11. Respiratory Issues</h5>
Chronic bronchitis, as well as other respiratory disorders, can be treated with pulmonary rehabilitation plans by strengthening the lungs with diaphragmatic breathing tasks.

<h5>12. Burns</h5>
Severe burns and splinting can be treated with physical therapy in collaboration with a medical team to prevent unwanted scar tissue. For example, scar tissue massage will help regenerate healthy soft tissues such as muscles and tendons.

<h5>13. Joint Replacement</h5>
In a similar manner, post-operative care for surgical removal and replacement of hip or knee joint with an artificial joint (prosthesis) will certainly provide adequate knee relief from pain.

<h5>14. Ankle sprain</h5>
Twisting your ankle causes the ligaments that support it to get stretched and torn, leading to swollen and painful ankle. Moreover, ankle sprains can heal faster and you regain strength with good home exercises suggested by therapists.

<h5>15. Parkinson’s Disease</h5>
This neurological and progressive movement disorder causes chronic motor limitations and tremors. Similarly, it can be treated with physical therapy and resistance strength exercises.

<h5>16. Foot Fracture</h5>
A simple fall can lead to broken bones, closed, open, or compound fractures, as a result, your movement and independence will be affected. Depending on the severity of your pain and the fracture location, treatment will be prescribed.

<h5>17. Huntington’s Disease</h5>
Both voluntary and involuntary movements get affected by Huntington’s disease. Spasms, slurred speech, and unsteady gait are some of the common symptoms, which can be treated with physical therapy.

<h5>18. Knee Ligament Injury</h5>
Bands of tissue on either side of the knee, known as ligaments, can be damaged with injuries occurring in contact sports or if hit strongly.

<h5>19. Pelvic Floor Dysfunction</h5>
Pelvic floor disorders, sexual problems, especially in women, can be treated by correcting the posture and lifting and carrying weights properly.

<h5>20. Cancer</h5>
Cancer treatment may leave patients in severe pain and disability, which affects their quality of life. Managing the consequences of the type of cancer can be made possible when physical therapists identify and treat impairments.

From sports injuries to Parkinson’s disease, from vertigo to cancer, physical therapy can become crucial in the treatment of several medical conditions. Contact XO Physical Therapy, your trusted physiotherapists and start living life to the fullest!
                         </div>
                      </div>
                    </div>
                </div>      
       
        <script>
                
                  var email="<%=email%>";   
                //var email=localStorage.getItem("email");
                var left=$(document).width()/2; 
                $(".update").css("left",left);
                $(".imgProfile").attr("src","./pateintimageRetriver?email="+email+"&role=patient"); 
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
                        left:"-55%"
                    });
                }                
            });
                    
            $(".mainContent .cardDecker").on("click",function(){
                $(".menuList").animate({
                     left:"-55%"          
                });
            });
            $(".row1 .menuHeader").on("click",function(){
                $(".menuList").animate({
                     left:"-55%"          
                }); 
            });
            var userName;
            $.ajax({
               type:"POST",
               url:"upadter",
               data:{
                   email:email,
                   function:"name",
                   role:"patient"
               },
               success: function (data, textStatus, jqXHR) {
                         userName=data;
                        $(".userName").html(data);
                    }
            });
            $(".profileLink").on("click",function(){
            $.ajax({
               type:"POST",
               url:"upadter",
               data:{
                   email:email,
                   function:"profile",
                   role:"patient"
               },
               success: function (data, textStatus, jqXHR) {
                   $(".cardDecker").css("display","none");
                   var array=new Array();
                   array=data.split(",");
                   if(array[0]!=="")
                   {
                   $(".pFName").val(array[0]);     
                   }
                   else
                   {
                    $(".pFName").val("Not Provided");   
                   }
                   if(array[1]!=="")
                   {
                   $(".pLName").val(array[1]);     
                   }
                   else
                   {
                    $(".pLName").val("Not Provided");   
                   }
                   if(array[2]!=="")
                   {
                       var date=array[2];
                   $(".pBirthdate").val(date.slice(0,10));     
                   }
                   else
                   {
                     $(".pBirthdate").val("Not Provided");
                   }
                   if(array[3]!=="")
                   {
                   $(".pOccupation").val(array[3]);    
                   }
                   else
                   {
                     $(".pOccupation").val("Not Provided");
                   }
                   if(array[4]!=="")
                   {
                    $(".pSex").val(array[4]);   
                   }
                   else
                   {
                     $(".pSex").val("Not Provided");
                   }
                   if(array[5]!=="")
                   {
                       $(".pEmail").val(array[5]);
                   }
                   else
                   {
                     $(".pEmail").val("Not Provided");  
                   }
                   if(array[6]!=="")
                   {
                    $(".pPhoneNumber").val(array[6]);   
                   }
                   else
                   {
                     $(".pPhoneNumber").val("Not Provided");  
                   }
                   if(array[7]!=="")
                   {
                      $(".pAddress").val(array[7]); 
                   }
                   else
                   {
                     $(".pAddress").val("Not Provided");
                   }
                   if(array[8]!=="")
                   {
                      $(".pPlaceName").val(array[8]); 
                   }
                   else
                   {
                      $(".pPlaceName").val("Not Provided"); 
                   }
                   if(array[9]!=="")
                   {
                       $(".pAge").val(array[9]);  
                   }
                   else
                   {
                       $(".pAge").val("Not Provided");
                   }
                   if(array[10]!=="")
                   {
                       $(".pHeight").val(array[10]);
                   }
                   else
                   {
                       $(".pHeight").val("Not Provided");
                   }
                   if(array[11]!=="")
                   {
                      $(".pWeight").val(array[11]); 
                   }
                   else
                   {
                       $(".pWeight").val("Not Provided");
                   }
                   if(array[12]!=="")
                   {
                       $(".pBloodGroup").val(array[12]);
                   }
                   else
                   {
                       $(".pBloodGroup").val("Not Provided");
                   }
                   if(array[13]!=="")
                   {
                       $(".pBodyMark").val(array[13]);
                   }
                   else
                   {
                       $(".pBodyMark").val("Not Provided");
                   }
                  $(".profileContainer").css("display","block");
                  $(".menuHeaderContent").html("Your Profile");
                  $(".cardDecker").css("display","none");
                  $(".specializationContainer").css("display","none");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".doctorContainer").css("display","none");
                  $(".appointmentContainer").css("display","none");       
                  $(".myDoctorContainer").css("display","none");
                  $(".noteContainer").css("display","none");
                  $(".prescriptionDetials").css("display","none");      
                         
            }
            });                
            });
            $(".HomeLink").on("click",function(){
               $(".cardDecker").css("display","flex");
               $(".profileContainer").css("display","none");
               $(".menuHeaderContent").html("Patient Platform");
               $(".specializationContainer").css("display","none");
               $(".hospitalContainer").css("display","none");
               $(".placeSearcher").val("select");
               $(".hospitalContent").html("");
               $(".doctorContainer").css("display","none");
               $(".appointmentContainer").css("display","none"); 
               $(".myDoctorContainer").css("display","none");
               $(".noteContainer").css("display","none");
               $(".prescriptionDetials").css("display","none");      
                            
               
              });
             $(".appointmentChoosingMapper").on("click",function(){
                  $(".profileContainer").css("display","none");
                  $(".appointmentContainer").css("display","none");
                  $(".menuHeaderContent").html("Patient Platform");
                  $(".cardDecker").css("display","flex");
                  $(".specializationContainer").css("display","none");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".doctorContainer").css("display","none");
                  $(".hospitalContainer").css("display","none");
                  $(".myDoctorContainer").css("display","none");
                  
             });
             $(".profileLink").on("click",function(){ 
               $(".cardDecker").css("display","flex");
               $(".profileContainer").css("display","block");
               $(".menuHeaderContent").html("Your Profile");
               $(".specializationContainer").css("display","none");
               $(".hospitalContainer").css("display","none");
               $(".placeSearcher").val("select");
               $(".hospitalContent").html("");
               $(".doctorContainer").css("display","none");
               $(".appointmentContainer").css("display","none");
               $(".myDoctorContainer").css("display","none");
               $(".noteContainer").css("display","none");
               $(".prescriptionDetials").css("display","none");      
                         
               
              });
              
            $("#booking").on("click",function(){
               $(".cardDecker").css("display","none");
               $(".profileContainer").css("display","none");
               $(".specializationContainer").css("display","block");
               $(".menuHeaderContent").html("Doctor Booking");
               $(".hospitalContainer").css("display","none");
               $(".placeSearcher").val("select");         
               $(".hospitalContent").html("");
               $(".doctorContainer").css("display","none");
               $(".appointmentContainer").css("display","none"); 
               $(".myDoctorContainer").css("display","none");
               
           });
                    
               $(".specializationMapper").on("click",function(){
                  $(".profileContainer").css("display","none");
                  $(".menuHeaderContent").html("Your Specialization");
                  $(".cardDecker").css("display","none");
                  $(".specializationContainer").css("display","block");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".doctorContainer").css("display","none");
                  $(".hospitalContainer").css("display","none");  
                  $(".appointmentContainer").css("display","none");
                  $(".myDoctorContainer").css("display","none");
                  
                });
                 $(".mainPageMapper").on("click",function(){
                  $(".cardDecker").css("display","flex");
                  $(".menuHeaderContent").html("Patient Paltform");
                  $(".specializationContainer").css("display","none");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".hospitalContainer").css("display","none");
                  $(".doctorContainer").css("display","none");              
                 $(".appointmentContainer").css("display","none"); 
                 $(".myDoctorContainer").css("display","none");
                 $(".specMainContent").css("display","none");
                 $(".specContainer").css("display","none");
             });    
               $(".doctorChoosingMapper").on("click",function(){
                  $(".cardDecker").css("display","none");
                  $(".menuHeaderContent").html("Hospitals Around You");
                  $(".specializationContainer").css("display","block");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".hospitalContainer").css("display","none");
                  $(".doctorContainer").css("display","none");                  
                  $(".appointmentContainer").css("display","none");
                  $(".myDoctorContainer").css("display","none");
                  $(".childSpecContent").css("display","none");
                  $(".hairSpecContent").css("display","none");
                  $(".phsyologicalSpecContent").css("display","none");
                  $(".physiotherapySpecContent").css("display","none");                                    
              });
              $(".spec").on("click",function(){
                  $(".cardDecker").css("display","none");
                  $(".menuHeaderContent").html("Know more about specialization");
                  $(".specializationContainer").css("display","none");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".hospitalContainer").css("display","none");
                  $(".doctorContainer").css("display","none");                  
                  $(".appointmentContainer").css("display","none");
                  $(".myDoctorContainer").css("display","none");
                  $(".specContent").css("display","block");
                  $(".specContainer").css("display","block");
              });
              $(".eyeLink").on("click",function(){
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","block");
                 $(".boneSpecContent").css("display","none");       
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".childSpecContent").css("display","none");  
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");                 
             });
             $(".physiotherapyLink").on("click",function(){
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","block");
                 $(".boneSpecContent").css("display","none");       
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".childSpecContent").css("display","none");     
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","block");
             });
              $(".earLink").on("click",function(){
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","block");
                 $(".eyeSpecContent").css("display","none");
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".boneSpecContent").css("display","none");  
                 $(".childSpecContent").css("display","none");  
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");
              });
               $(".diabetesLink").on("click",function(){
                 $(".diabetesSpecContent").css("display","block"); 
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".boneSpecContent").css("display","none");      
                 $(".childSpecContent").css("display","none");  
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");
             });
               $(".boneLink").on("click",function(){
                 $(".boneSpecContent").css("display","block");  
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".childSpecContent").css("display","none");  
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");

               });
               $(".childLink").on("click",function(){
                 $(".childSpecContent").css("display","block");  
                 $(".boneSpecContent").css("display","none");  
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");                 
               });
               $(".hairLink").on("click",function(){
                 $(".childSpecContent").css("display","none");  
                 $(".boneSpecContent").css("display","none");  
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".specMainContent").css("display","block");
                 $(".specContent").css("display","none");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","block");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","none");                 
               });
               $(".phsyologicalLink").on("click",function(){
                 $(".childSpecContent").css("display","none");  
                 $(".boneSpecContent").css("display","none");  
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".specMainContent").css("display","block");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","block");
                 $(".physiotherapySpecContent").css("display","none");
                 $(".specContent").css("display","none");

             });
               $(".physiotherapyLink").on("click",function(){
                 $(".childSpecContent").css("display","none");  
                 $(".boneSpecContent").css("display","none");  
                 $(".diabetesSpecContent").css("display","none"); 
                 $(".specMainContent").css("display","block");
                 $(".earSpecContent").css("display","none");
                 $(".eyeSpecContent").css("display","none");
                 $(".childSpecContent").css("display","none");
                 $(".hairSpecContent").css("display","none");
                 $(".phsyologicalSpecContent").css("display","none");
                 $(".physiotherapySpecContent").css("display","block");                 
                 $(".specContent").css("display","none");
              });
               var specializationName="";
             $(".option").on("click",function(){
               var specializationClass=$(this).attr("id");
               specializationName=specializationClass;     
               $(".hospitalContainer").css("display","block");
               $(".cardDecker").css("display","none");
               $(".profileContainer").css("display","none");
               $(".specializationContainer").css("display","none");
               $(".menuHeaderContent").html("Hospitals Around You");
               $(".doctorContainer").css("display","none");
               $(".hospitalContent").html("please select the cities to know the hospital and book you doctors!!!");});
               $(".appointmentContainer").css("display","none");                  $(".specContent").css("display","none");

               $(".myDoctorContainer").css("display","none"); 
               $(".noteContainer").css("display","none");
               $(".prescriptionDetials").css("display","none");                                              
              $(".placeSearcher").on("input",function(){
                    var val=$(this).val();
                    if(val!=="")
                    {
                $.ajax({
                type:"POST",
                url:"hospitalRetriver",
                data:{
                   placeName:$(".placeSearcher").val(),
                   specName:specializationName,
                   function:"hospital"
                },
                success: function (data, textStatus, jqXHR) {
                    //alert(data);
                    var array=new Array();
                    var array1=new Array();
                    $(".hospitalContent").html("");
                    if(data.includes("|"))
                    {    
                    array=data.split("|");
                    for(var x=0;x<array.length-1;x++)
                    {
                        array1=array[x].split(",");
                          $(".hospitalContent").append(
                                  "<div class='myHospital' >\n\
                                        <div class='card-body'>\n\
                                                 <h5 class='card-header'>\n\
                                                       "+array1[1]+"\n\
                                                 </h5>\n\
\n\                                                  <hr style='color:grey'>\n\
\n\                                              <div class='hospital_details'>  \n\
                                                  <div class='container1'>   \n\
                                                 <p class='card-text'>\n\
                                                      Hosiptal Adress : "+array1[2]+"\n\
                                                 </p>\n\
\n\                                              <p class='card-text'>\n\
                                                      Hospital founded date : "+array1[3].slice(0,11)+"  \n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Doctors : "+array1[4]+"\n\
\n\                                               </p> \n\
\n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Nurses : "+array1[5]+"\n\
\n\                                              </p>\n\
\n\                                                 </div>  \n\
                                                  <div class='container2'>   \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Rooms : "+array1[6]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Beds : "+array1[7]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Floors : "+array1[8]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                       Place located : "+array1[9]+"\n\
\n\                                               </p> \n\
\n\                                                </div>  \n\
                                                  <div class='container3'>   \n\
\n\
\n\                                              <p class='card-text'>\n\
                                                      Contact Number : "+array1[10]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of ICU_wards : "+array1[11]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Operation theater : "+array1[12]+"\n\
\n\                                               </p> \n\
\n\                                              <p class='card-text'>\n\
                                                      Number of Test Labs : "+array1[13]+"\n\
\n\                                               </p> \n\
                                                     </div>   \n\
                                                  </div>   \n\
                                        </div>\n\
                                    <button class='btn btn-primary hid' id="+array1[0]+" name="+specializationName+">\n\
                                            Start Booking<span style='font-size:15px;'>&#10087;</span>\n\
                                    </button>\n\
                                </div>\n\
                                "
                          );
                        }
                    }
                  
                  else
                  {
                      $(".hospitalContent").html(data);
                  }
                }
               }
             );
           }
               });
           
            $(document).on("click",".hid",function(){
                  $(".profileContainer").css("display","none");
                  $(".appointmentContainer").css("display","none");
                  $(".menuHeaderContent").html("Doctor Available Now");
                  $(".cardDecker").css("display","none");
                  $(".specializationContainer").css("display","none");
                  $(".placeSearcher").val("select");
                  $(".hospitalContent").html("");
                  $(".doctorContainer").css("display","block");
                  $(".hospitalContainer").css("display","none");
                  $(".myDoctorContainer").css("display","none");
                  $(".noteContainer").css("display","none");
                  $(".prescriptionDetials").css("display","none");      
                              
                 var hid=$(this).attr("id");
                 var name=$(this).attr("name");
                 var imageArray=new Array();
                 window.console.log(name);
                 $.ajax({
                    type:"POST",
                    url:"hospitalRetriver",
                    data:{
                      hospitalId:hid,
                      specName:name,
                      function:"doctor"
                    },
                    success: function (data, textStatus, jqXHR) {
                         var array=new Array();
                    var array1=new Array();
                    $(".doctorContent").html("");
                    if(data.includes("|"))
                    {    
                    array=data.split("|");
                    for(var x=0;x<array.length-1;x++)
                    {
                        array1=array[x].split(",");
                        imageArray.push(array1[4]);
                        var DID=array1[0];
                $(".doctorContent").append("\n\
\n\ \n\
                            <div class='mydoctor'>\n\
                                  <div class='docImage'>        \n\
                                      <img class='doctorImage"+x+" doctorImageCss' src=''>            \n\
                                   </div>  \n\
                                   <div class='container4'>     \n\
                                       <p>Name : "+array1[1]+"</p>  \n\
                                       <p>Address : "+array1[2]+"</p>\n\
                                       <p>Place : "+array1[3]+"</p>\n\
                                       <p>email : "+array1[4]+"</p>\n\
                                       <p>Phone Number : "+array1[5]+"</p>                                        \n\
                                       <p>Gender : "+array1[6]+"</p>   \n\
                                       <p>Specialization : "+array1[7]+"</p>\n\
                                       <p>Qualificatoin : "+array1[8]+"</p> \n\
                                       <p>Experience : "+array1[9]+" </p> \n\
                                       <p>      \n\
                                   </div>       \n\
   \n\
                              </div> \n\
                                     <button class='btn btn-primary docId' type='button' name='"+DID+"' data-toggle='modal' data-target='#myModal"+x+"' >Book </button> \n\
         <div class='modal' id='myModal"+x+"'>\n\
            <div class='modal-dialog modal-dialog-centered'>\n\
                <div class='modal-content'>\n\
                    <div class='modal-header'>\n\
                        <h4 class='modal-title'>Hey patient see below </h4>\n\
                    </div>\n\
                    <div class='modal-body'>\n\
                        <p></p>\n\
                    </div>\n\
                    <div class='modal-footer'>\n\
                        <button class='btn btn-primary' data-dismiss='modal'>Ok</button>\n\
                    </div>\n\
                </div>\n\
            </div>\n\
        </div>");
                              
                    } 
                     for(var t=0;t<imageArray.length;t++)
                     {                       
                          $(".doctorImage"+t).attr("src","./pateintimageRetriver?email="+imageArray[t]+"&role=doctor");
                     }
                    }
                    else
                    {
                        $(".doctorContent").html("Sorry Currently No Doctor Are Available");
                        $(".doctorContent").css("font-size","20px");
                        $(".doctorContent").css("text-align","center");
                    }
                 }
            });
        }); 
                 
            $(".mainContent *").on("click",function(){
                var left=$(".menuList").css("left");
                if(left==="0px")
                {    
                    $(".menuList").animate({
                        left:"-55%"
                    });
                }            
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
                     
                     $("#login").on("click",function(){
                        var firstName=$("#firstname").val();
                        var lastName=$("#lastname").val();
                        var BirthDate=$("#birthdate").val();
                        var occupation=$("#occupation").val();
                        var sex=$("#sex").val();
                        var Email=$("#email").val();
                        var phoneNumber=$("#phonenumber").val();
                        var address=$("#address").val();
                        var placeName=$("#place_name").val();
                        var age=$("#age").val();
                        var height=$("#height").val();
                        var weight=$("#weight").val();
                        var bloodGroup=$("#bloodtype").val();
                        var bodyMark=$("#body_marks").val();
                        $.ajax({
                           type:"POST",
                           url:"upadter",
                           data:{
                               data1:firstName,
                               data2:lastName,
                               data3:BirthDate,
                               data4:occupation,
                               data5:sex,
                               data6:Email,
                               data7:phoneNumber,
                               data8:address,
                               data9:placeName,
                               data10:age,
                               data11:height,
                               data12:weight,
                               data13:bloodGroup,
                               data14:bodyMark,
                               data15:email,
                               function:"update",
                               role:"patient"
                           },
                           success: function (data, textStatus, jqXHR) {
                              $(".updateContent").html("Hey "+firstName+" your datails have been "+data);
                              $(".update").css("display","block");
                              $(".update").css("z-index","100");
                            }
                        });
                        $(".close").on("click",function(){
                           $(".update").css("display","none"); 
                        });
                 });
                 $(document).on("click",".docId",function(){
                     var did=$(this).attr("name");
                    
                     $.ajax({
                         type:"POST",
                         url:"bookingControlller",
                         data:{
                             doctorId:did,
                             email:email,
                             reason:specializationName,
                             function:"booking"
                         },
                         success: function (data, textStatus, jqXHR) {
                             if(data==="success")
                             {
                                 $(".modal-body p").html("Successfully Booked!!");
                                 $.ajax({
                                    type:"POST",
                                    url:"bookingControlller",
                                    data:{
                                        doctorId:did,
                                        email:email,
                                        reason:specializationName,
                                        function:"email"
                                       },
                                       success: function (data, textStatus, jqXHR) {
                                         getMailData(data,"booking");
                                       }
                                   });
                             }
                             else
                             {
                                 $(".modal-body p").html("Sorry appointment can  be fixed only once for a doctor.You can book once your previous appointment finsihed!!");   
                             }
                         }
                     });
                 });
                       $(".appointmentLink").on("click",function(){
                         $(".appointmentContainer").css("display","block");
                         $(".profileContainer").css("display","none");
                         $(".menuHeaderContent").html("Your appointments");
                         $(".cardDecker").css("display","none");
                         $(".specializationContainer").css("display","none");
                         $(".placeSearcher").val("select");
                         $(".hospitalContent").html("");
                         $(".doctorContainer").css("display","none");
                         $(".hospitalContainer").css("display","none"); 
                         $(".myDoctorContainer").css("display","none");
                         $(".noteContainer").css("display","none");
                         $(".prescriptionDetials").css("display","none");      
                         var docImageArray=new Array();
                         var docDeatailArray=new Array();
                         var appointmentDeatilArray=new Array();
                         
                         $.ajax({
                             type:"POST",
                             url:"appointmentController",
                             data:{
                                 email:email,
                                 function:"request"
                             },
                             success: function (data, textStatus, jqXHR) {
                              if(data.includes("|"))  
                              {
                              docDeatailArray=data.split("|");
                               $(".appointmentContent").html("");
                              for(var x=0;x<docDeatailArray.length-1;x++)
                              {
                                  appointmentDeatilArray=docDeatailArray[x].split(",");
                                  docImageArray.push(appointmentDeatilArray[3]);
                                  if(appointmentDeatilArray[13]!=="Yes")
                                  {   
                                  if(appointmentDeatilArray[10]==="null")
                                  {
                                      appointmentDeatilArray[10]="Not Decided";
                                  }
                                  if(appointmentDeatilArray[12]==="null")
                                  {
                                      appointmentDeatilArray[12]="Not Decided";     
                                  }
                                 $(".appointmentContent").append(
                                        "<div class='appointmentMainContent' id='"+appointmentDeatilArray[9]+"'><div class='bookedDocImageContainer'>\n\
                                             <img class='profileDocImage"+x+" prodocImage ' src=''>\n\
                                        </div>\n\
                                        <div class='docDetailContainer'>\n\
                                               <h4>Doctor Details</h4> \n\
                                                     \n\
                                                <div class='docDetail'>\n\
                                                     <p class='docName"+appointmentDeatilArray[9]+"'id='"+appointmentDeatilArray[0]+"'>Name : "+appointmentDeatilArray[0]+"</p>   \n\
                                                     <p>Address : "+appointmentDeatilArray[1]+"</p>   \n\
                                                     <p>Place_of_working : "+appointmentDeatilArray[2]+"</p>   \n\
                                                     <p >Email : "+appointmentDeatilArray[3]+"\n\
                                                     <p>Phone Number : "+appointmentDeatilArray[4]+"</p>   \n\
   \n\                                               <p>Gender : "+appointmentDeatilArray[5]+"</p>   \n\
   \n\                                               <p>Specialization : "+appointmentDeatilArray[6]+"</p>   \n\
   \n\                                               <p>Qualification : "+appointmentDeatilArray[7]+"</p>   \n\
   \n\                                               <p>Experience : "+appointmentDeatilArray[8]+"</p>   \n\
   \n\
                                               </div>   \n\
                                        </div> \n\
                                        <div class='appointmentDetailContainer'>\n\
                                               <h4>AppointmentDetail</h4>  \n\
                                                <div class='appointmentDetail' id='"+appointmentDeatilArray[9]+"'> \n\
                                                    <p class='AppoDate"+appointmentDeatilArray[9]+"' id='"+appointmentDeatilArray[10]+"'>Appointment Date : "+appointmentDeatilArray[10]+"</p>    \n\
                                                    <p>Appointment Reason :"+appointmentDeatilArray[11]+"</p>    \n\
                                                    <p class='AppoTime"+appointmentDeatilArray[9]+"' id='"+appointmentDeatilArray[12]+"'>Appointment Time : "+appointmentDeatilArray[12]+"</p>    \n\
                                                    <p>Appointment Confirmation : "+appointmentDeatilArray[13]+"</p>    \n\
\
                                                </div>\n\
                                        </div> \n\
                                       <div class='RemoveButton' id='"+appointmentDeatilArray[9]+"'>\n\
                                         <button class='btn btn-danger'>Remove</button>\n\
                                       </div>\n\
                                </div>"
                                        
                                  );  
                                  }
            
                              }
                              for(var y=0;y<docImageArray.length;y++)
                              {
                                 
                                  $(".profileDocImage"+y).attr("src","./pateintimageRetriver?email="+docImageArray[y]+"&role=doctor");      
                                   
                             }
                             
                             }
                         }
                     });                   
                 });
                    setInterval(function(){
                        var text=$(".appointmentContent").text();
                        if(text.includes("Doctor Details")==false)
                        { 
                            $(".appointmentContent").html("Sorry Currently No Appointments!!!<br>");
                            $(".appointmentContent").css("font-size","20px");
                            $(".appointmentContent").css("text-align","center");   
                            $(".appointmentContent").append("<img src='images/noOption.webp'>");

                        }
                    },500);
                 var cancelButton;
                   setInterval(function(){
                       
                      $.ajax({
                         type:"POST",
                         url:"NotificationController",
                         data:{
                             email:email,
                             role:"patient"
                         },
                         success: function (data, textStatus, jqXHR) {
                             cancelButton=data;
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
                      var docImageArray1=new Array();
                     var docDeatailArray1=new Array();
                     var appointmentDeatilArray1=new Array();
                    setInterval(function(){
                       $.ajax({
                             type:"POST",
                             url:"appointmentController",
                             data:{
                                 email:email,
                                 function:"confirmed"
                             },
                             success: function (data, textStatus, jqXHR) {
                                     if(data.includes("|"))
                                     {
                                         docDeatailArray1=data.split("|");
                                         $(".docnotifiactions").html(""+docDeatailArray1.length-1+"");
                                     }
                                     else
                                     {
                                         $(".docnotifiactions").html("");    
                                     }
                               }
                             });
                        
                    },500);    
                    $(".doctorLink").on("click",function(){
                        $(".appointmentContainer").css("display","none");
                         $(".profileContainer").css("display","none");
                         $(".menuHeaderContent").html("Working Area");
                         $(".cardDecker").css("display","none");
                         $(".specializationContainer").css("display","none");
                         $(".placeSearcher").val("select");
                         $(".hospitalContent").html("");
                         $(".doctorContainer").css("display","none");
                         $(".hospitalContainer").css("display","none"); 
                         $(".myDoctorContainer").css("display","block");
                         $(".noteContainer").css("display","none");
                         $(".prescriptionDetials").css("display","none");
                        $(".noteContainer").css("display","none");
                        $(".fixedDoctorDetails").css("display","block");
                       $.ajax({
                             type:"POST",
                             url:"appointmentController",
                             data:{
                                 email:email,
                                 function:"confirmed"
                             },
                             success: function (data, textStatus, jqXHR) {
                               if(data.includes("|"))
                               {
                              docDeatailArray1=data.split("|");
                               $(".fixedDoctorDetails").html("");
                               var presIdMain;
                              for(var x=0;x<docDeatailArray1.length-1;x++)
                              {
                                  appointmentDeatilArray1=docDeatailArray1[x].split(",");
                                  docImageArray1.push(appointmentDeatilArray1[3]);
                                 $(".fixedDoctorDetails").append(
                                        "<div class='appointmentMainContent1' id='"+appointmentDeatilArray1[9]+"'><div class='bookedDocImageContainer1'>\n\
                                             <img class='profileDocImage1"+x+" prodocImage ' src=''>\n\
                                        </div>\n\
                                        <div class='docDetailContainer1'>\n\
                                               <h4>Doctor Details</h4> \n\
                                                     \n\
                                                <div class='docDetail'>\n\
                                                     <p class='docName"+appointmentDeatilArray1[9]+"'id='"+appointmentDeatilArray1[0]+"'>Name : "+appointmentDeatilArray1[0]+"</p>   \n\
                                                     <p>Address : "+appointmentDeatilArray1[1]+"</p>   \n\
                                                     <p>Place_of_working : "+appointmentDeatilArray1[2]+"</p>   \n\
                                                     <p class='email"+appointmentDeatilArray1[9]+"' id='"+appointmentDeatilArray1[3]+"'>Email : "+appointmentDeatilArray1[3]+"\n\
                                                     <p>Phone Number : "+appointmentDeatilArray1[4]+"</p>   \n\
   \n\                                               <p>Gender : "+appointmentDeatilArray1[5]+"</p>   \n\
   \n\                                               <p>Specialization : "+appointmentDeatilArray1[6]+"</p>   \n\
   \n\                                               <p>Qualification : "+appointmentDeatilArray1[7]+"</p>   \n\
   \n\                                               <p>Experience : "+appointmentDeatilArray1[8]+"</p>   \n\
   \n\
                                               </div>   \n\
                                        </div> \n\
                                        <div class='appointmentDetailContainer1'>\n\
                                               <h4>Appointment Details</h4>  \n\
                                                <div class='appointmentDetail' id='"+appointmentDeatilArray1[9]+"'> \n\
                                                    <p class='AppoDate"+appointmentDeatilArray1[9]+"' id='"+appointmentDeatilArray1[10]+"'>Appointment Date : "+appointmentDeatilArray1[10]+"</p>    \n\
                                                    <p>Appointment Reason :"+appointmentDeatilArray1[11]+"</p>    \n\
                                                    <p class='AppoTime"+appointmentDeatilArray1[9]+"'id='"+appointmentDeatilArray1[12]+"'>Appointment Time : "+appointmentDeatilArray1[12]+"</p>    \n\
                                                    <p>Appointment Confirmation : "+appointmentDeatilArray1[13]+"</p>    \n\
\
                                                </div>\n\
                                        </div> \n\
\n\
                                 <div class='assistContainer'>        \n\
                                      <div class='Note'  id='"+appointmentDeatilArray1[9]+"'>\n\
                                            <button class='btn btn-primary chooser' id='"+appointmentDeatilArray1[9]+"'>Note for Doctors</button>\n\
                                      </div>\n\
                                      <div class='prescription'  id='"+appointmentDeatilArray1[9]+"'>\n\
                                            <button class='btn btn-primary chooser' id='"+appointmentDeatilArray1[9]+"'>Prescriptions <span class='prescNotification"+appointmentDeatilArray1[9]+" pills"+appointmentDeatilArray1[9]+" badge badge-pill badge-danger' style='font-size:15px'></span></button>\n\
                                      </div>\n\
                                      <div class='LabRecords'  id='"+appointmentDeatilArray1[9]+"'>\n\
                                           <button class='btn btn-primary chooser' id='"+appointmentDeatilArray1[9]+"'>Your Records</button>\n\
                                      </div>\n\
                                             \n\
                                       <div class='RemoveButton1' id='"+appointmentDeatilArray1[9]+"'>\n\
                                         <button class='btn btn-danger'>Remove</button>\n\
                                    </div>\n\
                                </div>\n\
                                  </div>\n\
");  
                                  }
                                for(var y=0;y<docImageArray1.length;y++)
                                {
                                  $(".profileDocImage1"+y).attr("src","./pateintimageRetriver?email="+docImageArray1[y]+"&role=doctor");        
                                }
                                 $.ajax({
                                    type:"POST",
                                    url:"patientBodyDetailsController",
                                    data:{
                                      function:"prescript",
                                      presId:appointmentDeatilArray1[9]
                                     },
                                     success: function (data, textStatus, jqXHR) {
                                         if(data.includes(","))
                                         {
                                         $(".pills"+appointmentDeatilArray1[9]).css("displpay","flex");    
                                         $(".prescNotification"+appointmentDeatilArray1[9]).html("1");
                                         }
                                       }
                                   });      
                              }  
                          }
                          
                              
                          });
                              
                          
                    });
                    setInterval(function(){
                        var text=$(".docDetailContainer1").text();
                        if(text.includes("Doctor Details")===false)
                        { 
                            $(".fixedDoctorDetails").html("Sorry Currently No Appointments!!!<br>");
                            $(".fixedDoctorDetails").css("font-size","20px");
                            $(".fixedDoctorDetails").css("text-align","center"); 
                            $(".fixedDoctorDetails").append("<img src='images/noOption.webp'>");
                        }
                    },500);
                    $(document).on("click",".Note",function(){
                        var presId=$(this).attr("id");
                       $(".fixedDoctorDetails").css("display","none");
                       $(".noteContainer").css("display","block");
                       $(".noteContainer").html("\n\
                                <div class='noteDetailsContainer'> \n\
                                 <h4 class='noteHeader'>Notes for Doctor</h4>        \n\
                                <div class='alert alert-success detailsMessanger'>Hey,your details have been sent to your doctor</div>     \n\
                                <div class='alert alert-danger detailsMessanger1'>Hey,Sorry a patient can have only one submission</div>     \n\
                                                      \n\
                               <div class='form-group1'>\n\
                                     <label for='reason'>\n\
                                            Enter the Issue : \n\
                                     </label>\n\
                                     <textarea class='form-control textarea1' id='reason"+presId+"' name='reason'>\n\
                                     </textarea>\n\
                                </div>   \n\
\n\                             <div class='form-group1'><label for='symptoms'>Enter the Symptoms : </label><textarea  class='form-control textarea1' id='Symptoms"+presId+"' name=symptoms' ></textarea></div>  \n\
                                <div class='form-group1'><label for='effects'>Enter the Body Changes : </label><textarea class='form-control textarea1' id='effects"+presId+"' name='effects'></textarea></div> \n\
                                <div class='form-group1'><label for='complication'>Enter if you have medical complications : </label><textarea class='form-control textarea1' id='complication"+presId+"' name='complication'></textarea></div> \n\
                                </div> \n\
\n\                             <div class='buttonFixer'> \n\
                                      <button class='btn btn-primary send1' id='"+presId+"'>Send</button> \n\
                                      <buton class='btn btn-danger backNote'>Back</button>          \n\
                                </div>     \n\
  \n\
                        ");
                    });
                    $(document).on("click",".prescription",function(){
                       $(".prescriptionDetials").css("display","flex");
                       $(".fixedDoctorDetails").css("display","none");
                       $(".noteContainer").css("display","none");
                       var id=$(this).attr("id");
                       $.ajax({
                          type:"POST",
                          url:"patientBodyDetailsController",
                          data:{
                              function:"prescript",
                              presId:id
                          },
                          success: function (data, textStatus, jqXHR) {
                               if(data.includes(","))
                              {
                                  
                                  var patientMedicine=new Array();
                                  patientMedicine=data.split(",");
                                  
                                 for(var x=0;x<patientMedicine.length;x++)
                                  {    
                                  if(patientMedicine[x]==="null")
                                  {
                                      patientMedicine[x]="Not Provided";
                                  }
                                  }
                                  $(".prescriptionDetials").html(
                                          
                                     "   <h4 class='prescHeader' style='text-align:center'>Your Prescription</h4>  \
                                         <div class='prescriptionDetailsContainer' id='"+patientMedicine[0]+"'>\n\
                                         <div class='row'>      \n\
                                         <div class='form-group col-lg-6 medMainContainer'><label class='labMed'>Morning Medicine :</label><br><div class='medContainer' id='morningMedicine"+patientMedicine[0]+"' ><span class='medContainer1  btn-primary' id='morningTime"+patientMedicine[0]+"' > "+patientMedicine[2]+"</span>"+patientMedicine[1]+" </div></div>\n\
                                         <div class='form-group col-lg-6 medMainContainer'><label class='labMed'>Noon Medicine :</label><br><div class='medContainer' id='noonMedicine"+patientMedicine[0]+"'   > <span class='medContainer1  btn-primary' id='noonTime"+patientMedicine[0]+"'       >  "+patientMedicine[4]+"     </span>     "+patientMedicine[3]+"</div></div>     \n\
                                         </div> \n\
                                         <div class='row'>\n\
                                         <div class='form-group col-lg-6 medMainContainer'><label class='labMed'>Night Medicine :</label><br><div class='medContainer' id='nightMedicine"+patientMedicine[0]+"'  > <span class='medContainer1  btn-primary' id='nightTime"+patientMedicine[0]+"'      >  "+patientMedicine[6]+"     </span>      "+patientMedicine[5]+"</div></div>     \n\
                                         <div class='form-group col-lg-6 medMainContainer'><label class='labMed'>Cause of Problem :</label><br><div class='medContainer' id='problemCause"+patientMedicine[0]+"'   >  "+patientMedicine[7]+"    </div></div>      \n\
                                         </div> \n\
                                         <div class='row'>      \n\
                                         <div class='form-group col-lg-6 medMainContainer'><label class='labMed'>Procedure :</label><br><div class='medContainer' id='procedure"+patientMedicine[0]+"'      >  "+patientMedicine[8]+"    </div></div>  \n\
                                         </div>\n\
                                         <div class='form-group backNote'><button class='btn btn-danger'>Back</button></div>             \n\
                                            \n\
                                         </div>" 
                                  );
                              }
                              else
                              {
                                 $(".prescriptionDetials").html("Sorry there is no prescription availbale!!. Once your doctor post your prescription it will be available here<br> <div class='form-group backNote'><button class='btn btn-danger'>Back</button></div>");
                              }
                          }
                       });
                       
                    });
                 $(document).on("click",".backNote",function(){
                    $(".fixedDoctorDetails").css("display","block");
                    $(".noteContainer").css("display","none");
                    $(".prescriptionDetials").css("display","none");
                 });   
                 $(document).on("click",".send1",function(){
                     var id=$(this).attr("id");
                     var reason=$("#reason"+id).val();
                     var symptoms=$("#Symptoms"+id).val();
                     var effects=$("#effects"+id).val();
                     var complication=$("#complication"+id).val();
                     $.ajax({
                        type:"POST",
                        url:"patientBodyDetailsController",
                        data:{
                            presId:id,
                            reason:reason,
                            symptoms:symptoms,
                            effects:effects,
                            complication:complication,
                            function:"saving"
                        },
                        success: function (data, textStatus, jqXHR) {
                            if(data==="true")
                            {
                                $(".detailsMessanger").fadeIn(1000).css("display","block");
                            }
                            else
                            {
                                $(".detailsMessanger1").fadeIn(1000).css("display","block");
                            }
                        }
                     });
                 });   
                $(document).on("click",".RemoveButton1",function(){
                    var remove=$(this).attr("id");
                    var email1=$(".email"+remove).attr("id");
                    var docName=$(".docName"+remove).attr("id");
                    var AppoTime=$(".AppoTime"+remove).attr("id");
                    var AppoDate=$(".AppoDate"+remove).attr("id");
                    console.log(email);
                    console.log(docName);
                    console.log(AppoTime);
                    console.log(AppoDate);
                    $.ajax({
                        type:"POST",
                        url:"AppointmentFixerandCancelerController",
                        data:{
                            presId:remove,
                            function:"cancel"
                        },
                        success: function (data, textStatus, jqXHR) {
                            if(data==="true")
                            {
                               $("#"+remove).addClass("animation1").delay(500).queue(function(next){
                                  $("#"+remove).css("display","none"); 
                                  next();
                               }); 
                               $(".docDetailContainer1").html("");
                               sendEmail(email1,"cancel",userName,docName,"doctor",AppoDate,AppoTime,"Appointment");
                               sendEmail(email,"cancel",userName,docName,"patient",AppoDate,AppoTime,"Appointment");
                            }
                        }
                        
                    });
                });
                   $(document).on("click",".RemoveButton",function(){
                    var remove=$(this).attr("id");
                    var docName=$(".docName"+remove).attr("id");
                    var AppDate=$(".AppoDate"+remove).attr("id");
                    var AppTime=$(".AppoTime"+remove).attr("id");
                    var email1=$(".email"+remove).attr("id");
                    console.log(docName);
                    console.log(AppDate);
                    console.log(AppTime);
                    console.log(email1);
                    $.ajax({
                        type:"POST",
                        url:"AppointmentFixerandCancelerController",
                        data:{
                            presId:remove,
                            function:"cancel"
                        },
                        success: function (data, textStatus, jqXHR) {
                            if(data==="true")
                            {
                               $("#"+remove).addClass("animation1").delay(500).queue(function(next){
                                  $("#"+remove).css("display","none"); 
                                  next();
                               }); 
                               sendEmail(email,"cancel",userName,docName,"patient",AppDate,AppTime,"Appointment");
                               $(".docDetailContainer").html("");
                            }
                            else
                            {
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
                        role:"patient"
                    },
                    success: function (data, textStatus, jqXHR) {
                        var emailArray=new Array();
                        emailArray=data.split(",");
                        sendEmail(emailArray[0],status,emailArray[1],emailArray[2],"patient",emailArray[3],emailArray[4],"Appointment");
                     }
                   });
                 }

                 function sendEmail( Email,status, patientName,doctorName,person,date,time,function1 )
                 {
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
