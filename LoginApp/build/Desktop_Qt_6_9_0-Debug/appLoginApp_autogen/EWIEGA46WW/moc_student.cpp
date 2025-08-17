/****************************************************************************
** Meta object code from reading C++ file 'student.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.9.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../student.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'student.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 69
#error "This file was generated using the moc from 6.9.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {
struct qt_meta_tag_ZN7StudentE_t {};
} // unnamed namespace

template <> constexpr inline auto Student::qt_create_metaobjectdata<qt_meta_tag_ZN7StudentE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "Student",
        "studentNameChanged",
        "",
        "fatherNameChanged",
        "emailChanged",
        "phoneNumberChanged",
        "passwordChanged",
        "confirmPasswordChanged",
        "studentName",
        "fatherName",
        "email",
        "phoneNumber",
        "password",
        "confirmPassword"
    };

    QtMocHelpers::UintData qt_methods {
        // Signal 'studentNameChanged'
        QtMocHelpers::SignalData<void()>(1, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'fatherNameChanged'
        QtMocHelpers::SignalData<void()>(3, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'emailChanged'
        QtMocHelpers::SignalData<void()>(4, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'phoneNumberChanged'
        QtMocHelpers::SignalData<void()>(5, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'passwordChanged'
        QtMocHelpers::SignalData<void()>(6, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'confirmPasswordChanged'
        QtMocHelpers::SignalData<void()>(7, 2, QMC::AccessPublic, QMetaType::Void),
    };
    QtMocHelpers::UintData qt_properties {
        // property 'studentName'
        QtMocHelpers::PropertyData<QString>(8, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 0),
        // property 'fatherName'
        QtMocHelpers::PropertyData<QString>(9, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 1),
        // property 'email'
        QtMocHelpers::PropertyData<QString>(10, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 2),
        // property 'phoneNumber'
        QtMocHelpers::PropertyData<QString>(11, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 3),
        // property 'password'
        QtMocHelpers::PropertyData<QString>(12, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 4),
        // property 'confirmPassword'
        QtMocHelpers::PropertyData<QString>(13, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 5),
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<Student, qt_meta_tag_ZN7StudentE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject Student::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7StudentE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7StudentE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN7StudentE_t>.metaTypes,
    nullptr
} };

void Student::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<Student *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->studentNameChanged(); break;
        case 1: _t->fatherNameChanged(); break;
        case 2: _t->emailChanged(); break;
        case 3: _t->phoneNumberChanged(); break;
        case 4: _t->passwordChanged(); break;
        case 5: _t->confirmPasswordChanged(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::studentNameChanged, 0))
            return;
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::fatherNameChanged, 1))
            return;
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::emailChanged, 2))
            return;
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::phoneNumberChanged, 3))
            return;
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::passwordChanged, 4))
            return;
        if (QtMocHelpers::indexOfMethod<void (Student::*)()>(_a, &Student::confirmPasswordChanged, 5))
            return;
    }
    if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast<QString*>(_v) = _t->getStudentName(); break;
        case 1: *reinterpret_cast<QString*>(_v) = _t->getFatherName(); break;
        case 2: *reinterpret_cast<QString*>(_v) = _t->getEmail(); break;
        case 3: *reinterpret_cast<QString*>(_v) = _t->getPhoneNumber(); break;
        case 4: *reinterpret_cast<QString*>(_v) = _t->getPassword(); break;
        case 5: *reinterpret_cast<QString*>(_v) = _t->getConfirmPassword(); break;
        default: break;
        }
    }
    if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setStudentName(*reinterpret_cast<QString*>(_v)); break;
        case 1: _t->setFatherName(*reinterpret_cast<QString*>(_v)); break;
        case 2: _t->setEmail(*reinterpret_cast<QString*>(_v)); break;
        case 3: _t->setPhoneNumber(*reinterpret_cast<QString*>(_v)); break;
        case 4: _t->setPassword(*reinterpret_cast<QString*>(_v)); break;
        case 5: _t->setConfirmPassword(*reinterpret_cast<QString*>(_v)); break;
        default: break;
        }
    }
}

const QMetaObject *Student::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Student::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7StudentE_t>.strings))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Student::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 6;
    }
    if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void Student::studentNameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Student::fatherNameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Student::emailChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Student::phoneNumberChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Student::passwordChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Student::confirmPasswordChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}
QT_WARNING_POP
