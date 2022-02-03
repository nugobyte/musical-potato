//using Pwr;
using System;
using static System.Console;

class Pwr
{
  static void Main()
  {
    int bs,max;
    float i,j,temp; 
    bool flag = new bool();
    {
      Write("Enter base number to identify the powers associated with it: ");
        bs = int.Parse(ReadLine());
      Write("Enter the max for the range of numbers starting from zero: ");
        max = int.Parse(ReadLine());
    }

    for (i = 0; i <= max; i++)
    {
      temp = i;
      for (j = 0; j < i; j++)
      {
        temp /= bs;
        flag = (temp == 1.0f) ? true : false;
        if (flag == true) break;
      }
      Write( (flag) ? ($"{i} is a power of {bs}.\n") : String.Empty);
    }
  }
}
