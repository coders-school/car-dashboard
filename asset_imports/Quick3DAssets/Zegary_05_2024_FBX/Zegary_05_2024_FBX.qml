import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: defaultMaterial_material
        objectName: "DefaultMaterial"
        baseColor: "#ffcccccc"
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Node {
            id: circle002
            objectName: "Circle002"
            x: -368.9057922363281
            y: 13.04742431640625
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Model {
            id: cylinder001
            objectName: "Cylinder001"
            x: -118.363037109375
            z: -33.95037078857422
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/cylinder001_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: cylinder002
            objectName: "Cylinder002"
            x: -371.1722717285156
            y: -0.1453857421875
            z: -33.95037078857422
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/cylinder002_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: line001
            objectName: "Line001"
            x: -398.3073425292969
            y: -1.6958389282226562
            z: -16.498332977294922
            rotation: Qt.quaternion(0.323792, -0.323792, 0.628617, 0.628617)
            source: "meshes/line001_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: line002
            objectName: "Line002"
            x: -142.0320281982422
            y: 11.207736015319824
            z: -56.18403244018555
            rotation: Qt.quaternion(-0.296064, 0.296064, 0.642142, 0.642142)
            scale.x: -1
            scale.y: -1
            scale.z: -1
            source: "meshes/line002_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Node {
            id: line004
            objectName: "Line004"
            x: -195.25376892089844
            y: 0.2499990463256836
            z: -72.76606750488281
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: line007
            objectName: "Line007"
            x: -438.9613342285156
            y: 0.10461139678955078
            z: 17.13623809814453
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: ngon004
            objectName: "NGon004"
            x: -118.363037109375
            y: 0.10461711883544922
            z: -34.12261962890625
            rotation: Qt.quaternion(0.704771, -0.704771, 0.0574288, 0.0574288)
            scale.x: 1.09357
            scale.y: 1.09357
            scale.z: 1
        }
        Node {
            id: licznik_predkosci
            objectName: "Licznik predkosci"
            x: -368.81756591796875
            y: 0.17730712890625
            z: -49.61083984375
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            Model {
                id: text005
                objectName: "Text005"
                x: -59.94805908203125
                y: 22.7633056640625
                z: -0.32269287109375
                source: "meshes/text005_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text011
                objectName: "Text011"
                x: 56.8370361328125
                y: 20.832763671875
                z: -0.17730712890625
                source: "meshes/text011_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text012
                objectName: "Text012"
                x: 66.67425537109375
                y: 1.5242385864257812
                z: -0.17730712890625
                source: "meshes/text012_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text013
                objectName: "Text013"
                x: 69.26287841796875
                y: -19.885391235351562
                z: -0.17730712890625
                source: "meshes/text013_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text010
                objectName: "Text010"
                x: 43.14581298828125
                y: 38.01069641113281
                z: -0.17730712890625
                source: "meshes/text010_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text007
                objectName: "Text007"
                x: -25.7381591796875
                y: 50.16322326660156
                z: -0.17730712890625
                source: "meshes/text007_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text008
                objectName: "Text008"
                x: -1.0809326171875
                y: 56.34382629394531
                z: -0.17730712890625
                source: "meshes/text008_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text009
                objectName: "Text009"
                x: 22.88861083984375
                y: 50.20164489746094
                z: -0.17730712890625
                source: "meshes/text009_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text006
                objectName: "Text006"
                x: -43.25225830078125
                y: 37.2294921875
                z: -0.17730712890625
                source: "meshes/text006_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text003
                objectName: "Text003"
                x: -68.95843505859375
                y: 4.065589904785156
                z: -0.17730712890625
                source: "meshes/text003_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text002
                objectName: "Text002"
                x: -72.71063232421875
                y: -19.587966918945312
                z: -0.17730712890625
                source: "meshes/text002_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text001
                objectName: "Text001"
                x: -68.82110595703125
                y: -43.705902099609375
                z: -0.17730712890625
                source: "meshes/text001_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text004
                objectName: "Text004"
                x: -61.12506103515625
                y: -65.1938247680664
                z: -0.17730712890625
                source: "meshes/text004_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
        }
        Node {
            id: obroty
            objectName: "Obroty"
            x: -119.27021026611328
            y: 0.25
            z: -47.4066047668457
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            Model {
                id: text018
                objectName: "Text018"
                x: 39.56062316894531
                y: 41.53007125854492
                z: -0.25
                source: "meshes/text018_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text014
                objectName: "Text014"
                x: 56.91751480102539
                y: -61.27337646484375
                z: -0.25
                source: "meshes/text014_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text015
                objectName: "Text015"
                x: 70.49996948242188
                y: -36.988365173339844
                z: -0.25
                source: "meshes/text015_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text016
                objectName: "Text016"
                x: 71.41278076171875
                y: -5.524658203125
                z: -0.25
                source: "meshes/text016_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text017
                objectName: "Text017"
                x: 61.500152587890625
                y: 19.167522430419922
                z: -0.25
                source: "meshes/text017_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text022
                objectName: "Text022"
                x: -63.616050720214844
                y: 12.689552307128906
                z: -0.25
                source: "meshes/text022_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text019
                objectName: "Text019"
                x: 12.453048706054688
                y: 52.5883903503418
                z: -0.25
                source: "meshes/text019_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text020
                objectName: "Text020"
                x: -18.957786560058594
                y: 50.23591232299805
                z: -0.25
                source: "meshes/text020_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text021
                objectName: "Text021"
                x: -44.04851531982422
                y: 36.32450485229492
                z: -0.25
                source: "meshes/text021_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
            Model {
                id: text023
                objectName: "Text023"
                x: -71.12200164794922
                y: -15.021835327148438
                z: -0.25
                source: "meshes/text023_mesh.mesh"
                materials: [
                    defaultMaterial_material
                ]
            }
        }
        Node {
            id: circle007
            objectName: "Circle007"
            x: -368.9057922363281
            y: 6.434221267700195
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: shape001
            objectName: "Shape001"
            x: -118.363037109375
            y: 0.10461711883544922
            z: -34.12261962890625
            rotation: Qt.quaternion(0.704771, -0.704771, 0.0574288, 0.0574288)
            scale.x: 1.09357
            scale.y: 1.09357
            scale.z: 1
        }
        Node {
            id: shape002
            objectName: "Shape002"
            x: -195.25376892089844
            y: 0.2499990463256836
            z: -72.76606750488281
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Model {
            id: object001
            objectName: "Object001"
            x: -243.63441467285156
            y: -169.87237548828125
            z: -57.029273986816406
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/object001_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Node {
            id: line009
            objectName: "Line009"
            x: -439.3046875
            y: 13.04743480682373
            z: 36.747779846191406
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Model {
            id: text024
            objectName: "Text024"
            x: -18.302627563476562
            y: 13.047435760498047
            z: -38.98680877685547
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/text024_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: text025
            objectName: "Text025"
            x: -55.37816619873047
            z: 46.9697265625
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/text025_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: text026
            objectName: "Text026"
            x: -467.9249267578125
            y: 13.047428131103516
            z: -40.14701461791992
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/text026_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: text027
            objectName: "Text027"
            x: -431.355712890625
            z: 46.58946990966797
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/text027_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Model {
            id: circle009
            objectName: "Circle009"
            x: -368.9057922363281
            y: 13.047435760498047
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/circle009_mesh.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
        Node {
            id: shape003
            objectName: "Shape003"
            x: -368.9057922363281
            y: 6.434221267700195
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: shape004
            objectName: "Shape004"
            x: -368.9057922363281
            y: 6.434221267700195
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: shape005
            objectName: "Shape005"
            x: -368.9057922363281
            y: 13.04742431640625
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: shape006
            objectName: "Shape006"
            x: -368.9057922363281
            y: 13.04742431640625
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
        Node {
            id: shape007
            objectName: "Shape007"
            x: -368.9057922363281
            y: 13.04742431640625
            z: -33.95037841796875
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        }
    }

    // Animations:
}
