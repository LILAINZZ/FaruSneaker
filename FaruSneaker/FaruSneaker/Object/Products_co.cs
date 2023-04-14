using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FaruSneaker.Object
{
    public partial class Products_co : UserControl
    {
        Product_logic pl = new Product_logic();

        public Products_co()
        {
            InitializeComponent();
        }
    }
}
