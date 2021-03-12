using System;

namespace Students
{
    class Program
    {
        static void Main(string[] args)
        {
            HashTable<StudentKey, Student> studentsTable = new HashTable<StudentKey, Student>(100);
            HashTable<CarKey, Car> carsTable = new HashTable<CarKey, Car>(100); 
            studentsTable.Add(new Student()
            {
                ID = 1,
                Age = 20,
                FIO = "Student 1"
            });
            studentsTable.Add(new Student()
            {
                ID = 101,
                Age = 25,
                FIO = "Student 2"
            });
            studentsTable.Add(new Student()
            {
                ID = 2,
                Age = 22,
                FIO = "Student 3"
            });
            
            studentsTable.Add(new Student()
            {
                ID = 3,
                Age = 23,
                FIO = "Student 4"
            });

            carsTable.Add(new Car()
            {
                Number = "A000AA",
                Color = Color.Red,
                EnginePower = 100
            });

            carsTable.Add(new Car()
            {
                Number = "A125BC",
                Color = Color.Black,
                EnginePower = 150
            });

            carsTable.Add(new Car()
            {
                Number = "C152CC",
                Color = Color.Yellow,
                EnginePower = 10
            });
            
            Console.WriteLine(studentsTable.ToString());
            Console.WriteLine();
            
            Student student = studentsTable.Find(new StudentKey(1));
            Console.WriteLine(student.ToString());
            student = studentsTable.Find(new StudentKey(2));
            Console.WriteLine(student.ToString());
            student = studentsTable.Find(new StudentKey(101));
            Console.WriteLine(student.ToString());
            Console.WriteLine();
            
            studentsTable.Delete(new StudentKey(101));
            Console.WriteLine(studentsTable.ToString());
            Console.WriteLine();
            
            studentsTable.Clear();
            Console.WriteLine(studentsTable.ToString());
            Console.WriteLine();
            
            Console.WriteLine(carsTable.ToString());
            Car car = carsTable.Find(new CarKey("A125BC"));
            Console.WriteLine(car.ToString());
        }
    }
}
