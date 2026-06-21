#ifndef GAMEMANAGER_H
#define GAMEMANAGER_H

#include <QObject>
#include "laptop.h"
#include "store.h"

class GameManager : public QObject
{
    Q_OBJECT
public:
    explicit GameManager(QObject *parent = nullptr);

    Q_INVOKABLE void addClick();
    Q_INVOKABLE void upgrade(int upgrade);



private:
    Laptop* m_laptop;
    Store* m_store;


signals:
};

#endif // GAMEMANAGER_H
