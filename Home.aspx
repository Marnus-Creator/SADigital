<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SADigital.Home" %>

<!DOCTYPE html>
<html lang="en">
<title>SADigital</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>



<!-- Header -->
<header class="w3-display-container w3-content w3-center" style="max-width:1500px">
  <img class="w3-image" src="Untitled design.jpg" alt="Me" width="1200" height="1000">
  <div class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center">
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge">SADigital</h1>
    <h5 class="w3-hide-large" style="white-space:nowrap">SADigital</h5>
    <h3 class="w3-hide-medium w3-hide-small">Photo Sharing</h3>
  </div>

<!-- Login -->
  <div class="w3-light-grey w3-padding-large w3-padding-32 w3-margin-top" id="contact">
    <h3 class="w3-center">Login / Sign up</h3>
    <hr>
    <p class="w3-center">Please enter your datails below to Login.</p>
    <p class="w3-center">If you do not already have an account, please sign up.</p>
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>User name</label>
        <input class="w3-input w3-border" type="text" required name="Name">
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" required name="Email">
      </div>
      <button type="submit" class="w3-button w3-block w3-dark-grey">Sign up</button>
      <button type="submit" class="w3-button w3-block w3-dark-grey">Login</button>
    </form><br>
  </div>
  

</body>
</html>