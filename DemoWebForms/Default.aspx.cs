using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductList();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=Ramanjaneya\SQLEXPRESS;Initial Catalog=WebForms;Integrated Security=True");
        protected void Insert(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cDate = DateTime.Parse(TextBox4.Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("execute Product_Insert_SP '" + productId + "','" + itemName + "','" + specification + "','" + unit + "','" + status + "','" + cDate.ToString("yyyy-MM-dd") + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted.');", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand cmd = new SqlCommand("execute ProductList_SP", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Update(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            string itemName = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cDate = DateTime.Parse(TextBox4.Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("execute Product_Update_SP '" + productId + "','" + itemName + "','" + specification + "','" + unit + "','" + status + "','" + cDate + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
            GetProductList();
        }

        protected void Delete(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("execute Product_Delete_SP '" + productId + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
            GetProductList();
        }

        protected void Search(object sender, EventArgs e)
        {
            int productId = int.Parse(TextBox1.Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("execute Product_Search_SP '" + productId + "'", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Load(object sender, EventArgs e)
        {
            GetProductList();
        }
    }
}