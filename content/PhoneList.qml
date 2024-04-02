import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    ListView {
        x: 134
        y: 19
        width: 133; height: 77

        model: PhoneListView { id: phoneView }
        delegate: Text {
            text: name + ": " + number
        }
    }

   PhoneButton {
       onClicked: {
           phoneView.insert(2, {"name" : "Krzysiek", "number" : "726955914"} )
       }
   }
}
