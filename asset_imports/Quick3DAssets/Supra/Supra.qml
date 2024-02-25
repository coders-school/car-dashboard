import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.png"
    property url textureData12: "maps/textureData12.png"
    property url textureData1401: "maps/textureData1401.png"
    property url textureData1432: "maps/textureData1432.png"
    property url textureData1443: "maps/textureData1443.png"

    property int leftDoorAngle: 0
    property int rightDoorAngle: 0
    property int trunkAngle: 0

    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData12
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData1401
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData1432
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData1443
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707104, -0.707104, 0.0020577, 0.00205771)
        scale.x: 1.05098
        scale.y: 1.05098
        scale.z: 1.05098
        Node {
            id: supra_mk5_obj_cleaner_materialmerger_gles
            objectName: "Supra mk5.obj.cleaner.materialmerger.gles"
            Model {
                id: bagaznik
                objectName: "Bagaznik"
                x: 0.0011987821198999882
                y: 0.9594999551773071
                z: 1.2130995988845825
                eulerRotation.x: node.trunkAngle
                source: "meshes/bagaznik_mesh.mesh"
                materials: [
                    window_material,
                    supra_body_paint_material,
                    chrome_material,
                    blackMatt_material
                ]
            }
            Model {
                id: leweDrzwi
                objectName: "leweDrzwi"
                x: 0.928396999835968
                y: -0.5268131494522095
                z: 0.5737320184707642
                eulerRotation.z: node.leftDoorAngle
                source: "meshes/leweDrzwi_mesh.mesh"
                materials: [
                    badges_material,
                    supra_body_paint_material,
                    blackGloss_material,
                    window_material,
                    chrome_material,
                    leather_material
                ]
            }
            Model {
                id: maska
                objectName: "Maska"
                x: -0.0320839062333107
                y: -0.5376836657524109
                z: 0.9530353546142578
                rotation: Qt.quaternion(0.999996, -0.002775, 0.000345318, 0)
                source: "meshes/object_61_012_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_10
                objectName: "Object_10"
                source: "meshes/object_8_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_11
                objectName: "Object_11"
                source: "meshes/object_9_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_12
                objectName: "Object_12"
                source: "meshes/object_10_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_13
                objectName: "Object_13"
                source: "meshes/object_11_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_14
                objectName: "Object_14"
                source: "meshes/object_12_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_15
                objectName: "Object_15"
                source: "meshes/object_13_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_16
                objectName: "Object_16"
                source: "meshes/object_14_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_17
                objectName: "Object_17"
                source: "meshes/object_15_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Node {
                id: object_2
                objectName: "Object_2"
            }
            Model {
                id: object_20
                objectName: "Object_20"
                source: "meshes/object_18_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_21
                objectName: "Object_21"
                source: "meshes/object_19_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_22
                objectName: "Object_22"
                source: "meshes/object_20_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_23
                objectName: "Object_23"
                source: "meshes/object_21_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_24
                objectName: "Object_24"
                source: "meshes/object_22_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_001
                objectName: "Object_25.001"
                source: "meshes/object_23_001_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_002
                objectName: "Object_25.002"
                source: "meshes/object_23_002_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_003
                objectName: "Object_25.003"
                source: "meshes/object_23_003_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_004
                objectName: "Object_25.004"
                source: "meshes/object_23_004_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_005
                objectName: "Object_25.005"
                source: "meshes/object_23_005_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_006
                objectName: "Object_25.006"
                source: "meshes/object_23_006_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_007
                objectName: "Object_25.007"
                source: "meshes/object_23_007_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_008
                objectName: "Object_25.008"
                source: "meshes/object_23_008_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_009
                objectName: "Object_25.009"
                source: "meshes/object_23_009_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_010
                objectName: "Object_25.010"
                source: "meshes/object_23_010_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_011
                objectName: "Object_25.011"
                source: "meshes/object_23_011_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_012
                objectName: "Object_25.012"
                source: "meshes/object_23_012_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_013
                objectName: "Object_25.013"
                source: "meshes/object_23_013_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_014
                objectName: "Object_25.014"
                source: "meshes/object_23_014_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_015
                objectName: "Object_25.015"
                source: "meshes/object_23_015_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_016
                objectName: "Object_25.016"
                source: "meshes/object_23_016_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_017
                objectName: "Object_25.017"
                source: "meshes/object_23_017_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_018
                objectName: "Object_25.018"
                source: "meshes/object_23_018_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_019
                objectName: "Object_25.019"
                source: "meshes/object_23_019_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_020
                objectName: "Object_25.020"
                source: "meshes/object_23_020_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_021
                objectName: "Object_25.021"
                source: "meshes/object_23_021_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_022
                objectName: "Object_25.022"
                source: "meshes/object_23_022_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_023
                objectName: "Object_25.023"
                source: "meshes/object_23_023_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_024
                objectName: "Object_25.024"
                source: "meshes/object_23_024_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_025
                objectName: "Object_25.025"
                source: "meshes/object_23_025_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_026
                objectName: "Object_25.026"
                source: "meshes/object_23_026_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_027
                objectName: "Object_25.027"
                source: "meshes/object_23_027_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_028
                objectName: "Object_25.028"
                source: "meshes/object_23_028_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_029
                objectName: "Object_25.029"
                source: "meshes/object_23_029_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_030
                objectName: "Object_25.030"
                source: "meshes/object_23_030_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_031
                objectName: "Object_25.031"
                source: "meshes/object_23_031_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_032
                objectName: "Object_25.032"
                source: "meshes/object_23_032_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_033
                objectName: "Object_25.033"
                source: "meshes/object_23_033_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_034
                objectName: "Object_25.034"
                source: "meshes/object_23_034_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_035
                objectName: "Object_25.035"
                source: "meshes/object_23_035_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_036
                objectName: "Object_25.036"
                source: "meshes/object_23_036_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_037
                objectName: "Object_25.037"
                source: "meshes/object_23_037_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_038
                objectName: "Object_25.038"
                source: "meshes/object_23_038_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_039
                objectName: "Object_25.039"
                source: "meshes/object_23_039_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_040
                objectName: "Object_25.040"
                source: "meshes/object_23_040_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_041
                objectName: "Object_25.041"
                source: "meshes/object_23_041_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_042
                objectName: "Object_25.042"
                source: "meshes/object_23_042_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_043
                objectName: "Object_25.043"
                source: "meshes/object_23_043_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_044
                objectName: "Object_25.044"
                source: "meshes/object_23_044_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_045
                objectName: "Object_25.045"
                source: "meshes/object_23_045_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_046
                objectName: "Object_25.046"
                source: "meshes/object_23_046_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_047
                objectName: "Object_25.047"
                source: "meshes/object_23_047_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_048
                objectName: "Object_25.048"
                source: "meshes/object_23_048_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_049
                objectName: "Object_25.049"
                source: "meshes/object_23_049_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_050
                objectName: "Object_25.050"
                source: "meshes/object_23_050_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_051
                objectName: "Object_25.051"
                source: "meshes/object_23_051_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_053
                objectName: "Object_25.053"
                source: "meshes/object_23_053_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_054
                objectName: "Object_25.054"
                source: "meshes/object_23_054_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_055
                objectName: "Object_25.055"
                source: "meshes/object_23_055_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_056
                objectName: "Object_25.056"
                source: "meshes/object_23_056_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_057
                objectName: "Object_25.057"
                source: "meshes/object_23_057_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_058
                objectName: "Object_25.058"
                source: "meshes/object_23_058_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_059
                objectName: "Object_25.059"
                source: "meshes/object_23_059_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_060
                objectName: "Object_25.060"
                source: "meshes/object_23_060_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_061
                objectName: "Object_25.061"
                source: "meshes/object_23_061_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_062
                objectName: "Object_25.062"
                source: "meshes/object_23_062_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_063
                objectName: "Object_25.063"
                source: "meshes/object_23_063_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_064
                objectName: "Object_25.064"
                source: "meshes/object_23_064_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_065
                objectName: "Object_25.065"
                source: "meshes/object_23_065_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_066
                objectName: "Object_25.066"
                source: "meshes/object_23_066_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_067
                objectName: "Object_25.067"
                source: "meshes/object_23_067_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_068
                objectName: "Object_25.068"
                source: "meshes/object_23_068_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_069
                objectName: "Object_25.069"
                source: "meshes/object_23_069_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_070
                objectName: "Object_25.070"
                source: "meshes/object_23_070_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_071
                objectName: "Object_25.071"
                source: "meshes/object_23_071_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_072
                objectName: "Object_25.072"
                source: "meshes/object_23_072_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_073
                objectName: "Object_25.073"
                source: "meshes/object_23_073_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_074
                objectName: "Object_25.074"
                source: "meshes/object_23_074_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_075
                objectName: "Object_25.075"
                source: "meshes/object_23_075_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_076
                objectName: "Object_25.076"
                source: "meshes/object_23_076_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_077
                objectName: "Object_25.077"
                source: "meshes/object_23_077_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_078
                objectName: "Object_25.078"
                source: "meshes/object_23_078_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_079
                objectName: "Object_25.079"
                source: "meshes/object_23_079_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_080
                objectName: "Object_25.080"
                source: "meshes/object_23_080_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_081
                objectName: "Object_25.081"
                source: "meshes/object_23_081_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_25_082
                objectName: "Object_25.082"
                source: "meshes/object_23_082_mesh.mesh"
                materials: [
                    blackMatt_material
                ]
            }
            Model {
                id: object_26
                objectName: "Object_26"
                source: "meshes/object_24_mesh.mesh"
                materials: [
                    brake_Caliper_material
                ]
            }
            Model {
                id: object_27
                objectName: "Object_27"
                source: "meshes/object_25_mesh.mesh"
                materials: [
                    brake_Caliper_material
                ]
            }
            Model {
                id: object_28
                objectName: "Object_28"
                source: "meshes/object_26_mesh.mesh"
                materials: [
                    brakeDisc_material
                ]
            }
            Model {
                id: object_29
                objectName: "Object_29"
                source: "meshes/object_27_mesh.mesh"
                materials: [
                    brakeLight_material
                ]
            }
            Model {
                id: object_3
                objectName: "Object_3"
                source: "meshes/object_1_mesh.mesh"
                materials: [
                    reverselight_material
                ]
            }
            Model {
                id: object_30
                objectName: "Object_30"
                source: "meshes/object_28_mesh.mesh"
                materials: [
                    carpet_material
                ]
            }
            Model {
                id: object_31
                objectName: "Object_31"
                source: "meshes/object_29_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_32
                objectName: "Object_32"
                source: "meshes/object_30_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_004
                objectName: "Object_33.004"
                source: "meshes/object_31_004_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_005
                objectName: "Object_33.005"
                source: "meshes/object_31_005_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_006
                objectName: "Object_33.006"
                source: "meshes/object_31_006_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_007
                objectName: "Object_33.007"
                source: "meshes/object_31_007_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_008
                objectName: "Object_33.008"
                source: "meshes/object_31_008_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_009
                objectName: "Object_33.009"
                source: "meshes/object_31_009_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_010
                objectName: "Object_33.010"
                source: "meshes/object_31_010_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_011
                objectName: "Object_33.011"
                source: "meshes/object_31_011_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_012
                objectName: "Object_33.012"
                source: "meshes/object_31_012_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_013
                objectName: "Object_33.013"
                source: "meshes/object_31_013_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_014
                objectName: "Object_33.014"
                source: "meshes/object_31_014_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_015
                objectName: "Object_33.015"
                source: "meshes/object_31_015_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_016
                objectName: "Object_33.016"
                source: "meshes/object_31_016_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_017
                objectName: "Object_33.017"
                source: "meshes/object_31_017_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_018
                objectName: "Object_33.018"
                source: "meshes/object_31_018_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_019
                objectName: "Object_33.019"
                source: "meshes/object_31_019_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_020
                objectName: "Object_33.020"
                source: "meshes/object_31_020_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_021
                objectName: "Object_33.021"
                source: "meshes/object_31_021_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_022
                objectName: "Object_33.022"
                source: "meshes/object_31_022_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_023
                objectName: "Object_33.023"
                source: "meshes/object_31_023_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_024
                objectName: "Object_33.024"
                source: "meshes/object_31_024_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_025
                objectName: "Object_33.025"
                source: "meshes/object_31_025_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_026
                objectName: "Object_33.026"
                source: "meshes/object_31_026_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_027
                objectName: "Object_33.027"
                source: "meshes/object_31_027_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_028
                objectName: "Object_33.028"
                source: "meshes/object_31_028_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_029
                objectName: "Object_33.029"
                source: "meshes/object_31_029_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_030
                objectName: "Object_33.030"
                source: "meshes/object_31_030_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_031
                objectName: "Object_33.031"
                source: "meshes/object_31_031_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_032
                objectName: "Object_33.032"
                source: "meshes/object_31_032_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_033
                objectName: "Object_33.033"
                source: "meshes/object_31_033_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_034
                objectName: "Object_33.034"
                source: "meshes/object_31_034_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_035
                objectName: "Object_33.035"
                source: "meshes/object_31_035_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_036
                objectName: "Object_33.036"
                source: "meshes/object_31_036_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_037
                objectName: "Object_33.037"
                source: "meshes/object_31_037_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_038
                objectName: "Object_33.038"
                source: "meshes/object_31_038_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_039
                objectName: "Object_33.039"
                source: "meshes/object_31_039_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_040
                objectName: "Object_33.040"
                source: "meshes/object_31_040_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_041
                objectName: "Object_33.041"
                source: "meshes/object_31_041_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_042
                objectName: "Object_33.042"
                source: "meshes/object_31_042_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_043
                objectName: "Object_33.043"
                source: "meshes/object_31_043_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_044
                objectName: "Object_33.044"
                source: "meshes/object_31_044_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_045
                objectName: "Object_33.045"
                source: "meshes/object_31_045_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_046
                objectName: "Object_33.046"
                source: "meshes/object_31_046_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_047
                objectName: "Object_33.047"
                source: "meshes/object_31_047_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_048
                objectName: "Object_33.048"
                source: "meshes/object_31_048_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_049
                objectName: "Object_33.049"
                source: "meshes/object_31_049_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_050
                objectName: "Object_33.050"
                source: "meshes/object_31_050_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_051
                objectName: "Object_33.051"
                source: "meshes/object_31_051_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_052
                objectName: "Object_33.052"
                source: "meshes/object_31_052_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_053
                objectName: "Object_33.053"
                source: "meshes/object_31_053_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_054
                objectName: "Object_33.054"
                source: "meshes/object_31_054_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_055
                objectName: "Object_33.055"
                source: "meshes/object_31_055_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_056
                objectName: "Object_33.056"
                source: "meshes/object_31_056_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_057
                objectName: "Object_33.057"
                source: "meshes/object_31_057_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_058
                objectName: "Object_33.058"
                source: "meshes/object_31_058_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_059
                objectName: "Object_33.059"
                source: "meshes/object_31_059_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_060
                objectName: "Object_33.060"
                source: "meshes/object_31_060_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_061
                objectName: "Object_33.061"
                source: "meshes/object_31_061_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_062
                objectName: "Object_33.062"
                source: "meshes/object_31_062_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_063
                objectName: "Object_33.063"
                source: "meshes/object_31_063_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_064
                objectName: "Object_33.064"
                source: "meshes/object_31_064_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_065
                objectName: "Object_33.065"
                source: "meshes/object_31_065_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_066
                objectName: "Object_33.066"
                source: "meshes/object_31_066_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_067
                objectName: "Object_33.067"
                source: "meshes/object_31_067_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_068
                objectName: "Object_33.068"
                source: "meshes/object_31_068_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_069
                objectName: "Object_33.069"
                source: "meshes/object_31_069_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_070
                objectName: "Object_33.070"
                source: "meshes/object_31_070_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_071
                objectName: "Object_33.071"
                source: "meshes/object_31_071_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_072
                objectName: "Object_33.072"
                source: "meshes/object_31_072_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_073
                objectName: "Object_33.073"
                source: "meshes/object_31_073_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_074
                objectName: "Object_33.074"
                source: "meshes/object_31_074_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_075
                objectName: "Object_33.075"
                source: "meshes/object_31_075_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_076
                objectName: "Object_33.076"
                source: "meshes/object_31_076_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_077
                objectName: "Object_33.077"
                source: "meshes/object_31_077_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_078
                objectName: "Object_33.078"
                source: "meshes/object_31_078_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_079
                objectName: "Object_33.079"
                source: "meshes/object_31_079_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_080
                objectName: "Object_33.080"
                source: "meshes/object_31_080_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_081
                objectName: "Object_33.081"
                source: "meshes/object_31_081_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_082
                objectName: "Object_33.082"
                source: "meshes/object_31_082_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_083
                objectName: "Object_33.083"
                source: "meshes/object_31_083_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_084
                objectName: "Object_33.084"
                source: "meshes/object_31_084_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_085
                objectName: "Object_33.085"
                source: "meshes/object_31_085_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_086
                objectName: "Object_33.086"
                source: "meshes/object_31_086_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_087
                objectName: "Object_33.087"
                source: "meshes/object_31_087_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_088
                objectName: "Object_33.088"
                source: "meshes/object_31_088_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_089
                objectName: "Object_33.089"
                source: "meshes/object_31_089_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_090
                objectName: "Object_33.090"
                source: "meshes/object_31_090_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_091
                objectName: "Object_33.091"
                source: "meshes/object_31_091_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_092
                objectName: "Object_33.092"
                source: "meshes/object_31_092_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_093
                objectName: "Object_33.093"
                source: "meshes/object_31_093_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_094
                objectName: "Object_33.094"
                source: "meshes/object_31_094_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_095
                objectName: "Object_33.095"
                source: "meshes/object_31_095_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_096
                objectName: "Object_33.096"
                source: "meshes/object_31_096_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_097
                objectName: "Object_33.097"
                source: "meshes/object_31_097_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_098
                objectName: "Object_33.098"
                source: "meshes/object_31_098_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_099
                objectName: "Object_33.099"
                source: "meshes/object_31_099_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_100
                objectName: "Object_33.100"
                source: "meshes/object_31_100_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_101
                objectName: "Object_33.101"
                source: "meshes/object_31_101_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_102
                objectName: "Object_33.102"
                source: "meshes/object_31_102_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_103
                objectName: "Object_33.103"
                source: "meshes/object_31_103_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_104
                objectName: "Object_33.104"
                source: "meshes/object_31_104_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_105
                objectName: "Object_33.105"
                source: "meshes/object_31_105_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_106
                objectName: "Object_33.106"
                source: "meshes/object_31_106_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_107
                objectName: "Object_33.107"
                source: "meshes/object_31_107_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_108
                objectName: "Object_33.108"
                source: "meshes/object_31_108_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_109
                objectName: "Object_33.109"
                source: "meshes/object_31_109_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_110
                objectName: "Object_33.110"
                source: "meshes/object_31_110_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_111
                objectName: "Object_33.111"
                source: "meshes/object_31_111_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_112
                objectName: "Object_33.112"
                source: "meshes/object_31_112_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_113
                objectName: "Object_33.113"
                source: "meshes/object_31_113_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_114
                objectName: "Object_33.114"
                source: "meshes/object_31_114_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_115
                objectName: "Object_33.115"
                source: "meshes/object_31_115_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_116
                objectName: "Object_33.116"
                source: "meshes/object_31_116_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_117
                objectName: "Object_33.117"
                source: "meshes/object_31_117_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_118
                objectName: "Object_33.118"
                source: "meshes/object_31_118_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_119
                objectName: "Object_33.119"
                source: "meshes/object_31_119_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_120
                objectName: "Object_33.120"
                source: "meshes/object_31_120_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_121
                objectName: "Object_33.121"
                source: "meshes/object_31_121_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_122
                objectName: "Object_33.122"
                source: "meshes/object_31_122_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_123
                objectName: "Object_33.123"
                source: "meshes/object_31_123_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_124
                objectName: "Object_33.124"
                source: "meshes/object_31_124_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_125
                objectName: "Object_33.125"
                source: "meshes/object_31_125_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_126
                objectName: "Object_33.126"
                source: "meshes/object_31_126_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_127
                objectName: "Object_33.127"
                source: "meshes/object_31_127_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_128
                objectName: "Object_33.128"
                source: "meshes/object_31_128_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_129
                objectName: "Object_33.129"
                source: "meshes/object_31_129_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_130
                objectName: "Object_33.130"
                source: "meshes/object_31_130_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_131
                objectName: "Object_33.131"
                source: "meshes/object_31_131_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_132
                objectName: "Object_33.132"
                source: "meshes/object_31_132_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_133
                objectName: "Object_33.133"
                source: "meshes/object_31_133_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_134
                objectName: "Object_33.134"
                source: "meshes/object_31_134_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_135
                objectName: "Object_33.135"
                source: "meshes/object_31_135_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_136
                objectName: "Object_33.136"
                source: "meshes/object_31_136_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_137
                objectName: "Object_33.137"
                source: "meshes/object_31_137_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_138
                objectName: "Object_33.138"
                source: "meshes/object_31_138_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_139
                objectName: "Object_33.139"
                source: "meshes/object_31_139_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_140
                objectName: "Object_33.140"
                source: "meshes/object_31_140_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_141
                objectName: "Object_33.141"
                source: "meshes/object_31_141_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_142
                objectName: "Object_33.142"
                source: "meshes/object_31_142_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_143
                objectName: "Object_33.143"
                source: "meshes/object_31_143_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_144
                objectName: "Object_33.144"
                source: "meshes/object_31_144_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_145
                objectName: "Object_33.145"
                source: "meshes/object_31_145_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_146
                objectName: "Object_33.146"
                source: "meshes/object_31_146_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_147
                objectName: "Object_33.147"
                source: "meshes/object_31_147_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_148
                objectName: "Object_33.148"
                source: "meshes/object_31_148_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_149
                objectName: "Object_33.149"
                source: "meshes/object_31_149_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_150
                objectName: "Object_33.150"
                source: "meshes/object_31_150_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_151
                objectName: "Object_33.151"
                source: "meshes/object_31_151_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_152
                objectName: "Object_33.152"
                source: "meshes/object_31_152_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_153
                objectName: "Object_33.153"
                source: "meshes/object_31_153_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_154
                objectName: "Object_33.154"
                source: "meshes/object_31_154_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_155
                objectName: "Object_33.155"
                source: "meshes/object_31_155_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_156
                objectName: "Object_33.156"
                source: "meshes/object_31_156_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_157
                objectName: "Object_33.157"
                source: "meshes/object_31_157_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_158
                objectName: "Object_33.158"
                source: "meshes/object_31_158_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_159
                objectName: "Object_33.159"
                source: "meshes/object_31_159_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_160
                objectName: "Object_33.160"
                source: "meshes/object_31_160_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_161
                objectName: "Object_33.161"
                source: "meshes/object_31_161_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_162
                objectName: "Object_33.162"
                source: "meshes/object_31_162_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_163
                objectName: "Object_33.163"
                source: "meshes/object_31_163_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_164
                objectName: "Object_33.164"
                source: "meshes/object_31_164_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_165
                objectName: "Object_33.165"
                source: "meshes/object_31_165_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_166
                objectName: "Object_33.166"
                source: "meshes/object_31_166_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_167
                objectName: "Object_33.167"
                source: "meshes/object_31_167_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_168
                objectName: "Object_33.168"
                source: "meshes/object_31_168_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_169
                objectName: "Object_33.169"
                source: "meshes/object_31_169_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_170
                objectName: "Object_33.170"
                source: "meshes/object_31_170_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_171
                objectName: "Object_33.171"
                source: "meshes/object_31_171_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_172
                objectName: "Object_33.172"
                source: "meshes/object_31_172_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_173
                objectName: "Object_33.173"
                source: "meshes/object_31_173_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_174
                objectName: "Object_33.174"
                source: "meshes/object_31_174_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_175
                objectName: "Object_33.175"
                source: "meshes/object_31_175_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_176
                objectName: "Object_33.176"
                source: "meshes/object_31_176_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_177
                objectName: "Object_33.177"
                source: "meshes/object_31_177_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_178
                objectName: "Object_33.178"
                source: "meshes/object_31_178_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_179
                objectName: "Object_33.179"
                source: "meshes/object_31_179_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_180
                objectName: "Object_33.180"
                source: "meshes/object_31_180_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_181
                objectName: "Object_33.181"
                source: "meshes/object_31_181_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_182
                objectName: "Object_33.182"
                source: "meshes/object_31_182_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_183
                objectName: "Object_33.183"
                source: "meshes/object_31_183_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_184
                objectName: "Object_33.184"
                source: "meshes/object_31_184_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_185
                objectName: "Object_33.185"
                source: "meshes/object_31_185_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_186
                objectName: "Object_33.186"
                source: "meshes/object_31_186_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_187
                objectName: "Object_33.187"
                source: "meshes/object_31_187_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_188
                objectName: "Object_33.188"
                source: "meshes/object_31_188_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_189
                objectName: "Object_33.189"
                source: "meshes/object_31_189_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_190
                objectName: "Object_33.190"
                source: "meshes/object_31_190_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_191
                objectName: "Object_33.191"
                source: "meshes/object_31_191_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_192
                objectName: "Object_33.192"
                source: "meshes/object_31_192_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_193
                objectName: "Object_33.193"
                source: "meshes/object_31_193_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_194
                objectName: "Object_33.194"
                source: "meshes/object_31_194_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_195
                objectName: "Object_33.195"
                source: "meshes/object_31_195_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_196
                objectName: "Object_33.196"
                source: "meshes/object_31_196_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_197
                objectName: "Object_33.197"
                source: "meshes/object_31_197_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_198
                objectName: "Object_33.198"
                source: "meshes/object_31_198_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_199
                objectName: "Object_33.199"
                source: "meshes/object_31_199_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_200
                objectName: "Object_33.200"
                source: "meshes/object_31_200_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_201
                objectName: "Object_33.201"
                source: "meshes/object_31_201_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_202
                objectName: "Object_33.202"
                source: "meshes/object_31_202_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_203
                objectName: "Object_33.203"
                source: "meshes/object_31_203_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_204
                objectName: "Object_33.204"
                source: "meshes/object_31_204_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_205
                objectName: "Object_33.205"
                source: "meshes/object_31_205_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_206
                objectName: "Object_33.206"
                source: "meshes/object_31_206_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_207
                objectName: "Object_33.207"
                source: "meshes/object_31_207_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_208
                objectName: "Object_33.208"
                source: "meshes/object_31_208_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_209
                objectName: "Object_33.209"
                source: "meshes/object_31_209_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_210
                objectName: "Object_33.210"
                source: "meshes/object_31_210_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_211
                objectName: "Object_33.211"
                source: "meshes/object_31_211_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_212
                objectName: "Object_33.212"
                source: "meshes/object_31_212_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_213
                objectName: "Object_33.213"
                source: "meshes/object_31_213_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_214
                objectName: "Object_33.214"
                source: "meshes/object_31_214_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_215
                objectName: "Object_33.215"
                source: "meshes/object_31_215_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_216
                objectName: "Object_33.216"
                source: "meshes/object_31_216_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_217
                objectName: "Object_33.217"
                source: "meshes/object_31_217_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_218
                objectName: "Object_33.218"
                source: "meshes/object_31_218_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_219
                objectName: "Object_33.219"
                source: "meshes/object_31_219_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_220
                objectName: "Object_33.220"
                source: "meshes/object_31_220_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_221
                objectName: "Object_33.221"
                source: "meshes/object_31_221_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_222
                objectName: "Object_33.222"
                source: "meshes/object_31_222_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_223
                objectName: "Object_33.223"
                source: "meshes/object_31_223_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_224
                objectName: "Object_33.224"
                source: "meshes/object_31_224_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_225
                objectName: "Object_33.225"
                source: "meshes/object_31_225_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_226
                objectName: "Object_33.226"
                source: "meshes/object_31_226_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_227
                objectName: "Object_33.227"
                source: "meshes/object_31_227_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_228
                objectName: "Object_33.228"
                source: "meshes/object_31_228_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_229
                objectName: "Object_33.229"
                source: "meshes/object_31_229_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_230
                objectName: "Object_33.230"
                source: "meshes/object_31_230_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_231
                objectName: "Object_33.231"
                source: "meshes/object_31_231_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_232
                objectName: "Object_33.232"
                source: "meshes/object_31_232_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_233
                objectName: "Object_33.233"
                source: "meshes/object_31_233_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_234
                objectName: "Object_33.234"
                source: "meshes/object_31_234_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_235
                objectName: "Object_33.235"
                source: "meshes/object_31_235_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_236
                objectName: "Object_33.236"
                source: "meshes/object_31_236_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_237
                objectName: "Object_33.237"
                source: "meshes/object_31_237_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_238
                objectName: "Object_33.238"
                source: "meshes/object_31_238_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_239
                objectName: "Object_33.239"
                source: "meshes/object_31_239_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_240
                objectName: "Object_33.240"
                source: "meshes/object_31_240_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_241
                objectName: "Object_33.241"
                source: "meshes/object_31_241_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_242
                objectName: "Object_33.242"
                source: "meshes/object_31_242_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_243
                objectName: "Object_33.243"
                source: "meshes/object_31_243_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_244
                objectName: "Object_33.244"
                source: "meshes/object_31_244_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_245
                objectName: "Object_33.245"
                source: "meshes/object_31_245_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_246
                objectName: "Object_33.246"
                source: "meshes/object_31_246_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_247
                objectName: "Object_33.247"
                source: "meshes/object_31_247_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_248
                objectName: "Object_33.248"
                source: "meshes/object_31_248_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_249
                objectName: "Object_33.249"
                source: "meshes/object_31_249_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_250
                objectName: "Object_33.250"
                source: "meshes/object_31_250_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_251
                objectName: "Object_33.251"
                source: "meshes/object_31_251_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_252
                objectName: "Object_33.252"
                source: "meshes/object_31_252_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_253
                objectName: "Object_33.253"
                source: "meshes/object_31_253_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_254
                objectName: "Object_33.254"
                source: "meshes/object_31_254_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_255
                objectName: "Object_33.255"
                source: "meshes/object_31_255_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_256
                objectName: "Object_33.256"
                source: "meshes/object_31_256_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_257
                objectName: "Object_33.257"
                source: "meshes/object_31_257_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_258
                objectName: "Object_33.258"
                source: "meshes/object_31_258_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_259
                objectName: "Object_33.259"
                source: "meshes/object_31_259_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_260
                objectName: "Object_33.260"
                source: "meshes/object_31_260_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_261
                objectName: "Object_33.261"
                source: "meshes/object_31_261_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_262
                objectName: "Object_33.262"
                source: "meshes/object_31_262_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_263
                objectName: "Object_33.263"
                source: "meshes/object_31_263_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_264
                objectName: "Object_33.264"
                source: "meshes/object_31_264_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_265
                objectName: "Object_33.265"
                source: "meshes/object_31_265_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_266
                objectName: "Object_33.266"
                source: "meshes/object_31_266_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_267
                objectName: "Object_33.267"
                source: "meshes/object_31_267_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_268
                objectName: "Object_33.268"
                source: "meshes/object_31_268_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_269
                objectName: "Object_33.269"
                source: "meshes/object_31_269_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_270
                objectName: "Object_33.270"
                source: "meshes/object_31_270_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_271
                objectName: "Object_33.271"
                source: "meshes/object_31_271_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_272
                objectName: "Object_33.272"
                source: "meshes/object_31_272_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_273
                objectName: "Object_33.273"
                source: "meshes/object_31_273_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_274
                objectName: "Object_33.274"
                source: "meshes/object_31_274_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_275
                objectName: "Object_33.275"
                source: "meshes/object_31_275_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_276
                objectName: "Object_33.276"
                source: "meshes/object_31_276_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_277
                objectName: "Object_33.277"
                source: "meshes/object_31_277_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_278
                objectName: "Object_33.278"
                source: "meshes/object_31_278_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_279
                objectName: "Object_33.279"
                source: "meshes/object_31_279_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_280
                objectName: "Object_33.280"
                source: "meshes/object_31_280_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_281
                objectName: "Object_33.281"
                source: "meshes/object_31_281_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_282
                objectName: "Object_33.282"
                source: "meshes/object_31_282_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_283
                objectName: "Object_33.283"
                source: "meshes/object_31_283_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_284
                objectName: "Object_33.284"
                source: "meshes/object_31_284_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_285
                objectName: "Object_33.285"
                source: "meshes/object_31_285_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_286
                objectName: "Object_33.286"
                source: "meshes/object_31_286_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_287
                objectName: "Object_33.287"
                source: "meshes/object_31_287_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_288
                objectName: "Object_33.288"
                source: "meshes/object_31_288_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_289
                objectName: "Object_33.289"
                source: "meshes/object_31_289_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_290
                objectName: "Object_33.290"
                source: "meshes/object_31_290_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_291
                objectName: "Object_33.291"
                source: "meshes/object_31_291_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_292
                objectName: "Object_33.292"
                source: "meshes/object_31_292_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_293
                objectName: "Object_33.293"
                source: "meshes/object_31_293_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_294
                objectName: "Object_33.294"
                source: "meshes/object_31_294_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_295
                objectName: "Object_33.295"
                source: "meshes/object_31_295_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_296
                objectName: "Object_33.296"
                source: "meshes/object_31_296_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_297
                objectName: "Object_33.297"
                source: "meshes/object_31_297_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_298
                objectName: "Object_33.298"
                source: "meshes/object_31_298_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_299
                objectName: "Object_33.299"
                source: "meshes/object_31_299_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_300
                objectName: "Object_33.300"
                source: "meshes/object_31_300_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_301
                objectName: "Object_33.301"
                source: "meshes/object_31_301_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_302
                objectName: "Object_33.302"
                source: "meshes/object_31_302_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_303
                objectName: "Object_33.303"
                source: "meshes/object_31_303_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_304
                objectName: "Object_33.304"
                source: "meshes/object_31_304_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_305
                objectName: "Object_33.305"
                source: "meshes/object_31_305_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_306
                objectName: "Object_33.306"
                source: "meshes/object_31_306_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_307
                objectName: "Object_33.307"
                source: "meshes/object_31_307_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_308
                objectName: "Object_33.308"
                source: "meshes/object_31_308_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_309
                objectName: "Object_33.309"
                source: "meshes/object_31_309_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_310
                objectName: "Object_33.310"
                source: "meshes/object_31_310_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_311
                objectName: "Object_33.311"
                source: "meshes/object_31_311_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_312
                objectName: "Object_33.312"
                source: "meshes/object_31_312_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_313
                objectName: "Object_33.313"
                source: "meshes/object_31_313_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_314
                objectName: "Object_33.314"
                source: "meshes/object_31_314_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_315
                objectName: "Object_33.315"
                source: "meshes/object_31_315_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_316
                objectName: "Object_33.316"
                source: "meshes/object_31_316_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_317
                objectName: "Object_33.317"
                source: "meshes/object_31_317_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_318
                objectName: "Object_33.318"
                source: "meshes/object_31_318_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_319
                objectName: "Object_33.319"
                source: "meshes/object_31_319_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_320
                objectName: "Object_33.320"
                source: "meshes/object_31_320_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_321
                objectName: "Object_33.321"
                source: "meshes/object_31_321_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_322
                objectName: "Object_33.322"
                source: "meshes/object_31_322_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_323
                objectName: "Object_33.323"
                source: "meshes/object_31_323_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_324
                objectName: "Object_33.324"
                source: "meshes/object_31_324_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_325
                objectName: "Object_33.325"
                source: "meshes/object_31_325_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_326
                objectName: "Object_33.326"
                source: "meshes/object_31_326_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_327
                objectName: "Object_33.327"
                source: "meshes/object_31_327_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_328
                objectName: "Object_33.328"
                source: "meshes/object_31_328_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_329
                objectName: "Object_33.329"
                source: "meshes/object_31_329_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_330
                objectName: "Object_33.330"
                source: "meshes/object_31_330_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_331
                objectName: "Object_33.331"
                source: "meshes/object_31_331_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_332
                objectName: "Object_33.332"
                source: "meshes/object_31_332_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_333
                objectName: "Object_33.333"
                source: "meshes/object_31_333_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_334
                objectName: "Object_33.334"
                source: "meshes/object_31_334_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_335
                objectName: "Object_33.335"
                source: "meshes/object_31_335_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_336
                objectName: "Object_33.336"
                source: "meshes/object_31_336_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_337
                objectName: "Object_33.337"
                source: "meshes/object_31_337_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_338
                objectName: "Object_33.338"
                source: "meshes/object_31_338_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_339
                objectName: "Object_33.339"
                source: "meshes/object_31_339_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_340
                objectName: "Object_33.340"
                source: "meshes/object_31_340_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_341
                objectName: "Object_33.341"
                source: "meshes/object_31_341_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_342
                objectName: "Object_33.342"
                source: "meshes/object_31_342_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_343
                objectName: "Object_33.343"
                source: "meshes/object_31_343_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_344
                objectName: "Object_33.344"
                source: "meshes/object_31_344_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_345
                objectName: "Object_33.345"
                source: "meshes/object_31_345_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_346
                objectName: "Object_33.346"
                source: "meshes/object_31_346_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_347
                objectName: "Object_33.347"
                source: "meshes/object_31_347_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_348
                objectName: "Object_33.348"
                source: "meshes/object_31_348_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_349
                objectName: "Object_33.349"
                source: "meshes/object_31_349_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_350
                objectName: "Object_33.350"
                source: "meshes/object_31_350_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_351
                objectName: "Object_33.351"
                source: "meshes/object_31_351_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_352
                objectName: "Object_33.352"
                source: "meshes/object_31_352_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_353
                objectName: "Object_33.353"
                source: "meshes/object_31_353_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_354
                objectName: "Object_33.354"
                source: "meshes/object_31_354_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_355
                objectName: "Object_33.355"
                source: "meshes/object_31_355_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_356
                objectName: "Object_33.356"
                source: "meshes/object_31_356_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_357
                objectName: "Object_33.357"
                source: "meshes/object_31_357_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_358
                objectName: "Object_33.358"
                source: "meshes/object_31_358_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_359
                objectName: "Object_33.359"
                source: "meshes/object_31_359_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_360
                objectName: "Object_33.360"
                source: "meshes/object_31_360_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_361
                objectName: "Object_33.361"
                source: "meshes/object_31_361_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_362
                objectName: "Object_33.362"
                source: "meshes/object_31_362_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_363
                objectName: "Object_33.363"
                source: "meshes/object_31_363_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_364
                objectName: "Object_33.364"
                source: "meshes/object_31_364_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_365
                objectName: "Object_33.365"
                source: "meshes/object_31_365_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_366
                objectName: "Object_33.366"
                source: "meshes/object_31_366_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_367
                objectName: "Object_33.367"
                source: "meshes/object_31_367_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_368
                objectName: "Object_33.368"
                source: "meshes/object_31_368_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_369
                objectName: "Object_33.369"
                source: "meshes/object_31_369_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_370
                objectName: "Object_33.370"
                source: "meshes/object_31_370_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_371
                objectName: "Object_33.371"
                source: "meshes/object_31_371_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_372
                objectName: "Object_33.372"
                source: "meshes/object_31_372_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_373
                objectName: "Object_33.373"
                source: "meshes/object_31_373_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_374
                objectName: "Object_33.374"
                source: "meshes/object_31_374_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_375
                objectName: "Object_33.375"
                source: "meshes/object_31_375_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_376
                objectName: "Object_33.376"
                source: "meshes/object_31_376_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_377
                objectName: "Object_33.377"
                source: "meshes/object_31_377_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_378
                objectName: "Object_33.378"
                source: "meshes/object_31_378_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_379
                objectName: "Object_33.379"
                source: "meshes/object_31_379_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_380
                objectName: "Object_33.380"
                source: "meshes/object_31_380_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_381
                objectName: "Object_33.381"
                source: "meshes/object_31_381_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_382
                objectName: "Object_33.382"
                source: "meshes/object_31_382_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_383
                objectName: "Object_33.383"
                source: "meshes/object_31_383_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_384
                objectName: "Object_33.384"
                source: "meshes/object_31_384_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_385
                objectName: "Object_33.385"
                source: "meshes/object_31_385_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_386
                objectName: "Object_33.386"
                source: "meshes/object_31_386_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_387
                objectName: "Object_33.387"
                source: "meshes/object_31_387_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_388
                objectName: "Object_33.388"
                source: "meshes/object_31_388_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_389
                objectName: "Object_33.389"
                source: "meshes/object_31_389_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_390
                objectName: "Object_33.390"
                source: "meshes/object_31_390_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_391
                objectName: "Object_33.391"
                source: "meshes/object_31_391_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_392
                objectName: "Object_33.392"
                source: "meshes/object_31_392_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_393
                objectName: "Object_33.393"
                source: "meshes/object_31_393_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_394
                objectName: "Object_33.394"
                source: "meshes/object_31_394_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_395
                objectName: "Object_33.395"
                source: "meshes/object_31_395_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_396
                objectName: "Object_33.396"
                source: "meshes/object_31_396_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_397
                objectName: "Object_33.397"
                source: "meshes/object_31_397_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_398
                objectName: "Object_33.398"
                source: "meshes/object_31_398_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_399
                objectName: "Object_33.399"
                source: "meshes/object_31_399_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_400
                objectName: "Object_33.400"
                source: "meshes/object_31_400_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_401
                objectName: "Object_33.401"
                source: "meshes/object_31_401_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_402
                objectName: "Object_33.402"
                source: "meshes/object_31_402_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_403
                objectName: "Object_33.403"
                source: "meshes/object_31_403_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_404
                objectName: "Object_33.404"
                source: "meshes/object_31_404_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_405
                objectName: "Object_33.405"
                source: "meshes/object_31_405_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_406
                objectName: "Object_33.406"
                source: "meshes/object_31_406_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_407
                objectName: "Object_33.407"
                source: "meshes/object_31_407_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_408
                objectName: "Object_33.408"
                source: "meshes/object_31_408_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_409
                objectName: "Object_33.409"
                source: "meshes/object_31_409_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_410
                objectName: "Object_33.410"
                source: "meshes/object_31_410_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_411
                objectName: "Object_33.411"
                source: "meshes/object_31_411_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_412
                objectName: "Object_33.412"
                source: "meshes/object_31_412_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_413
                objectName: "Object_33.413"
                source: "meshes/object_31_413_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_414
                objectName: "Object_33.414"
                source: "meshes/object_31_414_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_415
                objectName: "Object_33.415"
                source: "meshes/object_31_415_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_416
                objectName: "Object_33.416"
                source: "meshes/object_31_416_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_417
                objectName: "Object_33.417"
                source: "meshes/object_31_417_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_418
                objectName: "Object_33.418"
                source: "meshes/object_31_418_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_419
                objectName: "Object_33.419"
                source: "meshes/object_31_419_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_420
                objectName: "Object_33.420"
                source: "meshes/object_31_420_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_421
                objectName: "Object_33.421"
                source: "meshes/object_31_421_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_422
                objectName: "Object_33.422"
                source: "meshes/object_31_422_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_423
                objectName: "Object_33.423"
                source: "meshes/object_31_423_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_424
                objectName: "Object_33.424"
                source: "meshes/object_31_424_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_425
                objectName: "Object_33.425"
                source: "meshes/object_31_425_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_426
                objectName: "Object_33.426"
                source: "meshes/object_31_426_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_427
                objectName: "Object_33.427"
                source: "meshes/object_31_427_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_428
                objectName: "Object_33.428"
                source: "meshes/object_31_428_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_429
                objectName: "Object_33.429"
                source: "meshes/object_31_429_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_430
                objectName: "Object_33.430"
                source: "meshes/object_31_430_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_431
                objectName: "Object_33.431"
                source: "meshes/object_31_431_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_432
                objectName: "Object_33.432"
                source: "meshes/object_31_432_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_433
                objectName: "Object_33.433"
                source: "meshes/object_31_433_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_434
                objectName: "Object_33.434"
                source: "meshes/object_31_434_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_435
                objectName: "Object_33.435"
                source: "meshes/object_31_435_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_436
                objectName: "Object_33.436"
                source: "meshes/object_31_436_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_437
                objectName: "Object_33.437"
                source: "meshes/object_31_437_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_438
                objectName: "Object_33.438"
                source: "meshes/object_31_438_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_439
                objectName: "Object_33.439"
                source: "meshes/object_31_439_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_440
                objectName: "Object_33.440"
                source: "meshes/object_31_440_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_441
                objectName: "Object_33.441"
                source: "meshes/object_31_441_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_442
                objectName: "Object_33.442"
                source: "meshes/object_31_442_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_443
                objectName: "Object_33.443"
                source: "meshes/object_31_443_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_444
                objectName: "Object_33.444"
                source: "meshes/object_31_444_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_445
                objectName: "Object_33.445"
                source: "meshes/object_31_445_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_446
                objectName: "Object_33.446"
                source: "meshes/object_31_446_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_447
                objectName: "Object_33.447"
                source: "meshes/object_31_447_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_448
                objectName: "Object_33.448"
                source: "meshes/object_31_448_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_449
                objectName: "Object_33.449"
                source: "meshes/object_31_449_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_450
                objectName: "Object_33.450"
                source: "meshes/object_31_450_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_451
                objectName: "Object_33.451"
                source: "meshes/object_31_451_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_452
                objectName: "Object_33.452"
                source: "meshes/object_31_452_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_453
                objectName: "Object_33.453"
                source: "meshes/object_31_453_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_454
                objectName: "Object_33.454"
                source: "meshes/object_31_454_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_455
                objectName: "Object_33.455"
                source: "meshes/object_31_455_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_456
                objectName: "Object_33.456"
                source: "meshes/object_31_456_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_457
                objectName: "Object_33.457"
                source: "meshes/object_31_457_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_458
                objectName: "Object_33.458"
                source: "meshes/object_31_458_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_459
                objectName: "Object_33.459"
                source: "meshes/object_31_459_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_460
                objectName: "Object_33.460"
                source: "meshes/object_31_460_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_461
                objectName: "Object_33.461"
                source: "meshes/object_31_461_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_462
                objectName: "Object_33.462"
                source: "meshes/object_31_462_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_463
                objectName: "Object_33.463"
                source: "meshes/object_31_463_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_464
                objectName: "Object_33.464"
                source: "meshes/object_31_464_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_465
                objectName: "Object_33.465"
                source: "meshes/object_31_465_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_466
                objectName: "Object_33.466"
                source: "meshes/object_31_466_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_467
                objectName: "Object_33.467"
                source: "meshes/object_31_467_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_468
                objectName: "Object_33.468"
                source: "meshes/object_31_468_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_469
                objectName: "Object_33.469"
                source: "meshes/object_31_469_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_470
                objectName: "Object_33.470"
                source: "meshes/object_31_470_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_471
                objectName: "Object_33.471"
                source: "meshes/object_31_471_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_472
                objectName: "Object_33.472"
                source: "meshes/object_31_472_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_473
                objectName: "Object_33.473"
                source: "meshes/object_31_473_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_474
                objectName: "Object_33.474"
                source: "meshes/object_31_474_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_475
                objectName: "Object_33.475"
                source: "meshes/object_31_475_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_476
                objectName: "Object_33.476"
                source: "meshes/object_31_476_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_477
                objectName: "Object_33.477"
                source: "meshes/object_31_477_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_478
                objectName: "Object_33.478"
                source: "meshes/object_31_478_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_479
                objectName: "Object_33.479"
                source: "meshes/object_31_479_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_480
                objectName: "Object_33.480"
                source: "meshes/object_31_480_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_481
                objectName: "Object_33.481"
                source: "meshes/object_31_481_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_482
                objectName: "Object_33.482"
                source: "meshes/object_31_482_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_483
                objectName: "Object_33.483"
                source: "meshes/object_31_483_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_484
                objectName: "Object_33.484"
                source: "meshes/object_31_484_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_485
                objectName: "Object_33.485"
                source: "meshes/object_31_485_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_486
                objectName: "Object_33.486"
                source: "meshes/object_31_486_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_487
                objectName: "Object_33.487"
                source: "meshes/object_31_487_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_488
                objectName: "Object_33.488"
                source: "meshes/object_31_488_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_489
                objectName: "Object_33.489"
                source: "meshes/object_31_489_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_490
                objectName: "Object_33.490"
                source: "meshes/object_31_490_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_491
                objectName: "Object_33.491"
                source: "meshes/object_31_491_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_492
                objectName: "Object_33.492"
                source: "meshes/object_31_492_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_493
                objectName: "Object_33.493"
                source: "meshes/object_31_493_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_494
                objectName: "Object_33.494"
                source: "meshes/object_31_494_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_495
                objectName: "Object_33.495"
                source: "meshes/object_31_495_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_496
                objectName: "Object_33.496"
                source: "meshes/object_31_496_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_497
                objectName: "Object_33.497"
                source: "meshes/object_31_497_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_498
                objectName: "Object_33.498"
                source: "meshes/object_31_498_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_499
                objectName: "Object_33.499"
                source: "meshes/object_31_499_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_500
                objectName: "Object_33.500"
                source: "meshes/object_31_500_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_501
                objectName: "Object_33.501"
                source: "meshes/object_31_501_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_502
                objectName: "Object_33.502"
                source: "meshes/object_31_502_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_503
                objectName: "Object_33.503"
                source: "meshes/object_31_503_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_504
                objectName: "Object_33.504"
                source: "meshes/object_31_504_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_505
                objectName: "Object_33.505"
                source: "meshes/object_31_505_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_506
                objectName: "Object_33.506"
                source: "meshes/object_31_506_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_507
                objectName: "Object_33.507"
                source: "meshes/object_31_507_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_508
                objectName: "Object_33.508"
                source: "meshes/object_31_508_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_509
                objectName: "Object_33.509"
                source: "meshes/object_31_509_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_510
                objectName: "Object_33.510"
                source: "meshes/object_31_510_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_511
                objectName: "Object_33.511"
                source: "meshes/object_31_511_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_512
                objectName: "Object_33.512"
                source: "meshes/object_31_512_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_513
                objectName: "Object_33.513"
                source: "meshes/object_31_513_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_514
                objectName: "Object_33.514"
                source: "meshes/object_31_514_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_515
                objectName: "Object_33.515"
                source: "meshes/object_31_515_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_516
                objectName: "Object_33.516"
                source: "meshes/object_31_516_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_517
                objectName: "Object_33.517"
                source: "meshes/object_31_517_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_518
                objectName: "Object_33.518"
                source: "meshes/object_31_518_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_519
                objectName: "Object_33.519"
                source: "meshes/object_31_519_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_520
                objectName: "Object_33.520"
                source: "meshes/object_31_520_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_521
                objectName: "Object_33.521"
                source: "meshes/object_31_521_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_522
                objectName: "Object_33.522"
                source: "meshes/object_31_522_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_523
                objectName: "Object_33.523"
                source: "meshes/object_31_523_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_524
                objectName: "Object_33.524"
                source: "meshes/object_31_524_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_525
                objectName: "Object_33.525"
                source: "meshes/object_31_525_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_526
                objectName: "Object_33.526"
                source: "meshes/object_31_526_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_527
                objectName: "Object_33.527"
                source: "meshes/object_31_527_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_528
                objectName: "Object_33.528"
                source: "meshes/object_31_528_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_529
                objectName: "Object_33.529"
                source: "meshes/object_31_529_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_530
                objectName: "Object_33.530"
                source: "meshes/object_31_530_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_531
                objectName: "Object_33.531"
                source: "meshes/object_31_531_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_532
                objectName: "Object_33.532"
                source: "meshes/object_31_532_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_533
                objectName: "Object_33.533"
                source: "meshes/object_31_533_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_534
                objectName: "Object_33.534"
                source: "meshes/object_31_534_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_535
                objectName: "Object_33.535"
                source: "meshes/object_31_535_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_536
                objectName: "Object_33.536"
                source: "meshes/object_31_536_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_537
                objectName: "Object_33.537"
                source: "meshes/object_31_537_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_538
                objectName: "Object_33.538"
                source: "meshes/object_31_538_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_539
                objectName: "Object_33.539"
                source: "meshes/object_31_539_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_540
                objectName: "Object_33.540"
                source: "meshes/object_31_540_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_541
                objectName: "Object_33.541"
                source: "meshes/object_31_541_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_542
                objectName: "Object_33.542"
                source: "meshes/object_31_542_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_543
                objectName: "Object_33.543"
                source: "meshes/object_31_543_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_544
                objectName: "Object_33.544"
                source: "meshes/object_31_544_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_545
                objectName: "Object_33.545"
                source: "meshes/object_31_545_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_546
                objectName: "Object_33.546"
                source: "meshes/object_31_546_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_547
                objectName: "Object_33.547"
                source: "meshes/object_31_547_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_548
                objectName: "Object_33.548"
                source: "meshes/object_31_548_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_549
                objectName: "Object_33.549"
                source: "meshes/object_31_549_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_550
                objectName: "Object_33.550"
                source: "meshes/object_31_550_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_551
                objectName: "Object_33.551"
                source: "meshes/object_31_551_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_552
                objectName: "Object_33.552"
                source: "meshes/object_31_552_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_553
                objectName: "Object_33.553"
                source: "meshes/object_31_553_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_554
                objectName: "Object_33.554"
                source: "meshes/object_31_554_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_555
                objectName: "Object_33.555"
                source: "meshes/object_31_555_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_556
                objectName: "Object_33.556"
                source: "meshes/object_31_556_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_557
                objectName: "Object_33.557"
                source: "meshes/object_31_557_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_558
                objectName: "Object_33.558"
                source: "meshes/object_31_558_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_559
                objectName: "Object_33.559"
                source: "meshes/object_31_559_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_560
                objectName: "Object_33.560"
                source: "meshes/object_31_560_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_561
                objectName: "Object_33.561"
                source: "meshes/object_31_561_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_562
                objectName: "Object_33.562"
                source: "meshes/object_31_562_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_563
                objectName: "Object_33.563"
                source: "meshes/object_31_563_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_564
                objectName: "Object_33.564"
                source: "meshes/object_31_564_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_565
                objectName: "Object_33.565"
                source: "meshes/object_31_565_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_566
                objectName: "Object_33.566"
                source: "meshes/object_31_566_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_567
                objectName: "Object_33.567"
                source: "meshes/object_31_567_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_568
                objectName: "Object_33.568"
                source: "meshes/object_31_568_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_569
                objectName: "Object_33.569"
                source: "meshes/object_31_569_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_570
                objectName: "Object_33.570"
                source: "meshes/object_31_570_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_571
                objectName: "Object_33.571"
                source: "meshes/object_31_571_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_572
                objectName: "Object_33.572"
                source: "meshes/object_31_572_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_573
                objectName: "Object_33.573"
                source: "meshes/object_31_573_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_574
                objectName: "Object_33.574"
                source: "meshes/object_31_574_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_575
                objectName: "Object_33.575"
                source: "meshes/object_31_575_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_576
                objectName: "Object_33.576"
                source: "meshes/object_31_576_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_577
                objectName: "Object_33.577"
                source: "meshes/object_31_577_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_578
                objectName: "Object_33.578"
                source: "meshes/object_31_578_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_33_579
                objectName: "Object_33.579"
                source: "meshes/object_31_579_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_34
                objectName: "Object_34"
                source: "meshes/object_32_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_35
                objectName: "Object_35"
                source: "meshes/object_33_mesh.mesh"
                materials: [
                    chrome_material
                ]
            }
            Model {
                id: object_36
                objectName: "Object_36"
                source: "meshes/object_34_mesh.mesh"
                materials: [
                    grayChrome_material
                ]
            }
            Model {
                id: object_37
                objectName: "Object_37"
                source: "meshes/object_35_mesh.mesh"
                materials: [
                    headlight_material
                ]
            }
            Model {
                id: object_38
                objectName: "Object_38"
                source: "meshes/object_36_mesh.mesh"
                materials: [
                    headlightGlass_material
                ]
            }
            Model {
                id: object_39
                objectName: "Object_39"
                source: "meshes/object_37_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_4
                objectName: "Object_4"
                source: "meshes/object_2_mesh.mesh"
                materials: [
                    alcantara_material
                ]
            }
            Model {
                id: object_40
                objectName: "Object_40"
                source: "meshes/object_38_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_41_252
                objectName: "Object_41.252"
                source: "meshes/object_39_252_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_42
                objectName: "Object_42"
                source: "meshes/object_40_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_43
                objectName: "Object_43"
                source: "meshes/object_41_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_44
                objectName: "Object_44"
                source: "meshes/object_42_mesh.mesh"
                materials: [
                    leather_material
                ]
            }
            Model {
                id: object_45
                objectName: "Object_45"
                source: "meshes/object_43_mesh.mesh"
                materials: [
                    mkv_Tire_material
                ]
            }
            Model {
                id: object_46
                objectName: "Object_46"
                source: "meshes/object_44_mesh.mesh"
                materials: [
                    mkv_Tire_material
                ]
            }
            Model {
                id: object_47
                objectName: "Object_47"
                source: "meshes/object_45_mesh.mesh"
                materials: [
                    mkv_Tire_material
                ]
            }
            Model {
                id: object_48
                objectName: "Object_48"
                source: "meshes/object_46_mesh.mesh"
                materials: [
                    mkv_Tire_material
                ]
            }
            Model {
                id: object_49
                objectName: "Object_49"
                source: "meshes/object_47_mesh.mesh"
                materials: [
                    metallic_material
                ]
            }
            Model {
                id: object_5
                objectName: "Object_5"
                source: "meshes/object_3_mesh.mesh"
                materials: [
                    alcantara_material
                ]
            }
            Model {
                id: object_50
                objectName: "Object_50"
                source: "meshes/object_48_mesh.mesh"
                materials: [
                    metallic_material
                ]
            }
            Model {
                id: object_51
                objectName: "Object_51"
                source: "meshes/object_49_mesh.mesh"
                materials: [
                    monitor_material
                ]
            }
            Model {
                id: object_52
                objectName: "Object_52"
                source: "meshes/object_50_mesh.mesh"
                materials: [
                    redGloss_material
                ]
            }
            Model {
                id: object_53
                objectName: "Object_53"
                source: "meshes/object_51_mesh.mesh"
                materials: [
                    runninglight_material
                ]
            }
            Model {
                id: object_54
                objectName: "Object_54"
                source: "meshes/object_52_mesh.mesh"
                materials: [
                    screen_material
                ]
            }
            Model {
                id: object_55
                objectName: "Object_55"
                source: "meshes/object_53_mesh.mesh"
                materials: [
                    signal_L_material
                ]
            }
            Model {
                id: object_56_001
                objectName: "Object_56.001"
                source: "meshes/object_54_001_mesh.mesh"
                materials: [
                    signal_R_material
                ]
            }
            Model {
                id: object_57
                objectName: "Object_57"
                source: "meshes/object_55_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_58
                objectName: "Object_58"
                source: "meshes/object_56_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_59
                objectName: "Object_59"
                source: "meshes/object_57_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_6_001
                objectName: "Object_6.001"
                source: "meshes/object_4_001_mesh.mesh"
                materials: [
                    badges_material
                ]
            }
            Model {
                id: object_60
                objectName: "Object_60"
                source: "meshes/object_58_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_61
                objectName: "Object_61"
                source: "meshes/object_59_mesh.mesh"
                materials: [
                    supra_body_paint_material
                ]
            }
            Model {
                id: object_64
                objectName: "Object_64"
                source: "meshes/object_62_mesh.mesh"
                materials: [
                    taillight_material
                ]
            }
            Model {
                id: object_65_008
                objectName: "Object_65.008"
                source: "meshes/object_63_008_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_009
                objectName: "Object_65.009"
                source: "meshes/object_63_009_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_010
                objectName: "Object_65.010"
                source: "meshes/object_63_010_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_011
                objectName: "Object_65.011"
                source: "meshes/object_63_011_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_012
                objectName: "Object_65.012"
                source: "meshes/object_63_012_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_013
                objectName: "Object_65.013"
                source: "meshes/object_63_013_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_014
                objectName: "Object_65.014"
                source: "meshes/object_63_014_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_015
                objectName: "Object_65.015"
                source: "meshes/object_63_015_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_016
                objectName: "Object_65.016"
                source: "meshes/object_63_016_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_017
                objectName: "Object_65.017"
                source: "meshes/object_63_017_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_018
                objectName: "Object_65.018"
                source: "meshes/object_63_018_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_019
                objectName: "Object_65.019"
                source: "meshes/object_63_019_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_020
                objectName: "Object_65.020"
                source: "meshes/object_63_020_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_021
                objectName: "Object_65.021"
                source: "meshes/object_63_021_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_022
                objectName: "Object_65.022"
                source: "meshes/object_63_022_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_023
                objectName: "Object_65.023"
                source: "meshes/object_63_023_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_024
                objectName: "Object_65.024"
                source: "meshes/object_63_024_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_025
                objectName: "Object_65.025"
                source: "meshes/object_63_025_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_026
                objectName: "Object_65.026"
                source: "meshes/object_63_026_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_027
                objectName: "Object_65.027"
                source: "meshes/object_63_027_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_65_028
                objectName: "Object_65.028"
                source: "meshes/object_63_028_mesh.mesh"
                materials: [
                    window_material
                ]
            }
            Model {
                id: object_66
                objectName: "Object_66"
                source: "meshes/object_64_mesh.mesh"
                materials: [
                    yellowGlass_material
                ]
            }
            Model {
                id: object_7
                objectName: "Object_7"
                source: "meshes/object_5_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_8
                objectName: "Object_8"
                source: "meshes/object_6_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: object_9
                objectName: "Object_9"
                source: "meshes/object_7_mesh.mesh"
                materials: [
                    blackGloss_material
                ]
            }
            Model {
                id: praweDrzwi
                objectName: "praweDrzwi"
                x: -0.9300083518028259
                y: -0.49555692076683044
                z: 0.5510836839675903
                eulerRotation.z: node.rightDoorAngle
                source: "meshes/praweDrzwi_mesh.mesh"
                materials: [
                    badges_material,
                    signal_R_material,
                    supra_body_paint_material,
                    blackGloss_material,
                    window_material,
                    chrome_material,
                    leather_material
                ]
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: blackGloss_material
            objectName: "BlackGloss"
            baseColor: "#ff000000"
            metalness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: leather_material
            objectName: "Leather"
            baseColor: "#ff050505"
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: brake_Caliper_material
            objectName: "Brake.Caliper"
            baseColor: "#ff800000"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: brakeDisc_material
            objectName: "BrakeDisc"
            baseColor: "#ffcccccc"
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: brakeLight_material
            objectName: "BrakeLight"
            baseColor: "#ffff0000"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: reverselight_material
            objectName: "Reverselight"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: carpet_material
            objectName: "Carpet"
            baseColorMap: _1_texture
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grayChrome_material
            objectName: "GrayChrome"
            baseColor: "#ff171717"
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: headlight_material
            objectName: "Headlight"
            baseColor: "#ffcccccc"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: headlightGlass_material
            objectName: "HeadlightGlass"
            baseColor: "#80232323"
            roughness: 0.782206118106842
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: alcantara_material
            objectName: "Alcantara"
            baseColorMap: _2_texture
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: window_material
            objectName: "Window"
            baseColor: "#403a3a3a"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: supra_body_paint_material
            objectName: "Supra_body_paint"
            metalness: 1
            roughness: 0.4176417291164398
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: mkv_Tire_material
            objectName: "MKV.Tire"
            baseColor: "#ff000000"
            roughness: 0.8459964990615845
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: metallic_material
            objectName: "Metallic"
            baseColor: "#ffcccccc"
            roughness: 0.7485133409500122
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: monitor_material
            objectName: "Monitor"
            baseColorMap: _3_texture
            roughness: 0.782206118106842
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: chrome_material
            objectName: "Chrome"
            baseColor: "#ff000000"
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: blackMatt_material
            objectName: "BlackMatt"
            baseColor: "#ff000000"
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: redGloss_material
            objectName: "RedGloss"
            baseColor: "#ffff0000"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: runninglight_material
            objectName: "Runninglight"
            baseColor: "#ffcccccc"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: screen_material
            objectName: "Screen"
            baseColorMap: _4_texture
            roughness: 0.782206118106842
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: badges_material
            objectName: "Badges"
            baseColorMap: _0_texture
            roughness: 0.8011823296546936
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: signal_L_material
            objectName: "Signal.L"
            baseColor: "#ffcccccc"
            roughness: 0.7647557258605957
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: signal_R_material
            objectName: "Signal.R"
            baseColor: "#ffcccccc"
            roughness: 0.7485133409500122
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: taillight_material
            objectName: "Taillight"
            baseColor: "#ffff0000"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: yellowGlass_material
            objectName: "YellowGlass"
            baseColor: "#ffff3f00"
            roughness: 0.718829333782196
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }

    // Animations:
}
