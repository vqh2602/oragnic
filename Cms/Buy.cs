using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace oragnic.Cms
{
    public class Buy
    {
        private string email;
        private string masp;
        private int  sl;
        private string tensp;
        private string imgsp;
        private string gia;
        private int id;
        public Buy()
        {

        }
        public string Masp { get => masp; set => masp = value; }
        public string Email { get => email; set => email = value; }
        public int Sl { get => sl; set => sl = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Imgsp { get => imgsp; set => imgsp = value; }
        public string Gia { get => gia; set => gia = value; }

        public int Id { get => id; set => id = value; }

    }
}