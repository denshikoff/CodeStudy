﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;

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

        //добавление  в файл
        public bool HashInputFile(string path)
        {
            FileStream fileStream = null;
            StreamWriter writer = null;
            try
            {
                fileStream = new FileStream(path, FileMode.Open);
                writer = new StreamWriter(fileStream);
                writer.WriteLine(ToString());
            } catch
            {
                MessageBox.Show("Файл не найден");
                fileStream = File.Create("newFile.txt");
                writer = new StreamWriter(fileStream);
                writer.WriteLine(ToString());
                return false;
                
            } finally
            {
                writer.Close();
                fileStream.Close();  
            }
            return true;
        }
        public bool HashInputFile()
        {

            FileStream fileStream = null;
            StreamWriter writer =null;
            try
            {
                fileStream = File.Create(@"Structure\Students\Students\files\NewFile.txt");
                writer.WriteLine(ToString());
            }
            catch
            {
                MessageBox.Show("Проблемы с путем файла");
                return false;
            }
            finally
            {
                writer.Close();
                fileStream.Close();
            }
            return true;
        }

        //чтение из файла
        public bool HashOutputFile(string path)
        {
            FileStream fileStream = null;
            StreamReader reader = null;
            ArrayList array = new ArrayList();
            Student student = new Student();
            try
            {
                fileStream = new FileStream(path, FileMode.Open);
                reader = new StreamReader(fileStream);
                string line;
                int k = 0;               
                while((line = reader.ReadLine()) != null)
                {
                    switch (k)
                    {
                        case 0:
                            {
                                student.Name = line;
                                break;
                            }
                        case 1:
                            {
                                student.Num = Convert.ToInt32(line);
                                break;
                            }
                        case 3:
                            {
                               ArrayList arrayList = new ArrayList(); 
                               foreach(char c in line)
                                {
                                    if(c != ' ')
                                    {
                                        arrayList.Add(c);
                                    }
                                }
                                student.Exam = arrayList;
                                break;
                            }                           
                    }
                    k = k == 3 ? 0: k++;
                }
                
            }  catch
            {
                MessageBox.Show("Файл не найден");
                return false;
            }
            finally
            {
                reader.Close();
                fileStream.Close();
            }

            return true;
        }
        public bool ContainsKey(int key)
        {
            Array.Sort(Keys);
            return Array.BinarySearch(Keys, key) >= 0 ? true : false;            
        }
    }
}