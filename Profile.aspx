<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SADigital.Profile" %>

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
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge">My Profile</h1>
    <h5 class="w3-hide-large" style="white-space:nowrap">My Profile</h5>
  </div>
  
  <!-- Navbar (placed at the bottom of the header image) -->
  <div class="w3-bar w3-light-grey w3-round w3-display-bottommiddle w3-hide-small" style="bottom:-16px">
    <a href="#" class="w3-bar-item w3-button">My Photos</a>
    <a href="#portfolio" class="w3-bar-item w3-button">Shared photos</a>
    <a href="#contact" class="w3-bar-item w3-button">Share</a>
  </div>
</header>

<!-- Navbar on small screens -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
  <a href="#" class="w3-bar-item w3-button">My Photos</a>
  <a href="#portfolio" class="w3-bar-item w3-button">Shared photos</a>
  <a href="#contact" class="w3-bar-item w3-button">Share</a>
</div>
</div>

<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">

  <!-- Images (Profile) -->                                                                                      <!-- Need to add working pictures 
  <img src="/w3images/ocean.jpg" alt="Ocean" class="w3-image" width="1000" height="500">
  <img src="/w3images/ocean2.jpg" alt="Ocean II" class="w3-image w3-margin-top" width="1000" height="500">
  <img src="/w3images/falls2.jpg" alt="Falls" class="w3-image w3-margin-top" width="1000" height="500">
  <img src="/w3images/mountainskies.jpg" alt="Skies" class="w3-image w3-margin-top" width="1000" height="500">
  <img src="/w3images/mountains2.jpg" alt="Mountains" class="w3-image w3-margin-top" width="1000" height="500">
-->
<!-- End page content -->
</div>

<!-- Sign out -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">Sign out</h3>
      <!-- <button type="button" class="w3-button w3-block w3-dark-grey">Sign out</button> -->
      <asp:Button ID="btnSignOut" runat="server" Text="Sign out" class="w3-button w3-block w3-dark-grey" OnClick="btnSignOut_Click"/>
      <br>
  </div>

</form>

</body>
</html>
