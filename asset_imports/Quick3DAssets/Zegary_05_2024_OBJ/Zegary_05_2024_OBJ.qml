import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: wire_018018018_material
        objectName: "wire_018018018"
        baseColor: "#ff121212"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: wire_135006006_material
        objectName: "wire_135006006"
        baseColor: "#ff870606"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: wire_255255255_material
        objectName: "wire_255255255"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: zegary_05_2024_OBJ_obj
        objectName: "Zegary_05-2024_OBJ.obj"
        Node {
            id: cylinder001
            objectName: "Cylinder001"
        }
        Model {
            id: cylinder0013
            objectName: "Cylinder001"
            source: "meshes/cylinder001_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: cylinder002
            objectName: "Cylinder002"
        }
        Model {
            id: cylinder0027
            objectName: "Cylinder002"
            source: "meshes/cylinder002_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: line001
            objectName: "Line001"
        }
        Model {
            id: line00110
            objectName: "Line001"
            source: "meshes/line001_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: line002
            objectName: "Line002"
        }
        Model {
            id: line00214
            objectName: "Line002"
            source: "meshes/line002_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: text005
            objectName: "Text005"
        }
        Model {
            id: text00517
            objectName: "Text005"
            source: "meshes/text005_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text011
            objectName: "Text011"
        }
        Model {
            id: text01121
            objectName: "Text011"
            source: "meshes/text011_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text012
            objectName: "Text012"
        }
        Model {
            id: text01224
            objectName: "Text012"
            source: "meshes/text012_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text013
            objectName: "Text013"
        }
        Model {
            id: text01327
            objectName: "Text013"
            source: "meshes/text013_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text010
            objectName: "Text010"
        }
        Model {
            id: text01030
            objectName: "Text010"
            source: "meshes/text010_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text007
            objectName: "Text007"
        }
        Model {
            id: text00733
            objectName: "Text007"
            source: "meshes/text007_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text008
            objectName: "Text008"
        }
        Model {
            id: text00836
            objectName: "Text008"
            source: "meshes/text008_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text009
            objectName: "Text009"
        }
        Model {
            id: text00939
            objectName: "Text009"
            source: "meshes/text009_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text006
            objectName: "Text006"
        }
        Model {
            id: text00642
            objectName: "Text006"
            source: "meshes/text006_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text003
            objectName: "Text003"
        }
        Model {
            id: text00345
            objectName: "Text003"
            source: "meshes/text003_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text002
            objectName: "Text002"
        }
        Model {
            id: text00248
            objectName: "Text002"
            source: "meshes/text002_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text001
            objectName: "Text001"
        }
        Model {
            id: text00151
            objectName: "Text001"
            source: "meshes/text001_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text004
            objectName: "Text004"
        }
        Model {
            id: text00454
            objectName: "Text004"
            source: "meshes/text004_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text018
            objectName: "Text018"
        }
        Model {
            id: text01857
            objectName: "Text018"
            source: "meshes/text018_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text014
            objectName: "Text014"
        }
        Model {
            id: text01460
            objectName: "Text014"
            source: "meshes/text014_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text015
            objectName: "Text015"
        }
        Model {
            id: text01563
            objectName: "Text015"
            source: "meshes/text015_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text016
            objectName: "Text016"
        }
        Model {
            id: text01666
            objectName: "Text016"
            source: "meshes/text016_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text017
            objectName: "Text017"
        }
        Model {
            id: text01769
            objectName: "Text017"
            source: "meshes/text017_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text022
            objectName: "Text022"
        }
        Model {
            id: text02272
            objectName: "Text022"
            source: "meshes/text022_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text019
            objectName: "Text019"
        }
        Model {
            id: text01975
            objectName: "Text019"
            source: "meshes/text019_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text020
            objectName: "Text020"
        }
        Model {
            id: text02078
            objectName: "Text020"
            source: "meshes/text020_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text021
            objectName: "Text021"
        }
        Model {
            id: text02181
            objectName: "Text021"
            source: "meshes/text021_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text023
            objectName: "Text023"
        }
        Model {
            id: text02384
            objectName: "Text023"
            source: "meshes/text023_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: object001
            objectName: "Object001"
        }
        Model {
            id: object00187
            objectName: "Object001"
            source: "meshes/object001_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: text024
            objectName: "Text024"
        }
        Model {
            id: text02490
            objectName: "Text024"
            source: "meshes/text024_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text025
            objectName: "Text025"
        }
        Model {
            id: text02593
            objectName: "Text025"
            source: "meshes/text025_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text026
            objectName: "Text026"
        }
        Model {
            id: text02696
            objectName: "Text026"
            source: "meshes/text026_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text027
            objectName: "Text027"
        }
        Model {
            id: text02799
            objectName: "Text027"
            source: "meshes/text027_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: circle009
            objectName: "Circle009"
        }
        Model {
            id: circle009102
            objectName: "Circle009"
            source: "meshes/circle009_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
    }

    // Animations:
}
