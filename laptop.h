#ifndef LAPTOP_H
#define LAPTOP_H

#include <QObject>
#include <QDebug>

class Laptop : public QObject
{
    Q_OBJECT
public:
    explicit Laptop(QObject *parent = nullptr);
    Q_INVOKABLE void addClick();
    Q_INVOKABLE QString getClick();
    Q_INVOKABLE void upgradeClick(int upgrade);

signals:

private:
    int countClick = 0;
    int powerClick = 1;
};

#endif // LAPTOP_H
