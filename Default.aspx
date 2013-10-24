
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div id="heading">
            <h1>Wicked Easy Recipes</h1>
            Using 5 Ingredients or Less!
        </div>

        <br />
        
        <div id="nav">
            <a href="./Default.aspx">Home</a> &#124; 
            <a href="./newrecipe.aspx">New Recipe</a> &#124; 
            <a href="./aboutus.aspx">About Us</a> &#124; 
            <a href="./contact.aspx">Contact</a> &#124; 

        </div>

    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" SelectCommand="SELECT * FROM [mainRTable]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
        <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
        <asp:HyperLinkField DataNavigateUrlFields="recipeId" DataNavigateUrlFormatString="detailsview.aspx?recipeId={0}" HeaderText="Submitted By" Text="Select" />
    </Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
