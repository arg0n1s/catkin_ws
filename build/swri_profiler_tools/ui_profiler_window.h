/********************************************************************************
** Form generated from reading UI file 'profiler_window.ui'
**
** Created by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PROFILER_WINDOW_H
#define UI_PROFILER_WINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QMainWindow>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QSplitter>
#include <QtGui/QStatusBar>
#include <QtGui/QTextBrowser>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include <swri_profiler_tools/partition_widget.h>
#include <swri_profiler_tools/profile_tree_widget.h>
#include <swri_profiler_tools/time_plot_widget.h>

QT_BEGIN_NAMESPACE

class Ui_ProfilerWindow
{
public:
    QAction *action_Quit;
    QAction *action_NewWindow;
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout;
    QSplitter *splitter;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    swri_profiler_tools::ProfileTreeWidget *profileTree;
    swri_profiler_tools::PartitionWidget *partitionWidget;
    QTextBrowser *infoView;
    swri_profiler_tools::TimePlotWidget *timePlot;
    QMenuBar *menubar;
    QMenu *menu_File;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *ProfilerWindow)
    {
        if (ProfilerWindow->objectName().isEmpty())
            ProfilerWindow->setObjectName(QString::fromUtf8("ProfilerWindow"));
        ProfilerWindow->resize(800, 600);
        action_Quit = new QAction(ProfilerWindow);
        action_Quit->setObjectName(QString::fromUtf8("action_Quit"));
        action_NewWindow = new QAction(ProfilerWindow);
        action_NewWindow->setObjectName(QString::fromUtf8("action_NewWindow"));
        centralwidget = new QWidget(ProfilerWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        verticalLayout = new QVBoxLayout(centralwidget);
        verticalLayout->setSpacing(3);
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        splitter = new QSplitter(centralwidget);
        splitter->setObjectName(QString::fromUtf8("splitter"));
        splitter->setOrientation(Qt::Vertical);
        layoutWidget = new QWidget(splitter);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setSpacing(3);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        profileTree = new swri_profiler_tools::ProfileTreeWidget(layoutWidget);
        profileTree->setObjectName(QString::fromUtf8("profileTree"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(profileTree->sizePolicy().hasHeightForWidth());
        profileTree->setSizePolicy(sizePolicy);

        horizontalLayout->addWidget(profileTree);

        partitionWidget = new swri_profiler_tools::PartitionWidget(layoutWidget);
        partitionWidget->setObjectName(QString::fromUtf8("partitionWidget"));
        sizePolicy.setHeightForWidth(partitionWidget->sizePolicy().hasHeightForWidth());
        partitionWidget->setSizePolicy(sizePolicy);

        horizontalLayout->addWidget(partitionWidget);

        infoView = new QTextBrowser(layoutWidget);
        infoView->setObjectName(QString::fromUtf8("infoView"));

        horizontalLayout->addWidget(infoView);

        splitter->addWidget(layoutWidget);

        verticalLayout->addWidget(splitter);

        timePlot = new swri_profiler_tools::TimePlotWidget(centralwidget);
        timePlot->setObjectName(QString::fromUtf8("timePlot"));

        verticalLayout->addWidget(timePlot);

        ProfilerWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(ProfilerWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 27));
        menu_File = new QMenu(menubar);
        menu_File->setObjectName(QString::fromUtf8("menu_File"));
        ProfilerWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(ProfilerWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        ProfilerWindow->setStatusBar(statusbar);

        menubar->addAction(menu_File->menuAction());
        menu_File->addAction(action_NewWindow);
        menu_File->addSeparator();
        menu_File->addAction(action_Quit);

        retranslateUi(ProfilerWindow);
        QObject::connect(action_Quit, SIGNAL(triggered()), ProfilerWindow, SLOT(close()));

        QMetaObject::connectSlotsByName(ProfilerWindow);
    } // setupUi

    void retranslateUi(QMainWindow *ProfilerWindow)
    {
        ProfilerWindow->setWindowTitle(QApplication::translate("ProfilerWindow", "MainWindow", 0, QApplication::UnicodeUTF8));
        action_Quit->setText(QApplication::translate("ProfilerWindow", "&Quit", 0, QApplication::UnicodeUTF8));
        action_Quit->setShortcut(QApplication::translate("ProfilerWindow", "Ctrl+Q", 0, QApplication::UnicodeUTF8));
        action_NewWindow->setText(QApplication::translate("ProfilerWindow", "&New Window", 0, QApplication::UnicodeUTF8));
        action_NewWindow->setShortcut(QApplication::translate("ProfilerWindow", "Ctrl+N", 0, QApplication::UnicodeUTF8));
        menu_File->setTitle(QApplication::translate("ProfilerWindow", "&File", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class ProfilerWindow: public Ui_ProfilerWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PROFILER_WINDOW_H
