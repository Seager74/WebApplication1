using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            //Стоимость метра 
            var price_metr = 1000;
            //Вычисление площади
            double s = Convert.ToDouble(TextBox1.Text) * Convert.ToDouble(TextBox2.Text);
            //Цена выбранного профиля
            var profile = Convert.ToDouble(DropDownList1.SelectedValue);
            //Цена выбранного управления
            var pow = Convert.ToDouble(DropDownList2.SelectedValue);
            //Цена выбранной доставки
            var delivery = Convert.ToDouble(RadioButtonList1.SelectedValue);
            //расчет цены
            double price = s * price_metr + profile + pow + delivery;
            //Вывод на экран стоимости
            Label1.Text = price.ToString() + " Рублей";
        }
    }
}