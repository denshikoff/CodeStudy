using System;
using System.Collections.Generic;

namespace Students
{
    public class HashTable
    {
        private List<Student>[] Table; //Информационный массив (в <> указывается тип данных, хранящихся в массиве), хранилище хеш-таблицы
        private readonly int _size; //Размер массива (таблицы), readonly - значение для переменной может быть задано только в конструкторе и после этого не может быть изменено
        private int[] Keys; 
        private int indexKey;
        public HashTable(int size) //конструктор
        {
            _size = size;
            Table = new List<Student>[size];
            Keys = new int[size];
            indexKey = 0;
        }

        public bool Add(Student student)
        {
            Keys[indexKey] = student.Num;  //массив ключей
            int index = student.Num % _size;      //номер студбилета уникален, поэтому подходит под ключ
            indexKey++;
            if (Table[index] == null)
            {
                Table[index] = new List<Student>();
            }

            if (Find(student.Num) != null) //работа с коллизиями 
            {
                return false;
            }
            Table[index].Add(student);
            return true;
        }

        public Student Find(int key)
        {
            key %= _size;
            List<Student> cell = Table[key];
            for (int i = 0; i < cell.Size; i++) 
            {
                Student elem = cell.Get(i);
                elem.Num %= _size;
                if (elem.Num == key)
                {
                    //выйти из функции, вернув указанное значение в качестве результата.
                    return elem; 
                }
            }
            return null;
        }

        public void Delete(int key)
        {
            key %= _size;
            List<Student> cell = Table[key];
            for (int i = 0; i < cell.Size; i++) // for i := 0 to cell.Size -1 do
            {
                Student elem = cell.Get(i);
                if (elem.Num == key)
                {
                    cell.Delete(i);
                }
            }
        }

        public void Clear()
        {
            foreach (var list in Table) 
            {
                list?.Clear(); // if (list != null) { list.Clear(); } // IF list <> nil THEN list.Clear();
            }
        }
        
        public override string ToString()
        {
            string result = "{";
            for (int i = 0; i < _size; i++)
            {
                if (Table[i] != null && Table[i].Size > 0)
                {
                    result += result == "{" ? $"\n {i}: {Table[i]}" : $",\n {i}: {Table[i]}";
                }
            }

            result += "\n}";
            return result;
        }

        public bool ContainsKey(int key)
        {
            Array.Sort(Keys);
            return Array.BinarySearch(Keys, key) >= 0 ? true : false;            
        }
    }
}