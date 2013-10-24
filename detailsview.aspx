<%@ Page Language="VB" AutoEventWireup="false" CodeFile="detailsview.aspx.vb" Inherits="detailsview" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" SelectCommand="SELECT * FROM [ReadOnly]" DeleteCommand="DELETE FROM [ReadOnly] WHERE [recipeId] = @recipeId" InsertCommand="INSERT INTO [ReadOnly] ([recipeName], [submittedBy], [ingredientOne], [ingredientTwo], [ingredientThree], [ingredientFour], [ingredientFive], [recipePrep], [recipeNotes]) VALUES (@recipeName, @submittedBy, @ingredientOne, @ingredientTwo, @ingredientThree, @ingredientFour, @ingredientFive, @recipePrep, @recipeNotes)" UpdateCommand="UPDATE [ReadOnly] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredientOne] = @ingredientOne, [ingredientTwo] = @ingredientTwo, [ingredientThree] = @ingredientThree, [ingredientFour] = @ingredientFour, [ingredientFive] = @ingredientFive, [recipePrep] = @recipePrep, [recipeNotes] = @recipeNotes WHERE [recipeId] = @recipeId">
            <DeleteParameters>
                <asp:Parameter Name="recipeId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredientOne" Type="String" />
                <asp:Parameter Name="ingredientTwo" Type="String" />
                <asp:Parameter Name="ingredientThree" Type="String" />
                <asp:Parameter Name="ingredientFour" Type="String" />
                <asp:Parameter Name="ingredientFive" Type="String" />
                <asp:Parameter Name="recipePrep" Type="String" />
                <asp:Parameter Name="recipeNotes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredientOne" Type="String" />
                <asp:Parameter Name="ingredientTwo" Type="String" />
                <asp:Parameter Name="ingredientThree" Type="String" />
                <asp:Parameter Name="ingredientFour" Type="String" />
                <asp:Parameter Name="ingredientFive" Type="String" />
                <asp:Parameter Name="recipePrep" Type="String" />
                <asp:Parameter Name="recipeNotes" Type="String" />
                <asp:Parameter Name="recipeId" Type="Int32" />
            </UpdateParameters>
          </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeId" DataSourceID="SqlDataSource1" Height="94px" Width="410px">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredientOne" HeaderText="Ingredient One" SortExpression="ingredientOne" />
                <asp:BoundField DataField="ingredientTwo" HeaderText="Ingredient Two" SortExpression="ingredientTwo" />
                <asp:BoundField DataField="ingredientThree" HeaderText="Ingredient Three" SortExpression="ingredientThree" />
                <asp:BoundField DataField="ingredientFour" HeaderText="Ingredient Four" SortExpression="ingredientFour" />
                <asp:BoundField DataField="ingredientFive" HeaderText="Ingredient Five" SortExpression="ingredientFive" />
                <asp:BoundField DataField="recipePrep" HeaderText="Recipe Prep" SortExpression="recipePrep" />
                <asp:BoundField DataField="recipeNotes" HeaderText="Recipe Notes" SortExpression="recipeNotes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
          <p>
              &nbsp;</p>
    </form>
</body>
</html>
