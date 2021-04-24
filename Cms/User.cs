using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace oragnic.Cms
{
    public class User
    {
        private string name;
        private string email;
        private string password;
        private string phone;
        private string add;

        public User()
        {

        }
        public string Name { get => name; set => name = value; }
        public string Password { get => password; set => password = value; }
        public string Email { get => email; set => email = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Add { get => add; set => add = value; }

    }
}