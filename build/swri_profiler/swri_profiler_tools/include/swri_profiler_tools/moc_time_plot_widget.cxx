/****************************************************************************
** Meta object code from reading C++ file 'time_plot_widget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/swri_profiler/swri_profiler_tools/include/swri_profiler_tools/time_plot_widget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'time_plot_widget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_swri_profiler_tools__TimePlotWidget[] = {

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
      58,   37,   36,   36, 0x05,

 // slots: signature, parameters, type, tag, flags
      85,   37,   36,   36, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_swri_profiler_tools__TimePlotWidget[] = {
    "swri_profiler_tools::TimePlotWidget\0"
    "\0profile_key,node_key\0activeNodeChanged(int,int)\0"
    "setActiveNode(int,int)\0"
};

void swri_profiler_tools::TimePlotWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TimePlotWidget *_t = static_cast<TimePlotWidget *>(_o);
        switch (_id) {
        case 0: _t->activeNodeChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->setActiveNode((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData swri_profiler_tools::TimePlotWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject swri_profiler_tools::TimePlotWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_swri_profiler_tools__TimePlotWidget,
      qt_meta_data_swri_profiler_tools__TimePlotWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &swri_profiler_tools::TimePlotWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *swri_profiler_tools::TimePlotWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *swri_profiler_tools::TimePlotWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_swri_profiler_tools__TimePlotWidget))
        return static_cast<void*>(const_cast< TimePlotWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int swri_profiler_tools::TimePlotWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
void swri_profiler_tools::TimePlotWidget::activeNodeChanged(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
