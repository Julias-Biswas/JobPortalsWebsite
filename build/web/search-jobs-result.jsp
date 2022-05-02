<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.julias.dbconnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
    
    String technology2 = request.getParameter("technology1");
    String location2 = request.getParameter("location1");
</jsp:scriptlet>


<html>
    <head>
        <meta charset="ISO-8859-1">
        <title> Job Portal - Search Jobs Result </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" ></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container-fluid">
            <jsp:scriptlet>
                if( email == null ? email == null : email.trim().equals("null") )
                {
            </jsp:scriptlet>
                <jsp:include page="header.jsp"></jsp:include>
            <jsp:scriptlet>
                }
                else
                {
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
                        <strong style="font-size: 22px;"> Find A Job at India's No.1 Job Site... </strong> <br>
                        <form action="search-jobs-result.jsp" method="POST">
                            <input type="text" name="technology1" placeholder="Enter Technology..." class="textfield_design" />
                            <input type="text" name="location1" placeholder="Enter Location..." class="textfield_design" />
                            <input type="submit" value="Search" class="btn btn-primary search_btn" />
                        </form>
                    </div>
                    <div class="col-md-2">

                    </div>
                </div>
                <!-- Search Job division Ends -->

                <div class="row">
                    <div class="col-md-3" id="mynavbar">
                        <ul>
                            <li> <a href=""> <img alt="TCS" src="images/tcs.png" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="Wipro" src="images/wipro.jpg" height="100px" width="100px"> </a> </li> 
<!--                            <li> <a href="https://dxc.com/us/en/careers"> <img alt="DXC" src="images/dxc.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href="https://www.infosys.com/careers/apply.html"> <img alt="Infosys" src="images/infosys.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href="https://www.apple.com/careers/us/"> <img alt="Apple" src="images/apple.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="Disney" src="images/disney.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="MasterCard" src="images/mastercard.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="Nike" src="images/nike.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="Puma" src="images/puma.jpg" height="100px" width="100px"> </a> </li> 
                        </ul>-->
                    </div>
                    <div class="col-md-6" style="background-color: #e6ffff;">
                        <div class="row">
                        <jsp:scriptlet>
                        
                            String id = "" , job_profile = "" , company = "" , experience = "" , salary = "" , job_location = "" , description = "" , date1 = "" , time1 = "" ;
                        
                            Connection con = null ;
                            
                            try
                            {
                                con = DBConnection.getConnect();
                                
                                PreparedStatement ps = con.prepareStatement("SELECT * FROM jobs WHERE job_profile LIKE '%"+technology2+"%' AND job_location LIKE '%"+location2+"%'");
                                
                                ResultSet rs = ps.executeQuery();
                                
                                while( rs.next() )
                                {
                                    id = rs.getString("id");
                                    job_profile = rs.getString("job_profile");
                                    company = rs.getString("company");
                                    experience = rs.getString("experience");
                                    salary = rs.getString("salary");
                                    job_location = rs.getString("job_location");
                                    description = rs.getString("description");
                                    date1 = rs.getString("date1");
                                    time1 = rs.getString("time1");
                                    
                        </jsp:scriptlet>
                            <div class="col-md-12 display_job_div" style="border: 1px solid lightgray; box-shadow: 2px 2px 2px gray; border-radius: 10px;" >
                                <b style="font-size: 20px; color: blue;"> <jsp:expression>job_profile</jsp:expression> </b> <span style="color: #6cd1fb; float: right;"> (<jsp:expression>date1</jsp:expression> &&nbsp;<jsp:expression>time1</jsp:expression>) </span>  <br>
                                <span> <i class='fas fa-building'></i> <jsp:expression>company</jsp:expression> </span> <br>
                                <span> <i class="glyphicon glyphicon-briefcase"></i> <jsp:expression>experience</jsp:expression> </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span> <i class="fa fa-inr"></i> <jsp:expression>salary</jsp:expression> </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <span> <i class="glyphicon glyphicon-map-marker"></i> <jsp:expression>job_location</jsp:expression> </span><br>
                                <span> <i class="glyphicon glyphicon-file"></i> <jsp:expression>description</jsp:expression> </span> <br>
                                <span> <i class="glyphicon glyphicon-upload"></i> <jsp:expression>date1</jsp:expression> </span><br><br>
                                <a href="job-description.jsp?id=<jsp:expression>id</jsp:expression>" class="another_hyperlink" > See Full Details </a>
                            </div>
                        <jsp:scriptlet>
                                }
                                
                            }
                            catch(Exception e)
                            {
                                out.print(e);
                            }
                            finally
                            {
                                try
                                {
                                    con.close();
                                }
                                catch(Exception ee)
                                {
                                    out.print(ee);
                                }
                            }
                        
                        </jsp:scriptlet>
                        </div>
                    </div>
                    <div class="col-md-3" id="mynavbar">
                        <ul>
                            <li> <a href=""> <img alt="Google" src="images/google.jpg" height="100px" width="100px"> </a> </li> 
                            <li> <a href=""> <img alt="Microsoft" src="images/microsoft.jpg" height="100px" width="100px"> </a> </li> 
<!--                            <li> <a href="https://careers.cognizant.com/in/en"> <img alt="Cognizant" src="images/cognizant.png" height="100px" width="100px"> </a> </li> 
                            <li> <a href="https://www.capgemini.com/in-en/careers/"> <img alt="Capgemini" src="images/capgemini.png" height="100px" width="100px"> </a> </li> 
                            <li> <a href="https://jobs.hp.com/"> <img alt="HP" src="images/hp.jpg" height="100px" width="100px" > </a> </li>
                            <li> <a href="https://careers.nokia.com/"> <img alt="Nokia" src="images/nokia.jpg" height="100px" width="100px" > </a> </li>
                            <li> <a href="https://www.ibm.com/in-en/employment/"> <img alt="IBM" src="images/ibm.jpg" height="100px" width="100px" > </a> </li>
                            <li> <a href="https://www.bmwgroup.com/en/careers.html"> <img alt="BMW" src="images/bmw.jpg" height="100px" width="100px" > </a> </li>
                            <li> <a href="https://www.mercedes-benz.co.in/passengercars/the-brand/career.html"> <img alt="Mercedes" src="images/mercedes.jpg" height="100px" width="100px" > </a> </li>
                        </ul>-->
                    </div>
                </div>

            <br><br><br>
                            
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>