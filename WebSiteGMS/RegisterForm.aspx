<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">


       

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            

            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    <form id="Form1" class="form-valide" method="post" runat="server">
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Email 
                                            </label>
                                            <div class="col-lg-6">
                                                &nbsp;<asp:TextBox ID="email" ReadOnly="true" runat="server" Width="236px"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                           <label class="col-lg-4 col-form-label">Name 
                                            </label>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="name" ReadOnly="true" runat="server" Width="243px" ></asp:TextBox>
&nbsp;</div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Contact No. 
                                            </label>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="cn" ReadOnly="true" runat="server" Width="236px" ></asp:TextBox>
&nbsp;</div>
                                        </div>
                                        
                                        
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Grievance<span class="text-danger" >*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <asp:TextBox ID="suggestions" runat="server" TextMode="MultiLine" Height="131px" Width="598px" required></asp:TextBox>
&nbsp;<br />
                                                <br />
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                                                <br />
                                                <br />
                                                <br />
                                            </div>
                                        </div>
                                      
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                               
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &copy; Designed & Developed by <a href="http://itmgoi.in/">ITM Group Of Institutions</a> 2019</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
</asp:Content>

