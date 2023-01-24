using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace task1
{
    public partial class delete : System.Web.UI.Page
    {
        entityEntities1 obj = new entityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var customers = obj.Customers.ToList();
            var cities = obj.Cities.ToList();

            int id = Convert.ToInt32(Request.QueryString["id"]);
            Customer c = obj.Customers.Single(cc => cc.customerID == id);

            lblNa.Text = c.name;
            lblAge.Text = c.age.ToString();
            lblEmail.Text = c.email;
            lblPhone.Text = c.phone.ToString();
            lblCity.Text = c.city.ToString();
            Image1.ImageUrl=c.photo.ToString();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            Customer c = obj.Customers.Find(id);

            obj.Customers.Remove(c);
            obj.SaveChanges();
            Response.Redirect("show.aspx");
        }
    }
}