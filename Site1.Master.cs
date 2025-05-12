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

        protected void  LinkButton10_Click(object sender, EventArgs e)
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

        
    }
}
