/****************************************************************************
** Meta object code from reading C++ file 'profiler_window.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/swri_profiler_tools/include/swri_profiler_tools/profiler_window.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'profiler_window.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_swri_profiler_tools__ProfilerWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      37,   36,   36,   36, 0x05,

 // slots: signature, parameters, type, tag, flags
      76,   55,   36,   36, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_swri_profiler_tools__ProfilerWindow[] = {
    "swri_profiler_tools::ProfilerWindow\0"
    "\0createNewWindow()\0connected,master_uri\0"
    "rosConnected(bool,QString)\0"
};

void swri_profiler_tools::ProfilerWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ProfilerWindow *_t = static_cast<ProfilerWindow *>(_o);
        switch (_id) {
        case 0: _t->createNewWindow(); break;
        case 1: _t->rosConnected((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData swri_profiler_tools::ProfilerWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject swri_profiler_tools::ProfilerWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_swri_profiler_tools__ProfilerWindow,
      qt_meta_data_swri_profiler_tools__ProfilerWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &swri_profiler_tools::ProfilerWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *swri_profiler_tools::ProfilerWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *swri_profiler_tools::ProfilerWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_swri_profiler_tools__ProfilerWindow))
        return static_cast<void*>(const_cast< ProfilerWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int swri_profiler_tools::ProfilerWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void swri_profiler_tools::ProfilerWindow::createNewWindow()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
