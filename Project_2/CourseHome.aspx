<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseHome.aspx.cs" Inherits="Project_2.CourseHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <script type="text/javascript">
    

    </script>
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
            height: 21px;
        }
        #txtPhone {
            z-index: 1;
            left: 146px;
            top: 228px;
            position: absolute;
        }
        #Submit1 {
            z-index: 1;
            left: 38px;
            top: 405px;
            position: absolute;
        }
        #btnSubmit {
            z-index: 1;
            left: 32px;
            top: 399px;
            position: absolute;
        }
        #txtName0 {
            z-index: 1;
            left: 145px;
            top: 32px;
            position: absolute;
        }
        #txtName1 {
            z-index: 1;
            left: 145px;
            top: 32px;
            position: absolute;
        }
        #txtName2 {
            z-index: 1;
            left: 145px;
            top: 32px;
            position: absolute;
        }
        #txtName3 {
            z-index: 1;
            left: 145px;
            top: 32px;
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
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 31px; top: 81px; position: absolute" Text="StudentID"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 25px; top: 177px; position: absolute" Text="Address"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 30px; top: 230px; position: absolute; height: 3px; width: 1px" Text="Phone"></asp:Label>
        <asp:GridView ID="grdViewCourseRef" runat="server" style="z-index: 1; left: 354px; top: 86px; position: absolute; " AutoGenerateColumns="False" OnSelectedIndexChanged="grdViewCourseRef_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Select Course">
                    <ItemTemplate>
                        <asp:CheckBox ID="SelectCourse" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CRN" HeaderText="CRN" />
                <asp:BoundField DataField="DepartmentCode" HeaderText="Department Code" />
                <asp:BoundField DataField="CourseTitle" HeaderText="Course Title" SortExpression="CourseTitle" />
                <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                <asp:BoundField DataField="Time" HeaderText="Time" />
                <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
                <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
                <asp:BoundField DataField="TotalAvailableSeats" HeaderText="Available Seats" SortExpression="AvailableSeats" />
                <asp:TemplateField HeaderText="Course Delivery Method">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Traditional</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                            <asp:ListItem>Hybrid</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="txtPhone" runat="server" style="z-index: 1; left: 147px; top: 222px; position: absolute"></asp:TextBox>
        </p>
        <p>
            <asp:RadioButton ID="radButtonPart" runat="server" style="z-index: 1; left: 38px; top: 289px; position: absolute; height: 22px" Text="Part Time" GroupName="Attendance"/>
            <asp:RadioButton ID="radButtonFull" runat="server" style="z-index: 1; left: 161px; top: 290px; position: absolute; height: 22px" Text="Full Time" GroupName="Attendance"/>
            <asp:TextBox ID="txtStudentID" runat="server" style="z-index: 1; left: 152px; top: 80px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server" style="z-index: 1; left: 151px; top: 170px; position: absolute"></asp:TextBox>
        </p>
        <asp:DropDownList ID="ddlPayment" runat="server" style="z-index: 1; left: 34px; top: 341px; position: absolute">
            <asp:ListItem>Pay Now</asp:ListItem>
            <asp:ListItem>Pay Later</asp:ListItem>
            <asp:ListItem>Financial Aid</asp:ListItem>
        </asp:DropDownList>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <asp:Label ID="lblTest" runat="server" style="z-index: 1; left: 229px; top: 374px; position: absolute; width: 228px;"></asp:Label>
        <asp:GridView ID="grdViewOutput" runat="server" style="z-index: 1; left: 495px; top: 369px; position: absolute; height: 152px; width: 232px">
        </asp:GridView>
        <p>
            &nbsp;</p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Button" />
        <asp:TextBox ID="txtName" runat="server" style="z-index: 1; left: 152px; top: 32px; position: absolute"></asp:TextBox>
    </form>
    </body>
</html>
