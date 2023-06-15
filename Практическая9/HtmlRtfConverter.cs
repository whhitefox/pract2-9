//Проверьте NuGet пакеты

using Spire.Doc;

//
using System.IO;
using System.Windows;
using System.Windows.Documents;

namespace Практическая9
{
    internal class HtmlRtfConverter
    {
        public static void ToRtf(string html)
        {
            File.WriteAllText("msg.html", html);
            var d = new Document("msg.html", FileFormat.Html);
            d.SaveToFile("msg.rtf", FileFormat.Rtf);
            d.Close();
            File.Delete("msg.html");
        }

        public static void ToHtml(TextRange rtf)
        {
            var fs = new FileStream("send.rtf", FileMode.Create);
            rtf.Save(fs, DataFormats.Rtf);
            fs.Close();
            var d = new Document("send.rtf", FileFormat.Rtf);
            d.SaveToFile("send.html", FileFormat.Html);
            d.Close();
            File.Delete("send.rtf");
        }
    }
}
