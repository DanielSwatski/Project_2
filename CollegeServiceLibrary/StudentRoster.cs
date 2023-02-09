using Project_2;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CollegeServiceLibrary
{
    public class StudentRoster
    {

        private Student student;
        private List<Course> courseList;

        // getters and setters
        public Student Student { get => student; set => student = value; }
        public List<Course> CourseList { get => courseList; set => courseList = value; }

        public StudentRoster(Student Student)
        {
            this.student = Student;
        }

        public String toString()
        {
            return "To string for StudentRoster";
        }
    }
}
