using EMS_DAL;
using EMS_DAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS_UI
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListDept.DataSource = DAL.GetDepartments();
                DropDownListDept.DataBind();

                DropDownListManager.DataSource = DAL.GetEmployeeIdAndName();
                DropDownListManager.DataBind();
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Employee employee = new Employee
            {
                Name = TextBoxName.Text,
                Email = TextBoxEmail.Text,
                Gender = RadioButtonList.SelectedItem.Text,
                DepartmentNo = Convert.ToInt32(DropDownListDept.SelectedItem.Value),
                DateOfBirth = Convert.ToDateTime(TextBoxDOB.Text),
                DateOfJoining = Convert.ToDateTime(TextBoxDOJ.Text),
                ReportingTo = Convert.ToInt32(DropDownListManager.SelectedItem.Value),
                Phone = Convert.ToInt32(TextBoxPhnNo.Text),
                JobTitle = DropDownListJobTitle.SelectedItem.Text,
                Salary = Convert.ToInt32(TextBoxSalary.Text),
                Commission = Convert.ToInt32(TextBoxComission.Text),
            };

            bool result = DAL.AddEmployee(employee);

            if (result)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Employee added Successfully');" +
                    "window.location='list.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this,GetType(), "showalert", "alert('Failed to add employee');", true);
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}