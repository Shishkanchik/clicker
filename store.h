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
private:
    enum Item
    {
        MOUSE
    };

signals:
};

#endif // STORE_H
