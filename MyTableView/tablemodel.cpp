#include "tablemodel.h"

TableModel::TableModel() {
    qDebug() << Q_FUNC_INFO;

    Student *s1 = new Student();
    s1->setStudentName("Alice Johnson");
    s1->setPhoneNumber("9876543210");
    s1->setEmail("alice@example.com");

    Student *s2 = new Student();
    s2->setStudentName("Bob Smith");
    s2->setPhoneNumber("9123456789");
    s2->setEmail("bob@example.com");

    Student *s3 = new Student();
    s3->setStudentName("Charlie Brown");
    s3->setPhoneNumber("9000000001");
    s3->setEmail("charlie@example.com");

    m_studentList.append(s1);
    m_studentList.append(s2);
    m_studentList.append(s3);
}

TableModel::~TableModel()
{
    qDebug() << Q_FUNC_INFO;
    qDeleteAll(m_studentList);
    m_studentList.clear();
}

int TableModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_studentList.size();
}

int TableModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 1;
}

QVariant TableModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid() || index.row() < 0 || index.row() >= m_studentList.size())
        return QVariant();

    const Student *student = m_studentList.at(index.row());
    if (!student)
        return QVariant();

    switch (role) {
    case NAME:
        return student->getStudentName();
    case PHONE_NUMBER:
        return student->getPhoneNumber();
    case EMAIL:
        return student->getEmail();
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> TableModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles.insert(NAME, "studentName");
    roles.insert(PHONE_NUMBER, "phoneNumber");
    roles.insert(EMAIL, "email");
    return roles;
}
