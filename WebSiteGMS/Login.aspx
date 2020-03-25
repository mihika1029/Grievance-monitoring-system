<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><meta name="viewport"content="width=device=width,initial scale=1" />
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
    <style>
        body{font-family: Arial,Helvetica, sans-serif;}
        form{border: 3px solid #f1f1f1;}
        input[type=text], input[type=password] {
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
        button {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
  width: 18%;
}
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
  width: 40%;
  border-radius: 50%;
}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}

 </style>
    </head>

</html>

<body>
   <h2> USER</h2>
   <h2> Login Form:</h2>
    <form id="form1" runat="server">
 

  <div class="container">
    <label for="uname"><b>Username</b></label>
      <br />
      <asp:TextBox ID="email" runat="server" Width="227px"></asp:TextBox>
      <br />

      <label for="psw"><b>&nbsp;Password<br />
      </b></label>&nbsp;<asp:TextBox ID="pwd" runat="server" OnTextChanged="pwd_TextChanged" Width="221px"></asp:TextBox>

      <br />

   <button class="btn login-form__btn submit w-100">
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" style="margin-left: 0px;" Width="161px" />
      </button>
                                
    <p class="mt-5 login-form__footer">Dont have account? <a href="SignUp.aspx" class="text-primary">Sign Up</a> now</p>
    <label>
      <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Remember Me" />
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <button type="button" class="cancelbtn">
          <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
      </button>
      <span class="psw">Forgot password?</span>
  </div>
    </form>

</body>
</html>
