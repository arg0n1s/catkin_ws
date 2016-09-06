/****************************************************************************
** Meta object code from reading C++ file 'profile_database.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/swri_profiler/swri_profiler_tools/include/swri_profiler_tools/profile_database.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'profile_database.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_swri_profiler_tools__ProfileDatabase[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      50,   38,   37,   37, 0x05,
      68,   38,   37,   37, 0x05,
      89,   38,   37,   37, 0x05,
     105,   38,   37,   37, 0x05,

       0        // eod
};

static const char qt_meta_stringdata_swri_profiler_tools__ProfileDatabase[] = {
    "swri_profiler_tools::ProfileDatabase\0"
    "\0profile_key\0profileAdded(int)\0"
    "profileModified(int)\0nodesAdded(int)\0"
    "dataAdded(int)\0"
};

void swri_profiler_tools::ProfileDatabase::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ProfileDatabase *_t = static_cast<ProfileDatabase *>(_o);
        switch (_id) {
        case 0: _t->profileAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->profileModified((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->nodesAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->dataAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData swri_profiler_tools::ProfileDatabase::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject swri_profiler_tools::ProfileDatabase::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_swri_profiler_tools__ProfileDatabase,
      qt_meta_data_swri_profiler_tools__ProfileDatabase, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &swri_profiler_tools::ProfileDatabase::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *swri_profiler_tools::ProfileDatabase::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *swri_profiler_tools::ProfileDatabase::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_swri_profiler_tools__ProfileDatabase))
        return static_cast<void*>(const_cast< ProfileDatabase*>(this));
    return QObject::qt_metacast(_clname);
}

int swri_profiler_tools::ProfileDatabase::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
void swri_profiler_tools::ProfileDatabase::profileAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void swri_profiler_tools::ProfileDatabase::profileModified(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void swri_profiler_tools::ProfileDatabase::nodesAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void swri_profiler_tools::ProfileDatabase::dataAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE
