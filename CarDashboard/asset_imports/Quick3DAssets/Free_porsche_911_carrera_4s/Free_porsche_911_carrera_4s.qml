import QtQuick
import QtQuick3D

Node {
    // Materials
    // end of Materials

    Node {
        id: sketchfab_model
        x: -0.0152852
        y: -0.00915591
        z: 0.0628922
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 0.578426
        scale.y: 0.578426
        scale.z: 0.578426
        Node {
            id: root
            Node {
                id: window_rear
                Model {
                    id: window_rear_0
                    source: "meshes/window_rear_0.mesh"
                    materials: [
                        window_material
                    ]
                }
            }
            Node {
                id: windshield
                y: -0.00319
                z: 0.00719
                Model {
                    id: windshield_0
                    source: "meshes/windshield_0.mesh"
                    materials: [
                        window_material
                    ]
                }
                Model {
                    id: windshield_1
                    source: "meshes/windshield_1.mesh"
                    materials: [
                        plastic_material
                    ]
                }
            }
            Node {
                id: plane_002
                x: -1.05305
                y: 3.51025
                z: -0.1259
                rotation: Qt.quaternion(0.587177, -0.667742, 0.024922, 0.456835)
                scale.x: 0.0244268
                scale.y: 0.024428
                scale.z: 0.0244265
                Model {
                    id: plane_002_0
                    source: "meshes/plane_002_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: plane_003
                x: 0.43627
                y: 3.72335
                z: -0.11696
                rotation: Qt.quaternion(0.69163, -0.605792, 0.299244, 0.255235)
                scale.x: 0.0244239
                scale.y: 0.0244295
                scale.z: 0.0244272
                Model {
                    id: plane_003_0
                    source: "meshes/plane_003_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: plane_004
                x: -0.48751
                y: 3.68437
                z: -0.32849
                rotation: Qt.quaternion(0.693733, -0.604846, 0.238113, 0.310137)
                scale.x: 0.0591303
                scale.y: 0.0591329
                scale.z: 0.0591339
                Model {
                    id: plane_004_0
                    source: "meshes/plane_004_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: boot
                Model {
                    id: boot_0
                    source: "meshes/boot_0.mesh"
                    materials: [
                        full_black_material
                    ]
                }
            }
            Node {
                id: underbody
                Model {
                    id: underbody_0
                    source: "meshes/underbody_0.mesh"
                    materials: [
                        full_black_material
                    ]
                }
            }
            Node {
                id: cylinder_000
                z: 0.02935
                Model {
                    id: cylinder_000_0
                    source: "meshes/cylinder_000_0.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: cylinder_000_1
                    source: "meshes/cylinder_000_1.mesh"
                    materials: [
                        plastic_material
                    ]
                }
                Model {
                    id: cylinder_000_2
                    source: "meshes/cylinder_000_2.mesh"
                    materials: [
                        rubber_material
                    ]
                }
                Model {
                    id: cylinder_000_3
                    source: "meshes/cylinder_000_3.mesh"
                    materials: [
                        material_001_material
                    ]
                }
            }
            Node {
                id: plane
                z: -1.05402
                scale.x: 6.9534
                scale.y: 9.78514
                scale.z: 7.49598
                Model {
                    id: plane_0
                    source: "meshes/plane_0.mesh"
                    materials: [
                        material_material
                    ]
                }
            }
            Node {
                id: cube_001
                x: 0.03582
                y: -1.56003
                z: 0.33303
                rotation: Qt.quaternion(0.928715, 0.348355, 0.00950493, -0.126678)
                scale.x: 0.01426
                scale.y: 0.0142574
                scale.z: 0.0119012
                Model {
                    id: cube_001_0
                    source: "meshes/cube_001_0.mesh"
                    materials: [
                        plastic_material
                    ]
                }
            }
            Node {
                id: bumper_front_004
                Model {
                    id: bumper_front_004_0
                    source: "meshes/bumper_front_004_0.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: bumper_front_004_1
                    source: "meshes/bumper_front_004_1.mesh"
                    materials: [
                        lights_material
                    ]
                }
                Model {
                    id: bumper_front_004_2
                    source: "meshes/bumper_front_004_2.mesh"
                    materials: [
                        plastic_material
                    ]
                }
            }
            Node {
                id: bumper_front_007
                rotation: Qt.quaternion(0.999995, -0.00302684, 0, 0)
                scale.x: 1.03574
                scale.y: 1.03574
                scale.z: 1.03574
                Model {
                    id: bumper_front_007_0
                    source: "meshes/bumper_front_007_0.mesh"
                    materials: [
                        glass_material
                    ]
                }
            }
            Node {
                id: bumper_front_009
                Model {
                    id: bumper_front_009_0
                    source: "meshes/bumper_front_009_0.mesh"
                    materials: [
                        tex_shiny_material
                    ]
                }
            }
            Node {
                id: bumper_front_001
                Model {
                    id: bumper_front_001_0
                    source: "meshes/bumper_front_001_0.mesh"
                    materials: [
                        plastic_material
                    ]
                }
                Model {
                    id: bumper_front_001_1
                    source: "meshes/bumper_front_001_1.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: bumper_front_001_2
                    source: "meshes/bumper_front_001_2.mesh"
                    materials: [
                        lights_material
                    ]
                }
            }
            Node {
                id: bumper_front_003
                Model {
                    id: bumper_front_003_0
                    source: "meshes/bumper_front_003_0.mesh"
                    materials: [
                        plastic_material
                    ]
                }
                Model {
                    id: bumper_front_003_1
                    source: "meshes/bumper_front_003_1.mesh"
                    materials: [
                        glass_material
                    ]
                }
            }
            Node {
                id: boot_001
                Model {
                    id: boot_001_0
                    source: "meshes/boot_001_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: boot_002
                Model {
                    id: boot_002_0
                    source: "meshes/boot_002_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: plane_001
                x: 0.00535
                y: 3.58116
                z: 0.10747
                Model {
                    id: plane_001_0
                    source: "meshes/plane_001_0.mesh"
                    materials: [
                        tex_shiny_material
                    ]
                }
            }
            Node {
                id: boot_003
                y: 0.00264
                Model {
                    id: boot_003_0
                    source: "meshes/boot_003_0.mesh"
                    materials: [
                        tex_shiny_material
                    ]
                }
            }
            Node {
                id: boot_004
                Model {
                    id: boot_004_0
                    source: "meshes/boot_004_0.mesh"
                    materials: [
                        window_material
                    ]
                }
            }
            Node {
                id: cylinder_001
                z: 0.02935
                Model {
                    id: cylinder_001_0
                    source: "meshes/cylinder_001_0.mesh"
                    materials: [
                        silver_material
                    ]
                }
                Model {
                    id: cylinder_001_1
                    source: "meshes/cylinder_001_1.mesh"
                    materials: [
                        plastic_material
                    ]
                }
                Model {
                    id: cylinder_001_2
                    source: "meshes/cylinder_001_2.mesh"
                    materials: [
                        rubber_material
                    ]
                }
                Model {
                    id: cylinder_001_3
                    source: "meshes/cylinder_001_3.mesh"
                    materials: [
                        material_001_material
                    ]
                }
            }
            Node {
                id: boot_005
                Model {
                    id: boot_005_0
                    source: "meshes/boot_005_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: boot_006
                Model {
                    id: boot_006_0
                    source: "meshes/boot_006_0.mesh"
                    materials: [
                        full_black_material
                    ]
                }
            }
            Node {
                id: window_rear_001
                Model {
                    id: window_rear_001_0
                    source: "meshes/window_rear_001_0.mesh"
                    materials: [
                        full_black_material
                    ]
                }
            }
            Node {
                id: hemi
                x: -1.99939
                y: -4.41179
                z: 4.46771
                rotation: Qt.quaternion(0.950845, 0.302498, -0.0620185, -0.0232741)
                scale.x: 0.999996
                scale.y: 1.00001
                scale.z: 1
                Node {
                    id: hemi_1
                }
            }
            Node {
                id: hemi_001
                x: 1.42703
                y: 0.23691
                z: 2.62923
                rotation: Qt.quaternion(0.630335, -0.405525, 0.640349, -0.167864)
                scale.x: 0.999999
                scale.y: 1
                scale.z: 1
                Node {
                    id: hemi_001_1
                }
            }
            Node {
                id: boot_007
                Model {
                    id: boot_007_0
                    source: "meshes/boot_007_0.mesh"
                    materials: [
                        logo_material
                    ]
                }
            }
            Node {
                id: plane_005
                y: 3.70428
                z: -0.29221
                rotation: Qt.quaternion(0.998382, 0.0568647, 0, 0)
                scale.x: 0.39334
                scale.y: 0.393344
                scale.z: 0.35561
                Model {
                    id: plane_005_0
                    source: "meshes/plane_005_0.mesh"
                    materials: [
                        license_material
                    ]
                }
            }
            Node {
                id: plane_006
                y: -3.75033
                z: -0.43239
                rotation: Qt.quaternion(0, 0, -0.0407978, 0.999167)
                scale.x: 0.39521
                scale.y: 0.395206
                scale.z: 0.357299
                Model {
                    id: plane_006_0
                    source: "meshes/plane_006_0.mesh"
                    materials: [
                        license_material
                    ]
                }
            }
            Node {
                id: boot_008
                Model {
                    id: boot_008_0
                    source: "meshes/boot_008_0.mesh"
                    materials: [
                        paint_material
                    ]
                }
            }
            Node {
                id: boot_009
                Model {
                    id: boot_009_0
                    source: "meshes/boot_009_0.mesh"
                    materials: [
                        silver_material
                    ]
                }
            }
            Node {
                id: boot_010
                Model {
                    id: boot_010_0
                    source: "meshes/boot_010_0.mesh"
                    materials: [
                        plastic_material
                    ]
                }
            }
            Node {
                id: boot_011
                Model {
                    id: boot_011_0
                    source: "meshes/boot_011_0.mesh"
                    materials: [
                        coat_material
                    ]
                }
                Model {
                    id: boot_011_0_1
                    source: "meshes/boot_011_0_1.mesh"
                    materials: [
                        coat_material
                    ]
                }
            }
            Node {
                id: cube_002
                scale.x: 0.33232
                scale.y: 0.31787
                scale.z: 0.31787
                Model {
                    id: cube_002_0
                    source: "meshes/cube_002_0.mesh"
                    materials: [
                        full_black_material
                    ]
                }
            }
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: window_material
            objectName: "window_material"
            baseColor: "#f1020405"
            metalness: 0.587081
            roughness: 0.396921
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.04
        }

        PrincipledMaterial {
            id: plastic_material
            objectName: "plastic_material"
            baseColor: "#ff020202"
            metalness: 0.384761
            roughness: 0.518525
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: paint_material
            objectName: "paint_material"
            baseColor: "#ff636363"
            metalnessMap: Texture {
                source: "maps/0.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "maps/0.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            roughnessChannel: Material.G
            metalness: 1
            roughness: 1
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: full_black_material
            objectName: "full_black_material"
            baseColor: "#ff020202"
            metalness: 1
            roughness: 1
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: silver_material
            objectName: "silver_material"
            baseColor: "#ff808080"
            metalness: 1
            roughness: 0.262589
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.04
        }

        PrincipledMaterial {
            id: rubber_material
            objectName: "rubber_material"
            baseColor: "#ff010101"
            metalnessMap: Texture {
                source: "maps/1.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "maps/1.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            roughnessChannel: Material.G
            metalness: 0.457723
            roughness: 1
            normalMap: Texture {
                source: "maps/2.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: material_001_material
            objectName: "material_001_material"
            baseColor: "#ffff8300"
            metalness: 0.299639
            roughness: 0.573246
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Opaque
            clearcoatAmount: 1
            clearcoatRoughnessAmount: 0.04
        }

        PrincipledMaterial {
            id: material_material
            objectName: "material_material"
            baseColor: "#ff000000"
            baseColorMap: Texture {
                source: "maps/3.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalnessMap: Texture {
                source: "maps/4.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            metalnessChannel: Material.B
            roughnessMap: Texture {
                source: "maps/4.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            roughnessChannel: Material.G
            metalness: 1
            roughness: 1
            occlusionMap: Texture {
                source: "maps/4.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            occlusionChannel: Material.R
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: lights_material
            objectName: "lights_material"
            baseColor: "#40ffffff"
            metalness: 1
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
            transmissionFactor: 1
        }

        PrincipledMaterial {
            id: glass_material
            objectName: "glass_material"
            baseColor: "#9d020202"
            metalness: 0.257813
            roughness: 0.353792
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 1
        }

        PrincipledMaterial {
            id: tex_shiny_material
            objectName: "tex_shiny_material"
            baseColorMap: Texture {
                source: "maps/5.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalness: 1
            roughness: 0.536765
            emissiveMap: Texture {
                source: "maps/6.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            emissiveFactor: Qt.vector3d(1, 1, 1)
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
            clearcoatAmount: 1
        }

        PrincipledMaterial {
            id: logo_material
            objectName: "logo_material"
            baseColorMap: Texture {
                source: "maps/7.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalness: 0.889415
            roughness: 0.33612
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: license_material
            objectName: "license_material"
            baseColor: "#ffa8a8a8"
            baseColorMap: Texture {
                source: "maps/8.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            opacityChannel: Material.A
            metalness: 0.3422
            roughness: 0.140986
            normalMap: Texture {
                source: "maps/9.png"
                generateMipmaps: true
                mipFilter: Texture.Linear
            }
            normalStrength: 0.232757
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: coat_material
            objectName: "coat_material"
            baseColor: "#75262626"
            metalness: 1
            roughness: 0.0381911
            cullMode: Material.NoCulling
            alphaMode: PrincipledMaterial.Blend
        }

        PrincipledMaterial {
            id: _material
            objectName: "_material"
            metalness: 1
            roughness: 1
            alphaMode: PrincipledMaterial.Opaque
        }
    }
}
