   M S B A M L   `   `   `  ����T  PПрактическая9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Практическая9Практическая9  5   	   1    +Практическая9.AuthoriziedWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:Практическая9     5   	     � Title$  AuthoriziedWindow��5   	   $	��450��6#   $	��800��60   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $	��10* �6   �� 5       � ColumnDefinitions 5   
   �� 5      $��0.22* �6   �� 5      .+�5   
   �� $��0��6   $��0��6   $��
Почта��6-   $��Center=�6=   �� 5   
   -   5         ��Name$ FoldersListBox��5      $��1��6*   $��0��67    �� DisplayMemberPath$
 Name��6G   6`   �� 5   
   -   5         ��Name$ 
SendButton��5      $��2��6%   $��0��62   $��Написать��6B   6U    � 5   
   -   5          �Name$ 	PageFrame��5      $��1��6#   $��3��63     � NavigationUIVisibility$ Hidden=�6D   5      5      