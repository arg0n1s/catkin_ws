/****************************************************************************
** Meta object code from reading C++ file 'profile_tree_widget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/swri_profiler/swri_profiler_tools/include/swri_profiler_tools/profile_tree_widget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'profile_tree_widget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_swri_profiler_tools__ProfileTreeWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      61,   40,   39,   39, 0x05,

 // slots: signature, parameters, type, tag, flags
      88,   40,   39,   39, 0x0a,
     123,  111,   39,   39, 0x08,
     147,  111,   39,   39, 0x08,
     181,  169,   39,   39, 0x08,
     227,  223,   39,   39, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_swri_profiler_tools__ProfileTreeWidget[] = {
    "swri_profiler_tools::ProfileTreeWidget\0"
    "\0profile_key,node_key\0activeNodeChanged(int,int)\0"
    "setActiveNode(int,int)\0profile_key\0"
    "handleProfileAdded(int)\0handleNodesAdded(int)\0"
    "item,column\0handleItemActivated(QTreeWidgetItem*,int)\0"
    "pos\0handleTreeContextMenuRequest(QPoint)\0"
};

void swri_profiler_tools::ProfileTreeWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ProfileTreeWidget *_t = static_cast<ProfileTreeWidget *>(_o);
        switch (_id) {
        case 0: _t->activeNodeChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->setActiveNode((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 2: _t->handleProfileAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->handleNodesAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->handleItemActivated((*reinterpret_cast< QTreeWidgetItem*(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 5: _t->handleTreeContextMenuRequest((*reinterpret_cast< const QPoint(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData swri_profiler_tools::ProfileTreeWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject swri_profiler_tools::ProfileTreeWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_swri_profiler_tools__ProfileTreeWidget,
      qt_meta_data_swri_profiler_tools__ProfileTreeWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &swri_profiler_tools::ProfileTreeWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *swri_profiler_tools::ProfileTreeWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *swri_profiler_tools::ProfileTreeWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_swri_profiler_tools__ProfileTreeWidget))
        return static_cast<void*>(const_cast< ProfileTreeWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int swri_profiler_tools::ProfileTreeWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void swri_profiler_tools::ProfileTreeWidget::activeNodeChanged(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
