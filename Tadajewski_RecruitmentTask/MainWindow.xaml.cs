using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Tadajewski_RecruitmentTask
{
    //sources: A. Jakubski, R. Pelinski: Review of general expontentation algorithms
            //background Image: www.wallpaperup.com
    public partial class MainWindow : Window
    {
        Calculations calculationsObject = new Calculations();
        private int _actualMethod=1;

        public MainWindow()
        {
            InitializeComponent();
            GetMethodDescription();
        }

        //method, that trigger right algorithm
        private void SolveButton_Click(object sender, RoutedEventArgs e)
        {

            long exponent, expBase;
            if (!(Int64.TryParse(Exponent_TextBox.Text,out exponent)) || !(Int64.TryParse(Base_TextBox.Text, out expBase)))
            {
                MessageBox.Show("Enter correct values for the calculation.", "Wrong input");
                return;
            }

            string[] calculationResult = calculationsObject.GetResult(exponent, expBase,_actualMethod);
            Result_TextBox.Text = calculationResult[0];
            History_TextBox.Text = calculationResult[1];
        }

        //simple protection against entering letters; not perfect
        private void Exponent_TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            //its enable to input only numbers
            if ( !((int)e.Key >33 && (int)e.Key<44) && !((int)e.Key > 73 && (int)e.Key < 84))
            {
                e.Handled = true;
            }
        }        

        //this method is using for radiobuttons
        private void Method_RB_Checked(object sender, RoutedEventArgs e)
        {
            _actualMethod = GetTypeOfMethod();
            try
            {
                GetMethodDescription();
            }
            catch (Exception)
            {

            }
        }

        //this method allows click on the name of algorithm to get his description
        private void MethodDescription_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            string textBlockName = ((TextBlock)sender).Name;
            _actualMethod = Convert.ToInt32(textBlockName[6])-48;

            //clicking on the name of metho, switch to this method
            DependencyObject dependencyObject = Content as DependencyObject;
            RadioButton radioButton = LogicalTreeHelper.FindLogicalNode(dependencyObject, "Method"+_actualMethod+"_RB") as RadioButton;
            radioButton.IsChecked=true;

           // GetMethodDescription();
        }

        //return the method selected
        private int GetTypeOfMethod()
        {
            if (Method1_RB.IsChecked == true)
            {
                return 1;
            }
            else if (Method2_RB.IsChecked == true)
            {
                return 2;
            }
            else if (Method3_RB.IsChecked == true)
            {
                return 3;
            }
            else if (Method4_RB.IsChecked == true)
            {
                return 4;
            }
            return 0;
        }

        //hard coded definitions for each method
        private void GetMethodDescription()
        {
            if (_actualMethod == 1)
            {
                History_TextBox.Text = "Its easiest way to calculate g^e expontation.\n Its perform e-1 operations toget result.\n Also, this method is called naive method.";
            }
            else if (_actualMethod == 2)
            {
                History_TextBox.Text = "The number of operations in the algorithm of the previous section can be significantly reduced.\nIn this and the next section we will present the algorithms described in iterature as the binary exponentiation algorithm,\n iterated algorithm for raising to the square or the algorithm of fast exponentiation[1 + 3].\nIn this algorithm, the value of A (partial results of exponentiation)\n is raised to the square in each course of loop, ie.t + 1 times.\nIn each execution of loop the algorithm checks the next bit value,\n if this value is equal to 1, we assign multiplying A and g to result A.";
            }
            else if (_actualMethod == 3)
            {
                History_TextBox.Text = "This algorithm, though it differs from the Left-to-Right algorithm, works very similarly.\nThe main difference lies in the use of binary exponent e.\nThe exponent bits equal to 1 in this case are checked\n from the least significant bit to the most significant one, so, from right to left.";
            }
            else if (_actualMethod == 4)
            {
                History_TextBox.Text = "The Montgomery Ladder is an interesting modification of the left-to-right algorithm.\nJust as in that algorithm, the Montgomery Ladder uses the binary representation of exponent e as well.\nThe working of the Montgomery Ladder and the left - to - right algorithm,\n is related to reading the subsequent bits of the exponent,\nfrom the most to the least significant bit.";
            }

            Result_TextBox.Text = "0";
        }


    }
}
