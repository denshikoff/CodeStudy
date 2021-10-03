package com.company;

public interface structureDate<E> extends Iterable<E> {
/**
 * Возвращает и удаляет элемент из начала структуры.
 *
 * @return Элемент или {@code null}, если структура пуста
 */
        E poll();
/**
 * Возвращает (но не удаляет) элемент из начала структуры.
 *
 * @return Элемент или {@code null}, если структура пуста
 */
        E peek();
/**
 * Добавляет элемент в конец структуры.
 * Затирает начало структуры в случае, если она заполнена.
 *
 * @param item новый элемент
 * @return
 */
        boolean add(E item);
/**
 * Возвращает размер коллекции.
 *
 * @return размер
 */
        int getSize();
}

