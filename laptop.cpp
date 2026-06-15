#include "Laptop.h"

Laptop::Laptop(QObject *parent)
    : QObject{parent}
{}

void Laptop::addClick()
{
    countClick += powerClick;
    qDebug() << countClick;
}

QString Laptop::getClick()
{
    return QString::number(countClick);
}

void Laptop::upgradeClick(int upgrade)
{
    powerClick += upgrade;
}