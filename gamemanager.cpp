#include "gamemanager.h"

GameManager::GameManager(QObject *parent)
    : QObject{parent}
{}

void GameManager::upgradeLaptop(Laptop* laptop, Store* store, int upgrade)
{
    laptop->upgrade();
}