#include "store.h"

Store::Store(QObject *parent)
    : QObject{parent}
{
    Item mouse
    {
        0,
        100,
        1
    };

    storeItems.push_back(mouse);
}

void Store::buy(Laptop* laptop, int number)
{
    for(const auto& item : storeItems)
        if(item.id == number)
        {
            if(laptop->getCountClick() >= item.cost)
            {
                laptop->upgrade(item.power, item.cost);
            }
        }
}

int Store::getCost(int number)
{

    return storeItems[number].cost;

}

int Store::getPower(int number)
{

    return storeItems[number].power;

}