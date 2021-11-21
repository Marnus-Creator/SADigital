<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPhotos.aspx.cs" Inherits="SADigital.MyPhotos" %>

<!DOCTYPE html>

<html lang="en">
<head>
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
    <asp:Button ID="btnShare1" runat="server" Text="Share" class="w3-bar-item w3-button" OnClick="btnShare1_Click"/>
    <asp:Button ID="btnUpload" runat="server" Text="Upload Photos" class="w3-bar-item w3-button" OnClick="btnUpload_Click"/>
 </div>
</header>

<!-- Navbar (on small screens) -->
<div class="w3-center w3-light-grey w3-padding-16 w3-hide-large w3-hide-medium">
<div class="w3-bar w3-light-grey">
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
      <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="Black" Text="Search Filename:"></asp:Label>
&nbsp;
      <asp:TextBox ID="tbxSearch" runat="server" Font-Size="X-Large" ForeColor="Black" Height="24px" Width="150px"></asp:TextBox>
      &nbsp;&nbsp;
      <asp:Button ID="btnSearch" runat="server" Font-Bold="True" Font-Size="Medium" Height="25px" OnClick="btnSearch_Click" Text="Search" Width="130px" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblSearchDetails" runat="server" Font-Size="Medium" ForeColor="Black" Height="24px" Text="(Search Photos by File Name)"></asp:Label>
      <br />
      <asp:GridView ID="GridView1" runat="server" class="w3-input w3-border">
          <Columns>
        <asp:BoundField DataField="FileName" HeaderText="Filename" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("PhotoData")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
      </asp:GridView>
      <br>
      <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" ForeColor="Black" Text="Search Location:"></asp:Label>
&nbsp;
      <asp:TextBox ID="tbxSearch2" runat="server" Font-Size="X-Large" ForeColor="Black" Height="24px" Width="150px"></asp:TextBox>
&nbsp;&nbsp;
      <asp:Button ID="btnSearch2" runat="server" Font-Bold="True" Font-Size="Medium" Height="25px" OnClick="btnSearch2_Click" Text="Search" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblSearchDetails0" runat="server" Font-Size="Medium" ForeColor="Black" Height="24px" Text="(Search Meta Data by Location)"></asp:Label>
      <asp:GridView ID="GridView2" runat="server" class="w3-input w3-border">
      </asp:GridView>
  </div>

</form>

</body>
</html>