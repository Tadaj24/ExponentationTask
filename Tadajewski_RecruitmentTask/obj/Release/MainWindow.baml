   M S B A M L   `   `   `  ���� U  QTadajewski_RecruitmentTask, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Tadajewski_RecruitmentTaskTadajewski_RecruitmentTask  +    %Tadajewski_RecruitmentTask.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     :local(clr-namespace:Tadajewski_RecruitmentTask       � Title$  Exponentation��$	��700��$
��1000��$	��700��$
��1000�� � WindowStartupLocation$ CenterScreen=� � WindowState$ Normal=�����  �� ImageSource$( "ImageResources/backgroundImage.jpg��.��� $��50 10 50 10q�
������� J� Opacity$
 0.88Q� � RowDefinitions �� $
��auto ��� $��* ��� $
��auto �.+��� .+��� $��Recruitment task��$��48(� �� TextAlignment$ Center=�$��Center=�$��70���� $��Exponentiation��$��30(�$ Center=�$��Center=�$��70��� $��1��$
��0 10q� � ColumnDefinitions �� $��* ��� $��* �.+�� $��0��$��10q�
������� �� $
��auto ��� $
��1.5* ��� $��3* ��� $��2* �.+��� $��Enter parameters:��$��24(�$ Center=�$��4q�� $��1�� �� $��* ��� $��* �.+��� $��Center=�.+��� $
��Base��$��20(�$��Center=��� -    ��Name$ Base_TextBox��
�������$��24(�$
��20 5q�$��40��	 �� TextAlignment$	 Center=��� $��Center=�$��1��.+��� $��Exponent��$��20(�$��Center=��� -   $ Exponent_TextBox��
�������$��24(�$
��20 5q�$��40��$	 Center=�� $��2�� �� $
��auto ��� $��* ��� $��* ��� $��* ��� $��* �.+��� $%��Choose a method of expontation:��
 � ToolTip$"
 The most standard algorithm.��$��24(�$ Center=�$��4q�$
��Wrap=�$��Center=���  �� Orientation$ 
Horizontal=�$��1��.+�	� -    	�Name$ 
Method1_RB��$��1��$��24(�$��	15 3 15 3q�$��Center=� 	� 	GroupName$ Methods�� d� 	IsChecked$
 TrueY��� -    ��Name$ Method1Description��$$��Standard expontation algorithm��$��16(�$ Center=�$��4q��� $ 
Horizontal=�$��2��.+�	� -   $ 
Method2_RB��$��1��$��24(�$��	15 3 15 3q�$��Center=�$ Methods���� -   $ Method2Description��$)��#Right to left expontation algorithm��$��16(�$ Center=�$��4q��� $ 
Horizontal=�$��3��.+�	� -   $ 
Method3_RB��$��1��$��24(�$��	15 3 15 3q�$��Center=�$ Methods���� -   $ Method3Description��$)��#Left to right expontation algorithm��$��16(�$ Center=�$��4q��� $ 
Horizontal=�$��4��.+�	� -	   $ 
Method4_RB��$��1��$��24(�$��	15 3 15 3q�$��Center=�$ Methods���� -
   $ Method4Description��$-��'Montgomery Ladder expontation algorithm��$��16(�$ Center=�$��4q�$
��Wrap=��� -    ��Name$ SolveButton��
��� ���$��4��$��20q�$��	Calculate��$��32(�� $��1��
�������$��10q� �� $
��auto ��� $��* ��� $
��auto ��� $
��auto �.+��� $-��'Method Description/Calculation history:��$��20(�$ Center=�$��4q��� -   $ History_TextBox��" �� VerticalScrollBarVisibility$ Visible=�$ �� HorizontalScrollBarVisibility$
 Auto=�$��1�� �� 
IsReadOnly . $��8q��� $��Result:��$��24(�$ Center=�$��4q�$��2���� -   $ Result_TextBox��$��3�� . $��8q�$��Center=�$��16(�$
 auto=�$
 Auto=�$��60��$��0���� $��2��$��Made by Kamil Tadajewski��$ Center=�$��12(�