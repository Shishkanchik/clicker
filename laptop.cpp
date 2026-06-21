#include "Laptop.h"

Laptop::Laptop(QObject *parent)
    : QObject{parent}
{}

void Laptop::addClick()
{
    m_countClick += m_powerClick;

    emit clicksChanged();
    qDebug() << m_countClick;
}

int Laptop::clicks() const
{
    return m_countClick;
}

void Laptop::upgrade(int power, int cost)
{
    m_powerClick += power;
    m_countClick -= cost;
    emit clicksChanged();
}

int Laptop::getCountClick()
{
    return m_countClick;
}