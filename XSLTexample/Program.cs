using System.Xml.Xsl;

namespace XSLTexample
{
    class Program
    {
        const string pathToResource = @"D:\projects\XSLTexample\resource\";

        static void Main(string[] args)
        {
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load($"{pathToResource}transform.xsl");

            xslt.Transform($"{pathToResource}books.xml", $"{pathToResource}books_result.html");
        }
    }
}
