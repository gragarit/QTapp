#ifndef MULTI_H
#define MULTI_H

#include <QObject>

class Multi : public QObject{
    Q_OBJECT
public:
    explicit Multi(QObject *parent = nullptr);

public slots:
    void newBroken();
};

#endif
