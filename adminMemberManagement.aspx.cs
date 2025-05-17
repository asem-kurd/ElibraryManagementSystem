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
  public partial class adminMemberManagement : System.Web.UI.Page
  {
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
      GridView1.DataBind();
    }
    // fetch button
    protected void Button1_Click(object sender, EventArgs e)
    {
      fetchMember();
    }
    // active button
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      updateMemberStatus("active");
    }
    // pending button
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
      updateMemberStatus("pending");
    }
    // rejected button
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
      if (checkMemberExists())
      {
        updateMemberStatus("rejected");
      }
      else
      {
        Response.Write("<script>alert('There is no member have this ID');</script>");
      }
    }
    // delete button
    protected void Button6_Click(object sender, EventArgs e)
    {
      if (checkMemberExists())
      {
        deleteMember();

      }
      else
      {
        Response.Write("<script>alert('There is no member have this ID');</script>");
      }

    }

    // user defined function
    void fetchMember()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
          while (dr.Read())
          {
            TextBox1.Text = dr.GetValue(8).ToString();
            TextBox2.Text = dr.GetValue(0).ToString();
            TextBox3.Text = dr.GetValue(10).ToString();
            TextBox7.Text = dr.GetValue(1).ToString();
            TextBox8.Text = dr.GetValue(2).ToString();
            TextBox9.Text = dr.GetValue(3).ToString();
            TextBox4.Text = dr.GetValue(4).ToString();
            TextBox5.Text = dr.GetValue(5).ToString();
            TextBox6.Text = dr.GetValue(6).ToString();
            TextBox10.Text = dr.GetValue(7).ToString();
          }
        }
        else
        {
          Response.Write("<script>alert('Invalid credentials');</script>");
        }
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
      }
    }

    void updateMemberStatus(string status)
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id='" + TextBox1.Text.Trim() + "'", con); // update query * from member_master_tbl where member_id='" + TextBox1.Text.Trim() + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Member Status Updated Successfully.');</script>");
        clearForm();
        GridView1.DataBind();
      }
      catch (Exception ex)
      {
        Response.Write("<script>alert('" + ex.Message + "');</script>");
      }
    }


    void deleteMember()
    {
      if (TextBox1.Text == "")
      {
        Response.Write("<script>alert('Please enter member ID.');</script>");
        return;
      }
      else
      {
        try
        {
          SqlConnection con = new SqlConnection(strcon);
          if (con.State == ConnectionState.Closed)
          {
            con.Open();
          }
          SqlCommand cmd = new SqlCommand("delete from member_master_tbl WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
          cmd.ExecuteNonQuery();
          con.Close();
          Response.Write("<script>alert('Member deleted Successfully.');</script>");
          clearForm();
          GridView1.DataBind();
        }
        catch (Exception ex)
        {
          Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
      }

    }

    bool checkMemberExists()
    {
      try
      {
        SqlConnection con = new SqlConnection(strcon);
        if (con.State == ConnectionState.Closed)
        {
          con.Open();
        }
        SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox9.Text.Trim() + "'", con);
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

    void clearForm()
    {
      TextBox1.Text = "";
      TextBox2.Text = "";
      TextBox3.Text = "";
      TextBox4.Text = "";
      TextBox6.Text = "";
      TextBox7.Text = "";
      TextBox8.Text = "";
      TextBox9.Text = "";
      TextBox10.Text = "";
    }

  }


}