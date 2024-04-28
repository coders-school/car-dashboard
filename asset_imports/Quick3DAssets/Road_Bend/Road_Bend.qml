import QtQuick
import QtQuick3D
import QtQuick.Timeline
Node {
    id: bending
    property int bendPhase: 5034
    property alias mat: road.materials
    property alias bias: road.depthBias
    property real scaletexture: 4

    Model {
        id: road        
        depthBias: 0
        inverseBindPoses: [
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, 0, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -30, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -60, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -90, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -120, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1),
            Qt.matrix4x4(0, -0.999919, 0.012769, 0, 1, 0, 0, -150, 0, 0.012769, 0.999919, 0, 0, 0, 0, 1)
        ]
        source: "meshes/road.mesh"
        materials: [
            road_material
        ]
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: road_material
            objectName: "road_material"
            baseColor: "#aaaaaa"
            alphaCutoff: 1
            depthDrawMode: Material.NeverDepthDraw
            baseColorMap: Texture {
                source: "../../../content/images/Road_DiagonalLightBrushing_color.png"
                scaleV: scaletexture
                scaleU: scaletexture
                generateMipmaps: true
                mipFilter: Texture.Linear
                NumberAnimation on positionV { from: 0; to: 1; duration: 1500 / scaletexture; loops: -1 }
            }
            opacityChannel: Material.A
            metalnessMap: Texture {
                source: "../../../content/images/Road_DiagonalLightBrushing_occlusionRoughnessMetallic.png"
                scaleV: scaletexture
                scaleU: scaletexture
                generateMipmaps: true
                mipFilter: Texture.Linear
                NumberAnimation on positionV { from: 0; to: 1; duration: 1500 / scaletexture; loops: -1 }
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "../../../content/images/Road_DiagonalLightBrushing_occlusionRoughnessMetallic.png"
                scaleV: scaletexture
                scaleU: scaletexture
                generateMipmaps: true
                mipFilter: Texture.Linear
                NumberAnimation on positionV { from: 0; to: 1; duration: 1500 / scaletexture; loops: -1 }
            }
            roughnessChannel: Material.G
            metalness: 1
            roughness: 0.4
            normalMap: Texture {
                source: "../../../content/images/Road_DiagonalLightBrushing_normal.png"
                scaleV: scaletexture
                scaleU: scaletexture
                generateMipmaps: true
                mipFilter: Texture.Linear
                NumberAnimation on positionV { from: 0; to: 1; duration: 1500 / scaletexture; loops: -1 }
            }
            alphaMode: PrincipledMaterial.Opaque
        }
    }
}
