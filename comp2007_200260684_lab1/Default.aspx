<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp2007_200260684_lab1.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="ltlConfirm" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblStudentName" runat="server">Student Name</asp:Label>
        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
        <asp:Literal ID="ltlConfirmName" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
        <asp:TextBox ID="txtPassword" TextMode="password" runat="server"></asp:TextBox>
        <asp:Literal ID="ltlConfirmPassword" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblAddress" runat="server">Full Address</asp:Label>
        <asp:TextBox ID="txtAddress" rows="3" TextMode="multiline" runat="server"></asp:TextBox>
        <asp:Literal ID="ltlConfirmAddress" runat="server"></asp:Literal>
        <br />
    </div>
    <div>
        <asp:Label ID="lblEducationLevel" runat="server" Text="Highest Education Level?"></asp:Label>
        <asp:RadioButtonList runat="server" ID="rblEducationLevel">
            <asp:ListItem Value="1" Text="High School"></asp:ListItem>
            <asp:ListItem Value="2" Text="College "></asp:ListItem>
            <asp:ListItem Value="3" Text="Graduate"></asp:ListItem>
            <asp:ListItem Value="4" Text="Other"></asp:ListItem>
        </asp:RadioButtonList>        
        <asp:Literal ID="ltlConfirmEducation" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblHaveLaptop" runat="server" Text="Yes, I have a laptop."></asp:Label>
        <asp:CheckBox ID="ckbHaveLaptop" runat="server" />
        <asp:Literal ID="ltlConfirmLaptop" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblSkills" runat="server" Text="Select your Skill(s)"></asp:Label>
        <asp:CheckBoxList ID="cblSkills" runat="server">
            <asp:ListItem Value="1" Text="HTML"></asp:ListItem>
            <asp:ListItem Value="2" Text="PHP"></asp:ListItem>
            <asp:ListItem Value="3" Text="CSS"></asp:ListItem>
            <asp:ListItem Value="4" Text="C#"></asp:ListItem>
            <asp:ListItem Value="5" Text="Java"></asp:ListItem>
        </asp:CheckBoxList>
        <asp:Literal ID="ltlConfirmSkills" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblProvince" runat="server" Text="Select your Province represented Province code"></asp:Label>
        <asp:DropDownList ID="ddlProvince" runat="server">
            <asp:ListItem Value="1" Text="AB"></asp:ListItem>
            <asp:listItem Value="2" Text="BC"></asp:listItem>
            <asp:ListItem Value="3" Text="ON"></asp:ListItem>
            <asp:ListItem Value="4" Text="QC"></asp:ListItem>
        </asp:DropDownList>
         <asp:Literal ID="ltlConfirmProvince" runat="server"></asp:Literal>
        <br />
        <asp:Button runat="server" ID="btbSubmit" Text="Submit" OnClick="btbSubmit_Click"/>
    </div>
    </form>
</body>
</html>
