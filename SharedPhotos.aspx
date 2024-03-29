﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SharedPhotos.aspx.cs" Inherits="SADigital.SharedPhotos" %>

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
  <img class="w3-image" src="Untitled design.jpg" alt="Me" width="1200" height="1000">                     <!-- Need to add profile picture -->
  <div class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center">
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge"><a href="Profile.aspx">My Profile</a></h1>
    <h5 class="w3-hide-large" style="white-space:nowrap"><a href="Profile.aspx">My Profile</a></h5>
  </div>
  
<!-- Navbar (placed at the bottom of the header image) -->
  <div class="w3-bar w3-light-grey w3-round w3-display-bottommiddle w3-hide-small" style="bottom:-16px">
    <asp:Button ID="btnMyPhotos1" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos1_Click"/>
    <asp:Button ID="btnShare3" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare3_Click"/>
    <asp:Button ID="btnUpload" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload_Click"/>
 </div>
</header>

<!-- Navbar (on small screens) -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
  <asp:Button ID="btnMyPhotos2" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos2_Click"/>
  <asp:Button ID="btnShare4" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare4_Click"/>
  <asp:Button ID="btnUpload2" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload2_Click"/>
  </div>
</div> 

<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
</div>

<!-- Sign out -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">Shared Photos</h3>
      <br>
  </div>

</form>

</body>
</html>
