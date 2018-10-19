using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SetLocation
{
    public partial class Frm_Main : Form
    {
        public Frm_Main()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Left = Convert.ToInt32( textBox1.Text );
            this.Top = Convert.ToInt32( textBox2.Text );
        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            this.Left = Convert.ToInt32(numericUpDown1.Value);
        }

        private void numericUpDown2_ValueChanged(object sender, EventArgs e)
        {
            this.Top = Convert.ToInt32( numericUpDown2.Value );
        }
    }
}
