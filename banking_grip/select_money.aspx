<%@ Page Language="C#" AutoEventWireup="true" CodeFile="select_money.aspx.cs" Inherits="select_money" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>choose money</title>
    <style type="text/css">
        
        #form1
        {
        	border:none;
        	border-bottom-style:groove;
        	border-bottom-color:#0000CC;
        	border-bottom-width:2px;
        	border-left-style:groove;
        	border-left-color:#0000CC;
        	border-left-width:1px;
            width:50%;
        }
        
        .btn
        {
        	border-style:groove;
        	border-width:thin;
        	font-size:x-large;
    	font-family:"Agency FB";
    	background-color:Transparent;  
        }
      
    .btn:hover
        {
        	background-color:#0066FF;
        	border-style:groove;
        	border-width:medium;
        	color:White;
           border-color:#66FFFF;
        }
        
        .lm
        {
        	text-align:center;
        	background-color:Transparent;
        	border:none;
        	border-bottom-style:groove;
        	border-bottom-color:#0000CC;
        	border-bottom-width:thin;
        }
        
    </style>
</head>
<body>

    <form id="form1" 
    style="margin-left:20%;background-color:#3366CC; margin-right:25%; font-weight: 700;" runat="server" 
    height="70%">
    
    <p align="center" >
        <asp:Label ID="Label1" runat="server" Text="Select Amount to Transfer" Font-Size="XX-Large" 
            ForeColor="#EFF3FB" style="font-family:Agency FB"></asp:Label>
    </p>
    <p align="center" >
    <asp:TextBox ID="TextBox1" class="lm" runat="server" Height="52px" Width="238px" 
            CausesValidation="True" MaxLength="10" Rows="1" 
            ToolTip="enter money to send" ForeColor="White"></asp:TextBox>
    </p>
    
    
    <p align="center">
        &nbsp;&nbsp;</p>
        
    <p align="center">
        <asp:Button class="btn" ID="Button1" runat="server"  onclick="Button1_Click" 
            Text="transfer money" BackColor="Transparent" Height="47px" 
            Width="161px" />
    </p>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [bank]"></asp:SqlDataSource>
        
    </form>
    
</body>
</html>
