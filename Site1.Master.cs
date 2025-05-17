namespace ElibraryManagementSystem
{
    using System;

    /// <summary>
    /// Defines the <see cref="Site1" />
    /// </summary>
    public partial class Site1 : System.Web.UI.MasterPage
    {
        /// <summary>
        /// The Page_Load
        /// </summary>
        /// <param name="sender">The sender<see cref="object"/></param>
        /// <param name="e">The e<see cref="EventArgs"/></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; //login
                    LinkButton2.Visible = true; //signup
                    LinkButton3.Visible = false; //logout
                    LinkButton5.Visible = false; //hello
                    LinkButton7.Visible = true; //admin login
                    LinkButton8.Visible = false; //auther manegment
                    LinkButton9.Visible = false; //publisher manegement
                    LinkButton10.Visible = false; //book inventory
                    LinkButton11.Visible = false; //book issuing
                    LinkButton12.Visible = false;  //member management
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //login
                    LinkButton2.Visible = false; //signup
                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //hello
                    LinkButton5.Text = "Hello " + Session["name"].ToString(); //hello + name
                    LinkButton7.Visible = true; //admin login
                    LinkButton8.Visible = false; //auther manegment
                    LinkButton9.Visible = false; //publisher manegement
                    LinkButton10.Visible = false; //book inventory
                    LinkButton11.Visible = false; //book issuing
                    LinkButton12.Visible = false;  //member management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //login
                    LinkButton2.Visible = false; //signup
                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //hello
                    LinkButton5.Text = "Hello admin " + Session["name"].ToString(); //hello admin + name
                    LinkButton7.Visible = false; //admin login
                    LinkButton8.Visible = true; //auther manegment
                    LinkButton9.Visible = true; //publisher manegement
                    LinkButton10.Visible = true; //book inventory
                    LinkButton11.Visible = true; //book issuing
                    LinkButton12.Visible = true;  //member management
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAutherManagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPublisherManagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userSignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["id"] = "";
            Session["role"] = "";
            Session["name"] = "";
            Session["status"] = "";
            LinkButton1.Visible = true; //login
            LinkButton2.Visible = true; //signup
            LinkButton3.Visible = false; //logout
            LinkButton5.Visible = false; //hello
            LinkButton7.Visible = true; //admin login
            LinkButton8.Visible = false; //auther manegment
            LinkButton9.Visible = false; //publisher manegement
            LinkButton10.Visible = false; //book inventory
            LinkButton11.Visible = false; //book issuing
            LinkButton12.Visible = false;  //member management
            Response.Redirect("homePage.aspx");

        }
    }
}
