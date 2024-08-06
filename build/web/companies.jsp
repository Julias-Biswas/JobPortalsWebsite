<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.julias.dbconnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- Copy this part and paste all the jsp pages -->
<jsp:include page="CheckCookie"></jsp:include>

<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
</jsp:scriptlet>


<html>
    <head>
        <meta charset="ISO-8859-1">
        <title> Job Portal - All Companies </title>
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

                <div class="row" style="background-color: #fff3ff;">
                    <div class="col-md-3" id="mynavbar">
                        
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <strong style="border: 1px solid lightgray; box-shadow: 2px 2px 2px gray; border-radius: 5px; font-size: 30px; padding: 5px; background-color: #ffffff; color: #009900; text-align: center;"> All Companies which Our Partner </strong>
                        <jsp:scriptlet>
                        
                            String c_id = "" , c_name = "" , c_email = "" , c_password = "" , c_logo = "" , c_phoneno = "" , date1 = "" , time1 = "" ;
                        
                            Connection con = null ;
                            
                            try
                            {
                                con = DBConnection.getConnect();
                                
                                PreparedStatement ps = con.prepareStatement("SELECT * FROM company_reg");
                                ResultSet rs = ps.executeQuery();
                                
                                while( rs.next() )
                                {
                                    c_id = rs.getString("id");
                                    c_name = rs.getString("c_name");
                                    c_email = rs.getString("c_email");
                                    c_password = rs.getString("c_password");
                                    c_logo = rs.getString("c_logo");
                                    c_phoneno = rs.getString("c_phoneno");
                                    date1 = rs.getString("date1");
                                    time1 = rs.getString("time1");
                                    
                        </jsp:scriptlet>
                            <div class="col-md-12 display_job_div" style="border: 1px solid lightgray; box-shadow: 2px 2px 2px gray; border-radius: 10px;" >
                                <div class="row">
                                    <div class="col-md-2">
                                        <img src="company-logo/<jsp:expression>c_logo</jsp:expression>" height="100" width="90" style="border: 0px solid #ccffff; margin-top: 50%; margin-bottom: 50%;" />
                                    </div>
                                    <div class="col-md-10">
                                        <b style="font-size: 25px; color: blue;"> <jsp:expression>c_name</jsp:expression> </b> <span style="color: #6cd1fb; float: right; font-size: 18px;"> (<jsp:expression>date1</jsp:expression> &&nbsp;<jsp:expression>time1</jsp:expression>) </span> <br> 
                                        <span style="font-size: 20px; color: black;"> <i class="glyphicon glyphicon-home"></i> <jsp:expression>c_name</jsp:expression> </span> <br>
                                        <span style="font-size: 20px; color: black;"> <i class="glyphicon glyphicon-envelope"></i> <jsp:expression>c_email</jsp:expression> </span> <br>
                                        <span style="font-size: 20px; color: black;"> <i class="glyphicon glyphicon-earphone"></i> +91-<jsp:expression>c_phoneno</jsp:expression> </span> <br>
                                        <span style="font-size: 20px; color: black;"> <i class="glyphicon glyphicon-upload"></i> <jsp:expression>date1</jsp:expression> </span><br><br>
                                        <a href="company-jobs.jsp?c_name=<jsp:expression>c_name</jsp:expression>" class="another_hyperlink" style="font-size: 18px;" > See All Jobs Of This Company </a>
                                    </div>
                                </div>
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
                        
                    </div>
                </div>

            <br><br><br>                        
                                    
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>