import QtQuick
import QtQuick3D
import QtQuick.Timeline

Node {
    id: node

    property int bendPhase: 5034

    // Resources

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        Node {
            id: b3554a37a1eb4ad3bbe0d824cb040fa1_fbx
            objectName: "b3554a37a1eb4ad3bbe0d824cb040fa1.fbx"
            rotation: Qt.quaternion(0, 1, 0, 0)
            scale.x: 0.01
            scale.y: 0.01
            scale.z: 0.01
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: cube
                    objectName: "Cube"
                    z: 246.78271484375
                    scale.x: 400
                    scale.y: 5000
                    scale.z: 4.58809
                    Model {
                        id: cube_Material_001_0
                        objectName: "Cube_Material.001_0"
                        source: "meshes/cube_Material_001_0_mesh.mesh"
                        materials: [
                            material_001_material
                        ]
                    }
                    // Model {
                    //     id: cube_linia_groga_0
                    //     objectName: "Cube_linia groga_0"
                    //     source: "meshes/cube_linia_groga_0_mesh.mesh"
                    //     materials: [
                    //         linia_groga_material
                    //     ]
                    // }
                    Model {
                        id: cube_Material_002_0
                        objectName: "Cube_Material.002_0"
                        source: "meshes/cube_Material_002_0_mesh.mesh"
                        materials: [
                            material_002_material
                        ]
                    }
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: material_001_material
            objectName: "Material.001"
            baseColor: "#ff000000"
            roughness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        // PrincipledMaterial {
        //     id: linia_groga_material
        //     objectName: "linia_groga"
        //     baseColor: "#ffcc870f"
        //     roughness: 0.8764158487319946
        //     cullMode: PrincipledMaterial.NoCulling
        //     alphaMode: PrincipledMaterial.Opaque
        // }

        PrincipledMaterial {
            id: material_002_material
            objectName: "Material.002"
            baseColor: "#ffcccccc"
            roughness: 0.8211145401000977
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

   // Timeline {
   //     id: timeline0
   //     startFrame: 34
   //     endFrame: 10034
   //     currentFrame: bendPhase
   //     enabled: true
   //     animations: [
   //         TimelineAnimation {
   //             duration: 10034
   //             from: 34
   //             to: 10034
   //             running: false
   //             loops: Animation.Infinite
   //         }
   //     ]

   //     KeyframeGroup {
   //         target: cube
   //         property: "position"
   //     }
   //     KeyframeGroup {
   //         target: cube
   //         property: "rotation"
   //     }
   //     // KeyframeGroup {
   //     //     target: sketchfab_model
   //     //     property: "position"
   //     // }
   // }


    // Animations:
}
