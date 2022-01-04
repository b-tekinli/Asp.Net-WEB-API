using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP247
{
    public partial class BolumVeriGirisiFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Bolum_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Bolum_Tel"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Mudur_ID"].DefaultValue = DropDownList1.SelectedValue;

            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                lbl1.Text = "Yeni Bölüm Verisi: <b>" + TextBox1.Text + "</b> <p> Başarı ile eklendi.";
                lbl1.Visible = true;
            }
            else
            {
                lbl1.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi kontrol ettikten sonra tekrar deneyiniz.";
            }
            lbl1.Visible = true;
        }
    }
}