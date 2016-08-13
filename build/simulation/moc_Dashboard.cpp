/****************************************************************************
** Meta object code from reading C++ file 'Dashboard.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/simulation/include/Dashboard.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'Dashboard.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Dashboard_t {
    QByteArrayData data[15];
    char stringdata[243];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_Dashboard_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_Dashboard_t qt_meta_stringdata_Dashboard = {
    {
QT_MOC_LITERAL(0, 0, 9),
QT_MOC_LITERAL(1, 10, 17),
QT_MOC_LITERAL(2, 28, 0),
QT_MOC_LITERAL(3, 29, 5),
QT_MOC_LITERAL(4, 35, 20),
QT_MOC_LITERAL(5, 56, 15),
QT_MOC_LITERAL(6, 72, 15),
QT_MOC_LITERAL(7, 88, 16),
QT_MOC_LITERAL(8, 105, 18),
QT_MOC_LITERAL(9, 124, 18),
QT_MOC_LITERAL(10, 143, 21),
QT_MOC_LITERAL(11, 165, 14),
QT_MOC_LITERAL(12, 180, 21),
QT_MOC_LITERAL(13, 202, 21),
QT_MOC_LITERAL(14, 224, 17)
    },
    "Dashboard\0valueChangedSpeed\0\0value\0"
    "valueChangedSteering\0maxSpeedClicked\0"
    "minSpeedClicked\0zeroSpeedClicked\0"
    "maxSteeringClicked\0minSteeringClicked\0"
    "centerSteeringClicked\0pollNodeHandle\0"
    "automapControlClicked\0automapSensingClicked\0"
    "automapNBVClicked\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Dashboard[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   74,    2, 0x08,
       4,    1,   77,    2, 0x08,
       5,    0,   80,    2, 0x08,
       6,    0,   81,    2, 0x08,
       7,    0,   82,    2, 0x08,
       8,    0,   83,    2, 0x08,
       9,    0,   84,    2, 0x08,
      10,    0,   85,    2, 0x08,
      11,    0,   86,    2, 0x08,
      12,    0,   87,    2, 0x08,
      13,    0,   88,    2, 0x08,
      14,    0,   89,    2, 0x08,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void Dashboard::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Dashboard *_t = static_cast<Dashboard *>(_o);
        switch (_id) {
        case 0: _t->valueChangedSpeed((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->valueChangedSteering((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->maxSpeedClicked(); break;
        case 3: _t->minSpeedClicked(); break;
        case 4: _t->zeroSpeedClicked(); break;
        case 5: _t->maxSteeringClicked(); break;
        case 6: _t->minSteeringClicked(); break;
        case 7: _t->centerSteeringClicked(); break;
        case 8: _t->pollNodeHandle(); break;
        case 9: _t->automapControlClicked(); break;
        case 10: _t->automapSensingClicked(); break;
        case 11: _t->automapNBVClicked(); break;
        default: ;
        }
    }
}

const QMetaObject Dashboard::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_Dashboard.data,
      qt_meta_data_Dashboard,  qt_static_metacall, 0, 0}
};


const QMetaObject *Dashboard::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Dashboard::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Dashboard.stringdata))
        return static_cast<void*>(const_cast< Dashboard*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int Dashboard::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
