using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP247
{
    public partial class MaasVeriGirisFormu : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource3.InsertParameters["Pers_ID"].DefaultValue = DropDownList2.SelectedValue;
            SqlDataSource3.InsertParameters["Maas_Odeme_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Maas_Komisyon"].DefaultValue = TextBox3.Text;

            int a = SqlDataSource3.Insert();

            if (a > 0)
            {
                Label1.Text = "Yeni Maaş Verisi: <b>" + DropDownList2.SelectedItem + "</b><p>Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Yeni Maaş Kaydı Başarısız. Verilerinizi Kontrol Ettikten Sonra Tekrar Deneyiniz";
                Label1.Visible = true;
            }
        }
    }
}