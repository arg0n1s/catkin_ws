/********************************************************************************
** Form generated from reading UI file 'Dashboard.ui'
**
** Created by: Qt User Interface Compiler version 5.2.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DASHBOARD_H
#define UI_DASHBOARD_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLCDNumber>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Dashboard
{
public:
    QWidget *centralwidget;
    QSlider *speedSlider;
    QSlider *steeringSlider;
    QPushButton *maxSpeed;
    QPushButton *minSpeed;
    QPushButton *zeroSpeed;
    QPushButton *minSteering;
    QPushButton *maxSteering;
    QPushButton *centerSteering;
    QLabel *label;
    QLabel *label_2;
    QLCDNumber *speed;
    QLCDNumber *steering;
    QLabel *label_3;
    QLabel *label_4;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *Dashboard)
    {
        if (Dashboard->objectName().isEmpty())
            Dashboard->setObjectName(QStringLiteral("Dashboard"));
        Dashboard->resize(487, 472);
        centralwidget = new QWidget(Dashboard);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        speedSlider = new QSlider(centralwidget);
        speedSlider->setObjectName(QStringLiteral("speedSlider"));
        speedSlider->setGeometry(QRect(233, 60, 29, 211));
        speedSlider->setMinimum(-10);
        speedSlider->setMaximum(10);
        speedSlider->setOrientation(Qt::Vertical);
        speedSlider->setTickPosition(QSlider::TicksBothSides);
        speedSlider->setTickInterval(1);
        steeringSlider = new QSlider(centralwidget);
        steeringSlider->setObjectName(QStringLiteral("steeringSlider"));
        steeringSlider->setGeometry(QRect(73, 350, 351, 29));
        steeringSlider->setMinimum(-50);
        steeringSlider->setMaximum(50);
        steeringSlider->setValue(8);
        steeringSlider->setOrientation(Qt::Horizontal);
        steeringSlider->setTickPosition(QSlider::TicksBelow);
        steeringSlider->setTickInterval(1);
        maxSpeed = new QPushButton(centralwidget);
        maxSpeed->setObjectName(QStringLiteral("maxSpeed"));
        maxSpeed->setGeometry(QRect(233, 30, 31, 27));
        minSpeed = new QPushButton(centralwidget);
        minSpeed->setObjectName(QStringLiteral("minSpeed"));
        minSpeed->setGeometry(QRect(233, 280, 31, 27));
        zeroSpeed = new QPushButton(centralwidget);
        zeroSpeed->setObjectName(QStringLiteral("zeroSpeed"));
        zeroSpeed->setGeometry(QRect(273, 150, 31, 27));
        minSteering = new QPushButton(centralwidget);
        minSteering->setObjectName(QStringLiteral("minSteering"));
        minSteering->setGeometry(QRect(30, 350, 31, 27));
        maxSteering = new QPushButton(centralwidget);
        maxSteering->setObjectName(QStringLiteral("maxSteering"));
        maxSteering->setGeometry(QRect(433, 350, 31, 27));
        centerSteering = new QPushButton(centralwidget);
        centerSteering->setObjectName(QStringLiteral("centerSteering"));
        centerSteering->setGeometry(QRect(223, 380, 51, 27));
        label = new QLabel(centralwidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(203, 330, 91, 20));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(120, 160, 91, 20));
        speed = new QLCDNumber(centralwidget);
        speed->setObjectName(QStringLiteral("speed"));
        speed->setGeometry(QRect(120, 120, 64, 23));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        speed->setFont(font);
        speed->setFrameShape(QFrame::Box);
        speed->setSegmentStyle(QLCDNumber::Flat);
        steering = new QLCDNumber(centralwidget);
        steering->setObjectName(QStringLiteral("steering"));
        steering->setGeometry(QRect(320, 320, 64, 23));
        steering->setFont(font);
        steering->setSegmentStyle(QLCDNumber::Flat);
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(390, 320, 58, 16));
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setGeometry(QRect(190, 120, 58, 16));
        Dashboard->setCentralWidget(centralwidget);
        menubar = new QMenuBar(Dashboard);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 487, 24));
        Dashboard->setMenuBar(menubar);
        statusbar = new QStatusBar(Dashboard);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        Dashboard->setStatusBar(statusbar);

        retranslateUi(Dashboard);

        QMetaObject::connectSlotsByName(Dashboard);
    } // setupUi

    void retranslateUi(QMainWindow *Dashboard)
    {
        Dashboard->setWindowTitle(QApplication::translate("Dashboard", "MainWindow", 0));
        maxSpeed->setText(QApplication::translate("Dashboard", "10", 0));
        minSpeed->setText(QApplication::translate("Dashboard", "-10", 0));
        zeroSpeed->setText(QApplication::translate("Dashboard", "0", 0));
        minSteering->setText(QApplication::translate("Dashboard", "-50", 0));
        maxSteering->setText(QApplication::translate("Dashboard", "50", 0));
        centerSteering->setText(QApplication::translate("Dashboard", "center", 0));
        label->setText(QApplication::translate("Dashboard", "Steering Conrol", 0));
        label_2->setText(QApplication::translate("Dashboard", "Speed Control", 0));
        label_3->setText(QApplication::translate("Dashboard", "Deg", 0));
        label_4->setText(QApplication::translate("Dashboard", "m/s", 0));
    } // retranslateUi

};

namespace Ui {
    class Dashboard: public Ui_Dashboard {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DASHBOARD_H
