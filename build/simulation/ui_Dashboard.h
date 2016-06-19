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
    QLCDNumber *v_x;
    QLabel *label_5;
    QLabel *label_6;
    QLCDNumber *v_y;
    QLabel *label_7;
    QLabel *label_8;
    QLCDNumber *v_angle;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_11;
    QLabel *label_12;
    QLabel *label_13;
    QLCDNumber *distance;
    QLabel *label_14;
    QStatusBar *statusbar;
    QMenuBar *menubar;

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
        label_2->setGeometry(QRect(210, 0, 91, 20));
        speed = new QLCDNumber(centralwidget);
        speed->setObjectName(QStringLiteral("speed"));
        speed->setGeometry(QRect(130, 150, 64, 23));
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
        label_4->setGeometry(QRect(200, 150, 21, 16));
        v_x = new QLCDNumber(centralwidget);
        v_x->setObjectName(QStringLiteral("v_x"));
        v_x->setGeometry(QRect(30, 20, 64, 23));
        QFont font1;
        font1.setBold(true);
        font1.setWeight(75);
        font1.setStrikeOut(false);
        font1.setKerning(true);
        v_x->setFont(font1);
        v_x->setSegmentStyle(QLCDNumber::Flat);
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(10, 20, 16, 16));
        label_6 = new QLabel(centralwidget);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setGeometry(QRect(100, 20, 31, 16));
        v_y = new QLCDNumber(centralwidget);
        v_y->setObjectName(QStringLiteral("v_y"));
        v_y->setGeometry(QRect(30, 50, 64, 23));
        v_y->setFont(font1);
        v_y->setSegmentStyle(QLCDNumber::Flat);
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setGeometry(QRect(10, 50, 21, 16));
        label_8 = new QLabel(centralwidget);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setGeometry(QRect(100, 50, 21, 16));
        v_angle = new QLCDNumber(centralwidget);
        v_angle->setObjectName(QStringLiteral("v_angle"));
        v_angle->setGeometry(QRect(30, 80, 64, 23));
        v_angle->setFont(font1);
        v_angle->setSegmentStyle(QLCDNumber::Flat);
        label_9 = new QLabel(centralwidget);
        label_9->setObjectName(QStringLiteral("label_9"));
        label_9->setGeometry(QRect(10, 80, 21, 16));
        label_10 = new QLabel(centralwidget);
        label_10->setObjectName(QStringLiteral("label_10"));
        label_10->setGeometry(QRect(100, 80, 31, 16));
        label_11 = new QLabel(centralwidget);
        label_11->setObjectName(QStringLiteral("label_11"));
        label_11->setGeometry(QRect(320, 300, 91, 16));
        label_12 = new QLabel(centralwidget);
        label_12->setObjectName(QStringLiteral("label_12"));
        label_12->setGeometry(QRect(130, 130, 91, 20));
        label_13 = new QLabel(centralwidget);
        label_13->setObjectName(QStringLiteral("label_13"));
        label_13->setGeometry(QRect(10, 200, 111, 16));
        distance = new QLCDNumber(centralwidget);
        distance->setObjectName(QStringLiteral("distance"));
        distance->setGeometry(QRect(10, 220, 101, 23));
        distance->setFrameShadow(QFrame::Raised);
        distance->setDigitCount(8);
        distance->setSegmentStyle(QLCDNumber::Flat);
        label_14 = new QLabel(centralwidget);
        label_14->setObjectName(QStringLiteral("label_14"));
        label_14->setGeometry(QRect(120, 220, 41, 16));
        Dashboard->setCentralWidget(centralwidget);
        statusbar = new QStatusBar(Dashboard);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        Dashboard->setStatusBar(statusbar);
        menubar = new QMenuBar(Dashboard);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 487, 24));
        Dashboard->setMenuBar(menubar);

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
        label_5->setText(QApplication::translate("Dashboard", "Vx", 0));
        label_6->setText(QApplication::translate("Dashboard", "m/s", 0));
        label_7->setText(QApplication::translate("Dashboard", "Vy", 0));
        label_8->setText(QApplication::translate("Dashboard", "m/s", 0));
        label_9->setText(QApplication::translate("Dashboard", "Wz", 0));
        label_10->setText(QApplication::translate("Dashboard", "rad/s", 0));
        label_11->setText(QApplication::translate("Dashboard", "Steering Angle", 0));
        label_12->setText(QApplication::translate("Dashboard", "Radial Velocity", 0));
        label_13->setText(QApplication::translate("Dashboard", "Distance traveled:", 0));
        label_14->setText(QApplication::translate("Dashboard", "meters", 0));
    } // retranslateUi

};

namespace Ui {
    class Dashboard: public Ui_Dashboard {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DASHBOARD_H
