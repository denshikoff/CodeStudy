using System;

namespace Students  
{
    // K - тип ключа, V - тип значения.
    //where K: HashKey означает, что вместо K может подставляться только наследник класса HashKey
    //where V: HashValue<K> означает, что вместо V может подставляться только наследник класса HashValue<K>
    public class HashTable<K, V> 
        where K: HashKey 
        where V: HashValue<K>
    {
        private List<V>[] Table; //Информационный массив (в <> указывается тип данных, хранящихся в массиве), хранилище хеш-таблицы
        private readonly int _size; //Размер массива (таблицы), readonly - значение для переменной может быть задано только в конструкторе и после этого не может быть изменено

        //конструктор
        public HashTable(int size) 
        {
            _size = size;
            Table = new List<V>[size];
        }

        //Добавление элемента в хеш-таблицу
        public bool Add(V info)
        {
            int hash = info.Key.GetHash();
            int index = hash % _size;
            if (Table[index] == null)
            {
                Table[index] = new List<V>();
            }

            if (Find(info.Key) != null)
            {
                return false;
            }
            Table[index].Add(info);
            return true;
        }

        //Поиск элемента по ключу
        public V Find(K id)
        {
            int hash = id.GetHash();
            int index = hash % _size; // hash mod _size
            List<V> cell = Table[index];
            for (int i = 0; i < cell.Size; i++) // for i := 0 to cell.Size -1 do
            {
                V elem = cell.Get(i);
                if (elem.Key.Equals(id))
                {
                    //выйти из функции, вернув указанное значение в качестве результата.
                    return elem; 
                }
            }

            return null;
        }

        //Удаление элемента из хеш-таблицы
        public void Delete(K id)
        {
            int hash = id.GetHash();
            int index = hash % _size; // hash mod _size
            List<V> cell = Table[index];
            for (int i = 0; i < cell.Size; i++) // for i := 0 to cell.Size -1 do
            {
                V elem = cell.Get(i);
                if (elem.Key.Equals(id))
                {
                    cell.Delete(i);
                }
            }
        }

        //Очистка таблицы
        public void Clear()
        {
            foreach (var list in Table) 
            {
                list?.Clear(); // if (list != null) { list.Clear(); } // IF list <> nil THEN list.Clear();
            }
        }
        
        //Метод для конвертации таблицы в строку в формате JSON
        //Вообще, вместо ручного формирования строки можно воспользоваться библиотекой Newtonsoft.Json
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
    }
    
    //Класс ключа хеш-таблицы
    public abstract class HashKey
    {
        public abstract int GetHash();
    }
    
    //Класс информационной части хеш-таблицы
    public abstract class HashValue<K>
    {
        public abstract K Key { get; }
    }
}