#ifndef STORE_H
#define STORE_H

#include <QObject>
#include "laptop.h"

class Store : public QObject
{
    Q_OBJECT
public:
    explicit Store(QObject *parent = nullptr);
    Q_INVOKABLE void buy(Laptop* laptop, int item);
    Q_INVOKABLE int getCost(int number);
    Q_INVOKABLE int getPower(int number);
private:

    struct Item
    {
        int id;
        int cost;
        int power;
    };

    QVector<Item> storeItems;

signals:
};

#endif // STORE_H
