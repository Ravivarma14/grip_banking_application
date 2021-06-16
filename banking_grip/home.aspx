<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banking application</title>
    <style type="text/css">
        .btn
    {
    	position:absolute;
    	width:25%;
    	left:40%;
    	right:25%;
    	top:51%;
    	background-color:Transparent;
        }
    .btn:hover
        {
        	background-color:#006666;
        	border-color:#ffffff;
        	border-width:2px;
        	border-style:groove;
        	font-family:"Agency FB";
        	font-size:30px;
        	color:White;
        }
    
        #form1
        {
            height: 400px;
        }
    
    </style>

</head>
    <body>
    <form id="form1" runat="server">
    <p align="center">
        &nbsp;</p>
        
    <p align="center">
    <asp:Label ID="Label1" runat="server"  
        Text="GRIP simple banking application to transfer money               " 
        Font-Bold="True" Font-Size="XX-Large" ForeColor="#29758C" Height="51px" 
        Width="100%"></asp:Label>
    </p>
    
    
    <p align="center">
        <asp:Image ID="Image1" runat="server" Height="294px" ImageUrl="~/bg.jpg" 
            Width="614px" />
    </p>
    
    <div align="center" class="btn" >
    <asp:Button ID="Button1"   runat="server" PostBackUrl="~/view_all_customers.aspx" 
            Text="view all customers" Font-Bold="True" Font-Size="25px" 
                style="font-family:Agency FB; background-color:Transparent; height: 42px;" 
                BorderStyle="None" EnableTheming="True"  
             ForeColor="#FFFCFF" onclick="Button1_Click1" />
     </div>
     
        
    </form>
</body>
</html>
