using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilities;
using System.Data;

namespace Project_2
{
    public partial class CourseHome : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            // Tests for Database to see if it functions
            DBConnect db = new DBConnect();

            DataSet recordSet;

            String sql = "SELECT * From Courses";

            recordSet = db.GetDataSet(sql);

            grdViewCourseRef.DataSourceID = null;
            grdViewCourseRef.DataSource = recordSet;
            grdViewCourseRef.DataBind();





        }
    }
}