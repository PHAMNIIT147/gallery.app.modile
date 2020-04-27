import QtQuick 2.6
import QtQuick.Controls 2.0

ApplicationWindow {

    readonly property alias pageStack: stackView

    id: app
    visible: true
    width: 640
    height: 480
    title: qsTr("Gallery")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: AlbumListPage {}
    }

    onClosing: {
        if(Qt.platform.os == "android")
        {
            if(stackView.depth > 1)
            {
                close.accepted = false
                stackView.pop()
            }
        }
    }//onClosing
}
