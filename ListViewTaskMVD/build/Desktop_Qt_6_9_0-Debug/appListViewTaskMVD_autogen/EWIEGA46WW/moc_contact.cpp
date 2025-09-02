/****************************************************************************
** Meta object code from reading C++ file 'contact.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.9.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../contact.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'contact.h' doesn't include <QObject>."
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
struct qt_meta_tag_ZN7ContactE_t {};
} // unnamed namespace

template <> constexpr inline auto Contact::qt_create_metaobjectdata<qt_meta_tag_ZN7ContactE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "Contact",
        "contactNameChanged",
        "",
        "contactNumberChanged",
        "contactImageChanged",
        "contactedTimeChanged",
        "incomingChanged",
        "outgoingChanged",
        "lastMessageChanged",
        "contactName",
        "contactNumber",
        "contactImage",
        "contactedTime",
        "lastMessage",
        "incoming",
        "outgoing"
    };

    QtMocHelpers::UintData qt_methods {
        // Signal 'contactNameChanged'
        QtMocHelpers::SignalData<void()>(1, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'contactNumberChanged'
        QtMocHelpers::SignalData<void()>(3, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'contactImageChanged'
        QtMocHelpers::SignalData<void()>(4, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'contactedTimeChanged'
        QtMocHelpers::SignalData<void()>(5, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'incomingChanged'
        QtMocHelpers::SignalData<void()>(6, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'outgoingChanged'
        QtMocHelpers::SignalData<void()>(7, 2, QMC::AccessPublic, QMetaType::Void),
        // Signal 'lastMessageChanged'
        QtMocHelpers::SignalData<void()>(8, 2, QMC::AccessPublic, QMetaType::Void),
    };
    QtMocHelpers::UintData qt_properties {
        // property 'contactName'
        QtMocHelpers::PropertyData<QString>(9, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 0),
        // property 'contactNumber'
        QtMocHelpers::PropertyData<QString>(10, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 1),
        // property 'contactImage'
        QtMocHelpers::PropertyData<QString>(11, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 2),
        // property 'contactedTime'
        QtMocHelpers::PropertyData<QString>(12, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 3),
        // property 'lastMessage'
        QtMocHelpers::PropertyData<QString>(13, QMetaType::QString, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 6),
        // property 'incoming'
        QtMocHelpers::PropertyData<bool>(14, QMetaType::Bool, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 4),
        // property 'outgoing'
        QtMocHelpers::PropertyData<bool>(15, QMetaType::Bool, QMC::DefaultPropertyFlags | QMC::Writable | QMC::StdCppSet | QMC::Final, 5),
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<Contact, qt_meta_tag_ZN7ContactE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject Contact::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7ContactE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7ContactE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN7ContactE_t>.metaTypes,
    nullptr
} };

void Contact::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<Contact *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->contactNameChanged(); break;
        case 1: _t->contactNumberChanged(); break;
        case 2: _t->contactImageChanged(); break;
        case 3: _t->contactedTimeChanged(); break;
        case 4: _t->incomingChanged(); break;
        case 5: _t->outgoingChanged(); break;
        case 6: _t->lastMessageChanged(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::contactNameChanged, 0))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::contactNumberChanged, 1))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::contactImageChanged, 2))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::contactedTimeChanged, 3))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::incomingChanged, 4))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::outgoingChanged, 5))
            return;
        if (QtMocHelpers::indexOfMethod<void (Contact::*)()>(_a, &Contact::lastMessageChanged, 6))
            return;
    }
    if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast<QString*>(_v) = _t->getContactName(); break;
        case 1: *reinterpret_cast<QString*>(_v) = _t->getContactNumber(); break;
        case 2: *reinterpret_cast<QString*>(_v) = _t->getContactImage(); break;
        case 3: *reinterpret_cast<QString*>(_v) = _t->getContactedTime(); break;
        case 4: *reinterpret_cast<QString*>(_v) = _t->getLastMessage(); break;
        case 5: *reinterpret_cast<bool*>(_v) = _t->getIncoming(); break;
        case 6: *reinterpret_cast<bool*>(_v) = _t->getOutgoing(); break;
        default: break;
        }
    }
    if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setContactName(*reinterpret_cast<QString*>(_v)); break;
        case 1: _t->setContactNumber(*reinterpret_cast<QString*>(_v)); break;
        case 2: _t->setContactImage(*reinterpret_cast<QString*>(_v)); break;
        case 3: _t->setContactedTime(*reinterpret_cast<QString*>(_v)); break;
        case 4: _t->setLastMessage(*reinterpret_cast<QString*>(_v)); break;
        case 5: _t->setIncoming(*reinterpret_cast<bool*>(_v)); break;
        case 6: _t->setOutgoing(*reinterpret_cast<bool*>(_v)); break;
        default: break;
        }
    }
}

const QMetaObject *Contact::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Contact::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN7ContactE_t>.strings))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Contact::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 7;
    }
    if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void Contact::contactNameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Contact::contactNumberChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Contact::contactImageChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Contact::contactedTimeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Contact::incomingChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Contact::outgoingChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void Contact::lastMessageChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}
QT_WARNING_POP
