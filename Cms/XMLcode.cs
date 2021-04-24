using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace oragnic.Cms
{
    public class XMLcode
    {
        public static List<Post> GetListBlogInXML(String path)
        {
            // Đọc file
            List<Post> list;
            XmlSerializer reader = new XmlSerializer(typeof(List<Post>));
            StreamReader file = new StreamReader(path);
            list = (List<Post>)reader.Deserialize(file);
            file.Close();
            return list;
        }

        //user
        public static List<User> getListMember(String path)
        {        
                List<User> list;
                // Đọc file
                XmlSerializer reader = new XmlSerializer(typeof(List<User>));
                StreamReader file = new StreamReader(path);
                list = (List<User>)reader.Deserialize(file);
                file.Close();
                return list;
            
        }

        // thêm khách hàng
        public static bool AddMemberToList(User member, String path)
        {
            bool test = false;
            List<User> list = getListMember(path);
            //List < User > list = new List<User>();
            foreach (User u in list)
            {
                if (u.Phone == member.Phone || u.Email == member.Email)
                {
                    test = true;
                    break;
                }
            }
            if (test == false)
            {
                list.Add(member);
                XmlSerializer writer = new XmlSerializer(typeof(List<User>));
                FileStream _file = File.Create(path);
                writer.Serialize(_file, list);
                _file.Close();
                return true;
            }
            return false;
        }


        //giỏ hàng
        public static List<Buy> GetListBuy(String path)
        {
            // Đọc file
            List<Buy> list;
            XmlSerializer reader = new XmlSerializer(typeof(List<Buy>));
            StreamReader file = new StreamReader(path);
            list = (List<Buy>)reader.Deserialize(file);
            file.Close();
            return list;
        }
        // thêm mua hàng
        public static bool AddBuy(Buy member, String path, String p)
        {
            bool test = false;
            List<Buy> list = GetListBuy(path);
            List<User> test1 = getListMember(p);
            List <Buy> buycheck = new List<Buy>();

            //foreach (User u in test1)
            //{   
            //    if (u.Email == member.Email)
            //    {
            //        test = true;
            //        break;
            //    }
            //}

            foreach(Buy b in list)
            {
                if (b.Email == member.Email)
                {
                    buycheck.Add(b);
                }
            }

            int i = 0;
          foreach(Buy c in buycheck)
          {
                if(c.Masp == member.Masp)
                {
                    i++;
                }
          }

            if (i == 0)
            {
                test = true;
            }
            
           
            if (test == true)
            {
                list.Add(member);
                XmlSerializer writer = new XmlSerializer(typeof(List<Buy>));
                FileStream _file = File.Create(path);
                writer.Serialize(_file, list);
                _file.Close();
                return true;
            }
            return false;
        }

        public static bool RemoveBuy(string masp,string email, String path)
        {
            bool test = false;
            List<Buy> list = GetListBuy(path);

            for(int i=0;i<list.Count-1;i++)
            {
                if (list[i].Email == email && list[i].Masp == masp)
                {
                    list.RemoveAt(i);
                    test = true;
                }
            }
            if(test == true) { return true; }
            else { return false; }

            
        }
    }
}