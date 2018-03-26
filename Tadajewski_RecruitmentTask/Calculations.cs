using System;
using System.Numerics;

namespace Tadajewski_RecruitmentTask
{
    class Calculations //class make for the calculations
    {
        //method, that trigger right algorithmand simple check the inputs
        public string[] GetResult(long exponent, long expBase,int chosenMethod)
        {
            if (expBase==0 || expBase==1 || exponent==0)
            {
                return new string[] {"1","Expontation base is 0 or 1, or exponent i equal 0." };
            }
            else 
                switch(chosenMethod)
                {
                    case 1: return StandardAlgorithm(exponent, expBase);
                    case 2: return RightToLeftAlgorithm(exponent, expBase);
                    case 3: return LeftToRightAlgorithm(exponent, expBase);
                    case 4: return MontgomeryLadderAlgorithm(exponent, expBase);
                }
            return null;
        }

        //1 standard expontentation algorithm
        private string[] StandardAlgorithm(long exponent, long expBase)
        {
            //variables
            BigInteger result = 1;
            int iteration = 1;

            string history = "Input date: " + Environment.NewLine + "Base: " + expBase + "; Exponent: " + exponent + "." + Environment.NewLine + Environment.NewLine;
            
            for (var i = exponent; i > 0; i--)
            {
                result *= expBase;
                history += "Iteration " + iteration + ": Current value: " + result + Environment.NewLine;
                iteration++;
            }
            history += "\nCalculations complete! Result is below this textbox.";
            return new string[] { Convert.ToString(result), history };
        }

        //2 rigth-to-left expontentiation algorithm
        private string[] RightToLeftAlgorithm(long exponent, long expBase)
        {            
            //variables
            BigInteger result = 1, actualExpBase = expBase;
            int iteration = 1;

            string binaryExponentValue = Convert.ToString(exponent, 2);

            string history = "Input date: " + Environment.NewLine + "Base: " + actualExpBase + "; Exponent: " + exponent + "." + Environment.NewLine + Environment.NewLine;
            history += "Exponent " + exponent + " in binary is " + binaryExponentValue + "\n\n";

            //algorithm
            for (int i = binaryExponentValue.Length - 1; i >= 0; i--)
            {
                if (binaryExponentValue[i] == '1')
                {
                    result *= actualExpBase;
                }
                actualExpBase *= actualExpBase;
                history += "Iteration " + iteration + ", Current base value: "+actualExpBase+", Current result value: " + result + Environment.NewLine;
                iteration++;
            }

            history += "\n\nCalculations complete! Result is below this textbox.";
            

            return new string[] { Convert.ToString(result), history };
        }

        //3 left-to-right expontentation algorith
        private string[] LeftToRightAlgorithm(long exponent, long expBase)
        {
            //variables
            BigInteger result = 1;
            int iteration = 1;

            string binaryExponentValue = Convert.ToString(exponent, 2);

            string history = "Input date: " + Environment.NewLine + "Base: " + expBase + "; Exponent: " + exponent + "." + Environment.NewLine + Environment.NewLine;
            history += "Exponent " + exponent + " in binary is " + binaryExponentValue + "\n\n";

            //algorithm
            for (int i = 0; i < binaryExponentValue.Length; i++)
            {
                result *= result;
                if (binaryExponentValue[i]=='1')
                {
                    result *= expBase;
                }
                history += "Iteration " + iteration + ": Current result value: " + result + Environment.NewLine;
                iteration++;
            }

            history += "\n\nCalculations complete! Result is below this textbox.";


            return new string[] { Convert.ToString(result), history };
        }        

        //4 Montgomery Ladder algorithm
        private string[] MontgomeryLadderAlgorithm(long exponent, long expBase)
        {
            //variables
            int iteration = 1;
            BigInteger x1 = expBase, x2 = expBase * expBase;

            string binaryExponentValue = Convert.ToString(exponent, 2); //conversion to binary value

            string history = "Input date: " + Environment.NewLine + "Base: " + expBase + "; Exponent: " + exponent + "." + Environment.NewLine + Environment.NewLine;
            history += "Exponent " + exponent + " in binary is " + binaryExponentValue + "\n\n";

            //algorithm
            for (int i = 1; i < binaryExponentValue.Length; i++)
            {
                if (binaryExponentValue[i] == '0')
                {
                    x2 = x1 * x2;
                    x1 *= x1;
                }
                else
                {
                    x1 = x1 * x2;
                    x2 *= x2;
                }
                history += "Iteration " + iteration + ": Current x1 value: " + x1 + ": Current  x2 value: " + x2 + Environment.NewLine;
                iteration++;
            }

            history += "\n\nCalculations complete! Result is below this textbox.";
            return new string[] { Convert.ToString(x1), history };
        }        
    }
}
