<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="SADigital.Share" %>

<!DOCTYPE html>

<html lang="en">
<head>
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        .auto-style1 {
            width: 360px;
        }
        .auto-style2 {
            height: 40px;
            width: 149px;
        }
        .auto-style3 {
            text-align: left;
            height: 40px;
        }
        .auto-style5 {
            text-align: left;
            height: 40px;
            width: 584px;
        }
        .auto-style6 {
            height: 40px;
            width: 260px;
        }
        .auto-style7 {
            text-align: left;
            height: 40px;
            width: 260px;
        }
        .auto-style8 {
            width: 360px;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
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
    <asp:Button ID="btnMyPhotos3" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos3_Click"/>
    <asp:Button ID="btnUpload" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload1_Click"/>
 </div>
</header>

<!-- Navbar (on small screens) -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
  <asp:Button ID="btnMyPhotos4" runat="server" Text="My Photos" class="w3-bar-item w3-button" OnClick="btnMyPhotos4_Click"/>
  <asp:Button ID="btnUpload2" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload2_Click"/>
  </div>
</div> 

<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
</div>

<!-- Sign out -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">Share</h3>
      <br>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Share WIth UserID: "></asp:Label>
&nbsp;<asp:TextBox ID="tbxShareWithID" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                &nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td class="auto-style9">
                  <asp:Label ID="lblErrorMsg" runat="server" Font-Size="X-Large" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
      <table style="width:100%;">
          <tr>
              <td class="auto-style2">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label1" runat="server" Text="Location: "></asp:Label>
              </td>
              <td class="auto-style6">
                  <asp:TextBox ID="tbxLocation" runat="server"></asp:TextBox>
              </td>
              <td class="auto-style3">
                  <asp:Label ID="lblError2" runat="server" Font-Size="X-Large" Text="Label" Visible="False"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style2">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label2" runat="server" Text="Tags: "></asp:Label>
              </td>
              <td class="auto-style7">
                  <asp:TextBox ID="tbxTags" runat="server"></asp:TextBox>
              </td>
              <td class="w3-left-align">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style2">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label3" runat="server" Text="Captured By: "></asp:Label>
              </td>
              <td class="auto-style7">
                  <asp:TextBox ID="tbxCapturedBy" runat="server"></asp:TextBox>
              </td>
              <td class="w3-left-align">&nbsp;</td>
          </tr>
      </table>
          <table style="width:100%;">
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style5">
                &nbsp;&nbsp;<asp:Button ID="btnShare" runat="server" OnClick="btnShare_Click" Text="Share" class="w3-bar-item w3-button" BorderColor="Black" BorderStyle="Solid" Height="40px"/>
&nbsp;</td>
                  <td class="auto-style5"></td>
                  <td class="auto-style5"></td>
              </tr>
              <tr>
                  <td class="auto-style11"></td>
                  <td class="auto-style11"></td>
                  <td class="auto-style11"></td>
              </tr>
          </table>
  </div>

</form>

</body>
</html>
