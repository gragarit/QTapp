#include "multi.h"
#include <QProcess>

Multi::Multi(QObject *parent) : QObject(parent){

}

void Multi::newBroken(){
    QProcess process;
    QStringList arguments;
    arguments << "/box:Borgur" << "C:\\Whitemoon\\BrokenRanks\\client\\BrokenRanks.exe";

    process.setProgram("C:\\Sandboxie\\Start.exe");
    process.setArguments(arguments);
    process.startDetached();
}
