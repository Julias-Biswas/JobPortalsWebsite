<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.julias.dbconnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
</jsp:scriptlet>


<html>
    <head>
        <meta charset="ISO-8859-1">
        <title> Job Portal - Our Teams </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container-fluid">
            <jsp:scriptlet>
                if (email == null ? email == null : email.trim().equals("null")) {
            </jsp:scriptlet>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:scriptlet>
            } else {
            </jsp:scriptlet>
            <jsp:include page="profileheader.jsp"></jsp:include>
            <jsp:scriptlet>
                }
            </jsp:scriptlet>

            <jsp:include page="menubar.jsp"></jsp:include>

                <!-- Search Job division Starts -->
                <div class="row">
                    <div class="col-md-2">

                    </div>
                    <div class="col-md-8 job_search_div">
                        <div class="row">
                            <div class="col-md-6">
                                <img alt="Our Teams" src="images/our_teams.png" height="250" width="400" />
                            </div>
                            <div class="col-md-6">
                                <img alt="Our Teams Members" src="images/our_teams_members.png" height="300" width="400" style="background-color: #ffffff;" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
                <!-- Search Job division Ends -->

                <div class="row">
                    <div class="col-md-2 col-sm-2">
                        
                    </div>
                    <div class="col-md-8 col-sm-8 display_job_div" style="border: 1px solid lightgray; box-shadow: 2px 2px 2px gray; border-radius: 10px;" >
                        
                        <div class="row">
                            <div class="col-md-3">
                                <img alt="Julias Biswas" src="images/Resume_Photo.png" height="200" width="200" style="border: 1px solid black; border-radius: 50%;" />
                            </div>
                            <div class="col-md-9">
                                <b style="color: #0000cc; font-size: 30px;"> Julias Biswas </b>
                                <p>
                                    (Back-end Developer, Database Developer and Team Lead)
                                </p>
                                <span> <b> <i class="glyphicon glyphicon-envelope"> </i> &nbsp;&nbsp; juliasbiswas0001@gmail.com </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-earphone"> </i> &nbsp;&nbsp; 6294160823 </b> </span> <br>
                                <span> <b> <i class="fa fa-linkedin-square"> </i> &nbsp;&nbsp;<a target="_blank" href="https://www.linkedin.com/in/julias-biswas-604953203/">LinkedIn Profile </a> </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-user"> </i> &nbsp;&nbsp;<a target="_blank" href="https://www.hackerrank.com/juliasbiswas0001">HackerRank Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-instagram"> </i> &nbsp;&nbsp;<a target="_blank" href="https://www.instagram.com/julias.biswas/">Instagram Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-github"> </i> &nbsp;&nbsp;<a target="_blank" href="https://github.com/Julias-Biswas">GitHub Profile</a> </b> </span> <br>
                            </div>
                            <hr>
                            <div class="col-md-3">
                                <img alt="Nayan Bhowmick" src="images/nayanbh.png" height="200" width="200" style="border: 1px solid black; border-radius: 50%;" />
                            </div>
                            <div class="col-md-9">
                                <b style="color: #0000cc; font-size: 30px;"> Nayan Bhowmick </b>
                                <p>
                                    (Front-end Developer)
                                </p>
                                <span> <b> <i class="glyphicon glyphicon-envelope"> </i> &nbsp;&nbsp; nayanbhowmick49@gmail.com </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-earphone"> </i> &nbsp;&nbsp; 6291895984 </b> </span> <br>
                                <span> <b> <i class="fa fa-linkedin-square"> </i> &nbsp;&nbsp;<a target="_blank" href="https://www.linkedin.com/in/nayan-bhowmick-31ba551a4/">LinkedIn Profile </a> </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-user"> </i> &nbsp;&nbsp;<a href="?#">HackerRank Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-instagram"> </i> &nbsp;&nbsp;<a href="?#">Instagram Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-github"> </i> &nbsp;&nbsp;<a target="_blank" href="https://github.com/Nayan-8">GitHub Profile</a> </b> </span> <br>
                            </div>
                            <hr>
                            <div class="col-md-3">
                                <img alt="Debjyoti Seal" src="images/001.jpg" height="200" width="200" style="border: 1px solid black; border-radius: 50%;" />
                            </div>
                            <div class="col-md-9">
                                <b style="color: #0000cc; font-size: 30px;"> Debjoyti Seal </b>
                                <p>
                                    (Front-end Developer)
                                </p>
                                <span> <b> <i class="glyphicon glyphicon-envelope"> </i> &nbsp;&nbsp;  debjyotiseal1@gmail.com </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-earphone"> </i> &nbsp;&nbsp; 9093874312 </b> </span> <br>
                                <span> <b> <i class="fa fa-linkedin-square"> </i> &nbsp;&nbsp;<a href="?#">LinkedIn Profile </a> </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-user"> </i> &nbsp;&nbsp;<a href="?#">HackerRank Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-instagram"> </i> &nbsp;&nbsp;<a href="?#">Instagram Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-github"> </i> &nbsp;&nbsp;<a href="?#">GitHub Profile</a> </b> </span> <br>
                            </div>
                            <hr>
                            <div class="col-md-3">
                                <img alt="Deepraj Podder" src="images/default_image.png" height="200" width="200" style="border: 1px solid black; border-radius: 50%;" />
                            </div>
                            <div class="col-md-9">
                                <b style="color: #0000cc; font-size: 30px;"> Deepraj Podder </b>
                                <p>
                                    (Content Writer)
                                </p>
                                <span> <b> <i class="glyphicon glyphicon-envelope"> </i> &nbsp;&nbsp; deeprajpodder7@gmail.com </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-earphone"> </i> &nbsp;&nbsp; 91237 21390 </b> </span> <br>
                                <span> <b> <i class="fa fa-linkedin-square"> </i> &nbsp;&nbsp;<a href="?#">LinkedIn Profile </a> </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-user"> </i> &nbsp;&nbsp;<a href="?#">HackerRank Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-instagram"> </i> &nbsp;&nbsp;<a href="?#">Instagram Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-github"> </i> &nbsp;&nbsp;<a href="?#">GitHub Profile</a> </b> </span> <br>
                            </div>
                            <hr>
                            <div class="col-md-3">
                                <img alt="Anirban Bhattacharya" src="images/default_image.png" height="200" width="200" style="border: 1px solid black; border-radius: 50%;" />
                            </div>
                            <div class="col-md-9">
                                <b style="color: #0000cc; font-size: 30px;"> Anirban Bhattacharya </b>
                                <p>
                                    (Content Writer)
                                </p>
                                <span> <b> <i class="glyphicon glyphicon-envelope"> </i> &nbsp;&nbsp; @gmail.com </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-earphone"> </i> &nbsp;&nbsp; 84200 04744 </b> </span> <br>
                                <span> <b> <i class="fa fa-linkedin-square"> </i> &nbsp;&nbsp;<a href="?#">LinkedIn Profile </a> </b> </span> <br>
                                <span> <b> <i class="glyphicon glyphicon-user"> </i> &nbsp;&nbsp;<a href="?#">HackerRank Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-instagram"> </i> &nbsp;&nbsp;<a href="?#">Instagram Profile</a> </b> </span> <br>
                                <span> <b> <i class="fa fa-github"> </i> &nbsp;&nbsp;<a href="?#">GitHub Profile</a> </b> </span> <br>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2">
                        
                    </div>
                </div>
                
                <br><br><br>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>