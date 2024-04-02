import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: material_4057_material
        objectName: "Material_4057"
        baseColor: "#ff000000"
        roughness: 0.6489999890327454
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
            id: node4da961c7160a4ecba220b6008858f30d_fbx
            objectName: "4da961c7160a4ecba220b6008858f30d.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.0254
            scale.y: 0.0254
            scale.z: 0.0254
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: plane87
                    objectName: "Plane87"
                    x: -67.89830017089844
                    y: -28.517393112182617
                    z: -5.3028435707092285
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    Model {
                        id: plane87_Material__4057_0
                        objectName: "Plane87_Material #4057_0"
                        x: 58.848018646240234
                        y: -3.678569793701172
                        z: 29.899028778076172
                        scale.x: 6
                        scale.y: 1
                        scale.z: 1
                        source: "meshes/plane87_Material__4057_0_mesh.mesh"
                        materials: [
                            material_4057_material
                        ]
                    }
                }
            }
        }
    }

    // Animations:
}
