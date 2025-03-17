# Stellris-3DPortraits

# This is a project inspired by TheMinxLynx and their Project Angel mod.

Ongoing project to get 3d models as portraits in stellaris.

Test phases right now. This repo is just so I can track stuff.

# 3D files:
3D models need to be converted to the .mesh format paradox uses. There is a handy plugin for this (for blender/Maya): https://github.com/ross-g/io_pdx_mesh. Animations need to be converted to the .anim format paradox uses. Same plugin can do this.

Bones on a 3D model are limited to 50. Anymore and your model will collapse in on itself from my experience.
Every mesh can have up to 100 objects.
Every object can have 30k vertices each. (Split your model to fit into this criteria)
A single vertex can be influenced by max 4 bones.

# Texture mapping:
All files need to be in the .dds format. Preferably using BC3 (Linear, DXT5) compression.

### Diffuse:
- Diffuse.rgb = Default color texture.
- Diffuse.a = Alpha on the model.

### Specular:
- Specular.r = Empirecolormask //Unused right now. Might get replaced by an AO map.
- Specular.g = Specular // 50% gray in all textures.
- Specular.b = Metallic
- Specular.a = Roughness // Not inversed for this shader

### Normal:
- Normal.r = Normal red channel //Unused
- Noraml.g = Normal red channel //Used
- Normal.b = Emissive map
- Normal.a = Normal green channel


