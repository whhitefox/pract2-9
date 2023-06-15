using ImapX;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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

namespace Практическая9
{
    /// <summary>
    /// Логика взаимодействия для MessageInfoPage.xaml
    /// </summary>
    public partial class MessageInfoPage : Page
    {
        private Message message;
        public MessageInfoPage(Message message)
        {
            InitializeComponent();

            this.message = message;
            ToLabel.Content = message.To[0].Address;
            FromLabel.Content = message.From.Address;
            SubjectLabel.Content = message.Subject;
            LoadMessage();
        }

        public void LoadMessage()
        {
            HtmlRtfConverter.ToRtf(message.Body.Html);
            var text = new TextRange(MessageRtb.Document.ContentStart, MessageRtb.Document.ContentEnd);
            FileStream fs = new FileStream("msg.rtf", FileMode.Open);
            text.Load(fs, DataFormats.Rtf);
            fs.Close();
            File.Delete("msg.rtf");
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Navigation.GoBack();
        }

        private void AnswerButton_Click(object sender, RoutedEventArgs e)
        {
            Navigation.ChagePage(new SendPage(message.From.Address));
        }
    }
}
