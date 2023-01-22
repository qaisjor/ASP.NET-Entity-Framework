using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1
{
    public partial class Admin : System.Web.UI.Page
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


                var all = (from customer in customers
                           join city in cities
                     on customer.city equals city.cityID
                           select new
                           {
                               customer.name,
                               customer.age,
                               customer.phone,
                               customer.email,
                               customer.photo,
                               city.cityName

                           }).ToList();

                GridView1.DataSource = all.ToList();
                GridView1.DataBind();
                //string table = "<table class='table table-striped'> <tr><th>name</th><th>age</th><th>phone</th><th>email</th><th>image</th><th>city name</th></tr>";

                //foreach (var c in all) {
                //    table += $"<tr><td>{c.name}</td><td>{c.age}</td><td>{c.phone}</td><td>{c.email}</td><td><img src='{c.photo}'></td><td>{c.cityName}</td></tr>"; 
                //}
                //table += "</table>";

                //lbltable.Text= table;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            int age = Convert.ToInt32(txtAge.Text);
            int cityID = Convert.ToInt32(ddlCity.SelectedValue.ToString());
            string phone = txtPhone.Text;
            string email = txtEmail.Text;
            string photo = "";
            if (FileUpload1.HasFile) {
                photo = "/pic/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("/pic/") + FileUpload1.FileName);
            }

            Customer c = new Customer();
            c.email = email;
            c.phone = phone;
            c.name = name;
            c.city= cityID;
            c.photo= photo;
            c.age = age;

            obj.Customers.Add(c);
            obj.SaveChanges();


            Response.Redirect("Admin.aspx");

        }
    }
}