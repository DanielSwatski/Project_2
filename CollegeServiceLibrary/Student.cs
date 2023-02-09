using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_2
{
    public class Student
    {
        private String StudentID;
        private String Name;
        private String Address;
        private String Phone;

        public string StudentID1 { get => StudentID; set => StudentID = value; }
        public string Name1 { get => Name; set => Name = value; }
        public string Address1 { get => Address; set => Address = value; }
        public string Phone1 { get => Phone; set => Phone = value; }

        // Main Constructor for it
        public Student(String StudentID, String Name, String Address, String Phone)
        {
            this.StudentID = StudentID;
            this.Name = Name;
            this.Address = Address;
            this.Phone = Phone;
        }

        public String toString()
        {
            return "To string for Student";
        }

    }
}