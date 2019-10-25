using EMS_DAL;
using EMS_DAL.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS_UI
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListDept.DataSource = DAL.GetDepartments();
                DropDownListDept.DataBind();

                DropDownListManager.DataSource = DAL.GetEmployeeIdAndName();
                DropDownListManager.DataBind();
                DropDownListManager.Items.Add(new ListItem("--select--", "0"));
                DropDownListManager.SelectedValue = "0";
            }
        }

        protected void ButtonGetEmpData_Click(object sender, EventArgs e)
        {
            DataSet employee = DAL.GetEmployeeById(
                Convert.ToInt32(TextBoxEmpID.Text));

            //check
            if (employee.Tables[0].Rows.Count==0)
            {
                //employees not found
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Employee Doesnt Exist');", true);
            }
            else
            {
                TextBoxName.Text = employee.Tables[0].Rows[0]["Name"].ToString();
                TextBoxEmail.Text= employee.Tables[0].Rows[0]["Email"].ToString();
                RadioButtonList.SelectedValue= employee.Tables[0].Rows[0]["Gender"].ToString();
                DropDownListDept.SelectedValue= employee.Tables[0].Rows[0]["DepartmentNo"].ToString();
                TextBoxDOB.Text=Convert.ToDateTime(employee.Tables[0].Rows[0]["DateOfBirth"]).ToString("yyyy-MM-dd");
                TextBoxDOJ.Text=Convert.ToDateTime(employee.Tables[0].Rows[0]["DateOfJoining"]).ToString("yyyy-MM-dd");
                if(!string.IsNullOrEmpty(employee.Tables[0].Rows[0]["ReportingTo"].ToString()))
                {
                    DropDownListManager.SelectedValue = employee.Tables[0].Rows[0]["ReportingTo"].ToString();
                }   



                TextBoxPhnNo.Text= employee.Tables[0].Rows[0]["Phone"].ToString();
                DropDownListJobTitle.SelectedItem.Text=employee.Tables[0].Rows[0]["JobTitle"].ToString();
                TextBoxSalary.Text= string.Format("{0:0}",employee.Tables[0].Rows[0]["Salary"]);
                TextBoxComission.Text=string.Format("{0:0}",employee.Tables[0].Rows[0]["Commission"]);
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //update
            Employee employee = new Employee
            {
                Number = Convert.ToInt32(TextBoxEmpID.Text),
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

            bool result = DAL.UpdateEmployee(employee);

            if (result)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Employee Updated Successfully');" +
                    "window.location='list.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Failed to Update employee');", true);
            }
        }
    }
}