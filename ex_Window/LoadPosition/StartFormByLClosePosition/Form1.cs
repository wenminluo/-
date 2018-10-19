using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;

namespace StartFormByLClosePosition
{
    public partial class Frm_Main : Form
    {

        public Frm_Main()
        {
            InitializeComponent();
      
        }



        private void Frm_Main_Load(object sender, EventArgs e)
        {
            //[1] 声明注册表对象
            RegistryKey myReg1, myReg2;

            //[2] 获取当前用户注册表项
            myReg1 = Registry.CurrentUser;

            try
            {
                //[3] 在注册表项中创建子项 
                myReg2 = myReg1.CreateSubKey("Software\\MySoft");

                //[4] 设置窗体的显示位置 
                this.Location = new Point(Convert.ToInt16(myReg2.GetValue("1"))
                                         , Convert.ToInt16(myReg2.GetValue("2")));
            }
            catch
            {

            }

        }

        private void Frm_Main_Close(object sender, FormClosedEventArgs e)
        {
            // 声明注册对象
            RegistryKey myReg1, myReg2;
            // 获取当前用户注册表项
            myReg1 = Registry.CurrentUser;
            // 在注册表项中创建子项
            myReg2 = myReg1.CreateSubKey("Software\\MySoft");
            try
            {
                myReg1.SetValue("1",this.Location.X.ToString());
                myReg2.SetValue("2", this.Location.Y.ToString());
            }
            catch
            {

            }

        }
    }
}
