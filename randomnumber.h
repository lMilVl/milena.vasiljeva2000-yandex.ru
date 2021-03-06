#ifndef RANDOMNUMBER_H
#define RANDOMNUMBER_H

#include <QObject>

class RandomNumber : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int number READ number WRITE setNumber NOTIFY numberChanged)

public:
    explicit RandomNumber(QObject *parent = nullptr);
    int number() const;

public slots:
    void setNumber(int number);
    void generate(int low, int high);

signals:
    void numberChanged(int number);

private:
    int m_number = 1;

};

#endif // RANDOMNUMBER_H
