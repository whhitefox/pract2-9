   M S B A M L   `   `   `  ����T  PПрактическая9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Практическая9Практическая9  5      /    )Практическая9.MessageInfoPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:Практическая9     5        N� Title$  MessageInfoPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      $��5* �6   �� 5       � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5      .+�5   
   �� $��0��6   $��0��6   $��Кому��6-   �� 5   
   -   5         ��Name$ ToLabel��5      $��0��6!   $��1��6.   $�� ��6>   �� 5   
   $��1��6   $��0��6   $��От кого��6-   �� 5   
   -   5        $ 	FromLabel��5      $��1��6#   $��1��60   $�� ��6@   �� 5   
   $��2��6   $��0��6   $��Тема��6-   �� 5   
   -   5        $ SubjectLabel��5      $��2��6&   $��1��63   $�� ��6C   �� 5!   
   -   5         ��Name$ 
MessageRtb��5!      $��3��6*   $��2��67    � 	Resources 5"       �� 
TargetType �� Property �� Value��%X   'J�       �� 5#      " J�6   .�5$      ��  �@��Margin$ 0q�6/   5%      5&      5'      �� 5)   
   -   5        	 ��Name$	 
BackButton��5)      $��4��6%   $��0��62   $��Вернуться��6B   6V   �� 5*   
   -   5        $	 AnswerButton��5*      $��4��6'   $��1��64   $��Ответить��6D   6W   5+      5,      