#ifndef LAPTOP_H
#define LAPTOP_H

#include <QObject>
#include <QDebug>

class Laptop : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int clicks READ clicks NOTIFY clicksChanged)
public:
    explicit Laptop(QObject *parent = nullptr);

    int clicks() const;

    Q_INVOKABLE void addClick();
    Q_INVOKABLE void upgrade(int power, int cost);
    Q_INVOKABLE int getCountClick();

signals:
    void clicksChanged();

private:
    int m_countClick = 0;
    int m_powerClick = 1;
};

#endif // LAPTOP_H
