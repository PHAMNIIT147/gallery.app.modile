import QtQuick 2.0
import QtQuick.Layouts 1.3

import QtQuick.Controls 2.0

Page {
    header: ToolBar {
        Label {
            Layout.fillWidth: true
            text: "Album"
            font.pointSize: 30
        }
    }
    ListView {
        id: albumList
        model: albumModel
        spacing: 5
        anchors.fill: parent

        delegate: Rectangle {
            width: parent.width
            height: 120
            color: Style.buttonBackground

            Text {
                text: name
                font.pointSize: 16
                anchors.verticalCenter: parent.verticalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    albumList.currentIndex = index
                    pictureModel.setAlbumId(id)
                    pageStack.push("qrc:/qml/AlbumPage.qml", {albumName: name , albumRowIndex: index})
                }
            }
        }//Rectangle
    }//ListView
}
