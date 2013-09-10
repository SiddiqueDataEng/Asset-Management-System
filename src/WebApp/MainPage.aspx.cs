using System;
using System.Data;

namespace WebApp
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }
        
        private void LoadData()
        {
            // TODO: Load data from database
            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("Name");
            dt.Columns.Add("Date");
            gvResults.DataSource = dt;
            gvResults.DataBind();
        }
    }
}
