<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SADigital.Home" %>

<!DOCTYPE html>
<html lang="en">
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>


<form id="form1" runat="server">

<!-- Header -->
<header class="w3-display-container w3-content w3-center" style="max-width:1500px">
  <img class="w3-image" src="Untitled design.jpg" alt="Me" width="1200" height="1000">
  <div class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center">
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge">SADigital</h1>
    <h5 class="w3-hide-large" style="white-space:nowrap">SADigital</h5>
    <h3 class="w3-hide-medium w3-hide-small">Photo Sharing</h3>                 <!-- Fix for mobile devices -->
  </div>
</header>

<!-- Login -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="UserDetails1">
    <h3 class="w3-center">Login</h3>
    <hr>
    <p class="w3-center">Please enter your datails below to Login.</p>
    <p class="w3-center">If you do not already have an account, please sign up.</p>
  </div>

<!-- Login controls -->
<div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="UserDetails2">
    
    <label>Username:</label>
    <asp:TextBox ID="TbxUserName" runat="server" class="w3-input w3-border"></asp:TextBox>
    <label>Email: </label>
    <asp:TextBox ID="tbxEmail" runat="server" class="w3-input w3-border" ValidationGroup="Email"></asp:TextBox>
    <label>Password: </label>
    <asp:TextBox ID="tbxPassword" runat="server" class="w3-input w3-border"></asp:TextBox>
    
    <br />
    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" class="w3-button w3-block w3-dark-grey" OnClick="btnSignUp_Click"/>
    <asp:Button ID="btnLogin" runat="server" Text="Login" class="w3-button w3-block w3-dark-grey" OnClick="btnLogin_Click" Font-Size="X-Large"/>
    
    <asp:CheckBox ID="cbxRemberMe" runat="server" class="w3-button w3-block w3-dark-grey" Font-Bold="True" Font-Size="Large" Text="Remember Me"/>
    
    <asp:Label ID="lblError" runat="server" Text="..." class="w3-button w3-block " Font-Bold="True" Font-Size="X-Large" ForeColor="Lime" Visible="False"></asp:Label>
    
</div>
  
</form>
  

</body>
</html>