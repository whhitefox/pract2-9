   M S B A M L   `   `   `  ����T  PПрактическая9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Практическая9Практическая9  5      (    "Практическая9.SendPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:Практическая9     5        N� Title$  SendPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      $��5* �6   �� 5       � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5      .+�5   
   �� $��0��6   $��0��6   $��Кому��6-   $��Center=�6<   $��Center=�6Y   �� 5   
   -   5         ��Name$ 	ToTextBox��5      $��0��6%   $��1��62   $��Center=�6B   �� 5   
   $��1��6   $��0��6   $��Тема��6-   $��Center=�6<   $��Center=�6Y   �� 5   
   -   5        $ SubjectTextBox��5      $��1��6*   $��1��67   $��Center=�6G   c� 5   
   $��2��6   $��2��6   .@�5      �� $��ApplicationCommands.Cut��6   $	��✄��67   $��10q�6C   �� 5       $��ApplicationCommands.Copy��6   $
��📑��68   $��10q�6E   �� 5!      $��ApplicationCommands.Paste��6   $
��📋��69   $��10q�6F   �� 5"      $��2,2,2,2q�6   �� 5#      $��ApplicationCommands.Undo��6   $	��↶��68   $��10q�6D   �� 5$      $��ApplicationCommands.Redo��6   $	��↷��68   $��10q�6D   �� 5%      $��2,2,2,2q�6   �� 5&      $ ��EditingCommands.ToggleBold��6   $��B��6:   $��10q�6F   �� 5'      $"��EditingCommands.ToggleItalic��6   $��I��6<   $��10q�6H   �� 5(      $%��EditingCommands.ToggleUnderline��6   $��U��6?   $��10q�6K   �� 5)      $��2,2,2,2q�6   �� 5*      $&�� EditingCommands.IncreaseFontSize��6   $
��A↑��6@   $��10q�6M   �� 5+      $&�� EditingCommands.DecreaseFontSize��6   $
��A↓��6@   $��10q�6M   �� 5,      $��2,2,2,2q�6   �� 5-      $��EditingCommands.AlignLeft��6   $��AL��69   $��10q�6F   �� 5.      $!��EditingCommands.AlignCenter��6   $��AC��6;   $��10q�6H   �� 5/      $ ��EditingCommands.AlignRight��6   $��AR��6:   $��10q�6G   �� 50      $"��EditingCommands.AlignJustify��6   $��AJ��6<   $��10q�6I   �� 51      $��2,2,2,2q�6   �� 52      $)��#EditingCommands.IncreaseIndentation��6   $
��I↑��6C   $��10q�6P   �� 53      $)��#EditingCommands.DecreaseIndentation��6   $
��I↓��6C   $��10q�6P   54      �� 55   
   -   5         ��Name$ 
MessageRtb��55      $��3��6*   $��2��67    �� 
AcceptsTab$
 True��6K    � 	Resources 56       �� 
TargetType �� Property	 �� Value��%X   'J�       �� 57      " J�6   .�58      ��  �@��Margin$	 0q�6/   59      5:      5;      �� 5<   
   -   5        
 ��Name$
 
BackButton��5<      $��4��6%   $��0��62   $��Вернуться��6B   6V   �� 5=   
   -   5        $
 
SendButton��5=      $��4��6%   $��1��62   $��Отправить��6B   6V   5>      5?      