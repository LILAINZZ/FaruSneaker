using FaruSneaker.Object;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FaruSneaker
{
    public partial class Mainpage : Form
    {
        public Mainpage()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void cButton1_MouseEnter(object sender, EventArgs e)
        {

        }

        private void cButton2_Click(object sender, EventArgs e)
        {

        }

        private void process1_Exited(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void cButton4_Click(object sender, EventArgs e)
        {
            customer cus = new customer();
            cus.ShowDialog();

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void panel6_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cButton6_Click(object sender, EventArgs e)
        {
            payment pay = new payment();
            pay.ShowDialog();
        }

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cButton5_Click(object sender, EventArgs e)
        {
            employee emp = new employee();
            emp.ShowDialog();
        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void splitContainer1_SplitterMoved(object sender, SplitterEventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cButton3_Click(object sender, EventArgs e)
        {
            products pro = new products();
            pro.ShowDialog();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cButton2_Click_1(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void cButton1_Click(object sender, EventArgs e)
        {

        }

        private void cButton8_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void richTextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {

        }

        private void panel8_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void cButton7_Click(object sender, EventArgs e)
        {

        }

        private void rjTextBox1__TextChanged(object sender, EventArgs e)
        {

        }

        private void Mainpage_Load(object sender, EventArgs e)
        {

        }

        private void btn_Service_Click(object sender, EventArgs e)
        {
            service svc = new service();
            svc.ShowDialog();
        }

        private void cButton5_Click_1(object sender, EventArgs e)
        {
            
        }

        private void btn_employ_Click(object sender, EventArgs e)
        {
            employee_co1.BringToFront();
        }

        private void btn_customer_Click(object sender, EventArgs e)
        {
            customer_co1.BringToFront();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            products_co1.BringToFront();
        }

        private void btn_ser_Click(object sender, EventArgs e)
        {
            service_co1.BringToFront();
        }

        private void btn_pay_Click(object sender, EventArgs e)
        {
            payment_co1.BringToFront();

        }

        private void btn_home_Click(object sender, EventArgs e)
        {

        }

        private void btn_ser_Click_1(object sender, EventArgs e)
        {
            service_co1.BringToFront();

        }

        private void payment_co1_Load(object sender, EventArgs e)
        {

        }

        private void btn_account_Click(object sender, EventArgs e)
        {
            account_co1.BringToFront();
        }
    }
}
