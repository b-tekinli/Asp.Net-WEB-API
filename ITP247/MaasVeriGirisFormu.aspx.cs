using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP247
{
    public partial class MaasVeriGirisFormu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Pers_Isim"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource2.InsertParameters["Maas_Odeme_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Maas_Komisyon"].DefaultValue = TextBox3.Text;


            
            int a = 2;

            if (a > 0)
            {
                Label1.Text = "Yeni Maaş Bilgisi: <b>" + DropDownList1.Text + "</b><p>Başarı ile Eklendi.";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Yeni Maaş Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz...";
                Label1.Visible = true;
            }
        }
    }
}