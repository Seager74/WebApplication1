using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class products : System.Web.UI.Page
    {

        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected IEnumerable<View> GetData()
        {

            var type = DropDownList1.SelectedValue;

            var row = (from line in data.View where line.title == type select line).ToArray();
            return row;
        }
    }
}