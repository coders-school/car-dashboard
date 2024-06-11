import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: wire_008061138_material
        objectName: "wire_008061138"
        baseColor: "#ff083d8a"
        indexOfRefraction: 1
    }
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
        id: zegary_05_2024_OBJ_2_obj
        objectName: "Zegary_05-2024_OBJ_2.obj"
        Node {
            id: circle002
            objectName: "Circle002"
        }
        Model {
            id: circle0023
            objectName: "Circle002"
            source: "meshes/circle002_mesh.mesh"
            materials: [
                wire_008061138_material
            ]
        }
        Node {
            id: cylinder001
            objectName: "Cylinder001"
        }
        Model {
            id: cylinder0017
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
            id: cylinder00211
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
            id: line00114
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
            id: line00218
            objectName: "Line002"
            source: "meshes/line002_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: line004
            objectName: "Line004"
        }
        Model {
            id: line00421
            objectName: "Line004"
            source: "meshes/line004_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: line007
            objectName: "Line007"
        }
        Model {
            id: line00725
            objectName: "Line007"
            source: "meshes/line007_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: ngon004
            objectName: "NGon004"
        }
        Model {
            id: ngon00428
            objectName: "NGon004"
            source: "meshes/ngon004_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: text005
            objectName: "Text005"
        }
        Model {
            id: text00531
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
            id: text01134
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
            id: text01237
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
            id: text01340
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
            id: text01043
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
            id: text00746
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
            id: text00849
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
            id: text00952
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
            id: text00655
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
            id: text00358
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
            id: text00261
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
            id: text00164
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
            id: text00467
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
            id: text01870
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
            id: text01473
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
            id: text01576
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
            id: text01679
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
            id: text01782
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
            id: text02285
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
            id: text01988
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
            id: text02091
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
            id: text02194
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
            id: text02397
            objectName: "Text023"
            source: "meshes/text023_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: circle007
            objectName: "Circle007"
        }
        Model {
            id: circle007100
            objectName: "Circle007"
            source: "meshes/circle007_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: shape001
            objectName: "Shape001"
        }
        Model {
            id: shape001103
            objectName: "Shape001"
            source: "meshes/shape001_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: shape002
            objectName: "Shape002"
        }
        Model {
            id: shape002106
            objectName: "Shape002"
            source: "meshes/shape002_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: object001
            objectName: "Object001"
        }
        Model {
            id: object001109
            objectName: "Object001"
            source: "meshes/object001_mesh.mesh"
            materials: [
                wire_135006006_material
            ]
        }
        Node {
            id: line009
            objectName: "Line009"
        }
        Model {
            id: line009112
            objectName: "Line009"
            source: "meshes/line009_mesh.mesh"
            materials: [
                wire_255255255_material
            ]
        }
        Node {
            id: text024
            objectName: "Text024"
        }
        Model {
            id: text024115
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
            id: text025118
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
            id: text026121
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
            id: text027124
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
            id: circle009127
            objectName: "Circle009"
            source: "meshes/circle009_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: shape003
            objectName: "Shape003"
        }
        Model {
            id: shape003130
            objectName: "Shape003"
            source: "meshes/shape003_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: shape004
            objectName: "Shape004"
        }
        Model {
            id: shape004133
            objectName: "Shape004"
            source: "meshes/shape004_mesh.mesh"
            materials: [
                wire_018018018_material
            ]
        }
        Node {
            id: shape005
            objectName: "Shape005"
        }
        Model {
            id: shape005136
            objectName: "Shape005"
            source: "meshes/shape005_mesh.mesh"
            materials: [
                wire_008061138_material
            ]
        }
        Node {
            id: shape006
            objectName: "Shape006"
        }
        Model {
            id: shape006139
            objectName: "Shape006"
            source: "meshes/shape006_mesh.mesh"
            materials: [
                wire_008061138_material
            ]
        }
        Node {
            id: shape007
            objectName: "Shape007"
        }
        Model {
            id: shape007142
            objectName: "Shape007"
            source: "meshes/shape007_mesh.mesh"
            materials: [
                wire_008061138_material
            ]
        }
    }

    // Animations:
}
