#include "EmployeeDataModel.h"
#include <qdebug.h>

EmployeeDataModel::EmployeeDataModel(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO;
    for (int i = 0; i < 10; i++) {
        Employee *emp = new Employee(this);

        emp->setName(QString("Employee%1").arg(i + 1));
        emp->setEmployeeID(QString("EMP%1").arg(1000 + i));
        emp->setPhoneNumber(QString("+919876543%1").arg(i + 10));
        emp->setEmail(QString("employee%1@example.com").arg(i + 1));
        emp->setJoinDate("2022-01-01");
        emp->setBasicSalary(25000);
        emp->setVariableSalary(5000);
        emp->setTotalSalary(emp->getBasicSalary() + emp->getVariableSalary());
        addEmployee(emp);
    }
}

EmployeeDataModel::~EmployeeDataModel()
{
    qDebug()<<Q_FUNC_INFO;
}

int EmployeeDataModel::getRowCount()
{
    return m_employeeList.size();
}

Employee *EmployeeDataModel::getIndexData(int index)
{
    return m_employeeList.at(index);
}

void EmployeeDataModel::addEmployee(Employee *employee)
{
    m_employeeList.append(employee);
}

Employee *EmployeeDataModel::getEmployeeDetails(QString name, QString id)
{
    for(Employee *emp: m_employeeList)
    {
        if(emp->getName() == name && emp->getEmployeeID() == id)
        {
            return emp;
        }
    }
    return nullptr;
}
