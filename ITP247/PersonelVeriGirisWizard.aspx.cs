using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP247
{
    public partial class PersonelVeriGirisWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            SqlDataSource1.InsertParameters["Pers_Adi"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Pers_Soyadi"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Pers_DTarihi"].DefaultValue = TextBox3.Text;
            SqlDataSource1.InsertParameters["Pers_Ise_Giris_Tarihi"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["Unvan_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource1.InsertParameters["Cinsiyet_ID"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlDataSource1.InsertParameters["Pers_Tel"].DefaultValue = TextBox5.Text;
            SqlDataSource1.InsertParameters["Pers_Cep"].DefaultValue = TextBox6.Text;
            SqlDataSource1.InsertParameters["Pers_Email"].DefaultValue = TextBox7.Text;
            SqlDataSource1.InsertParameters["Bolum_ID"].DefaultValue = DropDownList2.SelectedValue; ;
            SqlDataSource1.InsertParameters["Pers_Adresi"].DefaultValue = TextBox8.Text;
            SqlDataSource1.InsertParameters["Pers_Kenti"].DefaultValue = DropDownList3.SelectedValue;
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
                Label2.Text = "Yeni Personel Bilgisi: <b>" + TextBox2.Text + "</b><p>Başarı ile Eklendi";
                Label2.Visible = true;
            }
            else
                Label2.Text = "Yeni Personel Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
                Label2.Visible = true;
        }


        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == Wizard1.WizardSteps.Count - 2)
            {
                Label1.Text = "<p>Adı: " + TextBox1.Text + "</p><p>Soyadı: " + TextBox2.Text + "</p><p>DTarihi: " + TextBox3.Text + "</p><p>Giriş Tarihi: " + TextBox4.Text
                    + "</p><p>Ünvanı: " + DropDownList1.SelectedItem + "</p><p>Tel: " + TextBox5.Text + "</p><p>Cep: " + TextBox6.Text + "</p><p>Email: " + TextBox7.Text + "</p><p>Bölümü: " + DropDownList2.SelectedItem;
                //+ "</p><p>Kuruluş Tarihi: " + Calendar1.SelectedDate.ToShortDateString()
            }
        }
    }
}