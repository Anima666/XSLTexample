using System;
using System.Xml.Xsl;

namespace XSLTexample
{
    class Program
    {
        static void Main(string[] args)
        {

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load("transform.xsl");

            xslt.Transform("books.xml", "books.html");
        }
    }
}
