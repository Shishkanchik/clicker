#include "store.h"

Store::Store(QObject *parent)
    : QObject{parent}
{}

void Store::buy(Laptop* laptop, int item)
{
    if(item == Item::MOUSE)
    {
        laptop->upgradeClick(1);
    }
}
