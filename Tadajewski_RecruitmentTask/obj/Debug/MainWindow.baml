   M S B A M L   `   `   `  ����U  QTadajewski_RecruitmentTask, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Tadajewski_RecruitmentTaskTadajewski_RecruitmentTask  5   	   +    %Tadajewski_RecruitmentTask.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:Tadajewski_RecruitmentTask     5   	     � Title$  Expontation��5   	   $	��700��6   $
��1000��6-   $	��700��6=   $
��1000��6J    � WindowStartupLocation$ CenterScreen=�5	   	    � WindowState$ Normal=�5
   	   ��5      �� 5   
    �� ImageSource$( "ImageResources/backgroundImage.jpg��6   .��5      � $��50 10 50 10q�6   
������� J� Opacity$
 0.88Q�69    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   �� .+�5      �� $��Recruitment task��6   $��48(�60    �� TextAlignment$ Center=�6>   $��Center=�6U   $��70��6p   �� 5      $��Exponentiation��6   $��30(�6.   $ Center=�6<   $��Center=�6S   $��70��6n   5      � 5"   
   $��1��6   $
��0 10q�6    � ColumnDefinitions 5#      �� 5$      $��* �6#   �� 5%      $��* �6#   .+�5*      � $��0��6   $��10q�6#   
������� 5+      �� 5,      $
��auto �6$   �� 5-      $
��1.5* �6$   �� 5.      $��3* �6$   �� 5/      $��2* �6$   .+�52      �� $��Enter parameters:��6   $��24(�65   $ Center=�6C   $��4q�6Z   � 55      $��1��6    56      �� 57      $��* �6+   �� 58      $��* �6+   .+�5=      �� $��Center=�6!   .+�5>      �� $
��Base��6$   $��20(�60   $��Center=�6>   �� 5?      -   5         ��Name$ Base_TextBox��5?   "   
�������$��24(�6r   $
��20 5q�6�   $��40��6�   	 �� TextAlignment$	 Center=�6�   5@      �� 5D      $��Center=�6!   $��1��6<   .+�5E      �� $��Exponent��6$   $��20(�64   $��Center=�6B   �� 5F      -   5        $ Exponent_TextBox��5F   #   
�������$��24(�6x   $
��20 5q�6�   $��40��6�   $	 Center=�6�   5G      5H      � 5K      $��2��6    5L      �� 5M      $
��auto �6(   �� 5N      $��* �6(   �� 5O      $��* �6(   �� 5P      $��* �6(   �� 5Q      $��* �6(   .+�5U      �� $%��Choose a method of expontation:��6!   
 � ToolTip$"
 The most standard algorithm.��6H   $��24(�6o   $ Center=�6}   $��4q�6�   $
��Wrap=�6�   $��Center=�6�   �� 5X       �� Orientation$ 
Horizontal=�6!   $��1��6:   .+�5Y      	� -   5         	�Name$ 
Method1_RB��5Y   &   $��1��6:   $��24(�6G   $��	15 3 15 3q�6U   $��Center=�6h    	� 	GroupName$ Methods��6�    d� 	IsChecked$
 TrueY�6�   6�   �� 5Z      -   5         ��Name$ Method1Description��5Z   $   $$��Standard expontation algorithm��6A   $��16(�6g   $ Center=�6u   $��4q�6�   6�   5[      �� 5^      $ 
Horizontal=�6!   $��2��6:   .+�5_      	� -   5        $ 
Method2_RB��5_   &   $��1��6:   $��24(�6G   $��	15 3 15 3q�6U   $��Center=�6h   $ Methods��6�   6�   �� 5`      -   5        $ Method2Description��5`   $   $)��#Right to left expontation algorithm��6@   $��16(�6k   $ Center=�6y   $��4q�6�   6�   5a      �� 5d      $ 
Horizontal=�6!   $��3��6:   .+�5e      	� -   5        $ 
Method3_RB��5e   &   $��1��6:   $��24(�6G   $��	15 3 15 3q�6U   $��Center=�6h   $ Methods��6�   6�   �� 5f      -   5        $ Method3Description��5f   $   $)��#Left to right expontation algorithm��6@   $��16(�6k   $ Center=�6y   $��4q�6�   6�   5g      �� 5j      $ 
Horizontal=�6!   $��4��6:   .+�5k      	� -	   5        $ 
Method4_RB��5k   &   $��1��6:   $��24(�6G   $��	15 3 15 3q�6U   $��Center=�6h   $ Methods��6�   6�   �� 5l      -
   5        $ Method4Description��5l   $   $-��'Montgomery Ladder expontation algorithm��6@   $��16(�6o   $ Center=�6}   $��4q�6�   $
��Wrap=�6�   6�   5m      5o      �� 5r      -   5         ��Name$ SolveButton��5r      
��� ���$��4��6Z   $��20q�6g   $��	Calculate��6s   $��32(�6�   5t      � 5w      $��1��6   
�������$��10q�66    5x      �� 5y      $
��auto �6$   �� 5z      $��* �6$   �� 5{      $
��auto �6$   �� 5|      $
��auto �6$   .+�5�      �� $-��'Method Description/Calculation history:��6   $��20(�6K   $ Center=�6Y   $��4q�6p   �� 5�      -   5        $ History_TextBox��5�      " �� VerticalScrollBarVisibility$ Visible=�63   $ �� HorizontalScrollBarVisibility$
 Auto=�6Y   $��1��6~    �� 
IsReadOnly . $��8q�6�   �� 5�      $��Result:��6   $��24(�6+   $ Center=�69   $��4q�6P   $��2��6[   �� 5�      -   5        $ Result_TextBox��5�      $��3��62    . $��8q�6Q   $��Center=�6]   $��16(�6x   $
 auto=�6�   $
 Auto=�6�   $��60��6�   $��0��6�   5�      5�      �� 5�   
   $��2��6   $��Made by Kamil Tadajewski��6!   $ Center=�6A   $��12(�6X   5�      5�      