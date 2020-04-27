import QtQuick 2.0

import QtQuick.Layouts 1.3
import Qt.labs.calendar 1.0
import QtQuick.Controls 2.0

import "."

Page {
    property alias toolbarButton: buttonsLoader.sourceComponent
    property alias toolbarTitle: titleLabel.text

    header: ToolBarTheme{
        RowLayout {
            anchors.fill: parent
            ToolButton {
                background: Image {
                    source: "qrc:/res/icons/back.svg"
                }
                onClicked: {
                    if(stackView.depth > 1)
                    {
                        stackView.pop()
                    }
                }
            }//ToolButton

        Label {
            id: titleLabel
            Layout.fillWidth: true
            color: Style.text
            elide: Text.ElideRight
            font.pointSize: 30
        }

        Loader {
            Layout.alignment: Qt.AlignRight
            id: buttonLoader
        }
     } //RowLayout
   } // ToolBarTheme

    Rectangle {
        color: Style.pageBackground
        anchors.fill: parent
    }
}
