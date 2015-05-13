using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_200260684_lab1
{
    public partial class WebForm : System.Web.UI.Page
    {
        public int x; 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btbSubmit_Click(object sender, EventArgs e)
        {
            if (x == 0)
            {
                ltlConfirm.Text = "Confirm information, resubmit if is correct.";

                //copy values from textboxes into ltlConfirm
                ltlConfirmName.Text = txtStudentName.Text;
                ltlConfirmPassword.Text = txtPassword.Text;
                ltlConfirmAddress.Text = txtAddress.Text;

                //copy value selected in radiobox list
                if (rblEducationLevel.SelectedIndex > 0)
                {
                    ltlConfirmEducation.Text = rblEducationLevel.SelectedItem.Text;
                }

                //checkbox selection check
                if (ckbHaveLaptop.Checked)
                {
                    ltlConfirmLaptop.Text = "Yes, I have a laptop.";
                }
                else
                {
                    ltlConfirmLaptop.Text = "I do not own a laptop.";
                }

                //loop through the checkbox list and populate the literal confirm with selected items
                foreach (ListItem li in cblSkills.Items)
                {
                    if (li.Selected)
                    {
                        ltlConfirmSkills.Text += li.Text + " ";
                    }
                }

                //copy value of the province code selected
                ltlConfirmProvince.Text = ddlProvince.SelectedItem.Text;

                x++;
            }
            else
            {
                clearInformation();
                x = 0;
            }
        }

        private void clearInformation()
        {
            //clear information in textboxes
            txtStudentName.Text = " ";
            txtPassword.Text = " ";
            txtAddress.Text = " ";

            //clear radiobox from last selection
            rblEducationLevel.SelectedIndex = 0;

            //uncheck checkbox
            ckbHaveLaptop.Checked = false;

            //uncheck checkbox list
            foreach (ListItem li in cblSkills.Items)
            {
                li.Selected = false;
            }

            //place dropdownlist to first index
            ddlProvince.SelectedIndex = 1;
        }
    }
}