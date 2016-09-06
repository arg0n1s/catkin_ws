/****************************************************************************
** Meta object code from reading C++ file 'ros_source.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/swri_profiler/swri_profiler_tools/include/swri_profiler_tools/ros_source.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ros_source.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_swri_profiler_tools__RosSource[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      46,   32,   31,   31, 0x05,

 // slots: signature, parameters, type, tag, flags
      70,   32,   31,   31, 0x08,
     104,  100,   31,   31, 0x08,
     155,  100,   31,   31, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_swri_profiler_tools__RosSource[] = {
    "swri_profiler_tools::RosSource\0\0"
    "connected,uri\0connected(bool,QString)\0"
    "handleConnected(bool,QString)\0msg\0"
    "handleIndex(swri_profiler_msgs::ProfileIndexArray)\0"
    "handleData(swri_profiler_msgs::ProfileDataArray)\0"
};

void swri_profiler_tools::RosSource::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RosSource *_t = static_cast<RosSource *>(_o);
        switch (_id) {
        case 0: _t->connected((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 1: _t->handleConnected((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 2: _t->handleIndex((*reinterpret_cast< swri_profiler_msgs::ProfileIndexArray(*)>(_a[1]))); break;
        case 3: _t->handleData((*reinterpret_cast< swri_profiler_msgs::ProfileDataArray(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData swri_profiler_tools::RosSource::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject swri_profiler_tools::RosSource::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_swri_profiler_tools__RosSource,
      qt_meta_data_swri_profiler_tools__RosSource, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &swri_profiler_tools::RosSource::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *swri_profiler_tools::RosSource::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *swri_profiler_tools::RosSource::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_swri_profiler_tools__RosSource))
        return static_cast<void*>(const_cast< RosSource*>(this));
    return QObject::qt_metacast(_clname);
}

int swri_profiler_tools::RosSource::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void swri_profiler_tools::RosSource::connected(bool _t1, QString _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
