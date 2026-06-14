#ifndef LAPTOP_H
#define LAPTOP_H

#include <QObject>
#include <QDebug>

class Laptop : public QObject
{
    Q_OBJECT
private:
    int click = 0;
public:
    explicit Laptop(QObject *parent = nullptr);
    void addClick();

signals:
};

#endif // LAPTOP_H
