<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blank.aspx.cs" Inherits="Blank" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        
                        <h4>Your grievance has been submitted successfully.</h4>
                        <asp:Button ID="Button1" CssClass="btn login-form__btn submit w-100" runat="server" Text="Finish" OnClick="Finish"/>
                        
                     </div>
                   
                                    </div>
            </div>
    </div>
    </form>
</body>
</html>
