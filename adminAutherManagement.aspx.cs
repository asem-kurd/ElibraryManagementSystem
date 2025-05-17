using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElibraryManagementSystem
{
  public partial class adminAutherManagement : System.Web.UI.Page
  {
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      GridView1.DataBind();
    }


    //fetch button click
    protected void Button1_Click(object sender, EventArgs e)
    {
      fetchAuther();
    }
    //add button click
    protected void Button2_Click(object sender, EventArgs e)
    {
      if (checkIfAutherExists())
      {
        Response.Write("<script>alert('Auther with this ID already exists, You cannot add another auther with the same ID');</script>");
      }
      else
      {
        addNewAuther();
      }
    }
    //update button click
    protected void Button3_Click(object sender, EventArgs e)
    {
      if (checkIfAutherExists())
      {
        updateAuther();
      }
      else
      {
        Response.Write("<script>alert('Auther dose not exist.');</script>");
      }
    }
    //delete button click
    protected void Button4_Click(object sender, EventArgs e)
    {
      if (checkIfAutherExists())
      {
        deleteAuther();
      }
      else
      {
        Response.Write("<script>alert('Auther dose not exist.');</script>");
      }
    }

    // user defined functions
    bool checkIfAutherExists()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count >= 1)
        {
          return true;
        }
        else
        {
          return false;
        }
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
        return false;
      }
    }
    void fetchAuther()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count >= 1)
        {
          TextBox2.Text = dt.Rows[0][1].ToString();
        }
        else
        {
          Response.Write("<script>alert('Invalid Auther ID');</script>");
        }
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");

      }
    }
    void addNewAuther()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl (author_id, author_name) values(@author_id, @author_name)", con);
        cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Auther added Successfully.');</script>");
        clearForm();
        GridView1.DataBind();
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
      }
    }

    void updateAuther()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("update author_master_tbl set author_name = @author_name WHERE author_id='" + TextBox1.Text.Trim() + "'", con);
        cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Auther updated Successfully.');</script>");
        clearForm();
        GridView1.DataBind();
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
      }

    }

    void deleteAuther()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Auther deleted Successfully.');</script>");
        clearForm();
        GridView1.DataBind();
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
      }
    }

    void clearForm()
    {
      TextBox1.Text = "";
      TextBox2.Text = "";
    }


  }
}