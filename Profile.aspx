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
    <asp:Button ID="btnMyPhotos" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos_Click" />
    <asp:Button ID="btnSharedPhotos" runat="server" Text="Shared Photos" class="w3-bar-item w3-button" OnClick="btnSharedPhotos_Click"/>
    <asp:Button ID="btnShare" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare_Click"/>
    <asp:Button ID="btnUpload" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload_Click"/>
 </div>
</header>

</div> 

<!-- Navbar (on small screens) -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
  <asp:Button ID="btnMyPhotos0" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos0_Click"/>
  <asp:Button ID="btnSharedPhotos0" runat="server" Text="Shared Photos" class="w3-bar-item w3-button" OnClick="btnSharedPhotos0_Click"/>
  <asp:Button ID="btnShare0" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare0_Click"/>
  <asp:Button ID="btnUpload2" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload2_Click"/>
  </div>
</div> 

<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
<!-- End page content -->
</div>

<!-- Sign out -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">Sign out</h3>
      <asp:Button ID="btnSignOut" runat="server" Text="Sign out" class="w3-button w3-block w3-dark-grey" OnClick="btnSignOut_Click"/>
      <br>
  </div>

</form>

</body>
</html>
