#include "studentviewmodel.h"

StudentViewModel::StudentViewModel() {
    qDebug() << Q_FUNC_INFO;
}

StudentViewModel::~StudentViewModel()
{
    qDebug() << Q_FUNC_INFO;
    for(Student* s:std::as_const(m_studentList)){
        delete s;
    }
    m_studentList.clear();
}

int StudentViewModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return m_studentList.size();
}

QVariant StudentViewModel::data(const QModelIndex &index, int role) const
{
    const Student* student = m_studentList.at(index.row());

    switch (role) {
    case STUDENT_NAME:
        return student->getStudentName();
    case FATHER_NAME:
        return student->getFatherName();
    case EMAIL:
        return student->getEmail();
    case PHONE_NUMBER:
        return student->getPhoneNumber();
    case PASSWORD:
        return student->getPassword();
    case CONFIRM_PASSWORD:
        return student->getConfirmPassword();
    default:
        return QVariant();
    }
    return QVariant();
}

QHash<int, QByteArray> StudentViewModel::roleNames() const
{
    QHash<int, QByteArray> l_roleNames;
    l_roleNames.insert(STUDENT_NAME, "studentName");
    l_roleNames.insert(FATHER_NAME, "fatherName");
    l_roleNames.insert(EMAIL, "email");
    l_roleNames.insert(PHONE_NUMBER, "phoneNumber");
    l_roleNames.insert(PASSWORD, "password");
    l_roleNames.insert(CONFIRM_PASSWORD, "confirmPassword");

    return l_roleNames;
}

bool StudentViewModel::addStudentToList(const QString &studentName,const QString &fatherName, const QString &email,
                                        const QString &phoneNumber, const QString &password, const QString &confirmPassword)
{
    qDebug()<<Q_FUNC_INFO;

    if (studentName.isEmpty() || phoneNumber.isEmpty() || fatherName.isEmpty() || email.isEmpty() ||
        password.isEmpty() || confirmPassword.isEmpty()) {
        qDebug() << "No Empty Fields are Allowed";
        return false;
    }

    if (password.length() < 8) {
        qDebug() << "Password must be at least 8 characters long";
        return false;
    }

    if (password != confirmPassword) {
        qDebug() << "Passwords do not match";
        return false;
    }

    // Student* newStudent = new Student(this);
    // newStudent->setStudentName(studentName);
    // newStudent->setFatherName(fatherName);
    // newStudent->setEmail(email);
    // newStudent->setPhoneNumber(phoneNumber);
    // newStudent->setPassword(password);
    // newStudent->setConfirmPassword(confirmPassword);

    Student* newStudent = new Student(this);
    newStudent->setStudentName("Darshan Gowda R");
    newStudent->setPhoneNumber("1234567890");
    newStudent->setFatherName("Ramesh N");
    newStudent->setEmail("darsh@gmail.com");
    newStudent->setPassword("12345678");
    newStudent->setConfirmPassword("12345678");

    m_studentList.append(newStudent);

    emit registrationSuccess();
    qDebug() << "Student added Total students:" << m_studentList.size();
    return true;
}

bool StudentViewModel::checkLoginData(const QString &phoneNumber, const QString &password)
{
    qDebug()<<Q_FUNC_INFO;

    for (Student* s : std::as_const(m_studentList)) {
        if(s->getPhoneNumber() == phoneNumber && s->getPassword() == password){
            qDebug() << "Login Successfull.";
            emit loginSuccess();
            return true;
        }
    }
    qDebug() << "Login failed";
    return false;
}
