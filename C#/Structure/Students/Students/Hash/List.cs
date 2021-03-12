using System;

namespace Students
{
    public class List<T> //класс список. <T> - шаблонный тип. При использовании списка вместо T подставляется конкретный тип.
    {
        private Node<T> Head { get; set; }
        private Node<T> Tail { get; set; }

        private int _size = 0;
        public int Size
        {
            get
            {
                return _size;
            }
        }

        public void Add(T info)
        {
            if (Head == null)
            {
                Head = new Node<T>()
                {
                    Info = info,
                    Next = null
                };
                Tail = Head;
            }
            else
            {
                Tail.Next = new Node<T>()
                {
                    Info = info,
                    Next = null
                };
            }

            _size++;
        }

        public T Get(int index)
        {
            if (index >= _size)
            {
                throw new Exception("Index out of range");
            }
            Node<T> current = Head;
            for (int i = 0; i < index; i++) // for i := 0 to index - 1 do
            {
                current = current.Next;
            }

            return current.Info;
        }

        public void Delete(int index)
        {
            if (index >= _size)
            {
                throw new Exception("Index out of range");
            }

            if (index == 0)
            {
                Head = Head.Next;
                if (_size == 1)
                {
                    Tail = null;
                }
                _size -= 1;
                return;
            }
            Node<T> current = Head;
            Node<T> previous = null;
            for (int i = 0; i < index; i++)
            {
                previous = current;
                current = current.Next;
            }

            previous.Next = current.Next;
        }

        public void Clear()
        {
            Head = null;
            Tail = null;
            _size = 0;
        }

        public override string ToString()
        {
            string result = "[";
            Node<T> current = Head;
            result += current.Info.ToString();
            current = current.Next;
            while (current != null)
            {
                result += ", " + current.Info;
                current = current.Next;
            }

            result += "]";
            return result;
        }
    }

    class Node<T> //Звено списка
    {
        public T Info { get; set; }
        public Node<T> Next { get; set; }
    }
}