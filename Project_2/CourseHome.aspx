<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseHome.aspx.cs" Inherits="Project_2.CourseHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            z-index: 1;
            left: 143px;
            top: 30px;
            position: absolute;
        }
        #Text2 {
            z-index: 1;
            left: 137px;
            top: 172px;
            position: absolute;
        }
        #Text3 {
            z-index: 1;
            left: 144px;
            top: 75px;
            position: absolute;
        }
        #Text4 {
            z-index: 1;
            left: 143px;
            top: 126px;
            position: absolute;
        }
        #Text5 {
            z-index: 1;
            left: 137px;
            top: 226px;
            position: absolute;
        }
        #txtName {
            z-index: 1;
            left: 145px;
            top: 32px;
            position: absolute;
        }
        #txtStudentID {
            z-index: 1;
            left: 142px;
            top: 82px;
            position: absolute;
        }
        #txtEmail {
            z-index: 1;
            left: 141px;
            top: 132px;
            position: absolute;
        }
        #txtAddress {
            z-index: 1;
            left: 142px;
            top: 181px;
            position: absolute;
            height: 0px;
        }
        #txtPhone {
            z-index: 1;
            left: 146px;
            top: 228px;
            position: absolute;
        }
    </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 598px; width: 1475px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" style="z-index: 1; left: 33px; top: 27px; position: absolute" Text="Name"></asp:Label>
        </div>
        <asp:Label ID="lblCourseHomePage" runat="server" style="z-index: 1; left: 563px; top: 25px; position: absolute" Text="Course Home Page"></asp:Label>
        <asp:GridView ID="grdViewCourseRef" runat="server" style="z-index: 1; left: 670px; top: 123px; position: absolute; height: 249px; width: 386px" AutoGenerateColumns="False">
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 31px; top: 81px; position: absolute" Text="StudentID"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 34px; top: 127px; position: absolute; right: 1411px; height: 22px" Text="Email"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 25px; top: 177px; position: absolute" Text="Address"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 30px; top: 230px; position: absolute; height: 3px; width: 1px" Text="Phone"></asp:Label>
        <p>
            <input id="txtName" type="text" /></p>
        <p>
            &nbsp;</p>
        <input id="txtAddress" type="text" /><input id="txtStudentID" type="text" /><input id="txtEmail" type="text" /><input id="txtPhone" type="text" /><p>
            <asp:RadioButton ID="radButtonPart" runat="server" style="z-index: 1; left: 38px; top: 289px; position: absolute; height: 22px" Text="Part Time" />
            <asp:RadioButton ID="radButtonFull" runat="server" style="z-index: 1; left: 161px; top: 290px; position: absolute; height: 22px" Text="Full Time" />
        </p>
        <asp:DropDownList ID="ddlPayment" runat="server" style="z-index: 1; left: 34px; top: 341px; position: absolute">
            <asp:ListItem>Pay Now</asp:ListItem>
            <asp:ListItem>Pay Later</asp:ListItem>
            <asp:ListItem>Financial Aid</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
