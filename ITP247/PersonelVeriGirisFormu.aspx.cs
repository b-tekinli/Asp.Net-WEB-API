using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP247
{
    public partial class PersonelVeriGirisFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Pers_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Pers_Soyadi"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["Pers_Ise_Giris_Tarihi"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["Unvan_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["Cinsiyet_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.InsertParameters["Pers_Cep"].DefaultValue = TextBox5.Text;
            SqlDataSource1.InsertParameters["Pers_Email"].DefaultValue = TextBox7.Text;
            SqlDataSource1.InsertParameters["Bolum_ID"].DefaultValue = DropDownList2.SelectedValue; ;
            SqlDataSource1.InsertParameters["Pers_Adresi"].DefaultValue = TextBox6.Text;
            SqlDataSource1.InsertParameters["Pers_Kenti"].DefaultValue = DropDownList5.SelectedValue;
            SqlDataSource1.InsertParameters["Pers_Ili"].DefaultValue = DropDownList4.SelectedValue;

            /*
            bool d = false;
            if (CheckBox1.Checked == true) 
            {
                d=True;
            }
            SqlDataSource1.InsertParameters["Pers_Aktif_Mi"].DefaultValue = d.ToString();
            */

            int s = SqlDataSource1.Insert();

            if (s > 0)
            {
                Label3.Text = "Yeni Personel Bilgisi: <b>" + TextBox8.Text + "</b><p>Başarı ile Eklendi";
                Label3.Visible = true;
            }
            else {
                Label3.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
                Label3.Visible = true;
            }
        }
    }
}