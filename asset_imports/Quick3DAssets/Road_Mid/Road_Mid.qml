import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.png"
    property url textureData8: "maps/textureData8.png"
    property url textureData10: "maps/textureData10.png"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData8
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData10
    }
    Skin {
        id: skin
        joints: [
            bone,
            bone_001,
            bone_002,
            bone_003,
            bone_004,
            bone_004_end
        ]
        inverseBindPoses: [
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, 0, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -30, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -60, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -90, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -120, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -150, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: right_
        objectName: "Right"
        Model {
            id: rightRoad
            objectName: "RightRoad"
            source: "meshes/plane_mesh.mesh"
            skin: skin
            materials: [
                road_material
            ]
        }
        Node {
            id: bone
            objectName: "Bone"
            rotation: Qt.quaternion(0.707092, -0.00451644, -0.00451276, -0.707092)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: bone_001
                objectName: "Bone.001"
                x: 2.710505431213761e-20
                y: 29.999996185302734
                z: 1.7780915628762273e-15
                rotation: Qt.quaternion(0.99863, -0.0523317, 4.663e-10, 0.000668275)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: bone_002
                    objectName: "Bone.002"
                    x: -3.725290298461914e-09
                    y: 30.000001907348633
                    rotation: Qt.quaternion(0.99863, -0.0523317, -6.9945e-10, 0.000668275)
                    scale.x: 1
                    scale.y: 1
                    scale.z: 1
                    Node {
                        id: bone_003
                        objectName: "Bone.003"
                        x: 3.725290298461914e-08
                        y: 29.999996185302734
                        z: -1.9073486328125e-06
                        rotation: Qt.quaternion(0.99863, -0.0523317, 4.64479e-10, 0.000668276)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Node {
                            id: bone_004
                            objectName: "Bone.004"
                            x: -4.470348358154297e-08
                            y: 30
                            z: -1.9073486328125e-06
                            rotation: Qt.quaternion(0.99863, -0.0523317, -2.3315e-10, 0.000668275)
                            scale.x: 1
                            scale.y: 1
                            scale.z: 1
                            Node {
                                id: bone_004_end
                                objectName: "Bone.004_end"
                                y: 29.99999237060547
                                rotation: Qt.quaternion(1, -7.45578e-09, -2.77556e-17, 5.82459e-11)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: right_Right_Armature_001Action_002_Right_Armature_001Action_002_timeline
        objectName: "right_Right_Armature_001Action_002_Right_Armature_001Action_002_timeline"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 10034
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 10034
            from: 0
            to: 10034
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bone_001
            property: "position"
            Keyframe {
                frame: 33.3333
                value: Qt.vector3d(2.71051e-20, 30, 1.77809e-15)
            }
        }
        KeyframeGroup {
            target: bone_001
            property: "rotation"
            keyframeSource: "animations/bone_001_rotation_0.qad"
        }
        KeyframeGroup {
            target: bone_002
            property: "position"
            keyframeSource: "animations/bone_002_position_0.qad"
        }
        KeyframeGroup {
            target: bone_002
            property: "rotation"
            keyframeSource: "animations/bone_002_rotation_0.qad"
        }
        KeyframeGroup {
            target: bone_003
            property: "position"
            keyframeSource: "animations/bone_003_position_0.qad"
        }
        KeyframeGroup {
            target: bone_003
            property: "rotation"
            keyframeSource: "animations/bone_003_rotation_0.qad"
        }
        KeyframeGroup {
            target: bone_004
            property: "position"
            keyframeSource: "animations/bone_004_position_0.qad"
        }
        KeyframeGroup {
            target: bone_004
            property: "rotation"
            keyframeSource: "animations/bone_004_rotation_0.qad"
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: road_material
            objectName: "Road"
            baseColorMap: _0_texture
            metalnessMap: _1_texture
            roughnessMap: _1_texture
            metalness: 1
            roughness: 1
            normalMap: _2_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }
}
