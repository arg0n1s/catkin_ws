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
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *Dashboard)
    {
        if (Dashboard->objectName().isEmpty())
            Dashboard->setObjectName(QStringLiteral("Dashboard"));
        Dashboard->resize(800, 600);
        centralwidget = new QWidget(Dashboard);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        speedSlider = new QSlider(centralwidget);
        speedSlider->setObjectName(QStringLiteral("speedSlider"));
        speedSlider->setGeometry(QRect(370, 60, 29, 211));
        speedSlider->setMinimum(-10);
        speedSlider->setMaximum(10);
        speedSlider->setOrientation(Qt::Vertical);
        speedSlider->setTickPosition(QSlider::TicksBothSides);
        speedSlider->setTickInterval(1);
        steeringSlider = new QSlider(centralwidget);
        steeringSlider->setObjectName(QStringLiteral("steeringSlider"));
        steeringSlider->setGeometry(QRect(210, 350, 351, 29));
        steeringSlider->setMinimum(-50);
        steeringSlider->setMaximum(50);
        steeringSlider->setValue(8);
        steeringSlider->setOrientation(Qt::Horizontal);
        steeringSlider->setTickPosition(QSlider::TicksBelow);
        steeringSlider->setTickInterval(1);
        maxSpeed = new QPushButton(centralwidget);
        maxSpeed->setObjectName(QStringLiteral("maxSpeed"));
        maxSpeed->setGeometry(QRect(370, 30, 31, 27));
        minSpeed = new QPushButton(centralwidget);
        minSpeed->setObjectName(QStringLiteral("minSpeed"));
        minSpeed->setGeometry(QRect(370, 280, 31, 27));
        zeroSpeed = new QPushButton(centralwidget);
        zeroSpeed->setObjectName(QStringLiteral("zeroSpeed"));
        zeroSpeed->setGeometry(QRect(410, 150, 31, 27));
        minSteering = new QPushButton(centralwidget);
        minSteering->setObjectName(QStringLiteral("minSteering"));
        minSteering->setGeometry(QRect(167, 350, 31, 27));
        maxSteering = new QPushButton(centralwidget);
        maxSteering->setObjectName(QStringLiteral("maxSteering"));
        maxSteering->setGeometry(QRect(570, 350, 31, 27));
        centerSteering = new QPushButton(centralwidget);
        centerSteering->setObjectName(QStringLiteral("centerSteering"));
        centerSteering->setGeometry(QRect(360, 380, 51, 27));
        label = new QLabel(centralwidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(340, 330, 91, 20));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(267, 160, 91, 20));
        Dashboard->setCentralWidget(centralwidget);
        menubar = new QMenuBar(Dashboard);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 24));
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
    } // retranslateUi

};

namespace Ui {
    class Dashboard: public Ui_Dashboard {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DASHBOARD_H
