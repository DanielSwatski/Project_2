using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilities;
using System.Data;
using CollegeServiceLibrary;

namespace Project_2
{
    public partial class CourseHome : System.Web.UI.Page
    {
        private StudentRoster roster;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                displayCourseRef();
                if(roster != null)
                    lblTest.Text = roster.Student.Address1;
            }

            else
            {

            }
               


        }

        protected void displayCourseRef()
        {
            // Tests for Database to see if it functions
            DBConnect db = new DBConnect();

            DataSet recordSet;




            String sql = "SELECT * From Courses";

           // String sql = "INSERT INTO Courses (CRN, DepartmentCode, CourseTitle , Description, Days, Time, Semester, Professor, CreditHours, AdditionalFees, TotalAvailableSeats) VALUES (10101, 'CST', 'Computer Science I', 'fundamental of omputer science and programming.', 'Monday, Wednesday, Friday', '9:00 AM - 10:15 AM', 'Fall', 'Professor Computer', 3, 50, 25), (10102, 'MAT', 'Calculus I', 'basics of differential and integral calculus.', 'Tuesday, Thursday', '11:00 AM - 12:15 PM', 'Spring', 'Jane Doe', 4, 0, 20), (10103, 'ENL', 'Creative Writing', 'teaches students the basics of creative writing.', 'Monday, Wednesday', '1:00 PM - 2:15 PM', 'Summer', 'John Smith', 3, 35, 18), (10104, 'HST', 'World History I', 'the history of the world', 'Tuesday, Thursday', '3:00 PM - 4:15 PM', 'Fall', 'Jane Smith', 3, 0, 20), (10105, 'PSY', 'Introduction to Psychology', 'This course provides theories of psychology.', 'Monday, Wednesday, Friday', '10:30 AM - 11:45 AM', 'Spring', 'Bob Johnson', 3, 0, 25), (10106, 'BIO', 'Biology I', 'This course covers the basics of biology', 'Tuesday, Thursday', '2:00 PM - 3:15 PM', 'Summer', 'Professor Bio', 4, 60, 20); ";
            

            recordSet = db.GetDataSet(sql);

            grdViewCourseRef.DataSourceID = null;
            grdViewCourseRef.DataSource = recordSet;
            grdViewCourseRef.DataBind();

            // the above code will display all the information for a class
        }

        protected void grdViewCourseRef_SelectedIndexChanged(object sender, EventArgs e)
        {
            // not important
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // Change the checked box

            //lblTest.Text = grdViewCourseRef.SelectedRow.Cells[2].Text;

            // check to see if the student information is correct before doing anything here
            bool contin = true;
            String name = txtName.Text;
            String StudentID = txtStudentID.Text;
            String Phone = txtPhone.Text;
            String Address = txtAddress.Text;

            if(name.Equals("") || StudentID.Equals("") || Phone.Equals("") || Address.Equals(""))
            {
                contin = false;
                lblTest.Text = "YOU NEED TO INCLUDE EVERYTHING IN THE STUDENT ROSTER DETAILS!!!!!";
            }
            else
            {
                roster = new StudentRoster( new Student(StudentID, name, Address, Phone) );
                lblTest.Text = roster.toString();
            }


            if (contin)
            {
                // this is all you need to do you just need to check 
                foreach (GridViewRow row in grdViewCourseRef.Rows)
                {
                    // CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                    // if (chkRow.Checked)

                    CheckBox chkRow = (row.Cells[0].FindControl("SelectCourse") as CheckBox);

                    if (chkRow.Checked)
                    {
                        lblTest.Text = row.Cells[4].Text;

                        // add it to the courseref stuff from here

                    }
                    else
                    {
                        //lblTest.Text = "Unchcked";
                    }

                }
            }
            else
            {
                
            }

        }
    }
}