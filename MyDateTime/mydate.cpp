#include "mydate.h"

MyDate::MyDate() {}

void MyDate::timeNow()
{
    QDateTime time = QDateTime::currentDateTime();
    QString dateTime1 = time.toString("dd.MM.yyyy");
    QString dateTime2 = time.toString("ddd MMMM d yy");
    QString dateTime3 = time.toString("hh:mm:ss.zzz");
    QString dateTime4 = time.toString("hh:mm:ss.z");
    QString dateTime5 = time.toString("h:m:s ap");

    qDebug() << dateTime1;
    qDebug() << dateTime2;
    qDebug() << dateTime3;
    qDebug() << dateTime4;
    qDebug() << dateTime5;
}
