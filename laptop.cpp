#include "Laptop.h"

Laptop::Laptop(QObject *parent)
    : QObject{parent}
{}

void Laptop::addClick()
{
    click++;
    qDebug() << click;
}
