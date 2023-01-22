using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task1
{
    public partial class show : System.Web.UI.Page
    {
        entityEntities1 obj = new entityEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            var customers = obj.Customers.ToList();
            var cities = obj.Cities.ToList();

            var all = (from customer in customers join city in cities
                      on customer.city equals city.cityID
                      select new {
                        customer.name,
                        customer.age,
                        customer.phone,
                        customer.email,
                        customer.photo,
                          city.cityName

                      }).ToList();



            GridView1.DataSource= all;
            GridView1.DataBind();

            //users number
            lblNumber.Text = (from item in customers select item).Count().ToString();
            lblAge.Text = (from item in customers select item.age).Average().ToString();
            lblMax.Text = (from item in customers select item.age).Max().ToString();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            var cities = obj.Cities.ToList();
            var customers = obj.Customers.ToList();

            var query = from item in customers 
                        where item.name.Contains(name)
                        select item;


            var all = (from customer in query
                       join city in cities
                     on customer.city equals city.cityID
                       select new
                       {
                           customer.name,
                           customer.age,
                           customer.phone,
                           customer.email,
                           city.cityName
                          

                       }).ToList();


            GridView1.DataSource= all;
            GridView1.DataBind();
        }
    }
}