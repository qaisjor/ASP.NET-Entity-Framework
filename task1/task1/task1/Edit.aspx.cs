using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1
{
    public partial class Edit : System.Web.UI.Page
    {
        entityEntities1 obj = new entityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var customers = obj.Customers.ToList();
                var cities = obj.Cities.ToList();

                ddlCity.DataSource = cities;
                ddlCity.DataTextField = "cityName";
                ddlCity.DataValueField = "cityID";
                ddlCity.DataBind();

                int ?id = null;

                try
                {
                     id = Convert.ToInt32(Request.QueryString["id"]);
                }
                catch {
                    Response.Redirect("errorpage.aspx");
                }
                
                if (obj.Customers.Find(id) == null)
                {
                    Response.Redirect("show.aspx");
                }
                Customer c = obj.Customers.Single(cc => cc.customerID == id);

                txtName.Text = c.name;
                txtAge.Text = c.age.ToString();
                txtEmail.Text = c.email;
                txtPhone.Text = c.phone.ToString();
                Image1.ImageUrl = c.photo.ToString();

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            int age = Convert.ToInt32(txtAge.Text);
            int cityID = Convert.ToInt32(ddlCity.SelectedValue.ToString());
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string photo = "";

            int id = Convert.ToInt32(Request.QueryString["id"]);
           
            
            Customer c = obj.Customers.Single(cc => cc.customerID == id);
            if (FileUpload1.HasFile)
            {
                photo = "/pic/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("/pic/") + FileUpload1.FileName);
                c.photo = photo;
            }

           


            c.email = email;
            c.phone = phone;
            c.name = name;
            c.city = cityID;
            c.age = age;

            obj.Customers.AddOrUpdate(c);
            obj.SaveChanges();

            Response.Redirect("show.aspx");
        }
    }
}