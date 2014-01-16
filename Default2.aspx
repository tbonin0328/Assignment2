<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        Confirm Your Information
    </h2>
    <table>
        <tr>
            <td>
                Last Name:
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revLastName" runat="server" ErrorMessage="You must enter last name." ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                First Name:
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Not a valid email." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>              
            </td>
        </tr>
        <tr>
            <td>
                Phone:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="revPassword" runat="server" ErrorMessage="Password is required." ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="revConfirm" runat="server" ErrorMessage="Password does not match." ControlToCompare="txtPassword" ControlToValidate="txtConfirm"></asp:CompareValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="You must confirm your password." ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
                
            </td>
                <td>
                <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                </td>
                <td>

                </td>
        </tr>

    </table>

</asp:Content>

