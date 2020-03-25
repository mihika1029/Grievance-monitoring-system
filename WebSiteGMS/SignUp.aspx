<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  }

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>



  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
    <h2> USER</h2>
   <h2>  Login Form:</h2>
    <p>Please fill in this form to create an account.</p>
    <hr>
       <label for="name"><b>Name</b></label>
      <br />
      <asp:TextBox ID="name" runat="server" Width="343px" required></asp:TextBox>
      <label for="email"><b>
        <br />
        Email</b></label>
      <br />
      <asp:TextBox ID="email" runat="server" Width="335px" required></asp:TextBox>
      <br />
      <label for="psw"><b>Password</b></label>
      <br />
      <asp:TextBox ID="pwd" runat="server" required Width="331px"></asp:TextBox>
      <br />
&nbsp;<label for="address"><b>Address<br />
      <asp:TextBox ID="addr" runat="server" Width="374px"></asp:TextBox>
      <br />
      </b></label>&nbsp;<label for="number"><b>Contact number</b></label>
      <label>
        <br />
      &nbsp;<asp:TextBox ID="cn" runat="server" Width="373px" required></asp:TextBox>
      <br />
&nbsp;<input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me</label><p>By creating an account you agree to our Terms & Privacy</a>.</p>
        <p>&nbsp;</p>

    <div class="clearfix">
        
     
        </button>
        <asp:Button ID="Button2" runat="server" CssClass="signupbtn" OnClick="Button2_Click" Text="Submit" Height="55px" Width="270px" />
        
     
    </div>
  </div>
    </div>
    </form>
</body>
</html>
