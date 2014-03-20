using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public static class TemperatureConverter
    {
        public static int CelsiusToFahrenheit(int degreesC)
        {
            double fahrenheit;

            fahrenheit = (degreesC * 1.8) + 32;

            return (int)fahrenheit;
        }

        public static int FahrenheitToCelsius(int degreesF)
        {
            double celsius;

            celsius = (degreesF - 32) * 5 / 9;

            return (int)celsius;
        }
    }
}