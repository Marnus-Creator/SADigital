<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPhotos.aspx.cs" Inherits="SADigital.MyPhotos" %>

<!DOCTYPE html>

<html lang="en">
<head>
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
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
    <asp:Button ID="btnSharedPhotos1" runat="server" Text="Shared Photos" class="w3-bar-item w3-button" OnClick="btnSharedPhotos1_Click"/>
    <asp:Button ID="btnShare1" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare1_Click"/>
    <asp:Button ID="btnUpload" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload_Click"/>
 </div>
</header>

<!-- Navbar (on small screens) -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
  <asp:Button ID="btnSharedPhotos2" runat="server" Text="Shared Photos" class="w3-bar-item w3-button" OnClick="btnSharedPhotos2_Click"/>
  <asp:Button ID="btnShare2" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare2_Click"/>
    <asp:Button ID="btnUpload2" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload2_Click"/>
  </div>
</div> 

<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
</div>

<!-- Sign out -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">My Photos</h3>
      <table style="width:100%;">
          <tr>
              <td class="auto-style1">
                  <asp:Image ID="Image1" runat="server" />
              </td>
              <td class="auto-style1">
                  <asp:Image ID="Image2" runat="server" />
              </td>
              <td class="auto-style1">
                  <asp:Image ID="Image3" runat="server" />
              </td>
          </tr>
          <tr>
              <td>
                  <asp:Image ID="Image6" runat="server" />
              </td>
              <td>
                  <asp:Image ID="Image4" runat="server" />
              </td>
              <td>
                  <asp:Image ID="Image5" runat="server" />
              </td>
          </tr>
          <tr>
              <td>
                  <asp:Image ID="Image7" runat="server" />
              </td>
              <td>
                  <asp:Image ID="Image8" runat="server" />
              </td>
              <td>
                  <asp:Image ID="Image9" runat="server" />
              </td>
          </tr>
      </table>
      <br>
  </div>

</form>

</body>
</html>