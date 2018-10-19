using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hellowordcs
{

    // 抽象类测试
    abstract class Shape
    {
        public abstract int area();
    }
    class Rectangle1 : Shape
    {
        private int length;
        private int width;
        public Rectangle1(int a = 0, int b = 0)
        {
            length = a;
            width = b;
        }
        public override int area()
        {
            Console.WriteLine("Rectangle 类的面积：");
            return (width * length);
        }
    }

    //

    class Rectangle
    {
        //成员变量
        internal double length;
        internal double width;

        double GetArea()
        {
            return length * width;
        }

        public void Display()
        {
            Console.WriteLine("长度： {0}", length);
            Console.WriteLine("宽度： {0}", width);
            Console.WriteLine("面积： {0}", GetArea());
        }
    }//end class Rectangle    


    class Program
    {

        static public void MyFunc( int ArgA, int ArgB, int ArgC )
        {
            Console.WriteLine("ArgA:{0},ArgB:{1},ArgC:{2}", ArgA, ArgB, ArgC);
        }

        public void swap(ref int x, ref int y)
        {
            int temp;

            temp = x; /* 保存 x 的值 */
            x = y;    /* 把 y 赋值给 x */
            y = temp; /* 把 temp 赋值给 y */
        }


       static private void FinallyTest()
        {
            try
            {
                int a = 20 / int.Parse("0");
                Console.WriteLine("计算结果为",a);
            }
            catch( ArithmeticException e )
            {
                Console.WriteLine(e);
            }
            catch( Exception el )
            {
                Console.WriteLine(el);
            }
            finally
            {
                Console.WriteLine("程序结束！");
            }
        }

        static private void LINQTest()
        {

            int[] numbers = { 2, 12, 5, 15 };
            IEnumerable<int> lowNums =
                               from n in numbers
                               where n < 10
                               select n;
            foreach (var x in lowNums)
            {
                Console.WriteLine(x);
            }
        }

        static void Main(string[] args)
        {
            MyFunc(ArgC: 2,ArgA: 0, ArgB: 1);

            LINQTest();


            FinallyTest();

            /////
            /*Rectangle1*/Shape r1 = new Rectangle1(10, 7);
            double a1 = r1.area();
            Console.WriteLine("面积： {0}", a1);
            /////



            Rectangle r = new Rectangle();
            r.length = 4.5;
            r.width = 3.5;
            r.Display();

            /* 我的第一个 C# 程序*/
            Console.WriteLine("Hello World");

            Console.WriteLine(@"c:\Windows");

            Console.WriteLine("c:\\Windows");

            int i = 0;
            Convert.ToByte(i);


            short a = 10;
            int b = 20;
            double c = a + b;
            Console.WriteLine("a={0},b={1},c={2}", a, b, c);
    /*        Console.ReadLine();*/

            string ss = @"SELECT * FROM HumanResources.Employee AS e
                         INNER JOIN Person.Contact AS c    
                         ON e.ContactID = c.ContactID    
                         ORDER BY c.LastName";
            Console.WriteLine(ss);

            string ss1 = "SELECT * FROM HumanResources.Employee AS e    INNER JOIN Person.Contact AS c    ON e.ContactID = c.ContactID    ORDER BY c.LastName";
            Console.WriteLine(ss1);


            Console.ReadKey();
        }
    }
}
