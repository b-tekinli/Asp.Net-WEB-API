﻿using System;
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

            int s = 2;

            if (s > 0)
            {
                lbl1.Text = "Yeni Bölüm Verisi: <b>" + TextBox1.Text + "</b> <p> Başarı ile eklendi.";
                lbl1.Visible = true;
            }
            else
                lbl1.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi kontrol ettikten sonra tekrar deneyiniz.";
                lbl1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TextBox1.Visible = true;
            //TextBox2.Visible = true;
            //Label2.Visible = true;
            //Label3.visible = true;
            //Label4.visible = true;
            //Button1.visible = true;
            //Button3.visible = true;
            //Dropdownlist1.visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}