using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace oragnic.Cms
{
    public class Post
    {
        private string urlImage;
        private string name;
        private string money;
        private string sale;
        private string blogId;
        private string fullBlogHTML;
        private string group;

        public string BlogID { get { return blogId; } set { blogId = value; } }
        public string UrlImage { get { return urlImage; } set { urlImage = value; } }
        public string Name { get { return name; } set { name = value; } }
        public string Money { get { return money; } set { money = value; } }
        public string Sale { get { return sale; } set { sale = value; } }
        public string Group { get { return group; } set { group = value; } }
        public string FullBlogHTML { get { return fullBlogHTML; } set { fullBlogHTML = value; } }



    }
}