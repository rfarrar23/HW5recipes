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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" SelectCommand="SELECT * FROM [Recipes] WHERE ([newId] = @newId)" DeleteCommand="DELETE FROM [Recipes] WHERE [newId] = @newId" InsertCommand="INSERT INTO [Recipes] ([recipeName], [submittedBy], [ingredientOne], [ingredientTwo], [ingredientThree], [ingredientFour], [ingredientFive], [recipePrep], [recipeNotes]) VALUES (@recipeName, @submittedBy, @ingredientOne, @ingredientTwo, @ingredientThree, @ingredientFour, @ingredientFive, @recipePrep, @recipeNotes)" UpdateCommand="UPDATE [Recipes] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredientOne] = @ingredientOne, [ingredientTwo] = @ingredientTwo, [ingredientThree] = @ingredientThree, [ingredientFour] = @ingredientFour, [ingredientFive] = @ingredientFive, [recipePrep] = @recipePrep, [recipeNotes] = @recipeNotes WHERE [newId] = @newId">
            <DeleteParameters>
                <asp:Parameter Name="newId" Type="Int32" />
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
            <SelectParameters>
                <asp:QueryStringParameter Name="newId" QueryStringField="newId" Type="Int32" />
            </SelectParameters>
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
                <asp:Parameter Name="newId" Type="Int32" />
            </UpdateParameters>
          </asp:SqlDataSource>
        <asp:DetailsView 
            ID="DetailsView1" 
            runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="newId" 
            DataSourceID="SqlDataSource1" 
            Height="94px" 
            Width="410px"
            CssClass="cssgridview"
            headerStyle-CssClass="header"
            >
            
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

<HeaderStyle CssClass="header"></HeaderStyle>
        </asp:DetailsView>
    
    </div>
          <p>
              &nbsp;</p>
    </form>
</body>
</html>
