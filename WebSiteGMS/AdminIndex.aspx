<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminIndex.aspx.cs" Inherits="AdminIndex" %>

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

    <form id="form1" runat="server">
        <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" style="text-align: center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="90%" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="GID" HeaderText="GID" InsertVisible="False" ReadOnly="True" SortExpression="GID" />
                <asp:BoundField DataField="GRIEVANCE" HeaderText="GRIEVANCE" SortExpression="GRIEVANCE" />
                <asp:BoundField DataField="DATE_OF_GRIEVANCE" HeaderText="DATE_OF_GRIEVANCE" SortExpression="DATE_OF_GRIEVANCE" />
               

                <asp:TemplateField HeaderText="Ans">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="rep" CommandArgument='<%#Eval("gid") %>'>Reply</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db11ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [GMS_GRIEVANCE]"></asp:SqlDataSource>
            </div>
    </form>

</asp:Content>

