<%@ Page Language="C#" AutoEventWireup="true" CodeFile="select_reciever.aspx.cs" Inherits="select_reciever" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select reciever</title>
    
    <style type="text/css">
        .l
        {
        	font-family:"Agency FB";
        }
        
    </style>
</head>
<body bgcolor="#FF9933">

    <form id="form2" background="bg.jpg" runat="server" >
    
    <div>
    
    <p align="center">
        <asp:Label ID="Label3" class="l" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Select Reciever from the Following" ForeColor="#5D7B9D"></asp:Label>
    </p>
    
    
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Height="100%" Width="100%" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            style="margin-right: 1px" ToolTip="click to select reciever" 
            BackColor="Transparent" CellSpacing="3" HorizontalAlign="Center">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                    InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [name], [id], [email] FROM [bank]">
        </asp:SqlDataSource>
    
    
    </div>
    
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    
    </form>
</body>
</html>
