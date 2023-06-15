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
using System.Windows.Shapes;

namespace Практическая9
{
    /// <summary>
    /// Логика взаимодействия для AuthoriziedWindow.xaml
    /// </summary>
    public partial class AuthoriziedWindow : Window
    {
        private CommonFolderCollection folders = ImapHelper.GetFolders();

        public AuthoriziedWindow()
        {
            InitializeComponent();

            FoldersListBox.ItemsSource = folders;
            Navigation.frame = PageFrame;
        }

        private void FoldersListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FoldersListBox.SelectedItem == null)
            {
                return;
            }

            string folder = (FoldersListBox.SelectedItem as Folder).Name;
            Navigation.ChagePage(new MessagesPage(folder));
        }

        private void SendButton_Click(object sender, RoutedEventArgs e)
        {
            Navigation.ChagePage(new SendPage());
        }
    }
}
