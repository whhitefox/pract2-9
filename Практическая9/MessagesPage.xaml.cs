using ImapX;
using ImapX.Collections;
using System;
using System.Collections.Generic;
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
    /// Логика взаимодействия для MessagesPage.xaml
    /// </summary>
    public partial class MessagesPage : Page
    {
        private MessageCollection messages;
        private string folder;
        public MessagesPage(string folder)
        {
            InitializeComponent();


            this.folder = folder;
            LoadMessages();
        }

        private async Task LoadMessages()
        {
            await Task.Run(() =>
            {
                messages = ImapHelper.GetMessagesForFolder(folder);
            });
            MessagesListBox.ItemsSource = messages;
            DownloadProgress.Visibility = Visibility.Hidden;
        }

        private void MessagesListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GoToMessage();
        }

        private void MessageMenuItem_Click(object sender, RoutedEventArgs e)
        {
            GoToMessage();
        }

        private void GoToMessage()
        {
            if (MessagesListBox.SelectedItem == null)
            {
                return;
            }

            var message = (MessagesListBox.SelectedItem as Message);
            Navigation.ChagePage(new MessageInfoPage(message));
        }

        private void AnswerMenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (MessagesListBox.SelectedItem == null)
            {
                return;
            }

            var message = (MessagesListBox.SelectedItem as Message);
            Navigation.ChagePage(new SendPage(message.From.Address));
        }
    }
}
