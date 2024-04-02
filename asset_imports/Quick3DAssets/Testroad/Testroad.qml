import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.jpg"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    PrincipledMaterial {
        id: material_007_material
        objectName: "Material.007"
        baseColorMap: _0_texture
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
            id: node6b2acf4f9df14ba8bbebbbe3bc27b1f8_fbx
            objectName: "6b2acf4f9df14ba8bbebbbe3bc27b1f8.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 0.01
            scale.y: 0.01
            scale.z: 0.01
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: plane
                    objectName: "Plane"
                    x: -749.9081420898438
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_001
                    objectName: "Plane.001"
                    x: -251.267333984375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_002
                    objectName: "Plane.002"
                    x: 245.39828491210938
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_003
                    objectName: "Plane.003"
                    x: 747.9898071289062
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_004
                    objectName: "Plane.004"
                    x: -502.6480712890625
                    z: -703.007568359375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_005
                    objectName: "Plane.005"
                    x: -3.160381317138672
                    z: -703.007568359375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                }
                Node {
                    id: plane_006
                    objectName: "Plane.006"
                    x: 498.0203552246094
                    z: -703.007568359375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale.x: 198.444
                    scale.y: 297.45
                    scale.z: 198.444
                    Model {
                        id: plane_006_Material_007_0
                        objectName: "Plane.006_Material.007_0"
                        source: "meshes/plane_006_Material_007_0_mesh.mesh"
                        materials: [
                            material_007_material
                        ]
                    }
                }
            }
        }
    }

    // Animations:
}
