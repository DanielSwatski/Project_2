using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_2
{
    public class Course
    {
        // get getters and setters later
        private String CRN;
        private String DepartmentCode;
        private float CourseTitle;
        private String Descriptiion;
        private String Days;
        private String Time;
        private String Semester;
        private String Professor;
        private float CreditHours;
        private float AdditionalFees;
        private float TotalAvailableSeats;

        
        public string CRN1 { get => this.CRN; set => this.CRN = value; }
        public string DepartmentCode1 { get => DepartmentCode; set => DepartmentCode = value; }
        public float CourseTitle1 { get => CourseTitle; set => CourseTitle = value; }
        public string Descriptiion1 { get => Descriptiion; set => Descriptiion = value; }
        public string Days1 { get => Days; set => Days = value; }
        public string Time1 { get => Time; set => Time = value; }
        public string Semester1 { get => Semester; set => Semester = value; }
        public string Professor1 { get => Professor; set => Professor = value; }
        public float CreditHours1 { get => CreditHours; set => CreditHours = value; }
        public float AdditionalFees1 { get => AdditionalFees; set => AdditionalFees = value; }
        public float TotalAvailableSeats1 { get => TotalAvailableSeats; set => TotalAvailableSeats = value; }



        public Course(String CRN, String DepartmentCode, float CourseTitle, String Description, String Days, String Time, String Semester, float CreditHours, float AdditionalFees, float TotalAvailableSeats)
        {
            this.CRN = CRN;
            this.DepartmentCode = DepartmentCode;
            this.CourseTitle = CourseTitle;
            this.Descriptiion = Description;
            this.Days = Days;
            this.Time = Time;
            this.Semester = Semester;
            this.CreditHours = CreditHours;
            this.AdditionalFees = AdditionalFees;
            this.TotalAvailableSeats = TotalAvailableSeats;
        }

        // may need to takl about another constructor here but for now I can do well



        public String toString()
        {
            return "To string for Course";
        }





    }
}