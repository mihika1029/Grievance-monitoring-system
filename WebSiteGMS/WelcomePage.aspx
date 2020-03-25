<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="WelcomePage" %>

<!DOCTYPE html>


    <html lang="en">
<head>
    <title>Disable Browser Back buttons</title>
    <script type="text/javascript" lang="javascript">

        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
     </script>
  
  <title>ITM Group Of Institutions</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
  }
  </style>
</head>
<body>

    <form id="form1" runat="server">

<div class="jumbotron text-center">
  <h1>ITM Group Of Institutions</h1> 
  <p>GRIEVANCE MONITORING SYSTEM</p> 
</div>
    <div class="container-fluid">
  
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>USER</h1>
        </div>
       
        <div class="panel-footer">
          
            <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Login" Width="171px" />
            <asp:Button ID="Button2" runat="server" Height="37px" OnClick="Button2_Click" Text="SignUp" Width="171px" />
          
        </div>
           
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>ADMIN</h1>
        </div>
        
        <div class="panel-footer">
           
            <asp:Button ID="Button3" runat="server" Height="37px" OnClick="Button3_Click" Text="Login" Width="171px" />
           
        </div>
        
      </div>
    </div>
   <div class="col-sm-4">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>ABOUT</h1>
        </div>
        <div class="panel-body">
          <p><strong>This software is designed to reduce paper work and save time.</strong></p>
          
        </div>
        <div class="panel-footer">
          
          <button class="btn btn-lg">Learn More</button>
        </div>
      </div>
    </div>
  </div>
</div>

    </form>
    
       

</body>
</html>
