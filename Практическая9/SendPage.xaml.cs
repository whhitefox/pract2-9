using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace Практическая9
{
    /// <summary>
    /// Логика взаимодействия для SendPage.xaml
    /// </summary>
    public partial class SendPage : Page
    {
        public SendPage(string to = "")
        {
            InitializeComponent();

            ToTextBox.Text = to;
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Navigation.GoBack();
        }

        private void SendButton_Click(object sender, RoutedEventArgs e)
        {
            if (ToTextBox.Text == "" || SubjectTextBox.Text == "")
            {
                return;
            }

            HtmlRtfConverter.ToHtml(new TextRange(MessageRtb.Document.ContentStart, MessageRtb.Document.ContentEnd));
            string html = File.ReadAllText("send.html");
            File.Delete("send.html");

            SendMessage(html);

            MessageBox.Show("Сообщение отправлено");

            Navigation.ChagePage(null);
        }

        private void SendMessage(string message)
        {
            var credentials = ImapHelper.GetCredentials();
            MailMessage m = new MailMessage(credentials.Email, ToTextBox.Text, SubjectTextBox.Text, message);
            m.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient(credentials.SmtpHost);
            smtp.Credentials = new NetworkCredential(credentials.Email, credentials.Pass);
            smtp.EnableSsl = true;
            smtp.Send(m);
        }
    }
}
