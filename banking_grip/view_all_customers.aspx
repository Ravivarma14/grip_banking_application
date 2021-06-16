<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_all_customers.aspx.cs" Inherits="view_all_customers" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selecting sender</title>
    <style type="text/css">
        
        .l
        {
        	font-family:"Agency FB";
        }
        
    </style>
</head>
<body style="background-repeat: inherit; background-attachment: fixed" bgcolor="#0099CC">
    <form id="form1" runat="server">
    
    
    <div>
    
    <p align="center">
        <asp:Label ID="Label1" class="l" runat="server" Font-Bold="True" 
            Text="select sender account to transfer money" Font-Size="XX-Large" 
            ForeColor="#EFF3FB"></asp:Label>
    </p>
        <br />
        <br />
    </div>
    
    
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Height="100%" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
        onrowdatabound="GridView1_RowDataBound" CellSpacing="3">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    
    
    </form>
</body>
</html>
