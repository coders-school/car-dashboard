import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: material_001_material
        objectName: "Material.001"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: material_002_material
        objectName: "Material.002"
        baseColor: "#ffcccccc"
        roughness: 0.8211145401000977
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 1
        scale.y: 1
        scale.z: 1
        Node {
            id: b3554a37a1eb4ad3bbe0d824cb040fa1_fbx
            objectName: "b3554a37a1eb4ad3bbe0d824cb040fa1.fbx"
            rotation: Qt.quaternion(5.55112e-15, 1, 0, 0)
            scale.x: 0.01
            scale.y: 0.01
            scale.z: 0.01
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: cube_001
                    objectName: "Cube.001"
                    z: 246.78271484375
                    scale.x: 400
                    scale.y: 5000
                    scale.z: 4.58809
                    Model {
                        id: cube_Material_001_0
                        objectName: "Cube_Material.001_0"
                        z: 3.814698175119702e-06
                        source: "meshes/cube_Material_001_0_mesh.mesh"
                        materials: [
                            material_001_material
                        ]
                    }
                    Model {
                        id: cube_Material_002_0
                        objectName: "Cube_Material.002_0"
                        z: 3.814698175119702e-06
                        source: "meshes/cube_Material_002_0_mesh.mesh"
                        materials: [
                            material_002_material
                        ]
                    }
                }
            }
        }
    }

    // Animations:
}
