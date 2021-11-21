<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="SADigital.Upload" %>

<!DOCTYPE html>

<html lang="en">
<head>
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        .auto-style3 {
            width: 500px;
            text-align: left;
        }
        .auto-style4 {
            width: 158px;
            text-align: left;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            width: 500px;
        }
        .auto-style7 {
            width: 500px;
            height: 52px;
        }
        .auto-style8 {
            height: 52px;
        }
        .auto-style9 {
            width: 238px;
        }
        .auto-style10 {
            height: 52px;
            width: 238px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
    </head>
<body>

<form id="form1" runat="server">

    <div class="w3-center">

    <!-- Header -->
<header class="w3-display-container w3-content w3-center" style="max-width:1500px">
  <img class="w3-image" src="Untitled design.jpg" alt="Me" width="1200" height="1000">                     <!-- Need to add profile picture -->
  <div class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center">
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge"><a href="Profile.aspx">My Profile</a></h1>
    <h5 class="w3-hide-large" style="white-space:nowrap"><a href="Profile.aspx">My Profile</a></h5>
  </div>
  </header>


<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
</div>

<!-- Sign out -->
  <div class="w3-center" id="contact">
    <h3 class="w3-center">My Photos</h3>
                <div class="w3-left-align">
                    <br />
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                &nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td class="auto-style10">
                  <asp:Label ID="lblErrorMsg" runat="server" Font-Size="X-Large" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
      </div>
      <table style="width:100%;">
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label1" runat="server" Text="Location: "></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="tbxLocation" runat="server"></asp:TextBox>
              </td>
              <td class="w3-left-align">
                  <asp:Label ID="lblError2" runat="server" Font-Size="X-Large" Text="Label" Visible="False"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label2" runat="server" Text="Tags: "></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="tbxTags" runat="server"></asp:TextBox>
              </td>
              <td class="w3-left-align">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;
                  <asp:Label ID="Label3" runat="server" Text="Captured By: "></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="tbxCapturedBy" runat="server"></asp:TextBox>
              </td>
              <td class="w3-left-align">&nbsp;</td>
          </tr>
      </table>
      <div class="w3-left-align">
          <table style="width:100%;">
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style5">
                &nbsp;&nbsp;
                <asp:Button ID="btnUpload2" runat="server" Text="Upload" class="w3-bar-item w3-button" OnClick="btnUpload2_Click" OnClientClick="btnUpload2_Click" BorderColor="Black" BorderStyle="Solid" Height="40px"/>
                  </td>
                  <td class="auto-style5"></td>
                  <td class="auto-style5"></td>
              </tr>
              <tr>
                  <td class="auto-style11"></td>
                  <td class="auto-style11"></td>
                  <td class="auto-style11"></td>
              </tr>
          </table>
          <br />
      </div>
  </div>

    </div>

</form>

</body>
</html>