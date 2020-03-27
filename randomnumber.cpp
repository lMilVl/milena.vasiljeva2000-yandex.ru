#include "randomnumber.h"
#include <QRandomGenerator>

RandomNumber::RandomNumber(QObject *parent) : QObject(parent)
{

}

int RandomNumber::number() const
{
    return m_number;
}

void RandomNumber::setNumber(int number)
{
    if (m_number == number)
        return;

    m_number = number;
    emit numberChanged(m_number);
}

void RandomNumber::generate(int low, int high)
{
    setNumber((qrand() % ((high + 1) - low) + low));
}
