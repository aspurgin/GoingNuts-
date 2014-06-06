//Maya ASCII 2014 scene
//Name: squirrel (1).ma
//Last modified: Wed, Jun 04, 2014 05:34:10 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2069181335256398 0.27922138863190982 1.3928509871311372 ;
	setAttr ".r" -type "double3" -2.4001000006813795 -310.99998825116575 0.00012174328029682216 ;
	setAttr ".rp" -type "double3" 8.8903519352627296e-018 -5.5511151231257827e-017 -1.1102230246251563e-016 ;
	setAttr ".rpt" -type "double3" -6.9006236452806276e-017 -1.9709135314573868e-017 
		2.4835265261484764e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 2.4353578811891774;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0018280962388430855 0.061229570028543845 -0.068340407929184332 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.013015735190881242 100.1 0.092862259480552017 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 25.847993859168337;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 0.022288169399420729 0.029549380094084032 100.1000915590743 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.2945004867504626;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.10060950138542 0.1194243859241621 0.42650322423673526 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -1.3877787807814457e-017 -4.4408920985006262e-016 
		-1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.4196976927394191e-014 0 1.4224732503009821e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000002;
	setAttr ".ow" 1.2479160938225888;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.8421709430404007e-014 -2.5222790424360197 0.08989039210796354 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "polySurface7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "transform2" -p "polySurface7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode joint -n "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -12.944680535328374 90 ;
	setAttr ".bps" -type "matrix" 0 0.97458680236839523 0.22401018871771633 0 -1.1102230246251568e-016 0.22401018871771616 -0.97458680236839523 0
		 -1 1.1102230246251568e-016 0 0 0 -0.20984881960691193 0.13842938653189443 1;
	setAttr ".radi" 0.1;
createNode joint -n "upperbody" -p "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.0878795497385223 ;
	setAttr ".bps" -type "matrix" -1.753588213070309e-017 0.99773527640833637 0.067263052342135199 0
		 -1.0962866633311017e-016 0.067263052342135032 -0.99773527640833637 0 -1 1.1102230246251568e-016 0 0
		 -1.3684555315672042e-048 -0.079961786361007536 0.16828410933205087 1;
	setAttr ".radi" 0.05;
createNode joint -n "chestAndShoulders" -p "upperbody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 30.652882279563318 ;
	setAttr ".bps" -type "matrix" -7.0978226441495598e-017 0.89261665382840227 -0.45081649183252648 0
		 -3.7094644098307941e-017 0.45081649183252664 0.89261665382840227 0 1 -5.5813205089961418e-017 1.0931401279765736e-016 0
		 4.6222318665293647e-033 0.053054837464358184 0.17725152217421031 1;
	setAttr ".radi" 0.05;
createNode joint -n "neck" -p "chestAndShoulders";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -3.5311250384401278e-031 42.018214520241926 ;
	setAttr ".bps" -type "matrix" -6.4098498560106619e-017 0.99021866573898421 0.13952417002837286 0
		 1.1142778837334704e-016 0.1395241700283727 -0.99021866573898421 0 -1 8.7967769359846596e-017 -2.2748203648948528e-016 0
		 1.5407439555097871e-033 0.20101714935998979 0.10252308182288124 1;
	setAttr ".radi" 0.1;
createNode joint -n "head" -p "neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 74.777866773731574 89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 5.9488580981894869e-016 1.5551926980626083e-016 0
		 -7.542378810945092e-016 0.99211071902614045 -0.12536475259591512 0 -1.2434818625734587e-016 0.1253647525959154 0.99211071902614067 0
		 3.065488686347131e-018 0.42648012617386599 0.13429135261043099 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_eye" -p "neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -6.4098498560106631e-017 0.99021866573898421 0.13952417002837286 0
		 1.1142778837334704e-016 0.1395241700283727 -0.99021866573898421 0 -1 8.7967769359846596e-017 -2.2748203648948528e-016 0
		 0.076919849621537598 0.31389527703011483 0.22781996725842929 1;
	setAttr ".radi" 0.1;
createNode joint -n "R_eye" -p "neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -6.4098498560106631e-017 0.99021866573898421 0.13952417002837286 0
		 1.1142778837334704e-016 0.1395241700283727 -0.99021866573898421 0 -1 8.7967769359846596e-017 -2.2748203648948528e-016 0
		 -0.082168863788203206 0.31563148704737198 0.2284919198847839 1;
	setAttr ".radi" 0.1;
createNode joint -n "L_arm" -p "chestAndShoulders";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -85.28330922434219 26.796081293973977 ;
	setAttr ".bps" -type "matrix" 0.99661347510640164 0.08222883457973687 1.3669939378772788e-016 0
		 0.082228834579736981 -0.99661347510640197 -9.205862340513212e-015 0 -6.6502067272595726e-016 8.8817841970012523e-015 -1.0000000000000002 0
		 -0.042246100000000009 0.038929699999999998 0.15543499999999999 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_forearm" -p "L_arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.7075472925032085e-006 -3.7026529683073954e-025 -0.11771553060317054 ;
	setAttr ".bps" -type "matrix" 0.996442430759375 0.084276225487071491 1.5561275331584163e-016 0
		 0.08427622548707156 -0.996442430759375 -2.9802331593257668e-008 0 -2.5116279066045091e-009 2.9696307444054156e-008 -0.99999999999999989 0
		 -0.18971999999999997 0.026761900000000029 0.15543499999999991 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_hand" -p "L_forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0921727198118187e-006 5.9242447492918327e-024 1.8216188020774773 ;
	setAttr ".bps" -type "matrix" 0.99861782933250942 0.052558833122766734 -9.4735308067592372e-010 0
		 0.052558833122766678 -0.99861782933250753 -6.6302573093498601e-008 0 -4.4308295961370975e-009 6.6161139545171138e-008 -0.999999999999998 0
		 -0.28754999999999997 0.01848780000000004 0.15543499999999991 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_tip" -p "L_hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1012306778468305e-006 2.3696978997167337e-023 3.0127875041835175 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 7.6327832942979524e-017 -4.4308295518672952e-009 0
		 -3.8654762720806597e-016 -0.99999999999999056 -1.3774111856153961e-007 0 -4.4308295961370793e-009 1.3774111825739668e-007 -0.99999999999999067 0
		 -0.32454000000000005 0.01654090000000006 0.15543499999999996 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_arm" -p "chestAndShoulders";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -85.283309224342247 -153.2039187060264 ;
	setAttr ".bps" -type "matrix" 0.99661347510640175 -0.082228834579735982 -4.2535101242875759e-016 0
		 0.08222883457973576 0.99661347510640197 1.6743233008133205e-015 0 4.4297606780092541e-016 -1.6653345369377348e-015 1.0000000000000002 0
		 0.042246136277764586 0.038929740571105695 0.1554351559307644 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_forearm" -p "R_arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.11771553060317054 ;
	setAttr ".bps" -type "matrix" 0.99644243075937533 -0.084276225487070602 -4.2879004900984201e-016 0
		 0.08427622548707038 0.99644243075937533 1.6734458740248277e-015 0 4.4297606780092541e-016 -1.6653345369377348e-015 1.0000000000000002 0
		 0.189720234747872 0.026761910664331139 0.15543515593076437 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_hand" -p "R_forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.8216188020776793 ;
	setAttr ".bps" -type "matrix" 0.99861782933250975 -0.052558833122762313 -3.7537804128656785e-016 0
		 0.052558833122762098 0.99861782933250987 1.6862305078311333e-015 0 4.4297606780092541e-016 -1.6653345369377348e-015 1.0000000000000002 0
		 0.28754958719833923 0.018487786327724416 0.15543515593076429 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_tip" -p "R_hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.0127875041832697 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -6.9388939039072284e-018 -2.8623289690107436e-016 0
		 -2.0816681711721685e-016 1 1.7036292813145118e-015 0 4.4297606780092541e-016 -1.6653345369377348e-015 1.0000000000000002 0
		 0.32453979011493383 0.016540933542640496 0.15543515593076426 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_thigh" -p "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 0 -0.11056668846823774 ;
	setAttr ".bps" -type "matrix" 2.1424546126992059e-019 0.97415270370386287 0.22589048201828721 0
		 -4.5553179402273121e-016 -0.22589048201828707 0.97415270370386309 0 1 -2.3900143371082135e-016 5.5191000350831819e-016 0
		 -0.117316 -0.23767199999999999 0.132605 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_leg" -p "L_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 12.789140330763679 ;
	setAttr ".bps" -type "matrix" -1.0062925794087561e-016 0.89998132382353668 0.43592845372702471 0
		 -4.4427808151309275e-016 -0.4359284537270246 0.89998132382353668 0 1 -2.3900143371082135e-016 5.5191000350831819e-016 0
		 -0.15697199999999997 -0.34430300000000008 0.10787800000000002 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_foot" -p "L_leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 179.99999999999997 72.210026891821457 ;
	setAttr ".bps" -type "matrix" -1.1277478467956646e-016 0.14011350678041409 -0.99013544791492802 0
		 -3.9922237596758142e-017 -0.9901354479149278 -0.14011350678041423 0 -1 1.5961958143579131e-016 9.0550859018948045e-018 0
		 -0.15697199999999994 -0.44320700000000007 0.059971800000000006 1;
	setAttr ".radi" 0.05;
createNode joint -n "L_toe" -p "L_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.0544146350845658 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -4.0623401472026121e-018 -1.1083262576745902e-015 0
		 1.2892851422536768e-016 -0.99999999999999989 3.2934855120902995e-009 0 -1.227478981353716e-015 -3.2934856508681776e-009 -1 0
		 -0.156972 -0.466387 0.22378200000000004 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_thigh" -p "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 179.88943331153175 ;
	setAttr ".bps" -type "matrix" -2.142454612699138e-019 -0.97415270370386309 -0.22589048201828721 0
		 1.1442584172668552e-017 0.22589048201828699 -0.97415270370386287 0 1 -1.3868590803867048e-016 1.1929929904716757e-016 0
		 0.117316080306807 -0.23767172524458097 0.13260451199230408 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_leg" -p "R_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 12.789140330763679 ;
	setAttr ".bps" -type "matrix" 2.3240420738437506e-018 -0.89998132382353668 -0.43592845372702471 0
		 1.1206135020839418e-017 0.43592845372702449 -0.89998132382353668 0 1 -1.3868590803867048e-016 1.1929929904716757e-016 0
		 0.15697222012882622 -0.34430265945674621 0.10787849826194688 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_foot" -p "R_leg";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 -4.7393957994334661e-023 -107.78997310817856 ;
	setAttr ".bps" -type "matrix" -1.1380350537171406e-017 -0.14011350678041373 0.99013544791492802 0
		 1.4901161317523218e-008 0.99013544791492802 0.14011350678041409 0 -1 1.4754168173065424e-008 2.0878538478298722e-009 0
		 0.1569722201288262 -0.44320671437817488 0.059971846659379886 1;
	setAttr ".radi" 0.05;
createNode joint -n "R_toe" -p "R_foot";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 81.945590287287757 89.99999914622633 90.000005122641781 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.5669161575222573e-016 -9.6018598218873981e-016 0
		 -2.9662730018812197e-016 1.0000000000000002 -1.0916416073910923e-009 0 1.0815615609209193e-015 1.091641974311504e-009 1.0000000000000002 0
		 0.15697222012882622 -0.46638735225038463 0.22378168762299613 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail1" -p "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 63.394566639867669 ;
	setAttr ".bps" -type "matrix" -9.9266347565635249e-017 0.63675288023942755 -0.77106794091493236 0
		 6.1627454829882e-016 0.77106794091493236 0.63675288023942767 0 1 -5.4787384366080405e-016 -3.6075482111858624e-016 0
		 0 -0.2128087741712138 0.017482564500542835 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail2" -p "tail1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 21.964050014772347 ;
	setAttr ".bps" -type "matrix" 1.384404726944517e-016 0.87893504273087675 -0.47694149605551422 0
		 6.0867262313995435e-016 0.47694149605551439 0.87893504273087675 0 1 -5.4787384366080405e-016 -3.6075482111858624e-016 0
		 -1.6186165292319528e-017 -0.10898116670231632 -0.10824617891882518 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail3" -p "tail2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -0.63031017631191977 ;
	setAttr ".bps" -type "matrix" 1.3173623053193619e-016 0.87363513635478673 -0.4865815949317786 0
		 6.1015874344728742e-016 0.48658159493177883 0.87363513635478685 0 1 -5.4787384366080405e-016 -3.6075482111858624e-016 0
		 -2.6894575999402584e-017 -0.0043424060500680539 -0.16502690175337853 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail4" -p "tail3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -19.697928568211488 ;
	setAttr ".bps" -type "matrix" -8.1633464895164712e-017 0.65850460786851828 -0.75257669470687794 0
		 6.1885709501398305e-016 0.75257669470687794 0.65850460786851839 0 1 -5.4787384366080405e-016 -3.6075482111858624e-016 0
		 -4.0157448702369323e-017 0.12381979691935235 -0.23640838188824564 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail5" -p "tail4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -47.145764276422717 ;
	setAttr ".bps" -type "matrix" -5.0919752982233385e-016 -0.10383133771915388 -0.99459491920452292 0
		 3.6106232462383786e-016 0.99459491920452292 -0.10383133771915382 0 1 -5.4787384366080405e-016 -3.6075482111858624e-016 0
		 -5.2970472682753497e-017 0.20899088117118231 -0.33374676389033703 1;
	setAttr ".radi" 0.05;
createNode joint -n "tail6" -p "tail5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.9598391107130917 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 -6.2856700293020857e-016 -1.1337103467518273e-015 0
		 4.8830924721476454e-016 1.0000000000000002 3.3306690738754691e-016 0 1.2461118091047156e-015 -2.9143354396410404e-016 1.0000000000000002 0
		 -6.3894530970682558e-017 0.19357897068751781 -0.48137664326017571 1;
	setAttr ".radi" 0.05;
createNode joint -n "Hammer" -p "lowerBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -166.46175441154296 ;
	setAttr ".bps" -type "matrix" 2.5989697044263823e-017 -0.99994633915562592 0.010359479198426058 0
		 1.0793742303587624e-016 0.010359479198426225 0.99994633915562592 0 -1 1.1102230246251568e-016 0 0
		 6.162975822039154e-033 -0.071764116349178397 0.47881946794923486 1;
	setAttr ".radi" 0.1;
createNode joint -n "joint2" -p "Hammer";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 166.46175441154296 ;
	setAttr ".bps" -type "matrix" 0 0.97458680236839568 0.22401018871771641 0 -1.110223024625157e-016 0.22401018871771625 -0.97458680236839557 0
		 -1 1.1102230246251568e-016 0 0 7.7037197775489434e-033 -0.4503524203026455 0.48274165607673519 1;
	setAttr ".radi" 0.1;
createNode transform -n "polySurface8";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.95466026663780212 0.12746604904532433 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape8Orig" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape7Orig1" -p "polySurface8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1216 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.39772052 0.98108751 0.50791198
		 0.84850329 0.57799178 0.84770632 0.51780498 0.8615489 0.40897012 0.92014486 0.5209204
		 0.85737997 0.46515822 0.85154021 0.47309214 0.85373503 0.46683666 0.84877551 0.41491526
		 0.91594666 0.47278842 0.84877551 0.46634769 0.8492642 0.47260308 0.85422373 0.74392748
		 0.83425039 0.4593918 0.84879053 0.57798707 0.84769756 0.45938545 0.84877992 0.45361769
		 0.84878349 0.74393082 0.83425331 0.58868235 0.82973486 0.78542417 0.78985959 0.45361277
		 0.84877551 0.45361635 0.84877902 0.45938414 0.84877551 0.59832233 0.56028312 0.57077086
		 0.57208437 0.57077086 0.56028312 0.59832233 0.57281566 0.54574287 0.57098752 0.57077086
		 0.54848182 0.5698626 0.59731323 0.56102914 0.57602477 0.54574287 0.56028312 0.54574287
		 0.54957873 0.59832233 0.54775053 0.51656777 0.57882977 0.51718158 0.56989056 0.56102914
		 0.54454154 0.5698626 0.52325296 0.52880609 0.60775924 0.51718158 0.56028312 0.51718158
		 0.55067569 0.51656777 0.54173648 0.56035155 0.61768419 0.50970292 0.59731323 0.50830925
		 0.56028312 0.52880609 0.51280701 0.58790302 0.6199826 0.50912136 0.6067338 0.51011342
		 0.58843386 0.50458097 0.58818096 0.56035155 0.50288212 0.50970292 0.52325296 0.60536253
		 0.57391256 0.51096469 0.6172626 0.48992327 0.60477793 0.49210799 0.59806043 0.50458097
		 0.53238529 0.58790302 0.50058359 0.51011342 0.53213233 0.50912136 0.51383251 0.49364647
		 0.61404926 0.60536253 0.54665363 0.49210799 0.52250582 0.51096469 0.50330365 0.48992327
		 0.51578832 0.49002767 0.62546718 0.47939652 0.61599994 0.49364647 0.50651693 0.51862639
		 0.6466741 0.48511299 0.61930758 0.47282362 0.61162645 0.49002767 0.49509907 0.47939652
		 0.50456631 0.53069264 0.61896878 0.48411164 0.63871545 0.48881993 0.62327164 0.51862639
		 0.47389221 0.47282362 0.5089398 0.48511299 0.50125867 0.48097137 0.63871545 0.48411164
		 0.4818508 0.53069264 0.50159746 0.48881993 0.49729463 0.48645011 0.6228109 0.48097137
		 0.4818508 0.48645011 0.49775535 0.58131099 0.43190581 0.56952274 0.39889896 0.61581492
		 0.40435424 0.54208016 0.44154501 0.57410133 0.36262912 0.56250525 0.44780213 0.54817045
		 0.39166784 0.56016302 0.45977226 0.5363301 0.4234716 0.55444962 0.3626633 0.53730351
		 0.45194241 0.51967883 0.38916379 0.53652483 0.36329979 0.56560963 0.3404578 0.54627544
		 0.46834505 0.55012655 0.32806996 0.59252703 0.32811433 0.51960319 0.370132 0.56150579
		 0.31737053 0.57024336 0.32597318 0.51949608 0.36104497 0.59456569 0.32497412 0.52622181
		 0.30930451 0.58435696 0.30886948 0.59522414 0.3227182 0.55098462 0.30004507 0.61014551
		 0.32854539 0.598189 0.3107163 0.61038703 0.3304528 0.60747135 0.30994216 0.61308181
		 0.32903838 0.61466616 0.330863 0.61695355 0.32523668 0.6184203 0.32716334 0.61474454
		 0.33282265 0.62407303 0.31922022 0.61961353 0.32911569 0.6091404 0.33403036 0.62730539
		 0.29628631 0.62549448 0.32117975 0.62711984 0.32339928 0.62316334 0.33764917 0.63441402
		 0.31218114 0.63537347 0.31435734 0.64306539 0.29508963 0.63645905 0.31682637 0.6459049
		 0.27258185 0.64430499 0.30981949 0.6447804 0.31219283 0.61681384 0.28320584 0.65651745
		 0.31029904 0.64530569 0.31489295 0.63211358 0.33392596 0.65784526 0.32071599 0.64201647
		 0.33611068 0.66863871 0.31336889 0.6306501 0.35370564 0.66684878 0.32758489 0.65241283
		 0.34072202 0.67746192 0.3185423 0.63860714 0.35411611 0.65840328 0.34858373 0.64365226
		 0.36057046 0.70615381 0.11994031 0.69033408 0.11884341 0.70004851 0.10631083 0.68570822
		 0.14334095 0.67981517 0.10631083 0.72373033 0.10631083 0.69033408 0.093778253 0.70615381
		 0.092681341 0.72373033 0.12067156 0.72373033 0.091950022 0.74523187 0.10631083 0.73332721
		 0.16601032 0.68570822 0.069280647 0.73332721 0.046611272 0.74523187 0.12323098 0.75213295
		 0.17003237 0.75213295 0.042589292 0.74523187 0.089390613 0.76022989 0.11664958 0.76022989
		 0.095972069 0.76022989 0.10631083 0.75514382 0.16016018 0.75514382 0.052461479 0.78006345
		 0.10631083 0.78006345 0.11701518 0.78006345 0.095606476 0.77690721 0.16490257 0.77690721
		 0.047719013 0.79575187 0.10631083 0.79575187 0.11811209 0.7574861 0.17113817 0.79575187
		 0.094509505 0.7574861 0.041483488 0.78168392 0.17632627 0.78168392 0.036295384 0.80367482
		 0.10631083 0.76910144 0.19281429 0.76910144 0.019807301 0.77921927 0.19775717 0.75447512
		 0.18101035 0.75447512 0.031611301 0.77921927 0.014864487 0.76836276 0.19818248 0.7868098
		 0.20626576 0.76836276 0.014439178 0.7868098 0.0063558971 0.77784139 0.20165209 0.77784139
		 0.010969498 0.78475845 0.21062952 0.78475845 0.001992065 0.56441277 0.79632443 0.5851202
		 0.79443794 0.56692076 0.82598341 0.56441277 0.77659655 0.82330817 0.33635131 0.82330817
		 0.31869978 0.84032857 0.33598563 0.81234908 0.33050102 0.84032857 0.31869978 0.8205328
		 0.38827688 0.84032857 0.30141389 0.86781663 0.31869978 0.82384151 0.39631534 0.80053955
		 0.37729159 0.82330817 0.30104825 0.86781663 0.33964196 0.85814929 0.39704666 0.81170821
		 0.40014619 0.81234908 0.3068985 0.8205328 0.24912268 0.86781663 0.29775757 0.88866615
		 0.31869978 0.81501693 0.40818468 0.79014224 0.38871527 0.82384151 0.2410842 0.85814929
		 0.24035288 0.88866615 0.34622341 0.87718105 0.40223676 0.79493415 0.41865477 0.80053955
		 0.26010796 0.81170821 0.2372532 0.87718105 0.23516263 0.88866615 0.29117611 0.91806251
		 0.31869978 0.79788965 0.42301846 0.81501693 0.22921473 0.91806251 0.34658894 0.88626808
		 0.40148178 0.79014224 0.24868426 0.79493415 0.21874477 0.88626808 0.23591763 0.91806251
		 0.29081059 0.93800855 0.33050102 0.79788965 0.21438107 0.93800855 0.3068985 0.93800855
		 0.31869978 0.2131031 0.9149614 0.18834028 0.91454792 0.20761529 0.90250325 0.18557797
		 0.90274668;
	setAttr ".uvst[0].uvsp[250:499]" 0.18834028 0.89094543 0.2131031 0.89004511
		 0.1986433 0.81198335 0.18161458 0.81996459 0.17435142 0.87485743 0.39155978 0.9159466
		 0.38483414 0.98692739 0.37757099 0.93203455 0.17521712 0.91871291 0.14719233 0.99800801
		 0.11196242 0.99726146 0.70107913 0.83848459 0.71304923 0.84946269 0.69480354 0.84835678
		 0.7067737 0.85933477 0.69110739 0.80793309 0.67968369 0.81833047 0.67904145 0.78985959
		 0.66717213 0.7986843 0.65233833 0.81581163 0.66131574 0.82665288 0.66478544 0.83473307
		 0.60919964 0.83867419 0.5944488 0.84802532 0.60109484 0.82973492 0.37065476 0.98611408
		 0.34965593 0.98574764 0.35802758 0.96782368 0.34061337 0.97772563 0.37080023 0.96878636
		 0.3512851 0.96236873 0.34061337 0.95821619 0.3512851 0.95821619 0.33543992 0.95821619
		 0.36931491 0.95821619 0.3512851 0.95406383 0.33543992 0.99243027 0.34061337 0.93870699
		 0.36931491 0.96493578 0.33543992 0.92400223 0.36931491 0.95149672 0.35802758 0.94860876
		 0.34965593 0.9306848 0.34278703 0.91594648 0.37065476 0.93031842 0.37080023 0.94764608
		 0.53447944 0.82432681 0.52045006 0.82047617 0.53447944 0.8137567 0.52045006 0.8137567
		 0.55252802 0.8137567 0.52045006 0.80703723 0.55834979 0.84165448 0.53447944 0.80318654
		 0.55834979 0.78585881 0.7621271 0.83800471 0.76361245 0.85203421 0.74409729 0.85039663
		 0.75083977 0.86296946 0.89049053 0.80431271 0.90254331 0.82162684 0.89042211 0.83578467
		 0.90254331 0.83861798 0.93800855 0.83875841 0.91032988 0.8292129 0.93800855 0.82153553
		 0.91032988 0.82153553 0.90830982 0.82807779 0.91032988 0.81385815 0.90830982 0.82153553
		 0.93800855 0.80431265 0.90830982 0.81499332 0.77592111 0.86636961 0.76937884 0.86636961
		 0.77601236 0.83800483 0.78246337 0.86636961 0.87751222 0.80431265 0.88060522 0.80633283
		 0.87260282 0.83267742 0.88465565 0.83401144 0.20351714 0.932199 0.19294944 0.98649031
		 0.18242826 0.91871274 0.21580057 0.97835487 0.18157017 0.99800777 0.21669276 0.93158662
		 0.065369561 0.89419222 0.050160144 0.90684795 0.04669635 0.88739687 0.027652364 0.89291131
		 0.067105368 0.86272013 0.027652932 0.86281151 0.04669635 0.83822602 0.027652364 0.83271164
		 0.065369561 0.83143061 0.050160144 0.81877488 0.06489002 0.81198329 0.067263357 0.81405461
		 0.069963463 0.81198329 0.075786524 0.8205418 0.71340042 0.75759518 0.70229071 0.7500692
		 0.71340042 0.71425128 0.69477558 0.77870405 0.70229071 0.71425128 0.74249154 0.74435115
		 0.69331604 0.72869742 0.70229071 0.6784333 0.7424919 0.71425128 0.68094355 0.7861082
		 0.6948728 0.71400785 0.71340042 0.67090732 0.69331604 0.69965303 0.74249154 0.68415141
		 0.68183571 0.73933989 0.69477558 0.64979845 0.72389203 0.66431379 0.68094355 0.64239436
		 0.68183571 0.68891925 0.81496602 0.85783887 0.7882297 0.84849638 0.80131018 0.83800471
		 0.81574023 0.86712116 0.45191479 0.43370149 0.41741085 0.40614989 0.46370292 0.40069461
		 0.45912445 0.36442477 0.49114558 0.44334069 0.48505533 0.39346349 0.47072047 0.44959778
		 0.47877613 0.36445895 0.49689561 0.42526725 0.47306266 0.46156791 0.46761611 0.34225348
		 0.49670097 0.36509544 0.51354688 0.39095944 0.49592224 0.45373809 0.44069871 0.32991001
		 0.48309922 0.3298656 0.48695028 0.4701407 0.46298239 0.32776886 0.47171992 0.31916621
		 0.51362252 0.37192768 0.43866006 0.32676977 0.51372963 0.36284062 0.4380016 0.32451385
		 0.44886881 0.31066513 0.42308021 0.33034107 0.42283869 0.33224848 0.43503675 0.31251195
		 0.4201439 0.33083406 0.4257544 0.31173781 0.41855958 0.33265868 0.41480535 0.32895902
		 0.4184812 0.3346183 0.41627219 0.32703236 0.41361222 0.33091137 0.42408532 0.33582601
		 0.40915269 0.32101586 0.40610591 0.32519493 0.40773118 0.3229754 0.41006234 0.33944482
		 0.40592027 0.29808196 0.39785224 0.31615299 0.39881173 0.31397679 0.39676669 0.31862202
		 0.39016035 0.29688528 0.38844535 0.31398851 0.38892075 0.31161517 0.38732082 0.2743775
		 0.38792005 0.3166886 0.40111214 0.33572164 0.39120924 0.33790636 0.4025757 0.35550132
		 0.37538046 0.32251167 0.38081285 0.34251767 0.3946186 0.35591176 0.36637697 0.32938054
		 0.38957348 0.36236611 0.37482256 0.35037938 0.61259699 0.79632443 0.610089 0.82598341
		 0.5918895 0.79443794 0.61259699 0.77659655 0.22370116 0.91900998 0.25893107 0.91826355
		 0.28695586 0.99707186 0.67706698 0.85933477 0.67079139 0.84946269 0.68903708 0.84835678
		 0.68276149 0.83848459 0.69813287 0.80793309 0.71019888 0.78985959 0.70955658 0.81833047
		 0.72206831 0.7986843 0.73690194 0.81581163 0.72792459 0.82665288 0.72445488 0.83473307
		 0.62161213 0.84802538 0.61496609 0.82973492 0.62971711 0.83908612 0.72555822 0.83848459
		 0.7383309 0.84941989 0.71881574 0.85105747 0.73684555 0.86344934 0.86229217 0.76695955
		 0.86229217 0.78395069 0.85017085 0.7697928 0.85023934 0.80108231 0.85149866 0.75890386
		 0.86683643 0.83319849 0.85883403 0.80685389 0.86192703 0.80483371 0.85478359 0.8345325
		 0.29330891 0.91826349 0.30468819 0.92978096 0.29416698 0.99707168 0.31525588 0.98358548
		 0.32753929 0.9379164 0.32843149 0.98444122 0.84824294 0.81559575 0.8345871 0.83542991
		 0.82150662 0.82493824 0.84901708 0.80631334 0.066406868 0.22239463 0.043837935 0.25287738
		 0.054656968 0.21914116 0.0347085 0.25523004 0.074651182 0.20257637 0.046023261 0.26000574
		 0.042997479 0.21834831 0.050979786 0.20257637 0.050346367 0.25971285 0.025579134
		 0.25758275 0.071300864 0.16776362 0.041543204 0.26390713 0.0983411 0.18354967 0.049234681
		 0.26751599 0.032347366 0.2678085 0.102925 0.11895666 0.059385255 0.25941995 0.045342967
		 0.27237582 0.019351698 0.26324123 0.13054402 0.16024902 0.059908599 0.25065836 0.058861911
		 0.2681815 0.0076122973 0.28383636 0.12743238 0.10364793 0.049486857 0.25211212 0.12241727
		 0.26157612;
	setAttr ".uvst[0].uvsp[500:749]" 0.058338568 0.27694306 0.0063560307 0.25867397
		 0.15951346 0.15199608 0.037889626 0.29863766 0.18218189 0.1408134 0.15816303 0.20154138
		 0.12167619 0.29551777 0.052933533 0.33123752 0.14978684 0.080803886 0.18744637 0.20494981
		 0.12259141 0.18537349 0.17069186 0.29114151 0.16953517 0.082009062 0.21457687 0.2008229
		 0.096936442 0.2017737 0.11664297 0.34634963 0.1699802 0.31604937 0.20522483 0.12686613
		 0.22395796 0.18282351 0.051964015 0.37457117 0.20401576 0.29845864 0.21192238 0.066505402
		 0.11589064 0.38622606 0.032600276 0.35265571 0.16971178 0.32467064 0.20390369 0.31728378
		 0.14734735 0.059732493 0.23395017 0.10731034 0.2559779 0.14811526 0.050173905 0.41363555
		 0.16890644 0.35053465 0.0018722963 0.35392129 0.17861378 0.32343015 0.16944335 0.33329198
		 0.27368468 0.29820338 0.22529969 0.04113866 0.24834234 0.095438264 0.11891877 0.4218111
		 0.0063560307 0.39120644 0.16815031 0.37854686 0.16917486 0.34191331 0.17707571 0.33105925
		 0.18724735 0.33081093 0.26871064 0.31929222 0.22764502 0.061574027 0.26789472 0.11194173
		 0.16739184 0.40509534 0.20363198 0.36292994 0.17639415 0.34546745 0.17329347 0.33698964
		 0.19588086 0.33819181 0.2045145 0.34557259 0.24336769 0.056642782 0.28397977 0.050084662
		 0.28059897 0.1435767 0.20351957 0.38182235 0.17780843 0.34929419 0.18649785 0.33187461
		 0.2655701 0.33246791 0.26477036 0.028758954 0.30116025 0.061412197 0.31051531 0.052765448
		 0.18671043 0.34805363 0.26161906 0.34550497 0.18580705 0.34633774 0.19561243 0.34681314
		 0.19183147 0.34111184 0.27127841 0.028237883 0.3003464 0.035261568 0.26252505 0.34394819
		 0.28861263 0.03452624 0.28764504 0.013414791 0.29953256 0.0091108773 0.28471777 0.0038092248
		 0.27771634 0.0019920315 0.27575752 0.017718639 0.76708144 0.35722485 0.76513672 0.37299687
		 0.74071777 0.35642222 0.74071777 0.40989527 0.74071777 0.26902708 0.76051611 0.4122313
		 0.71629882 0.37299687 0.71435398 0.35722485 0.77216226 0.3224121 0.75548095 0.41788974
		 0.72091943 0.4122313 0.70927316 0.3224121 0.77724314 0.27360517 0.72595453 0.41788974
		 0.70666689 0.37378964 0.6944077 0.35722485 0.7041924 0.27360517 0.7808094 0.25829643
		 0.71316326 0.42245704 0.72003245 0.40987858 0.68322831 0.33819818 0.70062602 0.25829643
		 0.74071777 0.21438101 0.78437579 0.2354524 0.69705969 0.2354524 0.28726846 0.70142049
		 0.28225991 0.67392242 0.31324106 0.67717022 0.2557517 0.67576557 0.30206171 0.65348035
		 0.31989527 0.70937312 0.2809495 0.6452359 0.2557517 0.62259316 0.2305539 0.6452359
		 0.27732393 0.62266713 0.22924352 0.67392242 0.2341795 0.62266713 0.20944169 0.65348035
		 0.22423494 0.70142049 0.19826233 0.67717022 0.22170085 0.63348609 0.21922635 0.73699212
		 0.19160815 0.70937312 0.2557517 0.73669034 0.18523374 0.73834252 0.21566002 0.76627553
		 0.29227707 0.73699212 0.2557517 0.80750203 0.29584339 0.76627553 0.21209368 0.79340601
		 0.29940972 0.79340601 0.84061074 0.75890386 0.84305024 0.80256182 0.82086235 0.76310706
		 0.67277509 0.011551556 0.66857195 0.029550958 0.62911713 0.001992065 0.62911713 0.06879776
		 0.66436875 0.064259194 0.58966219 0.029550958 0.59386539 0.064259194 0.58545905 0.011551556
		 0.59883285 0.10043273 0.55342209 0.071561068 0.62911713 0.15960902 0.56703627 0.10506412
		 0.60380018 0.15096226 0.57338816 0.1169362 0.60532862 0.17711289 0.58312583 0.1622898
		 0.60685706 0.20326358 0.58807641 0.19895966 0.62911713 0.22472987 0.58532423 0.17784822
		 0.58807641 0.20856524 0.60685706 0.21468635 0.65137708 0.20326358 0.60685706 0.22610904
		 0.65290552 0.17711289 0.65137708 0.21468635 0.62911713 0.25078472 0.65443397 0.15096226
		 0.67015785 0.20856524 0.65137708 0.22610904 0.65940142 0.10043273 0.12754428 0.85175729
		 0.14980432 0.86811221 0.12754428 0.87915254 0.14980432 0.83665901 0.15133275 0.87863147
		 0.10528425 0.86811221 0.12754428 0.81198329 0.15823811 0.85238558 0.16858499 0.86380833
		 0.15286119 0.90703636 0.10375582 0.87863147 0.10528425 0.83665901 0.10222739 0.90703636
		 0.08650358 0.86380833 0.096850477 0.85238558 0.083751455 0.88491982 0.081552975 0.90047824
		 0.08650358 0.85420281 0.80069846 0.67588264 0.84350568 0.63881576 0.88079083 0.67588264
		 0.80505645 0.62853974 0.84350568 0.71294957 0.86533439 0.59661293 0.77342075 0.6359902
		 0.80505645 0.72322559 0.80151522 0.59661293 0.74825835 0.67588264 0.75007021 0.59661293
		 0.77342075 0.71577513 0.86533439 0.7551524 0.75007021 0.7551524 0.80151522 0.7551524
		 0.38247383 0.0032972156 0.37025911 0.072966196 0.37001568 0.0019919982 0.35755756
		 0.0032972156 0.35245034 0.073078267 0.34407133 0.0082713263 0.34514105 0.10700175
		 0.37025911 0.10629009 0.33295888 0.15530577 0.37025911 0.15456469 0.3171221 0.2186434
		 0.32991338 0.21812005 0.34270462 0.21759671 0.32991338 0.231639 0.3554959 0.21707335
		 0.33534631 0.22774728 0.33036661 0.26936966 0.37025911 0.21655001 0.34644037 0.22663559
		 0.34226868 0.23543869 0.34270462 0.2446346 0.38502228 0.21707335 0.35814306 0.22749516
		 0.3554959 0.2576302 0.38237512 0.22749516 0.37025911 0.23006895 0.34868687 0.23314403
		 0.34600446 0.23095863 0.37025911 0.27062592 0.37025911 0.23321785 0.35046077 0.25140288
		 0.37025911 0.25173056 0.38502228 0.2576302 0.39183131 0.23314403 0.39407778 0.22663559
		 0.36848384 0.71149552 0.3889811 0.71644884 0.36848384 0.76981008 0.36848384 0.65225077
		 0.3889811 0.76583201 0.34316805 0.75729901 0.39239928 0.65225077 0.37358382 0.80463737
		 0.32628101 0.72657102 0.3889811 0.64017302 0.3889811 0.79968405 0.36848384 0.64017302
		 0.3889811 0.62259322 0.36848384 0.62259322 0.44183302 0.9175939 0.44183302 0.96773714
		 0.42643574 0.91594666 0.42153373 0.97511178 0.65161437 0.47209659 0.67191362 0.47816339
		 0.65141642 0.53216189;
	setAttr ".uvst[0].uvsp[750:999]" 0.67191362 0.53002059 0.63105977 0.4946793
		 0.65141642 0.57846332 0.61203909 0.52495664 0.67191362 0.57846332 0.65141642 0.6066311
		 0.67191362 0.6066311 0.65141642 0.63864285 0.67191362 0.63864285 0.6358524 0.82429487
		 0.6358524 0.77659661 0.64587229 0.82429487 0.64587229 0.77659661 0.34486282 0.55315542
		 0.33618513 0.58213055 0.30966589 0.56347919 0.36061043 0.54640466 0.30334309 0.59660691
		 0.31963605 0.53239381 0.35045758 0.59826201 0.28191969 0.5764153 0.28097799 0.5457834
		 0.3228381 0.50262612 0.30031437 0.61884177 0.26269546 0.58498967 0.26488325 0.53560656
		 0.34733516 0.497962 0.33203861 0.47140849 0.35938969 0.46979421 0.33883429 0.45933068
		 0.35575643 0.43778244 0.33161092 0.44175091 0.3329826 0.43180504 0.25249794 0.42556259
		 0.25186372 0.43558255 0.40677604 0.91219509 0.39923728 0.85789442 0.42624238 0.85303003
		 0.38419339 0.89049423 0.39141512 0.80838883 0.37890399 0.83647615 0.66156691 0.65758079
		 0.6335398 0.72139996 0.6023221 0.73060042 0.60070789 0.75795144 0.62887561 0.74589694
		 0.59024429 0.73739606 0.6751771 0.77284497 0.56869608 0.75431824 0.57266456 0.73017269
		 0.56271875 0.73154438 0.55647624 0.65105969 0.56649625 0.65042549 0.28593484 0.81125349
		 0.3064321 0.81125349 0.28593484 0.83402729 0.3064321 0.83402729 0.27233431 0.91451198
		 0.3200326 0.91451198 0.035970051 0.99034667 0.015472792 0.99034667 0.049570546 0.91059947
		 0.0018722629 0.91059947 0.77506781 0.57320768 0.78484231 0.5058679 0.78866738 0.57410645
		 0.79362106 0.50644809 0.78682077 0.58931005 0.79595721 0.50334013 0.77739871 0.59286135
		 0.78293538 0.50247955 0.79574949 0.44958115 0.79021525 0.4492155 0.79791027 0.44667193
		 0.78845596 0.44604722 0.7989524 0.43341956 0.7895813 0.43280029 0.79318315 0.42677
		 0.81801146 0.57275844 0.81801146 0.5055778 0.82981473 0.57320774 0.80620807 0.57320774
		 0.82563066 0.5058679 0.82490069 0.59286135 0.81043762 0.58642715 0.81039214 0.5058679
		 0.82931316 0.50247955 0.81566346 0.59161752 0.81801146 0.50204933 0.80670959 0.50247955
		 0.82281464 0.4492155 0.81801146 0.4490326 0.81320816 0.4492155 0.82621688 0.44604722
		 0.81801134 0.4457348 0.80980593 0.44604722 0.82677162 0.43280023 0.81926548 0.432419
		 0.81050515 0.432657 0.81801146 0.42677 0.93800849 0.73949915 0.92440885 0.74039787
		 0.92823404 0.67215931 0.92557389 0.74897897 0.91945523 0.67273939 0.93498683 0.75271857
		 0.93014085 0.66877097 0.91711903 0.66963142 0.92286098 0.61550695 0.91732687 0.61587262
		 0.92462021 0.6123386 0.91516608 0.61296326 0.92566234 0.59894836 0.91629118 0.59956777
		 0.91989309 0.59306145 0.89209539 0.57410645 0.88029206 0.5745557 0.88791126 0.50644797
		 0.88699561 0.58268756 0.88029206 0.50673801 0.87851775 0.58426052 0.87267286 0.50644797
		 0.89159387 0.50334001 0.86848873 0.57410645 0.88029206 0.50377023 0.87258738 0.58930993
		 0.86899024 0.50334001 0.8850953 0.44958115 0.88029212 0.44976407 0.87548882 0.44958115
		 0.88849765 0.44667184 0.88029212 0.44698432 0.87208658 0.44667187 0.88905239 0.4332763
		 0.88154608 0.43365744 0.87278569 0.43341947 0.88029206 0.42676997 0.50214547 0.85210532
		 0.49463925 0.85787445 0.49338526 0.84850329 0.5462997 0.84540606 0.5562284 0.85682869
		 0.54434085 0.86113256 0.665025 0.84883159 0.65313745 0.85726541 0.65802354 0.8384847
		 0.90931636 0.79651487 0.89756656 0.79976839 0.88674754 0.76603216 0.87761813 0.76367944
		 0.88893282 0.7589038 0.86848873 0.76132673 0.89325589 0.7591967 0.88590711 0.80056119
		 0.15645784 0.74821001 0.10050051 0.72947687 0.11444774 0.70643389 0.12174965 0.78022999
		 0.055643439 0.69378722 0.080944717 0.7582022 0.040139783 0.73617435 0.054438263 0.67403883
		 0.03336687 0.67159939 0.07728231 0.65168446 0.069072671 0.77259439 0.014773038 0.74955165
		 0.12563047 0.68376547 0.035208438 0.75189704 0.1338834 0.65479606 0.17858419 0.71169847
		 0.030277161 0.76761973 0.092591032 0.62717706 0.17445728 0.73882896 0.023719007 0.80823183
		 0.0023933335 0.78902245 0.15718405 0.62259316 0.0018722629 0.79553044 0.8113023 0.802562
		 0.79155391 0.7983588 0.8137418 0.75890386 0.47001362 0.2046342 0.44373325 0.26883036
		 0.44172475 0.20402345 0.45690888 0.26568982 0.46263281 0.19600064 0.48737091 0.20375171
		 0.45525199 0.18736708 0.47125414 0.19573218 0.46838918 0.2626448 0.44787115 0.17873351
		 0.45631561 0.18661761 0.46555281 0.1919512 0.47249463 0.18683016 0.45550025 0.17719544
		 0.44049034 0.17009997 0.47373512 0.17792816 0.44911167 0.16983151 0.47077873 0.18592682
		 0.47497565 0.16902617 0.45773298 0.16956306 0.47079065 0.11676269 0.50298786 0.16827007
		 0.46990845 0.17651388 0.46143064 0.17341317 0.41995877 0.1217959 0.51066703 0.11601041
		 0.50626338 0.20363927 0.46635431 0.1692946 0.45567849 0.053053275 0.52953631 0.16751154
		 0.46994597 0.26173878 0.40138409 0.058458328 0.49901217 0.052083742 0.54625213 0.11903846
		 0.42307866 0.038009387 0.47709674 0.03271997 0.53807652 0.050293632 0.40827733 0.0077320412
		 0.47836223 0.0019920398 0.51564747 0.0064757741 0.42346779 0.56279457 0.42346779
		 0.62110913 0.40297055 0.56774795 0.44878358 0.60859793 0.40297055 0.61713099 0.42346779
		 0.50354981 0.46567062 0.57787001 0.4183678 0.65593642 0.39955238 0.50354981 0.40297055
		 0.6509831 0.40297055 0.49147201 0.42346779 0.49147201 0.40297055 0.47389224 0.42346779
		 0.47389224 0.44901046 0.7875061 0.46440774 0.78585881 0.44901046 0.83764929 0.46930975
		 0.84502393 0.69828254 0.47209659 0.69848055 0.53216189 0.67798322 0.47816339 0.71883714
		 0.4946793 0.67798322 0.53002059 0.73785782 0.52495664 0.69848055 0.57846332 0.67798322
		 0.57846332 0.69848055 0.6066311 0.67798322 0.6066311 0.69848055 0.63864285 0.67798322
		 0.63864285;
	setAttr ".uvst[0].uvsp[1000:1215]" 0.61936629 0.77659661 0.62938619 0.77659661
		 0.61936629 0.82429487 0.62938619 0.82429487 0.15309811 0.55315542 0.18829505 0.56347919
		 0.16177581 0.58213055 0.17832489 0.53239381 0.19461782 0.59660691 0.13735048 0.54640466
		 0.21698295 0.5457834 0.21604124 0.5764153 0.14750333 0.59826201 0.1751228 0.50262612
		 0.23307769 0.53560656 0.23526549 0.58498967 0.19764656 0.61884177 0.1506258 0.497962
		 0.13857128 0.46979421 0.16592233 0.47140849 0.15912668 0.45933068 0.14220451 0.43778244
		 0.16635004 0.44175091 0.16497834 0.43180504 0.24546304 0.42556259 0.24609725 0.43558255
		 0.35367113 0.80838883 0.37313753 0.86755395 0.3461324 0.86268955 0.33831027 0.91219509
		 0.33108857 0.83008969 0.32579908 0.88410777 0.5370996 0.77495205 0.47785485 0.70193243
		 0.50907254 0.71113294 0.47624055 0.67458141 0.46577701 0.69513679 0.50440836 0.68663591
		 0.44422883 0.67821461 0.55070984 0.65968788 0.44819731 0.70236015 0.43825141 0.70098847
		 0.43200892 0.78147316 0.44202891 0.78210735 0.25296733 0.81125349 0.25296733 0.83402729
		 0.23247008 0.81125349 0.23247008 0.83402729 0.26656786 0.91451198 0.21886955 0.91451198
		 0.070609443 0.99053508 0.057008933 0.91078788 0.091106705 0.99053508 0.10470725 0.91078788
		 0.85590172 0.51318347 0.84712291 0.51376349 0.85094804 0.44552493 0.8582378 0.51629144
		 0.83734846 0.44642371 0.84521598 0.51715195 0.84910142 0.43032148 0.85803008 0.57005024
		 0.83967936 0.42677 0.85249585 0.57041591 0.86019087 0.57295942 0.85073662 0.57358432
		 0.86123306 0.58621198 0.85186189 0.58683121 0.8554638 0.59286135 0.76334995 0.51320207
		 0.75573075 0.51349217 0.76753402 0.44586226 0.76703262 0.51659048 0.75573075 0.44631159
		 0.75573075 0.5170207 0.74392742 0.44586226 0.76262003 0.42620859 0.76053393 0.56985444
		 0.74811149 0.51320207 0.74815691 0.43264285 0.7533828 0.42745247 0.75573075 0.57003736
		 0.74442893 0.51659048 0.76393628 0.57302284 0.75573069 0.57333517 0.75092751 0.56985444
		 0.76449102 0.58626974 0.75698477 0.58665091 0.74752522 0.57302284 0.7482245 0.58641303
		 0.75573075 0.59230006 0.90939963 0.6062808 0.89962518 0.67362064 0.89579999 0.60538214
		 0.89084637 0.67304057 0.89696503 0.59680098 0.90153199 0.67700899 0.90637797 0.59306139
		 0.88851017 0.67614847 0.89425212 0.73027301 0.88871801 0.72990733 0.89601135 0.73344135
		 0.88655722 0.73281664 0.89705348 0.7468316 0.88768232 0.74621218 0.89128423 0.75271851
		 0.92323565 0.44197354 0.91905159 0.50963199 0.91143233 0.44152418 0.91143233 0.50934196
		 0.91813594 0.43339241 0.9227342 0.5127399 0.90381318 0.50963199 0.90965807 0.43181944
		 0.91143233 0.51230967 0.89962906 0.44197354 0.91623563 0.56649876 0.90013051 0.5127399
		 0.90372771 0.42676997 0.91143233 0.56631589 0.91963786 0.56940806 0.90662915 0.56649876
		 0.91143233 0.56909561 0.92019266 0.58280361 0.90322691 0.56940806 0.91268635 0.58242244
		 0.91143233 0.58930993 0.90392601 0.58266044 0.47885853 0.85210532 0.48761877 0.84850329
		 0.48636478 0.85787445 0.56831914 0.86137015 0.56199491 0.84540606 0.57222062 0.85217422
		 0.52864569 0.86113256 0.52668691 0.84540606 0.5385744 0.84970999 0.64737105 0.83648002
		 0.64036959 0.84682697 0.6354835 0.82804632 0.49088469 0.78585875 0.4908421 0.84475189
		 0.47648725 0.84384584 0.49846864 0.84475189 0.49924749 0.78585875 0.5131582 0.84384584
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375
		 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.25 0.625 0.5 0.625 0.5 0.625
		 0.25 0.375 0.5 0.375 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.25 0.625 0.5 0.625
		 0.25 0.375 0.25 0.375 0.5 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.25 0.625 0.5 0.625
		 0.25 0.375 0.25 0.375 0.5 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.25 0.625 0.5 0.625
		 0.25 0.375 0.25 0.375 0.5 0.375 0.25 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 662 ".vt";
	setAttr ".vt[0:165]"  -0.10232752 0.41645795 0.13959503 -0.098419659 0.36961535 0.19825789
		 -0.13776129 0.36034036 0.11955299 -0.14770764 0.29867512 0.12733731 -0.0008276524 0.44614208 0.19617492
		 -0.063785501 0.38578582 0.22055586 -0.024000188 0.44614208 0.18579471 -0.0008276524 0.43417263 0.23057523
		 -0.0008276524 0.38733003 0.25785914 -0.020891963 0.38733003 0.25035515 -0.022135271 0.43417263 0.21269102
		 -0.10060377 0.31918985 0.19399393 -0.11165223 0.25005209 0.18691012 -0.097702958 0.28564885 0.19399393
		 -0.027591234 0.37076747 0.24308339 -0.019027011 0.34477803 0.25936612 -0.0008276524 0.34477803 0.26687011
		 -0.032360293 0.29517508 0.2455864 -0.017162075 0.29621866 0.25936612 -0.0008276524 0.29621866 0.26687011
		 -0.081545547 0.31598237 0.22920033 -0.079802059 0.28251481 0.20947613 -0.063785501 0.28350368 0.22348031
		 -0.048689067 0.2842015 0.23700872 -0.11227378 0.43284637 0.072895609 -0.1533024 0.34804618 0.08325012
		 -0.10916564 0.44348451 0.107622 -0.0008276524 0.45513222 0.15591155 -0.025243497 0.45513222 0.15591155
		 -0.13278815 0.40211827 0.063119471 -0.1004442 0.44173571 0.065501235 -0.092381194 0.45415416 0.10250297
		 -0.11912122 0.40774357 0.052707896 -0.019027011 0.44760796 0.060134988 -0.0008276524 0.44760796 0.060134988
		 -0.0008276524 0.45772317 0.093855634 -0.018405383 0.45772317 0.093855634 -0.020891944 0.42165744 0.033461891
		 -0.0008276524 0.42165744 0.033461891 -0.0008276524 0.45814049 0.11935499 -0.029595008 0.45814049 0.11935499
		 -0.030216655 0.3740873 0.015871182 -0.0008276524 0.3740873 0.010045908 -0.13403147 0.34378886 0.034809403
		 -0.0008276524 0.40302509 0.019991644 -0.030838316 0.40302509 0.025816917 -0.036433108 0.32735279 0.011030652
		 -0.0008276524 0.32735279 0.0052053779 -0.14285564 0.31143141 0.034680776 -0.16138381 0.29873323 0.093925931
		 -0.15514153 0.29981542 0.063450515 -0.047622718 0.29190487 0.010598712 -0.0008276524 0.29190487 0.004773438
		 -0.141572 0.29598185 0.034498692 -0.048244372 0.24192564 0.02215001 -0.0008276524 0.24192564 0.011628345
		 -0.020891955 0.2080138 0.045933537 -0.0008276524 0.2080138 0.041237146 -0.15577742 0.26097998 0.11289999
		 -0.13417661 0.23999381 0.15866432 -0.15641069 0.23991832 0.086575896 -0.021594886 0.19227105 0.088034794
		 -0.0004138262 0.1944903 0.078704536 -0.13169611 0.45052379 0.064774461 -0.12783024 0.46383587 0.10363975
		 -0.11986651 0.45941314 0.057380088 -0.11104581 0.47450551 0.098520726 -0.15296817 0.41712177 0.050859421
		 -0.13930124 0.42274708 0.040447846 -0.16292498 0.4646734 0.063913018 -0.1570259 0.4784112 0.08002837
		 -0.15630287 0.46987373 0.061570428 -0.14789906 0.4847984 0.07877253 -0.17818817 0.4462412 0.052152827
		 -0.17076899 0.45126593 0.048665047 -0.04763595 0.26142916 0.26048097 -0.04825896 0.27479544 0.27066568
		 -0.0008276524 0.2811341 0.28056365 -0.092239819 0.25620475 0.21075159 -0.076476775 0.24987465 0.22596863
		 -0.065055847 0.25358909 0.24280524 -0.04763595 0.23909366 0.28502464 -0.017162075 0.25332704 0.29265764
		 -0.072693683 0.22741535 0.26971707 -0.087244555 0.21751511 0.24839747 -0.10117981 0.2416963 0.20471624
		 -0.095556177 0.23197737 0.21747829 -0.088120498 0.22080225 0.23335662 -0.0008276524 0.22371969 0.30306888
		 -0.033996969 0.22371969 0.30306888 -0.0078875646 0.24186361 0.31403372 -0.0008276524 0.24186361 0.31403372
		 -0.0008276524 0.21492392 0.28806782 -0.058997639 0.21492392 0.28806782 -0.00067246758 0.21265584 0.26757589
		 -0.054180615 0.20970465 0.26745951 -0.0008276524 0.27504277 0.31124958 -0.018798754 0.27504277 0.31124958
		 -0.0008276524 0.27251744 0.33510208 -0.01225204 0.27251744 0.33510208 -0.0008276524 0.21492392 0.28806782
		 -0.030109623 0.21492392 0.28806782 -0.0008276524 0.16786532 0.28118134 -0.013880586 0.16786532 0.28118134
		 -0.0008276524 0.16443069 0.27592266 -0.011950634 0.16443069 0.27592266 -0.1079194 0.2479988 0.19643806
		 -0.13682887 0.22172749 0.10592268 -0.15614566 0.23635352 0.12077813 -0.044523913 0.1838143 0.12388965
		 -0.097090431 0.238377 0.20268764 -0.091695949 0.2282038 0.214715 -0.10713609 0.24396965 0.18902956
		 -0.13417661 0.23465487 0.16213039 -0.084563278 0.21660444 0.23151104 -0.083723024 0.21292445 0.24750444
		 -0.1035554 0.24466705 0.19630486 -0.10117984 0.23510131 0.20019379 -0.095556177 0.2248722 0.21229826
		 -0.11165226 0.24072671 0.18861894 -0.13417661 0.23081943 0.16324985 -0.088120498 0.21290456 0.22987971
		 -0.087244555 0.20888931 0.24669617 -0.10791947 0.24156487 0.19361119 -0.09709312 0.20909786 0.18407238
		 -0.085730359 0.18588047 0.21779388 -0.12299725 0.20727414 0.14477372 -0.043482795 0.17847484 0.1462906
		 -0.11040901 0.21041405 0.16829067 -0.075697638 0.18384588 0.24458858 -0.042627282 0.17795686 0.26151332
		 -0.12299725 0.20727414 0.14477372 -0.025388716 0.17329775 0.16580915 -0.09709312 0.20909786 0.18407238
		 -0.0004138262 0.17175734 0.16845596 -0.074520066 0.16364139 0.19995628 -0.0008276524 0.16364138 0.19995627
		 -0.0008276524 0.16757697 0.18106782 -0.061724573 0.16757697 0.18106782 -0.0008276524 0.14557959 0.24941695
		 -0.052002784 0.14557867 0.24941632 0.10067222 0.41645795 0.13959503 0.096764356 0.36961535 0.19825789
		 0.136106 0.36034036 0.11955299 0.14605235 0.29867512 0.12733731 0.062130198 0.38578582 0.22055586
		 0.022344884 0.44614208 0.18579471 0.019236658 0.38733003 0.25035515 0.020479966 0.43417263 0.21269102
		 0.098948464 0.31918985 0.19399393 0.10999692 0.25005209 0.18691012 0.096047655 0.28564885 0.19399393
		 0.025935929 0.37076747 0.24308339 0.017371707 0.34477803 0.25936612 0.030704986 0.29517508 0.2455864
		 0.01550677 0.29621866 0.25936612 0.079890236 0.31598237 0.22920033 0.078146756 0.28251481 0.20947613
		 0.062130194 0.28350368 0.22348031 0.047033764 0.2842015 0.23700872 0.11061848 0.43284637 0.072895609
		 0.15164709 0.34804618 0.08325012 0.10751034 0.44348451 0.107622 0.023588192 0.45513222 0.15591155
		 0.13113284 0.40211827 0.063119471 0.098788895 0.44173571 0.065501235;
	setAttr ".vt[166:331]" 0.090725891 0.45415416 0.10250297 0.11746592 0.40774357 0.052707896
		 0.017371707 0.44760796 0.060134988 0.016750079 0.45772317 0.093855634 0.019236639 0.42165744 0.033461891
		 0.027939703 0.45814049 0.11935499 0.02856135 0.3740873 0.015871182 0.13237616 0.34378886 0.034809403
		 0.029183012 0.40302509 0.025816917 0.034777805 0.32735279 0.011030652 0.14120035 0.31143141 0.034680776
		 0.1597285 0.29873323 0.093925931 0.15348624 0.29981542 0.063450515 0.045967415 0.29190487 0.010598712
		 0.13991669 0.29598185 0.034498692 0.046589065 0.24192564 0.02215001 0.01923665 0.2080138 0.045933537
		 0.15412211 0.26097998 0.11289999 0.13252132 0.23999381 0.15866432 0.1547554 0.23991832 0.086575896
		 0.020767232 0.19227105 0.088034794 0.13004079 0.45052379 0.064774461 0.12617494 0.46383587 0.10363975
		 0.11821121 0.45941314 0.057380088 0.1093905 0.47450551 0.098520726 0.15131286 0.41712177 0.050859421
		 0.13764594 0.42274708 0.040447846 0.16126966 0.4646734 0.063913018 0.15537061 0.4784112 0.08002837
		 0.15464757 0.46987373 0.061570428 0.14624375 0.4847984 0.07877253 0.17653286 0.4462412 0.052152827
		 0.16911368 0.45126593 0.048665047 0.045980647 0.26142916 0.26048097 0.046603657 0.27479544 0.27066568
		 0.090584517 0.25620475 0.21075159 0.074821472 0.24987465 0.22596863 0.063400544 0.25358909 0.24280524
		 0.045980647 0.23909366 0.28502464 0.01550677 0.25332704 0.29265764 0.07103838 0.22741535 0.26971707
		 0.085589252 0.21751511 0.24839747 0.099524505 0.2416963 0.20471624 0.093900874 0.23197737 0.21747829
		 0.086465195 0.22080225 0.23335662 0.032341663 0.22371969 0.30306888 0.0062322598 0.24186361 0.31403372
		 0.057342336 0.21492392 0.28806782 0.052525312 0.20970465 0.26745951 0.017143449 0.27504277 0.31124958
		 0.010596735 0.27251744 0.33510208 0.028454319 0.21492392 0.28806782 0.012225281 0.16786532 0.28118134
		 0.01029533 0.16443069 0.27592266 0.1062641 0.2479988 0.19643806 0.13517356 0.22172749 0.10592268
		 0.15449037 0.23635352 0.12077813 0.043696262 0.1838143 0.12388965 0.095435128 0.238377 0.20268764
		 0.090040646 0.2282038 0.214715 0.10548078 0.24396965 0.18902956 0.13252132 0.23465487 0.16213039
		 0.082907975 0.21660444 0.23151104 0.082067728 0.21292445 0.24750444 0.10190009 0.24466705 0.19630486
		 0.099524543 0.23510131 0.20019379 0.093900874 0.2248722 0.21229826 0.10999695 0.24072671 0.18861894
		 0.13252132 0.23081943 0.16324985 0.086465195 0.21290456 0.22987971 0.085589252 0.20888931 0.24669617
		 0.10626417 0.24156487 0.19361119 0.095437817 0.20909786 0.18407238 0.084075056 0.18588047 0.21779388
		 0.12134195 0.20727414 0.14477372 0.1087537 0.21041405 0.16829067 0.074042335 0.18384588 0.24458858
		 0.040971979 0.17795686 0.26151332 0.12134195 0.20727414 0.14477372 0.042241313 0.17847484 0.1462906
		 0.095437817 0.20909786 0.18407238 0.023992049 0.17329775 0.16580915 0.072864763 0.16364139 0.19995628
		 0.06006927 0.16757697 0.18106782 0.050347477 0.14557867 0.24941632 0 -0.23010999 0.015000872
		 0.036676623 -0.19850954 0.010972448 0.033660721 -0.22955285 0.018972481 0.045068681 -0.11136629 -0.083699316
		 0.044823006 -0.18636723 -0.074548312 0 -0.1082326 -0.075912945 0 -0.20926695 -0.075912945
		 0.062099658 -0.0041364706 -0.076307923 0.062099658 -0.098050937 -0.21671675 0 -0.1225325 -0.22450031
		 0 -0.004649485 -0.048256762 0.074226469 0.091777198 -0.077529497 0.074226469 -0.018377492 -0.28158334
		 0 -0.02252505 -0.31740847 0 0.11574298 -0.061276626 0.059934162 0.1621664 -0.16714191
		 0.059934173 0.087264009 -0.30589327 0 0.11000784 -0.34902129 0 0.20402656 -0.17485824
		 0.043043263 0.2389845 -0.31455263 0.043043263 0.14072675 -0.32266155 0 0.17711514 -0.37006906
		 0 0.25488973 -0.3292537 0.037846059 0.23621711 -0.40347424 0.037846059 0.1957953 -0.38883954
		 0 0.19167267 -0.41664585 0 0.24033223 -0.43997079 0.037846051 0.20245601 -0.44231567
		 0 0.19331585 -0.48426872 0 -0.31110209 0.10998518 0 -0.1877373 0.28429016 0 -0.1702968 -0.0076965624
		 0.12328278 -0.18304542 0.1441987 0.077915296 -0.18469378 0.21787377 0.090342395 -0.17385584 0.051888481
		 0 -0.26223552 0.24615671 0 -0.26223552 0.020827672 0.067824364 -0.26009962 0.063608237
		 0 -0.070858777 0.29819015 0 -0.06491068 0.025761889 0.1048407 -0.074727997 0.1698921
		 0.069630556 -0.076006986 0.23768914 0.063417003 -0.066170625 0.083468825 0 0.072977781 0.23020208
		 0 0.07382144 0.08846882 0.036491591 0.074669302 0.16857097 0.024064483 0.073168971 0.19808151
		 0.030278038 0.073630922 0.12047485 0 0.011554126 0.26977023 0 0.017164856 0.076028377
		 0.069630556 0.014129248 0.17700733 0.053061076 0.012843755 0.22463308 0.042705148 0.015954928 0.11837614
		 0.10016289 -0.20862271 0.088773161 0.091731392 -0.21761569 0.18061358 0.20886937 -0.23967969 0.13376914
		 0.1874834 -0.1833566 0.14451902 0.18539585 -0.20796902 0.088681705 0.18414876 -0.25723192 0.073928058
		 0.063020408 -0.26985866 0.18276517 0.19009665 -0.2697657 0.18254374 0.1874834 -0.21768592 0.18094265
		 0.080491416 -0.29121915 0.11739466 0.20434229 -0.29253042 0.1168181 0.13477276 -0.29548967 0.21987799
		 0.16962177 -0.28706813 0.20990768 0.16962177 -0.20310797 0.21362732 0.13477276 -0.19634451 0.22836705
		 0.1434437 -0.13713188 0.15246902 0.16962177 -0.14555341 0.1496684 0.16962177 -0.18054271 0.064415939
		 0.13510938 -0.1702282 0.051877771 0.16962177 -0.26870942 0.047154281 0.13477276 -0.27234989 0.023908181
		 0.13477276 -0.34314078 0.11137399 0.18965738 -0.34314078 0.11137399 0.13477276 -0.39896095 0.049229831
		 0.16962177 -0.39896095 0.049229831 0.17543334 -0.39621639 0.095731542 0.13477276 -0.39621639 0.095731542
		 0.13477276 -0.35107067 0.069724679;
	setAttr ".vt[332:497]" 0.16962177 -0.35107067 0.069724679 0.13477276 -0.45338669 0.05540698
		 0.16962177 -0.45338669 0.05540698 0.16962177 -0.41675085 0.084177703 0.13477276 -0.41675085 0.084177703
		 0.13477276 -0.46354935 0.094126567 0.16962177 -0.46354935 0.094126567 0.16962177 -0.4466396 0.096458696
		 0.13477276 -0.4466396 0.096458696 0.11164942 -0.47416261 0.23096499 0.19274509 -0.47416261 0.23096499
		 0.19274509 -0.45712689 0.23204325 0.11164942 -0.45712689 0.23204325 0.039598368 0.045312114 0.14347355
		 0.053061076 0.044399276 0.17278916 0.056167852 0.015042089 0.14769174 0.048371565 0.028018529 0.14389564
		 0.049436502 0.015498509 0.13303393 0.041151758 0.030633522 0.13092484 0.042333487 0.044037879 0.14528196
		 0.056956582 0.021587975 0.15397835 0.04444832 0.05310595 0.16098684 0.038044982 0.059990708 0.15602225
		 0.044776335 0.059534285 0.17068006 0.053272925 0.042863443 0.16987185 0.059630841 0.026859758 0.16839223
		 0.061345816 0.029264262 0.17489824 0.062899202 0.014585669 0.16234954 0.0742203 0.024878951 0.13692722
		 0.07574825 0.048000764 0.13692722 0.076512165 0.059561674 0.15699495 0.07574825 0.048000768 0.17706269
		 0.0742203 0.024878973 0.17706269 0.073456377 0.013318077 0.15699495 0.18925178 0.016456954 0.14404093
		 0.19023806 0.031382442 0.14404093 0.19073127 0.038845185 0.15699495 0.19023806 0.031382449 0.16994901
		 0.18925178 0.016456965 0.16994901 0.18875869 0.0089942254 0.15699495 0.19453584 0.012485056 0.13777983
		 0.19599885 0.034624498 0.13777983 0.19673038 0.045694262 0.15699494 0.19599886 0.034624513 0.17621012
		 0.19453585 0.012485071 0.17621009 0.19380438 0.0014153293 0.15699495 0.28593555 0.012838225 0.14882864
		 0.28655723 0.022247409 0.14882864 0.28686821 0.026951917 0.15699498 0.28655723 0.022247372 0.1651613
		 0.28593555 0.012838321 0.16516133 0.28562456 0.0081336936 0.15699498 0.29088184 0.0091644125 0.14304419
		 0.291944 0.025238432 0.14304414 0.2924751 0.033275254 0.15699503 0.291944 0.025238346 0.17094581
		 0.29088187 0.0091645848 0.17094585 0.29035065 0.001127463 0.156995 0.31300867 0.0012688171 0.159127
		 0.31341329 0.0073927119 0.14423281 0.32471862 0.017201347 0.15699492 0.31446615 0.023325264 0.14210096
		 0.31511429 0.033133917 0.15486297 0.31470969 0.027010126 0.1697569 0.31365672 0.01107749 0.17188907
		 0.041237261 -0.19479416 0.02309194 0.046847519 -0.17207633 0.02209596 0.046847519 -0.21804568 0.036358077
		 0 -0.19863516 0.0068408516 0.02059943 -0.18890543 0.0096713649 0.025100075 -0.17118655 0.0071996986
		 0.040496059 -0.18744414 0.022593951 0.059358023 -0.18933417 0.035860725 0.068594962 -0.17296608 0.036992222
		 0.068594962 -0.19595076 0.044123277 0.047588717 -0.20241101 0.029725008 0.025100075 -0.24014059 0.028592875
		 0.057892557 -0.1801153 -0.046385203 0.03516867 -0.2140312 0.014972465 0.041516617 -0.19993846 -0.047733072
		 0.078735352 -0.14612147 -0.074548312 0.042840801 -0.16013841 -0.040853664 0.097742237 -0.10584441 -0.10689705
		 0.053461336 -0.15181763 -0.13373622 0.10905556 -0.051093709 -0.14651233 0.05358417 -0.064614639 -0.10379621
		 0.11989319 -0.0018405319 -0.16054383 0.06816306 -0.05638402 -0.24274434 0.12869509 0.036699861 -0.17955644
		 0.06816306 0.045650568 -0.070512988 0.11851934 0.075877078 -0.20326924 0.067080319 0.01519822 -0.27953434
		 0.1055485 0.12471522 -0.23651761 0.067080319 0.10772674 -0.10813171 0.094749175 0.14918457 -0.25670218
		 0.051488701 0.11399537 -0.31427747 0.078193478 0.20977458 -0.33381155 0.051488716 0.18242714 -0.22864342
		 0.074455656 0.21765126 -0.36026356 0.040444661 0.18817995 -0.37095496 0.069776542 0.2160062 -0.39615688
		 0.040444661 0.23760082 -0.35901344 0.069776542 0.21102928 -0.41248804 0.052184984 0.19912565 -0.41557762
		 0.037846055 0.21933655 -0.42289498 -0.036676623 -0.19850954 0.010972448 -0.033660721 -0.22955285 0.018972481
		 -0.045068681 -0.11136629 -0.083699316 -0.044823006 -0.18636723 -0.074548312 -0.062099658 -0.0041364706 -0.076307923
		 -0.062099658 -0.098050937 -0.21671675 -0.074226469 0.091777198 -0.077529497 -0.074226469 -0.018377492 -0.28158334
		 -0.059934162 0.1621664 -0.16714191 -0.059934173 0.087264009 -0.30589327 -0.043043263 0.2389845 -0.31455263
		 -0.043043263 0.14072675 -0.32266155 -0.037846059 0.23621711 -0.40347424 -0.037846059 0.1957953 -0.38883954
		 -0.037846051 0.20245601 -0.44231567 -0.12328278 -0.18304542 0.1441987 -0.077915296 -0.18469378 0.21787377
		 -0.090342395 -0.17385584 0.051888481 -0.067824364 -0.26009962 0.063608237 -0.1048407 -0.074727997 0.1698921
		 -0.069630556 -0.076006986 0.23768914 -0.063417003 -0.066170625 0.083468825 -0.036491591 0.074669302 0.16857097
		 -0.024064483 0.073168971 0.19808151 -0.030278038 0.073630922 0.12047485 -0.069630556 0.014129248 0.17700733
		 -0.053061076 0.012843755 0.22463308 -0.042705148 0.015954928 0.11837614 -0.10016289 -0.20862271 0.088773161
		 -0.091731392 -0.21761569 0.18061358 -0.20886937 -0.23967969 0.13376914 -0.1874834 -0.1833566 0.14451902
		 -0.18539585 -0.20796902 0.088681705 -0.18414876 -0.25723192 0.073928058 -0.063020408 -0.26985866 0.18276517
		 -0.19009665 -0.2697657 0.18254374 -0.1874834 -0.21768592 0.18094265 -0.080491416 -0.29121915 0.11739466
		 -0.20434229 -0.29253042 0.1168181 -0.13477276 -0.29548967 0.21987799 -0.16962177 -0.28706813 0.20990768
		 -0.16962177 -0.20310797 0.21362732 -0.13477276 -0.19634451 0.22836705 -0.1434437 -0.13713188 0.15246902
		 -0.16962177 -0.14555341 0.1496684 -0.16962177 -0.18054271 0.064415939 -0.13510938 -0.1702282 0.051877771
		 -0.16962177 -0.26870942 0.047154281 -0.13477276 -0.27234989 0.023908181 -0.13477276 -0.34314078 0.11137399
		 -0.18965738 -0.34314078 0.11137399 -0.13477276 -0.39896095 0.049229831 -0.16962177 -0.39896095 0.049229831
		 -0.17543334 -0.39621639 0.095731542 -0.13477276 -0.39621639 0.095731542 -0.13477276 -0.35107067 0.069724679
		 -0.16962177 -0.35107067 0.069724679 -0.13477276 -0.45338669 0.05540698 -0.16962177 -0.45338669 0.05540698
		 -0.16962177 -0.41675085 0.084177703 -0.13477276 -0.41675085 0.084177703;
	setAttr ".vt[498:661]" -0.13477276 -0.46354935 0.094126567 -0.16962177 -0.46354935 0.094126567
		 -0.16962177 -0.4466396 0.096458696 -0.13477276 -0.4466396 0.096458696 -0.11164942 -0.47416261 0.23096499
		 -0.19274509 -0.47416261 0.23096499 -0.19274509 -0.45712689 0.23204325 -0.11164942 -0.45712689 0.23204325
		 -0.039598368 0.045312114 0.14347355 -0.053061076 0.044399276 0.17278916 -0.056167852 0.015042089 0.14769174
		 -0.048371565 0.028018529 0.14389564 -0.049436502 0.015498509 0.13303393 -0.041151758 0.030633522 0.13092484
		 -0.042333487 0.044037879 0.14528196 -0.056956582 0.021587975 0.15397835 -0.04444832 0.05310595 0.16098684
		 -0.038044982 0.059990708 0.15602225 -0.044776335 0.059534285 0.17068006 -0.053272925 0.042863443 0.16987185
		 -0.059630841 0.026859758 0.16839223 -0.061345816 0.029264262 0.17489824 -0.062899202 0.014585669 0.16234954
		 -0.0742203 0.024878951 0.13692722 -0.07574825 0.048000764 0.13692722 -0.076512165 0.059561674 0.15699495
		 -0.07574825 0.048000768 0.17706269 -0.0742203 0.024878973 0.17706269 -0.073456377 0.013318077 0.15699495
		 -0.18925178 0.016456954 0.14404091 -0.19023806 0.031382442 0.14404091 -0.19073127 0.038845185 0.15699495
		 -0.19023806 0.031382449 0.169949 -0.18925178 0.016456965 0.169949 -0.18875869 0.0089942254 0.15699495
		 -0.19453584 0.012485056 0.13777982 -0.19599885 0.034624498 0.13777982 -0.19673038 0.045694262 0.15699492
		 -0.19599886 0.034624513 0.17621011 -0.19453585 0.012485071 0.17621006 -0.19380438 0.0014153293 0.15699495
		 -0.28593555 0.012838225 0.14882863 -0.28655723 0.022247409 0.14882863 -0.28686821 0.026951917 0.15699497
		 -0.28655723 0.022247372 0.16516128 -0.28593555 0.012838321 0.1651613 -0.28562456 0.0081336936 0.15699497
		 -0.29088184 0.0091644125 0.14304417 -0.291944 0.025238432 0.14304413 -0.2924751 0.033275254 0.15699501
		 -0.291944 0.025238346 0.17094579 -0.29088187 0.0091645848 0.17094584 -0.29035065 0.001127463 0.156995
		 -0.31300867 0.0012688171 0.15912698 -0.31341329 0.0073927119 0.14423281 -0.32471862 0.017201347 0.15699491
		 -0.31446615 0.023325264 0.14210095 -0.31511429 0.033133917 0.15486294 -0.31470969 0.027010126 0.16975689
		 -0.31365672 0.01107749 0.17188904 -0.041237261 -0.19479416 0.02309194 -0.046847519 -0.17207633 0.02209596
		 -0.046847519 -0.21804568 0.036358077 -0.02059943 -0.18890543 0.0096713649 0 -0.19328149 0.0032499731
		 -0.025100075 -0.17118655 0.0071996986 -0.040496059 -0.18744414 0.022593951 -0.059358023 -0.18933417 0.035860725
		 -0.068594962 -0.17296608 0.036992222 -0.068594962 -0.19595076 0.044123277 -0.047588717 -0.20241101 0.029725008
		 -0.025100075 -0.24014059 0.028592875 -0.057892557 -0.1801153 -0.046385203 -0.03516867 -0.2140312 0.014972465
		 -0.041516617 -0.19993846 -0.047733072 -0.078735352 -0.14612147 -0.074548312 -0.042840801 -0.16013841 -0.040853664
		 -0.097742237 -0.10584441 -0.10689705 -0.053461336 -0.15181763 -0.13373622 -0.10905556 -0.051093709 -0.14651233
		 -0.05358417 -0.064614639 -0.10379621 -0.11989319 -0.0018405319 -0.16054383 -0.06816306 -0.05638402 -0.24274434
		 -0.12869509 0.036699861 -0.17955644 -0.06816306 0.045650568 -0.070512988 -0.11851934 0.075877078 -0.20326924
		 -0.067080319 0.01519822 -0.27953434 -0.1055485 0.12471522 -0.23651761 -0.067080319 0.10772674 -0.10813171
		 -0.094749175 0.14918457 -0.25670218 -0.051488701 0.11399537 -0.31427747 -0.078193478 0.20977458 -0.33381155
		 -0.051488716 0.18242714 -0.22864342 -0.074455656 0.21765126 -0.36026356 -0.040444661 0.18817995 -0.37095496
		 -0.069776542 0.2160062 -0.39615688 -0.040444661 0.23760082 -0.35901344 -0.069776542 0.21102928 -0.41248804
		 -0.052184984 0.19912565 -0.41557762 -0.037846055 0.21933655 -0.42289498 -0.029340452 -0.47941652 0.4935565
		 0.029340452 -0.47941652 0.4935565 -0.044662695 -0.41348228 0.51444632 0.044662695 -0.41348228 0.51444632
		 -0.044662695 -0.41348228 0.44365314 0.044662695 -0.41348228 0.44365314 -0.029340452 -0.47941652 0.46454293
		 0.029340452 -0.47941652 0.46454293 -0.013711479 -0.41348228 0.49616772 0.013711479 -0.41348228 0.49616772
		 0.013711479 -0.41348228 0.46193171 -0.013711479 -0.41348228 0.46193171 -0.013711479 -0.33687711 0.49616772
		 0.013711479 -0.33687711 0.49616772 0.013711479 -0.33687711 0.46193171 -0.013711479 -0.33687711 0.46193171
		 -0.046137042 -0.33687711 0.50516194 0.046137042 -0.33687711 0.50516194 0.046137042 -0.33687711 0.45293748
		 -0.046137042 -0.33687711 0.45293748 -0.06614247 -0.29283118 0.51502657 0.06614247 -0.29283118 0.51502657
		 0.06614247 -0.29283118 0.44307286 -0.06614247 -0.29283118 0.44307286 -0.096453361 -0.11168101 0.54374999
		 0.096453361 -0.11168101 0.54374999 0.096453361 -0.11168101 0.41434941 -0.096453361 -0.11168101 0.41434941
		 -0.096453361 -0.032920092 0.54374999 0.096453361 -0.032920092 0.54374999 0.096453361 -0.032920092 0.41434941
		 -0.096453361 -0.032920092 0.41434941 0.096453361 -0.090613425 0.49801967 0.096453361 -0.090613425 0.46007976
		 0.096453361 -0.053987682 0.46007976 0.096453361 -0.053987682 0.49801967 -0.096453361 -0.090613425 0.49801967
		 -0.096453361 -0.090613425 0.46007976 -0.096453361 -0.053987682 0.49801967 -0.096453361 -0.053987682 0.46007976
		 0.14530571 -0.090613425 0.49801967 0.14530571 -0.090613425 0.46007976 0.14530571 -0.053987682 0.46007976
		 0.14530571 -0.053987682 0.49801967 -0.14530571 -0.090613425 0.49801967 -0.14530571 -0.090613425 0.46007976
		 -0.14530571 -0.053987682 0.49801967 -0.14530571 -0.053987682 0.46007976 0.14530571 -0.10007513 0.50782084
		 0.14530571 -0.10007513 0.45027861 0.14530571 -0.044526011 0.45027861 0.14530571 -0.044526011 0.50782084
		 -0.14530571 -0.10007513 0.50782084 -0.14530571 -0.10007513 0.45027861 -0.14530571 -0.044526011 0.50782084
		 -0.14530571 -0.044526011 0.45027861 0.23091243 -0.1089555 0.46306166 0.23091243 -0.055030793 0.44298092
		 0.23091243 -0.035645634 0.49503776 0.23091243 -0.089570343 0.51511848 -0.23091243 -0.1089555 0.46306166
		 -0.23091243 -0.055030793 0.44298092 -0.23091243 -0.089570343 0.51511848 -0.23091243 -0.035645634 0.49503776;
	setAttr -s 1909 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 3 1 0 2 1 1 3 1 1 5 1 0 6 1 6 5 1 4 6 1 4 7 1
		 7 8 1 5 9 1 8 9 1 6 10 1 10 9 1 7 10 1 3 11 1 1 11 1 3 12 1 11 13 1 12 13 1 5 14 1
		 9 15 1 14 15 1 8 16 1 16 15 1 14 17 1 15 18 1 17 18 1 16 19 1 19 18 1 1 20 1 5 20 1
		 11 20 1 13 20 1 14 20 1 17 20 1 13 21 1 20 22 1 21 22 1 17 23 1 23 22 1 0 26 1 4 27 1
		 6 28 1 27 28 1 26 28 1 24 29 1 3 25 1 25 29 1 2 24 1 24 26 1 26 31 1 30 31 1 29 32 1
		 30 32 1 30 33 1 33 34 1 34 35 1 31 36 1 35 36 1 33 36 1 32 37 1 37 38 1 34 38 1 33 37 1
		 26 40 1 39 40 1 27 39 1 28 40 1 31 40 1 36 40 1 35 39 1 29 41 1 41 42 1 25 43 1 43 41 1
		 32 41 1 38 44 1 42 44 1 37 45 1 45 44 1 41 45 1 41 46 1 42 47 1 46 47 1 43 48 1 48 46 1
		 3 49 1 25 50 1 49 50 1 50 48 1 46 51 1 47 52 1 51 52 1 48 53 1 53 51 1 50 53 1 51 54 1
		 52 55 1 54 55 1 53 56 1 56 54 1 56 57 1 57 55 1 3 58 1 12 59 1 58 59 1 49 60 1 50 61 1
		 60 61 1 61 62 1 58 60 1 61 56 1 24 63 1 26 64 1 63 64 1 30 65 1 31 66 1 65 66 1 64 66 1
		 29 67 1 63 67 1 32 68 1 67 68 1 65 68 1 63 69 1 64 70 1 69 70 1 65 71 1 69 71 1 66 72 1
		 71 72 1 70 72 1 67 73 1 69 73 1 68 74 1 73 74 1 71 74 1 17 75 1 18 76 1 75 76 1 19 77 1
		 77 76 0 12 78 1 13 78 1 21 78 1 22 79 1 78 79 1 23 80 1 80 79 1 75 80 1 75 81 1 76 82 0
		 81 82 1 80 83 1 79 84 1 83 84 1 81 83 1 78 85 1 79 86 1 85 86 1 84 87 1 86 87 1 81 89 1
		 88 89 1 82 90 0;
	setAttr ".ed[166:331]" 89 90 1 91 90 0 88 91 1 83 93 1 92 93 0 84 95 1 94 95 1
		 93 95 1 88 92 1 89 93 1 77 96 1 76 97 1 96 97 1 82 97 1 91 98 1 96 98 1 90 99 1 98 99 1
		 97 99 1 93 101 0 100 101 0 101 94 0 100 102 0 101 103 0 102 103 0 102 104 0 94 105 0
		 104 105 0 103 105 0 12 106 1 78 106 1 85 106 1 58 107 1 59 108 1 107 108 1 60 107 1
		 61 109 1 107 109 1 85 110 1 86 111 1 110 111 1 12 112 1 59 113 1 112 113 1 87 114 1
		 111 114 1 84 115 1 115 114 1 115 95 1 106 116 1 112 116 1 110 116 1 113 108 1 110 117 1
		 111 118 1 117 118 1 112 119 1 113 120 1 119 120 1 114 121 1 118 121 1 115 122 1 122 121 1
		 122 95 1 116 123 1 119 123 1 117 123 1 120 108 1 117 124 1 118 125 1 124 125 1 107 126 1
		 108 126 1 119 128 1 120 128 1 121 125 1 122 129 1 129 125 1 95 130 1 129 130 1 123 124 1
		 128 124 1 128 126 1 126 131 1 128 131 1 131 132 1 127 132 1 128 132 1 124 133 1 133 125 1
		 128 133 1 133 135 1 135 136 1 125 135 1 128 135 1 134 137 1 136 137 1 132 138 1 138 137 1
		 135 138 1 129 140 1 139 140 1 125 140 1 130 140 1 94 139 1 136 139 1 135 140 1 141 142 1
		 143 144 1 141 143 1 142 144 1 142 145 1 141 146 1 146 145 1 4 146 1 145 147 1 8 147 1
		 146 148 1 148 147 1 7 148 1 144 149 1 142 149 1 144 150 1 149 151 1 150 151 1 145 152 1
		 147 153 1 152 153 1 16 153 1 152 154 1 153 155 1 154 155 1 19 155 1 142 156 1 145 156 1
		 149 156 1 151 156 1 152 156 1 154 156 1 151 157 1 156 158 1 157 158 1 154 159 1 159 158 1
		 141 162 1 146 163 1 27 163 1 162 163 1 160 164 1 144 161 1 161 164 1 143 160 1 160 162 1
		 162 166 1 165 166 1 164 167 1 165 167 1 165 168 1 168 34 1 166 169 1 35 169 1 168 169 1
		 167 170 1 170 38 1 168 170 1 162 171 1;
	setAttr ".ed[332:497]" 39 171 1 163 171 1 166 171 1 169 171 1 164 172 1 172 42 1
		 161 173 1 173 172 1 167 172 1 170 174 1 174 44 1 172 174 1 172 175 1 175 47 1 173 176 1
		 176 175 1 144 177 1 161 178 1 177 178 1 178 176 1 175 179 1 179 52 1 176 180 1 180 179 1
		 178 180 1 179 181 1 181 55 1 180 182 1 182 181 1 182 57 1 144 183 1 150 184 1 183 184 1
		 177 185 1 178 186 1 185 186 1 186 62 1 183 185 1 62 57 1 186 182 1 160 187 1 162 188 1
		 187 188 1 165 189 1 166 190 1 189 190 1 188 190 1 164 191 1 187 191 1 167 192 1 191 192 1
		 189 192 1 187 193 1 188 194 1 193 194 1 189 195 1 193 195 1 190 196 1 195 196 1 194 196 1
		 191 197 1 193 197 1 192 198 1 197 198 1 195 198 1 154 199 1 155 200 1 199 200 1 77 200 0
		 150 201 1 151 201 1 157 201 1 158 202 1 201 202 1 159 203 1 203 202 1 199 203 1 199 204 1
		 200 205 0 204 205 1 203 206 1 202 207 1 206 207 1 204 206 1 201 208 1 202 209 1 208 209 1
		 207 210 1 209 210 1 204 211 1 88 211 1 205 212 0 211 212 1 91 212 0 206 213 1 92 213 0
		 207 214 1 94 214 1 213 214 1 211 213 1 200 215 1 96 215 1 205 215 1 212 216 1 98 216 1
		 215 216 1 213 217 0 100 217 0 217 94 0 217 218 0 102 218 0 94 219 0 104 219 0 218 219 0
		 150 220 1 201 220 1 208 220 1 183 221 1 184 222 1 221 222 1 185 221 1 186 223 1 221 223 1
		 208 224 1 209 225 1 224 225 1 150 226 1 184 227 1 226 227 1 210 228 1 225 228 1 207 229 1
		 229 228 1 229 214 1 220 230 1 226 230 1 224 230 1 227 222 1 224 231 1 225 232 1 231 232 1
		 226 233 1 227 234 1 233 234 1 228 235 1 232 235 1 229 236 1 236 235 1 236 214 1 230 237 1
		 233 237 1 231 237 1 234 222 1 231 238 1 232 239 1 238 239 1 221 240 1 222 240 1 233 241 1
		 234 241 1 235 239 1 236 242 1 242 239 1 214 243 1 242 243 1 243 94 1;
	setAttr ".ed[498:663]" 237 238 1 241 238 1 241 240 1 240 244 1 241 244 1 244 247 1
		 238 246 1 246 239 1 241 246 1 247 134 1 241 247 1 246 248 1 248 136 1 239 248 1 241 248 1
		 247 249 1 249 137 1 248 249 1 242 250 1 139 250 1 239 250 1 243 250 1 248 250 1 252 410 1
		 254 412 1 251 253 1 252 413 1 253 411 1 254 256 1 255 257 1 256 400 1 257 251 1 254 417 1
		 255 415 1 258 416 1 257 260 1 259 260 1 256 261 1 258 261 1 258 421 1 259 419 1 262 420 1
		 260 264 1 263 264 1 261 265 1 262 265 1 262 425 1 263 423 1 266 424 1 264 268 1 267 268 1
		 265 269 1 266 269 1 266 429 1 267 427 1 270 428 1 268 272 1 271 272 1 269 273 1 270 273 1
		 270 433 1 271 431 1 274 432 1 272 276 1 275 276 1 273 277 1 274 277 1 274 436 1 275 435 1
		 276 279 1 277 279 1 278 279 1 280 286 1 280 287 1 280 310 1 280 288 1 281 289 1 282 290 1
		 283 291 1 284 292 1 285 293 1 284 281 1 283 285 1 284 283 1 285 405 1 286 281 1 287 251 1
		 310 284 1 288 285 1 310 286 1 288 287 1 289 299 1 290 300 1 291 301 1 292 302 1 293 303 1
		 291 293 1 292 291 1 293 290 1 292 289 1 295 62 1 296 223 1 298 186 1 296 298 1 298 295 1
		 300 295 1 301 358 1 303 298 1 302 299 1 301 359 1 302 301 1 303 300 1 285 304 1 283 304 1
		 288 304 1 284 305 1 310 305 1 288 313 1 280 313 1 306 307 1 307 308 1 308 309 1 309 306 1
		 306 311 1 307 312 1 311 312 1 283 305 1 309 314 1 314 311 1 313 310 1 310 315 1 311 316 1
		 315 316 1 312 317 1 316 317 1 305 318 1 318 317 1 315 318 1 283 319 1 307 320 1 319 320 1
		 308 321 1 320 321 1 304 322 1 322 321 1 319 322 1 309 323 1 321 323 1 288 324 1 324 323 1
		 322 324 1 313 325 1 314 326 1 326 316 1 325 315 1 319 318 1 320 317 1 323 326 1 324 325 1
		 325 327 1 326 328 1 327 328 1 316 329 1 328 329 1 315 330 1 330 329 1;
	setAttr ".ed[664:829]" 327 330 1 324 331 1 323 332 1 331 332 1 332 328 1 331 327 1
		 327 333 1 328 334 1 333 334 1 329 335 1 334 335 1 330 336 1 336 335 1 333 336 1 333 337 1
		 334 338 1 337 338 1 335 339 1 338 339 1 336 340 1 340 339 1 337 340 1 337 341 1 338 342 1
		 341 342 1 339 343 1 342 343 1 340 344 1 344 343 1 341 344 1 306 314 1 298 223 1 295 186 1
		 292 281 1 285 406 1 284 286 1 283 293 1 284 291 1 285 290 1 292 299 1 296 354 1 303 295 1
		 291 303 1 292 301 1 293 300 1 316 318 1 321 319 1 321 324 1 342 344 1 308 306 1 312 306 1
		 319 317 1 332 327 1 312 316 1 315 305 1 321 307 1 283 322 1 323 308 1 304 324 1 316 314 1
		 313 315 1 318 283 1 307 317 1 314 323 1 324 313 1 329 326 1 330 316 1 325 330 1 323 331 1
		 326 332 1 331 325 1 328 333 1 335 328 1 330 335 1 327 336 1 334 337 1 339 334 1 336 339 1
		 333 340 1 338 341 1 339 342 1 340 343 1 341 340 1 345 350 1 346 355 1 347 349 1 345 351 1
		 346 356 1 347 352 1 349 303 1 350 303 1 349 348 1 350 348 1 351 348 1 352 348 1 354 345 1
		 355 296 1 354 353 1 355 353 1 356 353 1 351 353 1 358 346 1 359 347 1 358 357 1 359 357 1
		 352 357 1 356 357 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 360 1 366 367 1
		 367 368 1 368 369 1 369 370 1 370 371 1 371 366 1 360 366 1 361 367 1 362 368 1 363 369 1
		 364 370 1 365 371 1 360 348 1 361 351 1 362 353 1 363 356 1 364 357 1 365 352 1 366 372 1
		 367 373 1 372 373 1 368 374 1 373 374 1 369 375 1 374 375 1 370 376 1 375 376 1 371 377 1
		 376 377 1 377 372 1 372 378 1 373 379 1 378 379 1 374 380 1 379 380 1 375 381 1 380 381 1
		 376 382 1 381 382 1 377 383 1 382 383 1 383 378 1 378 384 1 379 385 1 384 385 1 380 386 1
		 385 386 1 381 387 1 386 387 1 382 388 1 387 388 1 383 389 1 388 389 1;
	setAttr ".ed[830:995]" 389 384 1 384 390 1 385 391 1 390 391 1 391 392 1 390 392 1
		 386 393 1 391 393 1 393 392 1 387 394 1 393 394 1 394 392 1 388 395 1 394 395 1 395 392 1
		 389 396 1 395 396 1 396 392 1 396 390 1 398 402 1 399 408 1 398 403 1 399 407 1 400 252 1
		 562 282 1 402 282 1 403 397 1 252 397 1 562 401 1 402 401 1 403 401 1 252 401 1 405 398 1
		 406 399 1 407 397 1 405 404 1 406 404 1 407 404 1 403 404 1 408 287 1 408 253 1 407 253 1
		 410 253 1 411 255 1 412 255 1 413 254 1 410 409 1 411 409 1 412 409 1 413 409 1 415 259 1
		 416 259 1 417 258 1 412 414 1 415 414 1 416 414 1 417 414 1 419 263 1 420 263 1 421 262 1
		 416 418 1 419 418 1 420 418 1 421 418 1 423 267 1 424 267 1 425 266 1 420 422 1 423 422 1
		 424 422 1 425 422 1 427 271 1 428 271 1 429 270 1 424 426 1 427 426 1 428 426 1 429 426 1
		 431 275 1 432 275 1 433 274 1 428 430 1 431 430 1 432 430 1 433 430 1 435 278 1 436 278 1
		 432 434 1 435 434 1 436 434 1 252 409 1 411 257 1 411 251 1 256 413 1 400 413 1 254 414 1
		 260 255 1 260 415 1 256 258 1 256 417 1 258 418 1 260 419 1 264 419 1 421 261 1 421 265 1
		 420 425 1 267 264 1 423 264 1 425 265 1 425 269 1 424 429 1 268 427 1 271 268 1 429 269 1
		 429 273 1 428 433 1 272 431 1 275 272 1 273 274 1 273 433 1 274 434 1 278 276 1 278 275 1
		 277 278 1 277 436 1 411 410 1 255 409 1 413 412 1 415 412 1 259 414 1 417 416 1 419 416 1
		 420 419 1 421 420 1 423 420 1 267 422 1 266 422 1 267 426 1 271 426 1 429 428 1 431 428 1
		 432 431 1 433 432 1 435 432 1 436 435 1 437 571 1 439 573 1 251 438 1 437 574 1 438 572 1
		 439 256 1 440 257 1 439 578 1 440 576 1 441 577 1 442 260 1 441 261 1 441 582 1 442 580 1
		 443 581 1 444 264 1 443 265 1 443 586 1 444 584 1 445 585 1 446 268 1;
	setAttr ".ed[996:1161]" 445 269 1 445 590 1 446 588 1 447 589 1 448 272 1 447 273 1
		 447 594 1 448 592 1 449 593 1 450 276 1 449 277 1 449 597 1 450 596 1 451 279 1 280 471 1
		 280 455 1 452 456 1 453 457 1 454 458 1 453 281 1 452 454 1 453 452 1 454 566 1 471 453 1
		 455 454 1 471 286 1 455 287 1 456 462 1 457 463 1 458 464 1 456 458 1 457 456 1 458 290 1
		 457 289 1 459 109 1 461 61 1 459 461 1 461 295 1 462 519 1 464 461 1 463 299 1 462 520 1
		 463 462 1 464 300 1 454 465 1 452 465 1 455 465 1 453 466 1 471 466 1 455 474 1 280 474 1
		 467 468 1 468 469 1 469 470 1 470 467 1 467 472 1 468 473 1 472 473 1 452 466 1 470 475 1
		 475 472 1 474 471 1 471 476 1 472 477 1 476 477 1 473 478 1 477 478 1 466 479 1 479 478 1
		 476 479 1 452 480 1 468 481 1 480 481 1 469 482 1 481 482 1 465 483 1 483 482 1 480 483 1
		 470 484 1 482 484 1 455 485 1 485 484 1 483 485 1 474 486 1 475 487 1 487 477 1 486 476 1
		 480 479 1 481 478 1 484 487 1 485 486 1 486 488 1 487 489 1 488 489 1 477 490 1 489 490 1
		 476 491 1 491 490 1 488 491 1 485 492 1 484 493 1 492 493 1 493 489 1 492 488 1 488 494 1
		 489 495 1 494 495 1 490 496 1 495 496 1 491 497 1 497 496 1 494 497 1 494 498 1 495 499 1
		 498 499 1 496 500 1 499 500 1 497 501 1 501 500 1 498 501 1 498 502 1 499 503 1 502 503 1
		 500 504 1 503 504 1 501 505 1 505 504 1 502 505 1 467 475 1 461 109 1 295 61 1 457 281 1
		 454 567 1 453 286 1 452 458 1 453 456 1 454 290 1 457 299 1 459 515 1 464 295 1 456 464 1
		 457 462 1 458 300 1 477 479 1 482 480 1 482 485 1 503 505 1 469 467 1 473 467 1 480 478 1
		 493 488 1 473 477 1 476 466 1 482 468 1 452 483 1 484 469 1 465 485 1 477 475 1 474 476 1
		 479 452 1 468 478 1 475 484 1 485 474 1 490 487 1 491 477 1 486 491 1;
	setAttr ".ed[1162:1327]" 484 492 1 487 493 1 492 486 1 489 494 1 496 489 1 491 496 1
		 488 497 1 495 498 1 500 495 1 497 500 1 494 501 1 499 502 1 500 503 1 501 504 1 502 501 1
		 506 511 1 507 516 1 508 510 1 506 512 1 507 517 1 508 513 1 510 464 1 511 464 1 510 509 1
		 511 509 1 512 509 1 513 509 1 515 506 1 516 459 1 515 514 1 516 514 1 517 514 1 512 514 1
		 519 507 1 520 508 1 519 518 1 520 518 1 513 518 1 517 518 1 521 522 1 522 523 1 523 524 1
		 524 525 1 525 526 1 526 521 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 527 1
		 521 527 1 522 528 1 523 529 1 524 530 1 525 531 1 526 532 1 521 509 1 522 512 1 523 514 1
		 524 517 1 525 518 1 526 513 1 527 533 1 528 534 1 533 534 1 529 535 1 534 535 1 530 536 1
		 535 536 1 531 537 1 536 537 1 532 538 1 537 538 1 538 533 1 533 539 1 534 540 1 539 540 1
		 535 541 1 540 541 1 536 542 1 541 542 1 537 543 1 542 543 1 538 544 1 543 544 1 544 539 1
		 539 545 1 540 546 1 545 546 1 541 547 1 546 547 1 542 548 1 547 548 1 543 549 1 548 549 1
		 544 550 1 549 550 1 550 545 1 545 551 1 546 552 1 551 552 1 552 553 1 551 553 1 547 554 1
		 552 554 1 554 553 1 548 555 1 554 555 1 555 553 1 549 556 1 555 556 1 556 553 1 550 557 1
		 556 557 1 557 553 1 557 551 1 559 563 1 560 569 1 400 562 1 559 564 1 560 568 1 400 437 1
		 563 282 1 564 558 1 437 558 1 562 561 1 563 561 1 564 561 1 437 561 1 566 559 1 567 560 1
		 568 558 1 566 565 1 567 565 1 568 565 1 564 565 1 569 287 1 569 438 1 568 438 1 571 438 1
		 572 440 1 573 440 1 574 439 1 571 570 1 572 570 1 573 570 1 574 570 1 576 442 1 577 442 1
		 578 441 1 573 575 1 576 575 1 577 575 1 578 575 1 580 444 1 581 444 1 582 443 1 577 579 1
		 580 579 1 581 579 1 582 579 1 584 446 1 585 446 1 586 445 1 581 583 1;
	setAttr ".ed[1328:1493]" 584 583 1 585 583 1 586 583 1 588 448 1 589 448 1 590 447 1
		 585 587 1 588 587 1 589 587 1 590 587 1 592 450 1 593 450 1 594 449 1 589 591 1 592 591 1
		 593 591 1 594 591 1 596 451 1 597 451 1 593 595 1 596 595 1 597 595 1 437 570 1 572 257 1
		 572 251 1 256 574 1 400 574 1 439 575 1 260 440 1 260 576 1 256 441 1 256 578 1 441 579 1
		 260 580 1 264 580 1 582 261 1 582 265 1 581 586 1 446 264 1 584 264 1 586 265 1 586 269 1
		 585 590 1 268 588 1 448 268 1 590 269 1 590 273 1 589 594 1 272 592 1 450 272 1 273 449 1
		 273 594 1 449 595 1 451 276 1 451 450 1 277 451 1 277 597 1 572 571 1 440 570 1 574 573 1
		 576 573 1 442 575 1 578 577 1 580 577 1 581 580 1 582 581 1 584 581 1 446 583 1 445 583 1
		 446 587 1 448 587 1 590 589 1 592 589 1 593 592 1 594 593 1 596 593 1 597 596 1 109 127 1
		 127 131 1 126 127 1 127 459 1 459 460 1 460 462 1 134 132 1 127 460 1 460 463 1 460 132 1
		 240 245 1 244 245 1 245 297 1 245 296 1 223 245 1 296 297 1 297 301 1 297 302 1 294 299 1
		 294 302 1 294 463 1 294 297 1 134 294 1 134 297 1 245 247 1 134 460 1 294 460 1 297 247 1
		 9 7 1 2 1 1 5 0 1 90 88 1 10 5 1 10 4 1 13 3 1 14 9 1 15 8 1 17 15 1 18 16 1 105 102 0
		 21 20 1 92 89 1 22 17 1 27 6 1 28 0 1 56 55 1 36 34 1 2 25 1 24 25 1 24 0 1 33 38 1
		 71 70 1 74 69 1 33 31 1 44 41 1 37 30 1 39 28 1 39 36 1 43 29 1 44 37 1 45 32 1 47 41 1
		 46 43 1 49 25 1 50 43 1 52 46 1 51 48 1 56 62 1 55 51 1 53 54 1 59 3 1 60 50 1 58 49 1
		 56 50 1 64 24 1 66 30 1 66 26 1 63 29 1 68 29 1 68 30 1 70 63 1 72 65 1 72 64 1 73 63 1
		 74 67 1 74 65 1 76 17 1 77 18 1 79 21 1;
	setAttr ".ed[1494:1659]" 80 22 1 75 23 1 81 76 1 84 80 1 83 75 1 86 78 1 87 79 1
		 89 82 1 99 96 1 95 83 1 93 81 1 97 77 1 98 90 1 97 90 1 101 95 1 103 100 0 104 94 0
		 103 94 0 108 58 1 107 61 1 110 86 1 113 12 1 111 87 1 115 87 1 112 106 1 116 85 1
		 117 111 1 119 113 1 118 114 1 122 114 1 123 112 1 123 110 1 124 118 1 129 121 1 129 95 1
		 130 94 1 124 119 1 126 120 1 138 136 1 137 132 1 138 128 1 139 130 1 140 136 1 147 7 1
		 142 143 1 141 145 1 212 88 1 148 145 1 4 148 1 144 151 1 147 152 1 8 153 1 153 154 1
		 16 155 1 102 219 0 156 157 1 92 211 1 154 158 1 146 27 1 141 163 1 182 55 1 34 169 1
		 161 143 1 161 160 1 160 141 1 38 168 1 195 194 1 198 193 1 168 166 1 44 172 1 170 165 1
		 163 39 1 39 169 1 173 164 1 170 44 1 167 174 1 172 47 1 173 175 1 177 161 1 178 173 1
		 175 52 1 176 179 1 62 182 1 179 55 1 181 180 1 184 144 1 185 178 1 183 177 1 178 182 1
		 160 188 1 190 165 1 162 190 1 164 187 1 192 164 1 165 192 1 187 194 1 196 189 1 188 196 1
		 197 187 1 198 191 1 189 198 1 200 154 1 77 155 1 202 157 1 203 158 1 199 159 1 200 204 1
		 203 207 1 199 206 1 209 201 1 210 202 1 205 211 1 96 216 1 206 214 1 204 213 1 77 215 1
		 212 98 1 215 212 1 217 214 1 100 218 0 218 94 0 222 183 1 221 186 1 209 224 1 150 227 1
		 210 225 1 229 210 1 220 226 1 208 230 1 225 231 1 233 227 1 228 232 1 236 228 1 237 226 1
		 224 237 1 232 238 1 242 235 1 214 242 1 238 233 1 234 240 1 136 249 1 247 137 1 241 249 1
		 139 243 1 250 136 1 400 401 1 408 288 1 288 406 1 288 399 1 405 290 1 398 290 1 402 290 1
		 298 350 1 298 345 1 354 298 1 347 348 1 291 359 1 291 347 1 349 291 1 354 351 1 358 356 1
		 350 349 1 345 348 1 355 354 1 346 353 1 301 357 1;
	setAttr ".ed[1660:1825]" 352 359 1 367 360 1 368 361 1 363 368 1 364 369 1 365 370 1
		 366 365 1 348 361 1 351 362 1 362 356 1 363 357 1 357 365 1 352 360 1 367 372 1 368 373 1
		 369 374 1 370 375 1 371 376 1 366 377 1 373 378 1 374 379 1 375 380 1 376 381 1 377 382 1
		 372 383 1 379 384 1 380 385 1 381 386 1 382 387 1 383 388 1 378 389 1 391 384 1 393 385 1
		 394 386 1 395 387 1 396 388 1 390 389 1 398 404 1 399 253 1 282 401 1 403 402 1 252 403 1
		 406 405 1 407 406 1 403 407 1 251 408 1 253 397 1 410 397 1 561 400 1 455 569 1 567 455 1
		 560 455 1 290 566 1 290 559 1 290 563 1 511 461 1 506 461 1 461 515 1 509 508 1 520 456 1
		 508 456 1 456 510 1 515 512 1 519 517 1 511 510 1 509 506 1 516 515 1 514 507 1 518 462 1
		 513 520 1 528 521 1 529 522 1 529 524 1 530 525 1 531 526 1 527 526 1 509 522 1 512 523 1
		 517 523 1 518 524 1 518 526 1 513 521 1 533 528 1 534 529 1 535 530 1 536 531 1 537 532 1
		 538 527 1 539 534 1 540 535 1 541 536 1 542 537 1 543 538 1 544 533 1 545 540 1 546 541 1
		 547 542 1 548 543 1 549 544 1 550 539 1 552 545 1 554 546 1 555 547 1 556 548 1 557 549 1
		 551 550 1 565 559 1 438 560 1 561 282 1 564 563 1 437 564 1 567 566 1 568 567 1 564 568 1
		 251 569 1 558 438 1 558 571 1 126 109 1 516 460 1 507 460 1 460 519 1 240 223 1 297 355 1
		 297 346 1 358 297 1 598 599 0 600 601 0 602 603 0 604 605 0 598 600 0 599 601 0 600 602 0
		 601 603 0 602 604 0 603 605 0 604 598 0 605 599 0 600 606 0 601 607 0 606 607 0 603 608 0
		 607 608 0 602 609 0 609 608 0 606 609 0 606 610 1 607 611 1 610 611 0 608 612 1 611 612 0
		 609 613 1 613 612 0 610 613 0 610 614 0 611 615 0 614 615 0 612 616 0 615 616 0 613 617 0
		 617 616 0 614 617 0 614 618 0 615 619 0 618 619 1 616 620 0 619 620 1;
	setAttr ".ed[1826:1908]" 617 621 0 621 620 1 618 621 1 618 622 0 619 623 0 622 623 1
		 620 624 0 623 624 1 621 625 0 625 624 1 622 625 1 622 626 0 623 627 0 626 627 0 624 628 0
		 627 628 0 625 629 0 629 628 0 626 629 0 623 630 1 624 631 1 630 631 0 628 632 1 631 632 0
		 627 633 1 633 632 0 630 633 0 622 634 1 625 635 1 634 635 0 626 636 1 634 636 0 629 637 1
		 636 637 0 635 637 0 630 638 1 631 639 1 638 639 0 632 640 1 639 640 0 633 641 1 641 640 0
		 638 641 0 634 642 1 635 643 1 642 643 0 636 644 1 642 644 0 637 645 1 644 645 0 643 645 0
		 638 646 1 639 647 1 646 647 0 640 648 1 647 648 0 641 649 1 649 648 0 646 649 0 642 650 1
		 643 651 1 650 651 0 644 652 1 650 652 0 645 653 1 652 653 0 651 653 0 646 654 1 647 655 1
		 654 655 1 648 656 1 655 656 1 649 657 1 657 656 1 654 657 1 650 658 1 651 659 1 658 659 1
		 652 660 1 658 660 1 653 661 1 660 661 1 659 661 1;
	setAttr -s 1250 -ch 3812 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 13 1433 14
		mu 0 3 27 25 24
		f 3 -1434 -12 -10
		mu 0 3 24 25 26
		f 3 2 1434 -1
		mu 0 3 87 88 89
		f 3 -1435 1 -4
		mu 0 3 89 88 91
		f 3 4 1435 0
		mu 0 3 43 30 47
		f 3 -1436 -7 -6
		mu 0 3 47 30 53
		f 3 167 1436 168
		mu 0 3 282 280 281
		f 3 -1437 -167 -165
		mu 0 3 281 280 278
		f 3 -14 1437 10
		mu 0 3 25 27 30
		f 3 -1438 -13 6
		mu 0 3 153 151 150
		f 3 12 1438 7
		mu 0 3 150 151 152
		f 3 -1439 -15 -9
		mu 0 3 152 151 154
		f 3 15 -17 3
		mu 0 3 69 74 43
		f 3 19 1439 17
		mu 0 3 66 54 69
		f 3 -1440 -19 -16
		mu 0 3 69 54 74
		f 3 20 1440 -11
		mu 0 3 30 31 25
		f 3 -1441 22 -22
		mu 0 3 25 31 28
		f 3 21 1441 11
		mu 0 3 25 28 26
		f 3 -1442 -25 -24
		mu 0 3 26 28 32
		f 3 25 1442 -23
		mu 0 3 31 35 28
		f 3 -1443 27 -27
		mu 0 3 28 35 36
		f 3 26 1443 24
		mu 0 3 28 36 32
		f 3 -1444 -30 -29
		mu 0 3 32 36 40
		f 3 30 -32 -5
		mu 0 3 43 39 30
		f 3 32 -31 16
		mu 0 3 200 201 202
		f 3 33 -33 18
		mu 0 3 203 201 200
		f 3 31 -35 -21
		mu 0 3 30 39 31
		f 3 34 -36 -26
		mu 0 3 31 39 35
		f 3 194 1444 190
		mu 0 3 314 317 316
		f 3 -1445 -194 -192
		mu 0 3 316 317 319
		f 3 36 1445 -34
		mu 0 3 54 48 39
		f 3 -1446 38 -38
		mu 0 3 39 48 44
		f 3 -171 1446 175
		mu 0 3 286 283 278
		f 3 -1447 -175 164
		mu 0 3 278 283 281
		f 3 37 1447 35
		mu 0 3 39 44 35
		f 3 -1448 -41 -40
		mu 0 3 35 44 49
		f 3 42 1448 -8
		mu 0 3 152 155 150
		f 3 -1449 44 -44
		mu 0 3 150 155 158
		f 3 43 1449 5
		mu 0 3 150 158 161
		f 3 -1450 -46 -42
		mu 0 3 161 158 165
		f 3 -103 1450 -104
		mu 0 3 245 242 233
		f 3 -1451 101 99
		mu 0 3 233 242 236
		f 3 60 1451 -57
		mu 0 3 174 168 173
		f 3 -1452 -60 -58
		mu 0 3 173 168 170
		f 3 -2 1452 -48
		mu 0 3 91 88 93
		f 3 49 1453 -1453
		mu 0 3 88 90 93
		f 3 46 -49 -1454
		mu 0 3 90 95 93
		f 3 -51 1454 41
		mu 0 3 92 90 87
		f 3 -1455 -50 -3
		mu 0 3 87 90 88
		f 3 -65 1455 -63
		mu 0 3 179 174 178
		f 3 -1456 56 63
		mu 0 3 178 174 173
		f 3 -132 1456 132
		mu 0 3 186 188 192
		f 3 -1457 -130 127
		mu 0 3 192 188 196
		f 3 137 1457 129
		mu 0 3 188 193 196
		f 3 -1458 -137 -135
		mu 0 3 196 193 198
		f 3 -61 1458 58
		mu 0 3 168 174 171
		f 3 -1459 -56 52
		mu 0 3 171 174 176
		f 3 80 1459 81
		mu 0 3 204 205 206
		f 3 -1460 -79 -74
		mu 0 3 206 205 208
		f 3 64 1460 55
		mu 0 3 174 179 176
		f 3 -1461 -62 -55
		mu 0 3 213 207 209
		f 3 67 1461 -45
		mu 0 3 155 160 158
		f 3 -1462 66 -69
		mu 0 3 158 160 164
		f 3 68 -66 45
		mu 0 3 158 164 165
		f 3 65 -70 -52
		mu 0 3 165 164 171
		f 3 69 -71 -59
		mu 0 3 171 164 168
		f 3 -67 1462 70
		mu 0 3 164 160 168
		f 3 -1463 -72 59
		mu 0 3 168 160 170
		f 3 -76 1463 72
		mu 0 3 206 216 212
		f 3 -1464 -75 48
		mu 0 3 95 98 93
		f 3 76 -73 53
		mu 0 3 209 206 212
		f 3 77 1464 62
		mu 0 3 178 185 179
		f 3 -1465 -81 -80
		mu 0 3 207 205 204
		f 3 79 1465 61
		mu 0 3 207 204 209
		f 3 -82 -77 -1466
		mu 0 3 204 206 209
		f 3 83 1466 73
		mu 0 3 208 211 206
		f 3 -1467 -85 -83
		mu 0 3 206 211 215
		f 3 82 1467 75
		mu 0 3 206 215 216
		f 3 -1468 -87 -86
		mu 0 3 216 215 227
		f 3 -90 1468 88
		mu 0 3 99 96 93
		f 3 -1469 -88 47
		mu 0 3 93 96 91
		f 3 -91 1469 85
		mu 0 3 104 99 98
		f 3 -1470 -89 74
		mu 0 3 98 99 93
		f 3 92 1470 84
		mu 0 3 211 221 215
		f 3 -1471 -94 -92
		mu 0 3 215 221 226
		f 3 91 1471 86
		mu 0 3 215 226 227
		f 3 -1472 -96 -95
		mu 0 3 227 226 237
		f 3 112 1472 -111
		mu 0 3 246 247 248
		f 3 -1473 102 -371
		mu 0 3 248 247 249
		f 3 94 -97 90
		mu 0 3 104 107 99
		f 3 98 1473 93
		mu 0 3 221 233 226
		f 3 -1474 -100 -98
		mu 0 3 226 233 236
		f 3 -101 1474 -102
		mu 0 3 255 256 257
		f 3 97 -1475 95
		mu 0 3 226 236 237
		f 3 106 1475 104
		mu 0 3 100 103 91
		f 3 -1476 -106 -18
		mu 0 3 69 75 66
		f 3 -110 1476 108
		mu 0 3 258 259 260
		f 3 -1477 -108 89
		mu 0 3 99 102 96
		f 3 -112 1477 107
		mu 0 3 102 100 96
		f 3 -1478 -105 87
		mu 0 3 96 100 91
		f 3 100 1478 96
		mu 0 3 107 109 99
		f 3 -1479 -113 -109
		mu 0 3 99 109 112
		f 3 114 1479 50
		mu 0 3 92 94 90
		f 3 -1480 -116 -114
		mu 0 3 90 94 97
		f 3 118 1480 116
		mu 0 3 183 180 176
		f 3 -1481 -118 -53
		mu 0 3 176 180 171
		f 3 117 1481 51
		mu 0 3 261 262 263
		f 3 -1482 -120 -115
		mu 0 3 263 262 264
		f 3 113 1482 -47
		mu 0 3 265 266 267
		f 3 -1483 121 -121
		mu 0 3 267 266 268
		f 3 123 1483 120
		mu 0 3 222 217 212
		f 3 -1484 -123 -54
		mu 0 3 212 217 209
		f 3 122 1484 54
		mu 0 3 209 217 213
		f 3 -1485 -125 -117
		mu 0 3 213 217 223
		f 3 126 1485 115
		mu 0 3 94 101 97
		f 3 -1486 -128 -126
		mu 0 3 266 271 270
		f 3 131 1486 128
		mu 0 3 188 186 183
		f 3 -1487 -131 -119
		mu 0 3 183 186 180
		f 3 130 1487 119
		mu 0 3 180 186 189
		f 3 -1488 -133 -127
		mu 0 3 189 186 192
		f 3 134 1488 125
		mu 0 3 270 269 266
		f 3 -1489 -134 -122
		mu 0 3 266 269 268
		f 3 136 1489 133
		mu 0 3 234 228 222
		f 3 -1490 -136 -124
		mu 0 3 222 228 217
		f 3 135 1490 124
		mu 0 3 217 228 223
		f 3 -1491 -138 -129
		mu 0 3 183 193 188
		f 3 140 1491 138
		mu 0 3 145 148 149
		f 3 -1492 -140 -28
		mu 0 3 272 273 274
		f 3 -143 1492 139
		mu 0 3 50 45 36
		f 3 -1493 -142 29
		mu 0 3 36 45 40
		f 3 143 -145 -20
		mu 0 3 66 61 54
		f 3 147 1493 145
		mu 0 3 61 55 48
		f 3 -1494 -147 -39
		mu 0 3 48 55 44
		f 3 -150 1494 146
		mu 0 3 139 141 143
		f 3 -1495 -149 40
		mu 0 3 44 56 49
		f 3 144 -146 -37
		mu 0 3 54 61 48
		f 3 -151 1495 148
		mu 0 3 141 145 147
		f 3 -1496 -139 39
		mu 0 3 147 145 149
		f 3 151 1496 -141
		mu 0 3 145 144 148
		f 3 -1497 153 -153
		mu 0 3 275 276 277
		f 3 155 1497 149
		mu 0 3 139 138 141
		f 3 -1498 -157 -155
		mu 0 3 141 138 140
		f 3 154 1498 150
		mu 0 3 141 140 145
		f 3 -1499 -158 -152
		mu 0 3 145 140 144
		f 3 160 1499 158
		mu 0 3 70 67 61
		f 3 -1500 -160 -148
		mu 0 3 61 67 55
		f 3 162 1500 159
		mu 0 3 67 71 55
		f 3 -1501 -162 -156
		mu 0 3 139 132 138
		f 3 163 1501 -154
		mu 0 3 276 278 277
		f 3 -1502 166 -166
		mu 0 3 277 278 280
		f 3 184 1502 178
		mu 0 3 296 297 298
		f 3 -1503 -184 -182
		mu 0 3 298 297 299
		f 3 171 1503 156
		mu 0 3 138 137 140
		f 3 -1504 -174 -170
		mu 0 3 140 137 142
		f 3 169 1504 157
		mu 0 3 140 142 144
		f 3 -1505 -176 -164
		mu 0 3 144 142 146
		f 3 177 1505 142
		mu 0 3 302 296 300
		f 3 -1506 -179 -177
		mu 0 3 300 296 298
		f 3 179 -178 152
		mu 0 3 277 279 275
		f 3 180 1506 -168
		mu 0 3 282 284 280
		f 3 -1507 183 -183
		mu 0 3 280 284 288
		f 3 -185 1507 182
		mu 0 3 305 306 307
		f 3 -1508 -180 165
		mu 0 3 307 306 308
		f 3 -188 1508 -173
		mu 0 3 309 310 311
		f 3 -1509 -186 173
		mu 0 3 311 310 312
		f 3 189 1509 186
		mu 0 3 313 314 315
		f 3 -1510 -191 -189
		mu 0 3 315 314 316
		f 3 193 -193 -1511
		mu 0 3 322 323 324
		f 3 -195 1511 192
		mu 0 3 326 327 328
		f 3 -1512 -190 187
		mu 0 3 328 327 329
		f 3 195 -197 -144
		mu 0 3 124 121 128
		f 3 196 -198 -159
		mu 0 3 61 76 70
		f 3 200 1512 198
		mu 0 3 105 106 100
		f 3 -1513 -200 -107
		mu 0 3 100 106 103
		f 3 -204 1513 202
		mu 0 3 330 331 332
		f 3 -1514 -202 109
		mu 0 3 332 331 334
		f 3 201 -199 111
		mu 0 3 102 105 100
		f 3 204 1514 -161
		mu 0 3 123 120 127
		f 3 -1515 206 -206
		mu 0 3 127 120 126
		f 3 208 1515 105
		mu 0 3 75 80 66
		f 3 -1516 -210 -208
		mu 0 3 66 80 84
		f 3 205 1516 -163
		mu 0 3 127 126 132
		f 3 -1517 211 -211
		mu 0 3 132 126 130
		f 3 -214 1517 210
		mu 0 3 130 135 132
		f 3 -1518 -213 161
		mu 0 3 132 135 138
		f 3 212 214 -172
		mu 0 3 138 135 137
		f 3 207 1518 -196
		mu 0 3 124 115 121
		f 3 -1519 216 -216
		mu 0 3 121 115 118
		f 3 215 1519 197
		mu 0 3 121 118 123
		f 3 -1520 -218 -205
		mu 0 3 123 118 120
		f 3 -219 -209 199
		mu 0 3 106 108 103
		f 3 219 1520 -207
		mu 0 3 120 119 126
		f 3 -1521 221 -221
		mu 0 3 126 119 122
		f 3 -225 1521 223
		mu 0 3 111 113 108
		f 3 -1522 -223 209
		mu 0 3 108 113 115
		f 3 220 1522 -212
		mu 0 3 126 122 130
		f 3 -1523 226 -226
		mu 0 3 130 122 129
		f 3 -229 1523 225
		mu 0 3 129 134 130
		f 3 -1524 -228 213
		mu 0 3 130 134 135
		f 3 227 229 -215
		mu 0 3 135 134 137
		f 3 231 1524 222
		mu 0 3 113 117 115
		f 3 -1525 -231 -217
		mu 0 3 115 117 118
		f 3 230 1525 217
		mu 0 3 118 117 120
		f 3 -1526 -233 -220
		mu 0 3 120 117 119
		f 3 -234 -224 218
		mu 0 3 106 111 108
		f 3 234 1526 -222
		mu 0 3 119 116 122
		f 3 -1527 236 -236
		mu 0 3 122 116 125
		f 3 237 -239 -201
		mu 0 3 105 110 106
		f 3 240 -240 224
		mu 0 3 111 114 113
		f 3 235 -242 -227
		mu 0 3 122 125 129
		f 3 -244 1527 241
		mu 0 3 125 131 129
		f 3 -1528 -243 228
		mu 0 3 129 131 134
		f 3 242 1528 -230
		mu 0 3 134 131 137
		f 3 -1529 245 -245
		mu 0 3 336 337 338
		f 3 244 1529 172
		mu 0 3 336 338 340
		f 3 247 1530 239
		mu 0 3 114 116 113
		f 3 -1531 -247 -232
		mu 0 3 113 116 117
		f 3 246 -235 232
		mu 0 3 117 116 119
		f 3 238 1531 233
		mu 0 3 106 110 111
		f 3 -1532 -249 -241
		mu 0 3 111 110 114
		f 3 249 -251 248
		mu 0 3 3 1 5
		f 3 265 1532 -259
		mu 0 3 350 351 352
		f 3 -1533 264 -263
		mu 0 3 352 351 354
		f 3 251 -254 250
		mu 0 3 359 356 353
		f 3 254 255 -237
		mu 0 3 7 12 10
		f 3 256 -255 -248
		mu 0 3 6 11 8
		f 3 257 -260 -256
		mu 0 3 369 370 371
		f 3 260 -258 -257
		mu 0 3 372 370 369
		f 3 261 1533 -1412
		mu 0 3 360 354 356
		f 3 -1534 -265 -264
		mu 0 3 356 354 351
		f 3 263 1534 253
		mu 0 3 356 351 353
		f 3 -266 -261 -1535
		mu 0 3 351 350 353
		f 3 268 -267 243
		mu 0 3 125 133 131
		f 3 266 -270 -246
		mu 0 3 337 339 338
		f 3 -268 1535 269
		mu 0 3 339 341 338
		f 3 -1536 -271 -1530
		mu 0 3 338 341 340
		f 3 267 1536 271
		mu 0 3 358 355 352
		f 3 -1537 -273 258
		mu 0 3 352 355 350
		f 3 272 -269 259
		mu 0 3 136 133 125
		f 3 282 1537 9
		mu 0 3 26 29 24
		f 3 -1538 -285 -286
		mu 0 3 24 29 34
		f 3 273 1538 -276
		mu 0 3 373 374 375
		f 3 -1539 276 -275
		mu 0 3 375 374 376
		f 3 -274 1539 -278
		mu 0 3 51 58 38
		f 3 -1540 278 279
		mu 0 3 38 58 62
		f 3 424 1540 422
		mu 0 3 287 285 281
		f 3 -1541 -426 -169
		mu 0 3 281 285 282
		f 3 283 1541 -280
		mu 0 3 157 156 162
		f 3 -1542 284 -282
		mu 0 3 38 34 29
		f 3 -281 1542 -284
		mu 0 3 157 152 156
		f 3 -1543 8 285
		mu 0 3 156 152 154
		f 3 -277 287 -287
		mu 0 3 77 51 82
		f 3 -289 1543 -291
		mu 0 3 72 77 64
		f 3 286 289 -1544
		mu 0 3 77 82 64
		f 3 281 1544 -292
		mu 0 3 38 29 37
		f 3 -1545 292 -294
		mu 0 3 37 29 33
		f 3 -283 1545 -293
		mu 0 3 29 26 33
		f 3 -1546 23 294
		mu 0 3 33 26 32
		f 3 293 1546 -296
		mu 0 3 37 33 42
		f 3 -1547 296 -298
		mu 0 3 42 33 41
		f 3 -295 1547 -297
		mu 0 3 33 32 41
		f 3 -1548 28 298
		mu 0 3 41 32 40
		f 3 277 300 -300
		mu 0 3 51 38 46
		f 3 -288 299 -302
		mu 0 3 430 431 432
		f 3 -290 301 -303
		mu 0 3 433 430 432
		f 3 291 303 -301
		mu 0 3 38 37 46
		f 3 295 304 -304
		mu 0 3 37 42 46
		f 3 -443 1548 -446
		mu 0 3 318 316 321
		f 3 -1549 191 444
		mu 0 3 321 316 319
		f 3 302 1549 -306
		mu 0 3 64 46 60
		f 3 -1550 306 -308
		mu 0 3 60 46 52
		f 3 174 1550 -423
		mu 0 3 281 283 287
		f 3 -1551 427 -432
		mu 0 3 287 283 289
		f 3 -305 1551 -307
		mu 0 3 46 42 52
		f 3 -1552 308 309
		mu 0 3 52 42 59
		f 3 280 1552 -43
		mu 0 3 152 157 155
		f 3 -1553 311 -313
		mu 0 3 155 157 159
		f 3 -279 1553 -312
		mu 0 3 157 163 159
		f 3 -1554 310 313
		mu 0 3 159 163 166
		f 3 -361 1554 -359
		mu 0 3 241 244 233
		f 3 -1555 361 103
		mu 0 3 233 244 245
		f 3 324 1555 -328
		mu 0 3 175 173 169
		f 3 -1556 57 326
		mu 0 3 169 173 170
		f 3 315 1556 274
		mu 0 3 376 378 375
		f 3 -1557 1557 -318
		mu 0 3 375 378 377
		f 3 316 -315 -1558
		mu 0 3 378 381 377
		f 3 317 1558 275
		mu 0 3 375 377 373
		f 3 -1559 318 -311
		mu 0 3 373 377 379
		f 3 329 1559 330
		mu 0 3 181 178 175
		f 3 -1560 -64 -325
		mu 0 3 175 178 173
		f 3 388 1560 -387
		mu 0 3 197 191 194
		f 3 -1561 390 -392
		mu 0 3 194 191 187
		f 3 395 1561 393
		mu 0 3 199 195 197
		f 3 -1562 -397 -389
		mu 0 3 197 195 191
		f 3 323 1562 -321
		mu 0 3 177 175 172
		f 3 -1563 327 -326
		mu 0 3 172 175 169
		f 3 78 1563 337
		mu 0 3 208 205 210
		f 3 -1564 -343 -344
		mu 0 3 210 205 214
		f 3 328 1564 322
		mu 0 3 219 218 229
		f 3 -1565 -331 -324
		mu 0 3 177 181 175
		f 3 312 1565 -68
		mu 0 3 155 159 160
		f 3 -1566 333 -333
		mu 0 3 160 159 167
		f 3 -314 331 -334
		mu 0 3 159 166 167
		f 3 319 334 -332
		mu 0 3 166 172 167
		f 3 325 335 -335
		mu 0 3 172 169 167
		f 3 71 1566 -327
		mu 0 3 170 160 169
		f 3 -1567 332 -336
		mu 0 3 169 160 167
		f 3 338 1567 -317
		mu 0 3 378 385 381
		f 3 -1568 339 -337
		mu 0 3 224 225 210
		f 3 -322 336 -341
		mu 0 3 219 224 210
		f 3 -330 1568 -78
		mu 0 3 178 181 185
		f 3 -1569 341 342
		mu 0 3 205 218 214
		f 3 -329 1569 -342
		mu 0 3 218 219 214
		f 3 340 343 -1570
		mu 0 3 219 210 214
		f 3 -338 1570 -84
		mu 0 3 208 210 211
		f 3 -1571 344 345
		mu 0 3 211 210 220
		f 3 -340 1571 -345
		mu 0 3 210 225 220
		f 3 -1572 346 347
		mu 0 3 220 225 231
		f 3 348 1572 -316
		mu 0 3 376 380 378
		f 3 -1573 350 -350
		mu 0 3 378 380 384
		f 3 349 1573 -339
		mu 0 3 378 384 385
		f 3 -1574 351 -347
		mu 0 3 385 384 392
		f 3 -346 1574 -93
		mu 0 3 211 220 221
		f 3 -1575 352 353
		mu 0 3 221 220 232
		f 3 -348 1575 -353
		mu 0 3 220 231 232
		f 3 -1576 354 355
		mu 0 3 232 231 240
		f 3 368 1576 -372
		mu 0 3 251 248 250
		f 3 -1577 370 -362
		mu 0 3 250 248 249
		f 3 -352 356 -355
		mu 0 3 392 384 394
		f 3 -354 1577 -99
		mu 0 3 221 232 233
		f 3 -1578 357 358
		mu 0 3 233 232 241
		f 3 360 1578 359
		mu 0 3 250 254 253
		f 3 -356 -1579 -358
		mu 0 3 232 240 241
		f 3 363 1579 288
		mu 0 3 72 81 77
		f 3 -1580 -365 -363
		mu 0 3 376 387 383
		f 3 365 1580 -351
		mu 0 3 380 388 384
		f 3 -1581 367 -367
		mu 0 3 434 435 436
		f 3 362 1581 -349
		mu 0 3 376 383 380
		f 3 -1582 369 -366
		mu 0 3 380 383 388
		f 3 -357 1582 -360
		mu 0 3 253 252 250
		f 3 -1583 366 371
		mu 0 3 250 252 251
		f 3 -319 1583 -374
		mu 0 3 379 377 382
		f 3 -1584 372 374
		mu 0 3 382 377 386
		f 3 376 1584 320
		mu 0 3 172 182 177
		f 3 -1585 -378 -376
		mu 0 3 177 182 184
		f 3 -320 1585 -377
		mu 0 3 437 438 439
		f 3 -1586 373 378
		mu 0 3 439 438 440
		f 3 314 1586 -373
		mu 0 3 441 442 443
		f 3 -1587 379 -381
		mu 0 3 443 442 444
		f 3 381 1587 321
		mu 0 3 219 230 224
		f 3 -1588 -383 -380
		mu 0 3 224 230 235
		f 3 -323 1588 -382
		mu 0 3 219 229 230
		f 3 -1589 375 383
		mu 0 3 230 229 238
		f 3 -375 1589 -386
		mu 0 3 382 386 389
		f 3 -1590 384 386
		mu 0 3 447 443 446
		f 3 389 1590 377
		mu 0 3 182 187 184
		f 3 -1591 -391 -388
		mu 0 3 184 187 191
		f 3 -379 1591 -390
		mu 0 3 182 190 187
		f 3 -1592 385 391
		mu 0 3 187 190 194
		f 3 392 1592 380
		mu 0 3 444 445 443
		f 3 -1593 -394 -385
		mu 0 3 443 445 446
		f 3 394 1593 382
		mu 0 3 230 239 235
		f 3 -1594 -396 -393
		mu 0 3 235 239 243
		f 3 -384 1594 -395
		mu 0 3 230 238 239
		f 3 -1595 387 396
		mu 0 3 195 184 191
		f 3 398 1595 297
		mu 0 3 448 449 450
		f 3 -1596 -400 -398
		mu 0 3 428 429 425
		f 3 141 1596 -299
		mu 0 3 40 45 41
		f 3 -1597 400 -399
		mu 0 3 41 45 57
		f 3 290 402 -402
		mu 0 3 72 64 68
		f 3 404 1597 307
		mu 0 3 52 65 60
		f 3 -1598 -406 -404
		mu 0 3 60 65 68
		f 3 406 1598 -310
		mu 0 3 59 63 52
		f 3 -1599 407 -405
		mu 0 3 423 422 421
		f 3 305 403 -403
		mu 0 3 64 60 68
		f 3 397 1599 -309
		mu 0 3 428 425 426
		f 3 -1600 408 -407
		mu 0 3 426 425 422
		f 3 399 1600 -410
		mu 0 3 425 429 427
		f 3 -1601 410 -412
		mu 0 3 292 294 291
		f 3 -408 1601 -414
		mu 0 3 421 422 420
		f 3 -1602 412 414
		mu 0 3 420 422 424
		f 3 -409 1602 -413
		mu 0 3 422 425 424
		f 3 -1603 409 415
		mu 0 3 424 425 427
		f 3 417 1603 405
		mu 0 3 65 73 68
		f 3 -1604 -419 -417
		mu 0 3 68 73 79
		f 3 419 1604 413
		mu 0 3 420 415 421
		f 3 -1605 -421 -418
		mu 0 3 65 78 73
		f 3 411 1605 -422
		mu 0 3 292 291 287
		f 3 -1606 423 -425
		mu 0 3 287 291 285
		f 3 -434 1606 -438
		mu 0 3 303 298 301
		f 3 -1607 181 436
		mu 0 3 301 298 299
		f 3 -415 1607 -429
		mu 0 3 348 349 344
		f 3 -1608 426 430
		mu 0 3 457 459 455
		f 3 -416 1608 -427
		mu 0 3 293 292 289
		f 3 -1609 421 431
		mu 0 3 289 292 287
		f 3 -401 1609 -433
		mu 0 3 304 300 303
		f 3 -1610 176 433
		mu 0 3 303 300 298
		f 3 -411 432 -435
		mu 0 3 291 294 295
		f 3 425 1610 -181
		mu 0 3 282 285 284
		f 3 -1611 435 -437
		mu 0 3 284 285 290
		f 3 434 1611 -424
		mu 0 3 451 452 453
		f 3 -1612 437 -436
		mu 0 3 453 452 454
		f 3 438 1612 -431
		mu 0 3 455 456 457
		f 3 -1613 440 429
		mu 0 3 457 456 458
		f 3 -440 1613 -442
		mu 0 3 320 315 318
		f 3 -1614 188 442
		mu 0 3 318 315 316
		f 3 443 -445 1510
		mu 0 3 324 325 322
		f 3 441 1614 -441
		mu 0 3 463 461 460
		f 3 -1615 445 -444
		mu 0 3 460 461 462
		f 3 401 447 -447
		mu 0 3 407 411 404
		f 3 416 448 -448
		mu 0 3 68 79 83
		f 3 450 1615 364
		mu 0 3 387 390 383
		f 3 -1616 -452 -450
		mu 0 3 383 390 391
		f 3 452 1616 -368
		mu 0 3 464 465 466
		f 3 -1617 454 -454
		mu 0 3 466 465 467
		f 3 -370 449 -453
		mu 0 3 388 383 391
		f 3 418 1617 -456
		mu 0 3 406 409 403
		f 3 -1618 456 -458
		mu 0 3 403 409 410
		f 3 -364 1618 -460
		mu 0 3 81 72 85
		f 3 -1619 458 460
		mu 0 3 85 72 86
		f 3 420 1619 -457
		mu 0 3 409 415 410
		f 3 -1620 461 -463
		mu 0 3 410 415 413
		f 3 463 1620 -420
		mu 0 3 420 417 415
		f 3 -1621 464 -462
		mu 0 3 415 417 413
		f 3 428 -466 -464
		mu 0 3 348 344 347
		f 3 446 1621 -459
		mu 0 3 407 404 398
		f 3 -1622 466 -468
		mu 0 3 398 404 402
		f 3 -449 1622 -467
		mu 0 3 404 406 402
		f 3 -1623 455 468
		mu 0 3 402 406 403
		f 3 -451 459 469
		mu 0 3 390 387 393
		f 3 457 1623 -471
		mu 0 3 403 410 405
		f 3 -1624 471 -473
		mu 0 3 405 410 408
		f 3 473 1624 -461
		mu 0 3 398 397 393
		f 3 -1625 475 -475
		mu 0 3 393 397 395
		f 3 462 1625 -472
		mu 0 3 410 413 408
		f 3 -1626 476 -478
		mu 0 3 408 413 414
		f 3 478 1626 -465
		mu 0 3 417 418 413
		f 3 -1627 479 -477
		mu 0 3 413 418 414
		f 3 465 -481 -479
		mu 0 3 347 344 346
		f 3 481 1627 467
		mu 0 3 402 400 398
		f 3 -1628 -483 -474
		mu 0 3 398 400 397
		f 3 -469 1628 -482
		mu 0 3 402 403 400
		f 3 -1629 470 483
		mu 0 3 400 403 405
		f 3 -470 474 484
		mu 0 3 390 393 395
		f 3 472 1629 -486
		mu 0 3 405 408 401
		f 3 -1630 486 -488
		mu 0 3 401 408 412
		f 3 451 489 -489
		mu 0 3 391 390 396
		f 3 -476 490 -492
		mu 0 3 395 397 399
		f 3 477 492 -487
		mu 0 3 408 414 412
		f 3 493 1630 -480
		mu 0 3 418 416 414
		f 3 -1631 494 -493
		mu 0 3 414 416 412
		f 3 480 1631 -494
		mu 0 3 346 344 345
		f 3 -1632 495 -497
		mu 0 3 345 344 342
		f 3 -430 -498 -496
		mu 0 3 344 340 342
		f 3 498 1632 482
		mu 0 3 400 401 397
		f 3 -1633 -500 -491
		mu 0 3 397 401 399
		f 3 -484 485 -499
		mu 0 3 400 405 401
		f 3 -485 1633 -490
		mu 0 3 390 395 396
		f 3 -1634 491 500
		mu 0 3 396 395 399
		f 3 -501 502 -502
		mu 0 3 2 15 19
		f 3 510 1634 -516
		mu 0 3 361 352 357
		f 3 -1635 262 -515
		mu 0 3 357 352 354
		f 3 -503 508 -504
		mu 0 3 367 365 362
		f 3 487 -506 -505
		mu 0 3 17 21 22
		f 3 499 504 -507
		mu 0 3 14 16 23
		f 3 505 511 -510
		mu 0 3 470 471 472
		f 3 506 509 -513
		mu 0 3 473 470 472
		f 3 -508 1635 -262
		mu 0 3 360 362 354
		f 3 -1636 513 514
		mu 0 3 354 362 357
		f 3 -509 1636 -514
		mu 0 3 362 365 357
		f 3 512 515 -1637
		mu 0 3 365 361 357
		f 3 -495 516 -519
		mu 0 3 412 416 419
		f 3 496 519 -517
		mu 0 3 345 342 343
		f 3 270 1637 497
		mu 0 3 340 341 342
		f 3 -1638 517 -520
		mu 0 3 342 341 343
		f 3 520 1638 -511
		mu 0 3 361 363 352
		f 3 -1639 -518 -272
		mu 0 3 352 363 358
		f 3 -512 518 -521
		mu 0 3 361 366 363
		f 3 -525 920 -880
		mu 0 3 474 475 476
		f 3 -921 521 876
		mu 0 3 476 475 477
		f 3 -874 921 -528
		mu 0 3 576 577 578
		f 3 -922 922 -530
		mu 0 3 578 577 579
		f 3 -923 -526 -524
		mu 0 3 579 577 581
		f 3 526 923 875
		mu 0 3 602 604 607
		f 3 528 924 -924
		mu 0 3 604 608 607
		f 3 853 524 -925
		mu 0 3 608 610 607
		f 3 -531 925 -887
		mu 0 3 601 602 603
		f 3 -926 522 883
		mu 0 3 603 602 605
		f 3 533 926 527
		mu 0 3 578 580 576
		f 3 -927 927 -532
		mu 0 3 576 580 584
		f 3 -535 -881 -928
		mu 0 3 580 588 584
		f 3 -536 928 536
		mu 0 3 619 604 622
		f 3 -929 929 882
		mu 0 3 505 514 510
		f 3 -527 530 -930
		mu 0 3 604 602 601
		f 3 -538 930 -894
		mu 0 3 509 505 502
		f 3 -931 532 890
		mu 0 3 502 505 493
		f 3 534 931 -539
		mu 0 3 588 580 593
		f 3 540 932 -932
		mu 0 3 580 598 593
		f 3 -542 -888 -933
		mu 0 3 598 599 593
		f 3 537 933 -537
		mu 0 3 622 624 619;
	setAttr ".fc[500:999]"
		f 3 -934 934 -543
		mu 0 3 619 624 623
		f 3 889 543 -935
		mu 0 3 624 626 623
		f 3 539 935 -545
		mu 0 3 513 504 518
		f 3 -936 897 -901
		mu 0 3 518 504 517
		f 3 -549 936 547
		mu 0 3 535 521 526
		f 3 -895 937 -937
		mu 0 3 521 512 526
		f 3 541 -938 -546
		mu 0 3 627 628 629
		f 3 544 938 -544
		mu 0 3 630 631 632
		f 3 -939 939 -550
		mu 0 3 632 631 633
		f 3 896 550 -940
		mu 0 3 631 634 633
		f 3 546 940 -552
		mu 0 3 528 527 545
		f 3 -941 904 -908
		mu 0 3 545 527 536
		f 3 548 941 -553
		mu 0 3 521 535 544
		f 3 -556 942 554
		mu 0 3 559 552 535
		f 3 -943 -902 -942
		mu 0 3 535 552 544
		f 3 551 943 -551
		mu 0 3 528 545 554
		f 3 -944 944 -557
		mu 0 3 554 545 561
		f 3 903 557 -945
		mu 0 3 660 657 640
		f 3 553 945 -559
		mu 0 3 560 553 568
		f 3 -946 911 -915
		mu 0 3 568 553 570
		f 3 555 946 -560
		mu 0 3 670 663 665
		f 3 -563 947 561
		mu 0 3 661 662 663
		f 3 -948 -909 -947
		mu 0 3 663 662 665
		f 3 -564 948 564
		mu 0 3 648 640 652
		f 3 -949 949 910
		mu 0 3 652 640 654
		f 3 -558 558 -950
		mu 0 3 640 657 654
		f 3 -566 950 -920
		mu 0 3 655 652 658
		f 3 -951 560 917
		mu 0 3 573 572 571
		f 3 -570 951 567
		mu 0 3 667 664 661
		f 3 -952 952 562
		mu 0 3 661 664 662
		f 3 -953 -916 -567
		mu 0 3 662 664 668
		f 3 -569 953 569
		mu 0 3 656 648 659
		f 3 -954 954 916
		mu 0 3 659 648 655
		f 3 -565 565 -955
		mu 0 3 648 652 655
		f 3 572 587 -571
		mu 0 3 679 680 681
		f 3 601 695 -600
		mu 0 3 551 525 543
		f 3 -696 600 453
		mu 0 3 543 525 534
		f 3 602 696 -601
		mu 0 3 525 520 534
		f 3 -697 598 -369
		mu 0 3 694 695 696
		f 3 577 697 -580
		mu 0 3 519 522 529
		f 3 -698 597 -575
		mu 0 3 529 522 537
		f 3 -611 -581 611
		mu 0 3 503 500 507
		f 3 -613 586 610
		mu 0 3 503 496 500
		f 3 -625 -582 613
		mu 0 3 523 507 519
		f 3 -614 -586 614
		mu 0 3 523 519 531
		f 3 -854 1639 -862
		mu 0 3 727 723 718
		f 3 -1640 1281 858
		mu 0 3 718 723 719
		f 3 -870 1640 588
		mu 0 3 501 492 496
		f 3 -587 1641 -699
		mu 0 3 500 496 491
		f 3 -1642 1642 -864
		mu 0 3 491 496 488
		f 3 -851 -1643 -1641
		mu 0 3 492 488 496
		f 3 585 699 -588
		mu 0 3 531 519 538
		f 3 -700 579 -584
		mu 0 3 538 519 529
		f 3 -617 573 615
		mu 0 3 682 679 685
		f 3 627 -573 616
		mu 0 3 682 680 679
		f 3 -589 -574 571
		mu 0 3 688 685 679
		f 3 -577 700 -595
		mu 0 3 515 507 506
		f 3 -701 580 578
		mu 0 3 506 507 500
		f 3 -578 701 -596
		mu 0 3 522 519 515
		f 3 -702 581 576
		mu 0 3 515 519 507
		f 3 -579 702 -597
		mu 0 3 506 500 499
		f 3 582 1643 -703
		mu 0 3 500 495 499
		f 3 862 1644 -1644
		mu 0 3 495 490 499
		f 3 849 1645 -1645
		mu 0 3 490 494 499
		f 3 -1646 855 575
		mu 0 3 703 715 711
		f 3 -598 703 -590
		mu 0 3 537 522 546
		f 3 -704 592 606
		mu 0 3 546 522 539
		f 3 605 1646 754
		mu 0 3 516 525 532
		f 3 -1647 1647 747
		mu 0 3 532 525 542
		f 3 704 1648 -602
		mu 0 3 551 550 525
		f 3 -1649 759 -1648
		mu 0 3 525 550 542
		f 3 -753 1649 -759
		mu 0 3 549 533 541
		f 3 -1650 749 755
		mu 0 3 541 533 524
		f 3 -606 705 -603
		mu 0 3 525 516 520
		f 3 -706 609 603
		mu 0 3 520 516 511
		f 3 -592 1650 -608
		mu 0 3 530 515 540
		f 3 -1651 1651 -767
		mu 0 3 540 515 533
		f 3 -754 1652 706
		mu 0 3 516 524 515
		f 3 -1653 -750 -1652
		mu 0 3 515 524 533
		f 3 -707 594 593
		mu 0 3 516 515 506
		f 3 -593 707 -609
		mu 0 3 539 522 530
		f 3 -708 595 591
		mu 0 3 530 522 515
		f 3 -594 708 -610
		mu 0 3 516 506 511
		f 3 -709 596 590
		mu 0 3 511 506 499
		f 3 630 709 -636
		mu 0 3 729 730 731
		f 3 -710 632 -635
		mu 0 3 731 730 733
		f 3 640 710 638
		mu 0 3 743 744 745
		f 3 -711 -643 -644
		mu 0 3 745 744 746
		f 3 642 711 -649
		mu 0 3 747 748 749
		f 3 -712 645 -648
		mu 0 3 749 748 750
		f 3 688 712 -694
		mu 0 3 759 760 761
		f 3 -713 690 -693
		mu 0 3 761 760 762
		f 3 -620 713 -621
		mu 0 3 763 764 765
		f 3 -714 -619 -618
		mu 0 3 765 764 767
		f 3 622 714 617
		mu 0 3 767 770 765
		f 3 -715 -624 -622
		mu 0 3 765 770 771
		f 3 -639 715 -655
		mu 0 3 739 736 733
		f 3 -716 653 634
		mu 0 3 733 736 731
		f 3 667 716 -670
		mu 0 3 752 754 755
		f 3 -717 668 -660
		mu 0 3 755 754 756
		f 3 620 694 -626
		mu 0 3 763 765 768
		f 3 -695 621 -627
		mu 0 3 768 765 771
		f 3 623 717 -630
		mu 0 3 771 770 775
		f 3 -718 631 -633
		mu 0 3 775 770 774
		f 3 628 718 -615
		mu 0 3 737 729 734
		f 3 -719 635 -634
		mu 0 3 734 729 731
		f 3 639 719 618
		mu 0 3 764 769 767
		f 3 -720 -641 -638
		mu 0 3 767 769 773
		f 3 -612 720 -642
		mu 0 3 788 786 785
		f 3 -721 636 643
		mu 0 3 785 786 787
		f 3 644 721 619
		mu 0 3 763 766 764
		f 3 -722 -646 -640
		mu 0 3 764 766 769
		f 3 612 722 -647
		mu 0 3 753 751 749
		f 3 -723 641 648
		mu 0 3 749 751 747
		f 3 629 723 626
		mu 0 3 771 775 768
		f 3 -724 -652 -651
		mu 0 3 768 775 772
		f 3 -628 724 -629
		mu 0 3 680 682 684
		f 3 -725 649 652
		mu 0 3 684 682 687
		f 3 633 725 624
		mu 0 3 790 789 786
		f 3 -726 -654 -637
		mu 0 3 786 789 787
		f 3 -623 726 -632
		mu 0 3 770 767 774
		f 3 -727 637 654
		mu 0 3 774 767 773
		f 3 625 727 -645
		mu 0 3 763 768 766
		f 3 -728 650 -656
		mu 0 3 766 768 772
		f 3 646 728 -616
		mu 0 3 685 689 682
		f 3 -729 656 -650
		mu 0 3 682 689 687
		f 3 660 729 651
		mu 0 3 775 777 772
		f 3 -730 -662 -659
		mu 0 3 772 777 778
		f 3 662 730 -631
		mu 0 3 729 732 730
		f 3 -731 663 -661
		mu 0 3 730 732 735
		f 3 -653 731 -663
		mu 0 3 791 792 793
		f 3 -732 657 664
		mu 0 3 793 792 794
		f 3 647 732 -666
		mu 0 3 749 750 752
		f 3 -733 666 -668
		mu 0 3 752 750 754
		f 3 655 733 -667
		mu 0 3 766 772 776
		f 3 -734 658 -669
		mu 0 3 776 772 778
		f 3 665 734 -657
		mu 0 3 797 795 792
		f 3 -735 669 -658
		mu 0 3 792 795 794
		f 3 659 735 -671
		mu 0 3 755 756 757
		f 3 -736 671 -673
		mu 0 3 757 756 758
		f 3 673 736 661
		mu 0 3 777 779 778
		f 3 -737 -675 -672
		mu 0 3 778 779 780
		f 3 -664 737 -674
		mu 0 3 735 732 738
		f 3 -738 675 676
		mu 0 3 738 732 740
		f 3 -665 738 -676
		mu 0 3 793 794 796
		f 3 -739 670 677
		mu 0 3 796 794 798
		f 3 672 739 -679
		mu 0 3 803 804 805
		f 3 -740 679 -681
		mu 0 3 805 804 806
		f 3 681 740 674
		mu 0 3 779 781 780
		f 3 -741 -683 -680
		mu 0 3 780 781 782
		f 3 -677 741 -682
		mu 0 3 738 740 741
		f 3 -742 683 684
		mu 0 3 741 740 742
		f 3 -678 742 -684
		mu 0 3 796 798 799
		f 3 -743 678 685
		mu 0 3 799 798 800
		f 3 680 743 -687
		mu 0 3 805 806 807
		f 3 -744 687 -689
		mu 0 3 807 806 808
		f 3 682 744 -688
		mu 0 3 782 781 783
		f 3 -745 689 -691
		mu 0 3 783 781 784
		f 3 -685 745 -690
		mu 0 3 809 810 811
		f 3 -746 691 692
		mu 0 3 811 810 812
		f 3 686 746 -686
		mu 0 3 800 801 799
		f 3 -747 693 -692
		mu 0 3 799 801 802
		f 3 -760 1653 -751
		mu 0 3 542 550 557
		f 3 -1654 761 -765
		mu 0 3 557 550 566
		f 3 -766 1654 -752
		mu 0 3 562 556 564
		f 3 -1655 767 -771
		mu 0 3 564 556 548
		f 3 -755 1655 753
		mu 0 3 516 532 524
		f 3 -1656 756 -756
		mu 0 3 524 532 541
		f 3 -748 1656 -757
		mu 0 3 532 542 541
		f 3 -1657 750 757
		mu 0 3 541 542 557
		f 3 -761 1657 -705
		mu 0 3 551 565 550
		f 3 -1658 762 -762
		mu 0 3 550 565 566
		f 3 -749 1658 -763
		mu 0 3 565 562 566
		f 3 -1659 751 763
		mu 0 3 566 562 564
		f 3 -605 1659 -768
		mu 0 3 556 530 548
		f 3 -1660 607 768
		mu 0 3 548 530 540
		f 3 752 1660 766
		mu 0 3 533 549 540
		f 3 -1661 769 -769
		mu 0 3 540 549 548
		f 3 784 1661 771
		mu 0 3 813 814 815
		f 3 -1662 -778 -784
		mu 0 3 815 814 816
		f 3 785 1662 772
		mu 0 3 828 829 830
		f 3 -1663 -779 -785
		mu 0 3 830 829 832
		f 3 773 1663 -786
		mu 0 3 828 831 829
		f 3 -1664 786 -780
		mu 0 3 829 831 835
		f 3 774 1664 -787
		mu 0 3 850 851 852
		f 3 -1665 787 -781
		mu 0 3 852 851 854
		f 3 775 1665 -788
		mu 0 3 865 866 867
		f 3 -1666 788 -782
		mu 0 3 867 866 869
		f 3 783 1666 776
		mu 0 3 873 871 866
		f 3 -1667 -783 -789
		mu 0 3 866 871 869
		f 3 833 834 -836
		mu 0 3 884 885 886
		f 3 837 838 -835
		mu 0 3 825 826 827
		f 3 840 841 -839
		mu 0 3 887 888 889
		f 3 843 844 -842
		mu 0 3 847 848 849
		f 3 846 847 -845
		mu 0 3 862 863 864
		f 3 848 835 -848
		mu 0 3 883 884 886
		f 3 789 1667 -772
		mu 0 3 815 817 813
		f 3 -1668 -758 -791
		mu 0 3 813 817 819
		f 3 790 1668 -773
		mu 0 3 830 833 828
		f 3 -1669 764 -792
		mu 0 3 828 833 837
		f 3 -774 1669 -793
		mu 0 3 831 828 834
		f 3 -1670 791 -764
		mu 0 3 834 828 837
		f 3 -775 1670 -794
		mu 0 3 851 850 853
		f 3 -1671 792 770
		mu 0 3 853 850 855
		f 3 793 1671 -776
		mu 0 3 865 868 866
		f 3 -1672 -770 -795
		mu 0 3 866 868 870
		f 3 794 1672 -777
		mu 0 3 866 870 873
		f 3 -1673 758 -790
		mu 0 3 873 870 875
		f 3 777 1673 -796
		mu 0 3 816 814 818
		f 3 -1674 796 -798
		mu 0 3 818 814 820
		f 3 778 1674 -797
		mu 0 3 832 829 836
		f 3 -1675 798 -800
		mu 0 3 836 829 838
		f 3 779 1675 -799
		mu 0 3 829 835 838
		f 3 -1676 800 -802
		mu 0 3 838 835 839
		f 3 780 1676 -801
		mu 0 3 852 854 856
		f 3 -1677 802 -804
		mu 0 3 856 854 857
		f 3 781 1677 -803
		mu 0 3 867 869 872
		f 3 -1678 804 -806
		mu 0 3 872 869 874
		f 3 782 1678 -805
		mu 0 3 869 871 874
		f 3 -1679 795 -807
		mu 0 3 874 871 876
		f 3 797 1679 -808
		mu 0 3 818 820 821
		f 3 -1680 808 -810
		mu 0 3 821 820 822
		f 3 799 1680 -809
		mu 0 3 836 838 840
		f 3 -1681 810 -812
		mu 0 3 840 838 841
		f 3 801 1681 -811
		mu 0 3 838 839 841
		f 3 -1682 812 -814
		mu 0 3 841 839 842
		f 3 803 1682 -813
		mu 0 3 856 857 858
		f 3 -1683 814 -816
		mu 0 3 858 857 859
		f 3 805 1683 -815
		mu 0 3 872 874 877
		f 3 -1684 816 -818
		mu 0 3 877 874 878
		f 3 806 1684 -817
		mu 0 3 874 876 878
		f 3 -1685 807 -819
		mu 0 3 878 876 879
		f 3 809 1685 -820
		mu 0 3 821 822 823
		f 3 -1686 820 -822
		mu 0 3 823 822 824
		f 3 811 1686 -821
		mu 0 3 840 841 843
		f 3 -1687 822 -824
		mu 0 3 843 841 844
		f 3 813 1687 -823
		mu 0 3 841 842 844
		f 3 -1688 824 -826
		mu 0 3 844 842 845
		f 3 815 1688 -825
		mu 0 3 858 859 860
		f 3 -1689 826 -828
		mu 0 3 860 859 861
		f 3 817 1689 -827
		mu 0 3 877 878 880
		f 3 -1690 828 -830
		mu 0 3 880 878 881
		f 3 818 1690 -829
		mu 0 3 878 879 881
		f 3 -1691 819 -831
		mu 0 3 881 879 882
		f 3 832 1691 821
		mu 0 3 824 825 823
		f 3 -1692 -834 -832
		mu 0 3 882 885 884
		f 3 836 1692 823
		mu 0 3 844 846 843
		f 3 -1693 -838 -833
		mu 0 3 824 826 825
		f 3 839 1693 825
		mu 0 3 845 847 844
		f 3 -1694 -841 -837
		mu 0 3 844 847 846
		f 3 842 1694 827
		mu 0 3 861 862 860
		f 3 -1695 -844 -840
		mu 0 3 845 848 847
		f 3 845 1695 829
		mu 0 3 881 883 880
		f 3 -1696 -847 -843
		mu 0 3 861 863 862
		f 3 831 1696 830
		mu 0 3 882 884 881
		f 3 -1697 -849 -846
		mu 0 3 881 884 883
		f 3 -852 1697 -869
		mu 0 3 482 490 487
		f 3 -1698 -863 865
		mu 0 3 487 490 495
		f 3 -853 1698 -872
		mu 0 3 485 488 483
		f 3 -1699 850 870
		mu 0 3 483 488 492
		f 3 854 1699 -859
		mu 0 3 719 711 718
		f 3 -1700 -856 859
		mu 0 3 718 711 715
		f 3 851 1700 -850
		mu 0 3 490 482 494
		f 3 -1701 860 -860
		mu 0 3 494 482 498
		f 3 -858 1701 856
		mu 0 3 479 475 482
		f 3 -1702 861 -861
		mu 0 3 728 727 718
		f 3 698 1702 -583
		mu 0 3 500 491 495
		f 3 -1703 866 -866
		mu 0 3 495 491 487
		f 3 852 1703 863
		mu 0 3 488 485 491
		f 3 -1704 867 -867
		mu 0 3 491 485 487
		f 3 -857 1704 864
		mu 0 3 479 482 485
		f 3 -1705 868 -868
		mu 0 3 485 482 487
		f 3 584 1705 869
		mu 0 3 722 725 726
		f 3 -1706 523 -871
		mu 0 3 585 579 581
		f 3 871 1706 -865
		mu 0 3 485 483 479
		f 3 -873 1707 -1707
		mu 0 3 483 477 479
		f 3 857 -1708 -522
		mu 0 3 475 479 477
		f 3 525 955 872
		mu 0 3 483 480 477
		f 3 -956 877 -877
		mu 0 3 477 480 476
		f 3 873 956 -878
		mu 0 3 480 481 476
		f 3 -957 -875 878
		mu 0 3 476 481 478
		f 3 -876 957 -523
		mu 0 3 602 607 605
		f 3 -958 879 -879
		mu 0 3 478 474 476
		f 3 531 958 874
		mu 0 3 481 484 478
		f 3 -959 884 -884
		mu 0 3 478 484 486
		f 3 880 959 -885
		mu 0 3 484 489 486
		f 3 -960 -882 885
		mu 0 3 486 489 493
		f 3 -883 960 -533
		mu 0 3 505 510 493
		f 3 -961 886 -886
		mu 0 3 606 601 603
		f 3 538 961 881
		mu 0 3 489 497 493
		f 3 -962 891 -891
		mu 0 3 493 497 502
		f 3 -889 962 887
		mu 0 3 508 504 497
		f 3 -963 892 -892
		mu 0 3 497 504 502
		f 3 -890 963 -540
		mu 0 3 513 509 504
		f 3 -964 893 -893
		mu 0 3 504 509 502
		f 3 545 964 888
		mu 0 3 508 512 504
		f 3 -965 898 -898
		mu 0 3 504 512 517
		f 3 894 965 -899
		mu 0 3 512 521 517
		f 3 -966 -896 899
		mu 0 3 517 521 527
		f 3 -547 966 -900
		mu 0 3 527 528 517
		f 3 -967 -897 900
		mu 0 3 517 528 518
		f 3 895 967 -905
		mu 0 3 527 521 536
		f 3 -968 552 905
		mu 0 3 536 521 544
		f 3 901 968 -906
		mu 0 3 544 552 536
		f 3 -969 -903 906
		mu 0 3 536 552 553
		f 3 -904 969 -554
		mu 0 3 560 545 553
		f 3 -970 907 -907
		mu 0 3 553 545 536
		f 3 559 970 902
		mu 0 3 552 567 553
		f 3 -971 912 -912
		mu 0 3 553 567 570
		f 3 -910 971 908
		mu 0 3 662 669 665
		f 3 -972 913 -913
		mu 0 3 567 571 570
		f 3 -911 972 -561
		mu 0 3 572 568 571
		f 3 -973 914 -914
		mu 0 3 571 568 570
		f 3 566 973 909
		mu 0 3 575 574 571
		f 3 -974 918 -918
		mu 0 3 571 574 573
		f 3 -917 974 915
		mu 0 3 890 891 892
		f 3 -975 919 -919
		mu 0 3 893 894 895
		f 3 1309 -1351 978
		mu 0 3 896 897 898
		f 3 -1307 -976 1350
		mu 0 3 897 899 898
		f 3 981 -1352 1303
		mu 0 3 583 578 582
		f 3 529 -1353 1351
		mu 0 3 578 579 582
		f 3 977 979 1352
		mu 0 3 579 586 582
		f 3 -1306 -1354 -981
		mu 0 3 611 609 604
		f 3 1353 -1355 -529
		mu 0 3 604 609 608
		f 3 1354 -979 -1285
		mu 0 3 608 609 612
		f 3 1316 -1356 982
		mu 0 3 614 615 611
		f 3 -1314 -977 1355
		mu 0 3 615 613 611
		f 3 -982 -1357 -534
		mu 0 3 578 583 580
		f 3 983 -1358 1356
		mu 0 3 583 587 580
		f 3 1357 1310 985
		mu 0 3 580 587 592
		f 3 -987 -1359 535
		mu 0 3 619 617 604
		f 3 -1313 -1360 1358
		mu 0 3 617 614 604
		f 3 1359 -983 980
		mu 0 3 604 614 611
		f 3 1323 -1361 987
		mu 0 3 621 620 617
		f 3 -1321 -985 1360
		mu 0 3 620 618 617
		f 3 988 -1362 -986
		mu 0 3 592 597 580
		f 3 1361 -1363 -541
		mu 0 3 580 597 598
		f 3 1362 1317 990
		mu 0 3 598 597 600
		f 3 986 -1364 -988
		mu 0 3 617 619 621
		f 3 542 -1365 1363
		mu 0 3 619 623 621
		f 3 1364 -992 -1320
		mu 0 3 621 623 625
		f 3 992 -1366 -990
		mu 0 3 637 635 639
		f 3 1330 -1328 1365
		mu 0 3 904 905 906
		f 3 -548 -1367 995
		mu 0 3 915 912 910
		f 3 1366 -1368 1324
		mu 0 3 910 912 908
		f 3 993 1367 -991
		mu 0 3 927 928 929
		f 3 991 -1369 -993
		mu 0 3 637 632 635
		f 3 549 -1370 1368
		mu 0 3 632 633 635
		f 3 1369 -997 -1327
		mu 0 3 635 633 636
		f 3 997 -1371 -995
		mu 0 3 636 638 641
		f 3 1337 -1335 1370
		mu 0 3 638 643 641
		f 3 998 -1372 -996
		mu 0 3 910 917 915
		f 3 -555 -1373 1000
		mu 0 3 924 915 920
		f 3 1371 1331 1372
		mu 0 3 915 917 920
		f 3 996 -1374 -998
		mu 0 3 636 633 638
		f 3 556 -1375 1373
		mu 0 3 633 640 638
		f 3 1374 -1002 -1334
		mu 0 3 638 640 642
		f 3 1002 -1376 -1000
		mu 0 3 642 644 645
		f 3 1344 -1342 1375
		mu 0 3 644 649 645
		f 3 1003 -1377 -1001
		mu 0 3 673 671 663
		f 3 -562 -1378 1005
		mu 0 3 661 663 666
		f 3 1376 1338 1377
		mu 0 3 663 671 666
		f 3 -1007 -1379 563
		mu 0 3 648 646 640
		f 3 -1341 -1380 1378
		mu 0 3 646 644 640
		f 3 1379 -1003 1001
		mu 0 3 640 644 642
		f 3 1349 -1381 1007
		mu 0 3 651 650 646
		f 3 -1348 -1005 1380
		mu 0 3 650 647 646
		f 3 -568 -1382 1009
		mu 0 3 667 661 672
		f 3 -1006 -1383 1381
		mu 0 3 661 666 672
		f 3 1008 1345 1382
		mu 0 3 666 675 672
		f 3 -1010 -1384 568
		mu 0 3 656 653 648
		f 3 -1347 -1385 1383
		mu 0 3 653 651 648
		f 3 1384 -1008 1006
		mu 0 3 648 651 646
		f 3 570 -1022 -1011
		mu 0 3 679 681 683
		f 3 1030 -1126 -1033
		mu 0 3 930 931 932
		f 3 -203 -1032 1125
		mu 0 3 699 697 698
		f 3 1031 -1127 -1034
		mu 0 3 698 697 695
		f 3 110 -599 1126
		mu 0 3 697 696 695
		f 3 1015 -1128 -1014
		mu 0 3 962 966 955
		f 3 574 -1030 1127
		mu 0 3 966 963 955
		f 3 -1042 1016 1040
		mu 0 3 964 958 961
		f 3 -1041 -1021 1042
		mu 0 3 964 961 967
		f 3 -1044 1017 1054
		mu 0 3 965 962 958
		f 3 -1045 1019 1043
		mu 0 3 965 968 962
		f 3 1291 1708 1284
		mu 0 3 720 716 723
		f 3 -1709 -1289 -1282
		mu 0 3 723 716 719
		f 3 -1023 1709 1299
		mu 0 3 722 710 717
		f 3 1128 1710 1020
		mu 0 3 704 707 710
		f 3 1293 1711 -1711
		mu 0 3 707 714 710
		f 3 -1712 1280 -1710
		mu 0 3 710 714 717
		f 3 1021 -1130 -1020
		mu 0 3 968 969 962
		f 3 583 -1016 1129
		mu 0 3 969 966 962
		f 3 -1046 -1012 1046
		mu 0 3 686 690 679
		f 3 -1047 1010 -1058
		mu 0 3 686 679 683
		f 3 -572 1011 1022
		mu 0 3 688 679 690
		f 3 1026 -1131 1012
		mu 0 3 950 954 958
		f 3 -1015 -1017 1130
		mu 0 3 954 961 958
		f 3 1027 -1132 1013
		mu 0 3 955 950 962
		f 3 -1013 -1018 1131
		mu 0 3 950 958 962
		f 3 1028 -1133 1014
		mu 0 3 702 703 704
		f 3 1132 1712 -1019
		mu 0 3 704 703 705
		f 3 -1713 1713 -1293
		mu 0 3 705 703 706
		f 3 -1714 1714 -1280
		mu 0 3 706 703 708
		f 3 -576 -1286 -1715
		mu 0 3 703 711 708
		f 3 589 -1134 1029
		mu 0 3 963 959 955
		f 3 -1037 -1025 1133
		mu 0 3 959 951 955
		f 3 -1185 1715 -1036
		mu 0 3 944 939 932
		f 3 -1178 1716 -1716
		mu 0 3 939 936 932
		f 3 1032 1717 -1135
		mu 0 3 930 932 934
		f 3 -1717 -1190 -1718
		mu 0 3 932 936 934
		f 3 1188 1718 1182
		mu 0 3 953 943 949
		f 3 -1719 -1186 -1180
		mu 0 3 949 943 946
		f 3 1033 -1136 1035
		mu 0 3 698 695 700
		f 3 -604 -1040 1135
		mu 0 3 695 701 700
		f 3 1037 1719 1023
		mu 0 3 948 957 950
		f 3 1196 1720 -1720
		mu 0 3 957 949 950
		f 3 -1137 1721 1183
		mu 0 3 944 950 946
		f 3 1179 -1722 -1721
		mu 0 3 949 946 950
		f 3 -1026 -1027 1136
		mu 0 3 944 954 950
		f 3 1038 -1138 1024
		mu 0 3 951 948 955
		f 3 -1024 -1028 1137
		mu 0 3 948 950 955
		f 3 1039 -1139 1025
		mu 0 3 700 701 702
		f 3 -591 -1029 1138
		mu 0 3 701 703 702
		f 3 1065 -1140 -1061
		mu 0 3 970 971 972
		f 3 1064 -1063 1139
		mu 0 3 971 974 972
		f 3 -1069 -1141 -1071
		mu 0 3 984 985 986
		f 3 1073 1072 1140
		mu 0 3 985 987 986
		f 3 1078 -1142 -1073
		mu 0 3 988 989 990
		f 3 1077 -1076 1141
		mu 0 3 989 992 990
		f 3 1123 -1143 -1119
		mu 0 3 1000 1001 1002
		f 3 1122 -1121 1142
		mu 0 3 1001 1003 1002
		f 3 1050 -1144 1049
		mu 0 3 1004 1005 1006
		f 3 1047 1048 1143
		mu 0 3 1005 1008 1006
		f 3 -1048 -1145 -1053
		mu 0 3 1008 1005 1011
		f 3 1051 1053 1144
		mu 0 3 1005 1010 1011
		f 3 1084 -1146 1068
		mu 0 3 979 974 977
		f 3 -1065 -1084 1145
		mu 0 3 974 971 977
		f 3 1099 -1147 -1098
		mu 0 3 994 996 995
		f 3 1089 -1099 1146
		mu 0 3 996 997 995
		f 3 1055 -1125 -1051
		mu 0 3 1004 1007 1005
		f 3 1056 -1052 1124
		mu 0 3 1007 1010 1005
		f 3 1059 -1148 -1054
		mu 0 3 1010 1014 1011
		f 3 1062 -1062 1147
		mu 0 3 1014 1015 1011
		f 3 1044 -1149 -1059
		mu 0 3 976 973 970
		f 3 1063 -1066 1148
		mu 0 3 973 971 970
		f 3 -1049 -1150 -1070
		mu 0 3 1006 1008 1012
		f 3 1067 1070 1149
		mu 0 3 1008 1016 1012
		f 3 1071 -1151 1041
		mu 0 3 1030 1026 1028
		f 3 -1074 -1067 1150
		mu 0 3 1026 1027 1028
		f 3 -1050 -1152 -1075
		mu 0 3 1004 1006 1009
		f 3 1069 1075 1151
		mu 0 3 1006 1012 1009
		f 3 1076 -1153 -1043
		mu 0 3 993 989 991
		f 3 -1079 -1072 1152
		mu 0 3 989 988 991
		f 3 -1057 -1154 -1060
		mu 0 3 1010 1007 1014
		f 3 1080 1081 1153
		mu 0 3 1007 1013 1014
		f 3 1058 -1155 1057
		mu 0 3 683 691 686
		f 3 -1083 -1080 1154
		mu 0 3 691 693 686
		f 3 -1055 -1156 -1064
		mu 0 3 1031 1028 1029
		f 3 1066 1083 1155
		mu 0 3 1028 1027 1029
		f 3 1061 -1157 1052
		mu 0 3 1011 1015 1008
		f 3 -1085 -1068 1156
		mu 0 3 1015 1016 1008
		f 3 1074 -1158 -1056
		mu 0 3 1004 1009 1007
		f 3 1085 -1081 1157
		mu 0 3 1009 1013 1007
		f 3 1045 -1159 -1077
		mu 0 3 690 686 692
		f 3 1079 -1087 1158
		mu 0 3 686 693 692
		f 3 -1082 -1160 -1091
		mu 0 3 1014 1013 1019
		f 3 1088 1091 1159
		mu 0 3 1013 1018 1019
		f 3 1060 -1161 -1093
		mu 0 3 970 972 975
		f 3 1090 -1094 1160
		mu 0 3 972 978 975
		f 3 1092 -1162 1082
		mu 0 3 1032 1033 1034
		f 3 -1095 -1088 1161
		mu 0 3 1033 1035 1034
		f 3 1095 -1163 -1078
		mu 0 3 989 994 992
		f 3 1097 -1097 1162
		mu 0 3 994 995 992
		f 3 1096 -1164 -1086
		mu 0 3 1009 1017 1013
		f 3 1098 -1089 1163
		mu 0 3 1017 1018 1013
		f 3 1086 -1165 -1096
		mu 0 3 1039 1034 1037
		f 3 1087 -1100 1164
		mu 0 3 1034 1035 1037
		f 3 1100 -1166 -1090
		mu 0 3 996 998 997
		f 3 1102 -1102 1165
		mu 0 3 998 999 997
		f 3 -1092 -1167 -1104
		mu 0 3 1019 1018 1020
		f 3 1101 1104 1166
		mu 0 3 1018 1021 1020
		f 3 1103 -1168 1093
		mu 0 3 978 980 975
		f 3 -1107 -1106 1167
		mu 0 3 980 981 975
		f 3 1105 -1169 1094
		mu 0 3 1033 1036 1035
		f 3 -1108 -1101 1168
		mu 0 3 1036 1038 1035
		f 3 1108 -1170 -1103
		mu 0 3 1044 1045 1046
		f 3 1110 -1110 1169
		mu 0 3 1045 1047 1046
		f 3 -1105 -1171 -1112
		mu 0 3 1020 1021 1022
		f 3 1109 1112 1170
		mu 0 3 1021 1023 1022
		f 3 1111 -1172 1106
		mu 0 3 980 982 981
		f 3 -1115 -1114 1171
		mu 0 3 982 983 981
		f 3 1113 -1173 1107
		mu 0 3 1036 1040 1038
		f 3 -1116 -1109 1172
		mu 0 3 1040 1041 1038
		f 3 1116 -1174 -1111
		mu 0 3 1045 1048 1047
		f 3 1118 -1118 1173
		mu 0 3 1048 1049 1047
		f 3 1117 -1175 -1113
		mu 0 3 1023 1024 1022
		f 3 1120 -1120 1174
		mu 0 3 1024 1025 1022
		f 3 1119 -1176 1114
		mu 0 3 1050 1051 1052
		f 3 -1123 -1122 1175
		mu 0 3 1051 1053 1052
		f 3 1115 -1177 -1117
		mu 0 3 1041 1040 1042;
	setAttr ".fc[1000:1249]"
		f 3 1121 -1124 1176
		mu 0 3 1040 1043 1042
		f 3 -1192 1722 1194
		mu 0 3 941 934 940
		f 3 -1723 1189 1180
		mu 0 3 940 934 936
		f 3 -1198 1723 1200
		mu 0 3 952 945 947
		f 3 -1724 1195 1181
		mu 0 3 947 945 942
		f 3 -1187 1724 1185
		mu 0 3 943 939 946
		f 3 -1725 1184 -1184
		mu 0 3 946 939 944
		f 3 1186 1725 1177
		mu 0 3 939 943 936
		f 3 -1726 -1188 -1181
		mu 0 3 936 943 940
		f 3 -1193 1726 1191
		mu 0 3 941 937 934
		f 3 -1727 1190 1134
		mu 0 3 934 937 930
		f 3 1192 1727 1178
		mu 0 3 937 941 942
		f 3 -1728 -1194 -1182
		mu 0 3 942 941 947
		f 3 1197 1728 1034
		mu 0 3 945 952 948
		f 3 -1729 -1199 -1038
		mu 0 3 948 952 957
		f 3 -1200 1729 1198
		mu 0 3 952 953 957
		f 3 -1730 -1183 -1197
		mu 0 3 957 953 949
		f 3 1207 1730 1213
		mu 0 3 1054 1055 1056
		f 3 -1731 -1215 -1202
		mu 0 3 1056 1055 1058
		f 3 1208 1731 1214
		mu 0 3 1069 1070 1071
		f 3 -1732 -1216 -1203
		mu 0 3 1071 1070 1073
		f 3 1215 1732 -1204
		mu 0 3 1073 1070 1075
		f 3 -1733 1209 -1217
		mu 0 3 1075 1070 1078
		f 3 1216 1733 -1205
		mu 0 3 1091 1092 1093
		f 3 -1734 1210 -1218
		mu 0 3 1093 1092 1094
		f 3 1217 1734 -1206
		mu 0 3 1106 1107 1108
		f 3 -1735 1211 -1219
		mu 0 3 1108 1107 1109
		f 3 1212 1735 1218
		mu 0 3 1109 1112 1108
		f 3 -1736 -1214 -1207
		mu 0 3 1108 1112 1115
		f 3 1265 -1265 -1264
		mu 0 3 1125 1126 1127
		f 3 1264 -1269 -1268
		mu 0 3 1066 1068 1067
		f 3 1268 -1272 -1271
		mu 0 3 1128 1129 1130
		f 3 1271 -1275 -1274
		mu 0 3 1087 1090 1089
		f 3 1274 -1278 -1277
		mu 0 3 1103 1105 1104
		f 3 1277 -1266 -1279
		mu 0 3 1123 1126 1125
		f 3 1187 1736 1220
		mu 0 3 1062 1060 1058
		f 3 -1737 -1220 1201
		mu 0 3 1058 1060 1056
		f 3 -1195 1737 1221
		mu 0 3 1080 1076 1073
		f 3 -1738 -1221 1202
		mu 0 3 1073 1076 1071
		f 3 1222 1738 1203
		mu 0 3 1075 1079 1073
		f 3 -1739 1193 -1222
		mu 0 3 1073 1079 1080
		f 3 1223 1739 1204
		mu 0 3 1093 1095 1091
		f 3 -1740 -1201 -1223
		mu 0 3 1091 1095 1097
		f 3 1199 1740 1224
		mu 0 3 1113 1110 1108
		f 3 -1741 -1224 1205
		mu 0 3 1108 1110 1106
		f 3 -1189 1741 1219
		mu 0 3 1118 1113 1115
		f 3 -1742 -1225 1206
		mu 0 3 1115 1113 1108
		f 3 1225 1742 -1208
		mu 0 3 1054 1057 1055
		f 3 -1743 1227 -1227
		mu 0 3 1055 1057 1059
		f 3 1226 1743 -1209
		mu 0 3 1069 1072 1070
		f 3 -1744 1229 -1229
		mu 0 3 1070 1072 1074
		f 3 1228 1744 -1210
		mu 0 3 1070 1074 1078
		f 3 -1745 1231 -1231
		mu 0 3 1078 1074 1082
		f 3 1230 1745 -1211
		mu 0 3 1092 1096 1094
		f 3 -1746 1233 -1233
		mu 0 3 1094 1096 1098
		f 3 1232 1746 -1212
		mu 0 3 1107 1111 1109
		f 3 -1747 1235 -1235
		mu 0 3 1109 1111 1114
		f 3 1234 1747 -1213
		mu 0 3 1109 1114 1112
		f 3 -1748 1236 -1226
		mu 0 3 1112 1114 1117
		f 3 1237 1748 -1228
		mu 0 3 1057 1061 1059
		f 3 -1749 1239 -1239
		mu 0 3 1059 1061 1063
		f 3 1238 1749 -1230
		mu 0 3 1072 1077 1074
		f 3 -1750 1241 -1241
		mu 0 3 1074 1077 1081
		f 3 1240 1750 -1232
		mu 0 3 1074 1081 1082
		f 3 -1751 1243 -1243
		mu 0 3 1082 1081 1085
		f 3 1242 1751 -1234
		mu 0 3 1096 1099 1098
		f 3 -1752 1245 -1245
		mu 0 3 1098 1099 1100
		f 3 1244 1752 -1236
		mu 0 3 1111 1116 1114
		f 3 -1753 1247 -1247
		mu 0 3 1114 1116 1119
		f 3 1246 1753 -1237
		mu 0 3 1114 1119 1117
		f 3 -1754 1248 -1238
		mu 0 3 1117 1119 1121
		f 3 1249 1754 -1240
		mu 0 3 1061 1064 1063
		f 3 -1755 1251 -1251
		mu 0 3 1063 1064 1065
		f 3 1250 1755 -1242
		mu 0 3 1077 1083 1081
		f 3 -1756 1253 -1253
		mu 0 3 1081 1083 1084
		f 3 1252 1756 -1244
		mu 0 3 1081 1084 1085
		f 3 -1757 1255 -1255
		mu 0 3 1085 1084 1088
		f 3 1254 1757 -1246
		mu 0 3 1099 1101 1100
		f 3 -1758 1257 -1257
		mu 0 3 1100 1101 1102
		f 3 1256 1758 -1248
		mu 0 3 1116 1120 1119
		f 3 -1759 1259 -1259
		mu 0 3 1119 1120 1122
		f 3 1258 1759 -1249
		mu 0 3 1119 1122 1121
		f 3 -1760 1260 -1250
		mu 0 3 1121 1122 1124
		f 3 1263 1760 1261
		mu 0 3 1125 1127 1124
		f 3 -1761 -1263 -1252
		mu 0 3 1064 1066 1065
		f 3 1267 1761 1262
		mu 0 3 1066 1067 1065
		f 3 -1762 -1267 -1254
		mu 0 3 1083 1086 1084
		f 3 1270 1762 1266
		mu 0 3 1086 1087 1084
		f 3 -1763 -1270 -1256
		mu 0 3 1084 1087 1088
		f 3 1273 1763 1269
		mu 0 3 1087 1089 1088
		f 3 -1764 -1273 -1258
		mu 0 3 1101 1103 1102
		f 3 1276 1764 1272
		mu 0 3 1103 1104 1102
		f 3 -1765 -1276 -1260
		mu 0 3 1120 1123 1122
		f 3 1278 1765 1275
		mu 0 3 1123 1125 1122
		f 3 -1766 -1262 -1261
		mu 0 3 1122 1125 1124
		f 3 1298 1766 1282
		mu 0 3 712 709 706
		f 3 -1767 -1296 1292
		mu 0 3 706 709 705
		f 3 1301 1767 1283
		mu 0 3 1131 1132 1133
		f 3 -1768 -1301 -1281
		mu 0 3 594 586 589
		f 3 1288 1768 -855
		mu 0 3 719 716 711
		f 3 -1769 -1290 1285
		mu 0 3 711 716 708
		f 3 -1291 1769 1289
		mu 0 3 716 712 708
		f 3 -1770 -1283 1279
		mu 0 3 708 712 706
		f 3 -1292 1770 1290
		mu 0 3 716 720 712
		f 3 -1771 1287 -1287
		mu 0 3 902 898 900
		f 3 -1297 1771 1295
		mu 0 3 709 707 705
		f 3 -1772 -1129 1018
		mu 0 3 705 707 704
		f 3 -1298 1772 1296
		mu 0 3 709 713 707
		f 3 -1773 -1284 -1294
		mu 0 3 707 713 714
		f 3 -1299 1773 1297
		mu 0 3 709 712 713
		f 3 -1774 1286 -1295
		mu 0 3 713 712 721
		f 3 -978 1774 1300
		mu 0 3 586 579 589
		f 3 -1775 -585 -1300
		mu 0 3 717 725 722
		f 3 1294 1775 -1302
		mu 0 3 713 721 724
		f 3 -1776 1776 1302
		mu 0 3 901 900 899
		f 3 975 -1777 -1288
		mu 0 3 898 899 900
		f 3 -1303 -1386 -980
		mu 0 3 901 899 903
		f 3 1306 -1308 1385
		mu 0 3 595 590 582
		f 3 1307 -1387 -1304
		mu 0 3 582 590 583
		f 3 -1309 1304 1386
		mu 0 3 590 591 583
		f 3 976 -1388 1305
		mu 0 3 611 613 609
		f 3 1308 -1310 1387
		mu 0 3 613 616 609
		f 3 -1305 -1389 -984
		mu 0 3 583 591 587
		f 3 1313 -1315 1388
		mu 0 3 591 596 587
		f 3 1314 -1390 -1311
		mu 0 3 587 596 592
		f 3 -1316 1311 1389
		mu 0 3 925 918 921
		f 3 984 -1391 1312
		mu 0 3 617 618 614
		f 3 1315 -1317 1390
		mu 0 3 618 615 614
		f 3 -1312 -1392 -989
		mu 0 3 921 918 913
		f 3 1320 -1322 1391
		mu 0 3 918 916 913
		f 3 -1318 -1393 1318
		mu 0 3 911 913 906
		f 3 1321 -1323 1392
		mu 0 3 913 916 906
		f 3 989 -1394 1319
		mu 0 3 922 906 919
		f 3 1322 -1324 1393
		mu 0 3 906 916 919
		f 3 -1319 -1395 -994
		mu 0 3 911 906 908
		f 3 1327 -1329 1394
		mu 0 3 906 905 908
		f 3 1328 -1396 -1325
		mu 0 3 908 905 910
		f 3 -1330 1325 1395
		mu 0 3 905 909 910
		f 3 1329 -1397 994
		mu 0 3 909 905 907
		f 3 -1331 1326 1396
		mu 0 3 905 904 907
		f 3 1334 -1398 -1326
		mu 0 3 909 914 910
		f 3 -1336 -999 1397
		mu 0 3 914 917 910
		f 3 1335 -1399 -1332
		mu 0 3 917 914 920
		f 3 -1337 1332 1398
		mu 0 3 914 923 920
		f 3 999 -1400 1333
		mu 0 3 642 645 638
		f 3 1336 -1338 1399
		mu 0 3 645 643 638
		f 3 -1333 -1401 -1004
		mu 0 3 920 923 926
		f 3 1341 -1343 1400
		mu 0 3 677 676 671
		f 3 -1339 -1402 1339
		mu 0 3 666 671 674
		f 3 1342 -1344 1401
		mu 0 3 671 676 674
		f 3 1004 -1403 1340
		mu 0 3 646 647 644
		f 3 1343 -1345 1402
		mu 0 3 647 649 644
		f 3 -1340 -1404 -1009
		mu 0 3 666 674 675
		f 3 1347 -1349 1403
		mu 0 3 674 678 675
		f 3 -1346 -1405 1346
		mu 0 3 1134 1135 1136
		f 3 1348 -1350 1404
		mu 0 3 1137 1138 1139
		f 3 -1408 1777 1405
		mu 0 3 335 333 330
		f 3 -1778 -238 203
		mu 0 3 330 333 331
		f 3 1406 -250 1407
		mu 0 3 9 0 4
		f 3 252 -252 -1407
		mu 0 3 364 356 359
		f 3 -1413 1408 1409
		mu 0 3 935 933 930
		f 3 -1406 -1031 -1409
		mu 0 3 933 931 930
		f 3 -1191 1778 -1410
		mu 0 3 930 937 935
		f 3 -1179 1779 -1779
		mu 0 3 937 942 935
		f 3 -1411 1780 -1035
		mu 0 3 948 935 945
		f 3 -1781 -1780 -1196
		mu 0 3 945 935 942
		f 3 -1039 -1414 1410
		mu 0 3 948 951 935
		f 3 1414 -253 1412
		mu 0 3 935 938 933
		f 3 488 1781 -455
		mu 0 3 465 468 467
		f 3 -1782 1415 -1420
		mu 0 3 467 468 469
		f 3 -1416 501 1416
		mu 0 3 18 13 20
		f 3 -1417 503 -1430
		mu 0 3 368 367 362
		f 3 -1421 -1419 1417
		mu 0 3 547 551 558
		f 3 1418 599 1419
		mu 0 3 558 551 543
		f 3 1420 1782 760
		mu 0 3 551 547 565
		f 3 -1783 1783 748
		mu 0 3 565 547 562
		f 3 604 1784 1421
		mu 0 3 530 556 547
		f 3 -1785 765 -1784
		mu 0 3 547 556 562
		f 3 -1422 1422 608
		mu 0 3 530 547 539
		f 3 -607 -1425 1423
		mu 0 3 546 539 555
		f 3 1424 -1423 -1427
		mu 0 3 555 539 547
		f 3 -1424 1425 1036
		mu 0 3 959 956 951
		f 3 1426 -1429 1427
		mu 0 3 555 547 563
		f 3 1432 507 1428
		mu 0 3 1140 1141 1142
		f 3 -1428 1430 -1432
		mu 0 3 956 960 935
		f 3 1431 1413 -1426
		mu 0 3 956 935 951
		f 3 -1415 -1431 1411
		mu 0 3 1143 1144 1145
		f 3 -1433 -1418 1429
		mu 0 3 569 547 558
		f 4 1785 1790 -1787 -1790
		mu 0 4 1146 1147 1148 1149
		f 4 1839 1841 -1844 -1845
		mu 0 4 1150 1151 1152 1153
		f 4 1787 1794 -1789 -1794
		mu 0 4 1154 1155 1156 1157
		f 4 1788 1796 -1786 -1796
		mu 0 4 1157 1156 1158 1159
		f 4 -1797 -1795 -1793 -1791
		mu 0 4 1147 1160 1161 1148
		f 4 1795 1789 1791 1793
		mu 0 4 1162 1146 1149 1163
		f 4 1786 1798 -1800 -1798
		mu 0 4 1149 1148 1164 1165
		f 4 1792 1800 -1802 -1799
		mu 0 4 1148 1155 1166 1164
		f 4 -1788 1802 1803 -1801
		mu 0 4 1155 1154 1167 1166
		f 4 -1792 1797 1804 -1803
		mu 0 4 1154 1149 1165 1167
		f 4 1799 1806 -1808 -1806
		mu 0 4 1165 1164 1168 1169
		f 4 1801 1808 -1810 -1807
		mu 0 4 1164 1166 1170 1168
		f 4 -1804 1810 1811 -1809
		mu 0 4 1166 1167 1171 1170
		f 4 -1805 1805 1812 -1811
		mu 0 4 1167 1165 1169 1171
		f 4 1807 1814 -1816 -1814
		mu 0 4 1169 1168 1172 1173
		f 4 1809 1816 -1818 -1815
		mu 0 4 1168 1170 1174 1172
		f 4 -1812 1818 1819 -1817
		mu 0 4 1170 1171 1175 1174
		f 4 -1813 1813 1820 -1819
		mu 0 4 1171 1169 1173 1175
		f 4 1815 1822 -1824 -1822
		mu 0 4 1173 1172 1176 1177
		f 4 1817 1824 -1826 -1823
		mu 0 4 1172 1174 1178 1176
		f 4 -1820 1826 1827 -1825
		mu 0 4 1174 1175 1179 1178
		f 4 -1821 1821 1828 -1827
		mu 0 4 1175 1173 1177 1179
		f 4 1823 1830 -1832 -1830
		mu 0 4 1177 1176 1180 1181
		f 4 1825 1832 -1834 -1831
		mu 0 4 1176 1178 1182 1180
		f 4 -1828 1834 1835 -1833
		mu 0 4 1178 1179 1183 1182
		f 4 -1829 1829 1836 -1835
		mu 0 4 1179 1177 1181 1183
		f 4 1831 1838 -1840 -1838
		mu 0 4 1181 1180 1151 1150
		f 4 1895 1897 -1900 -1901
		mu 0 4 1184 1185 1186 1187
		f 4 -1836 1842 1843 -1841
		mu 0 4 1182 1183 1153 1152
		f 4 -1904 1905 1907 -1909
		mu 0 4 1188 1189 1190 1191
		f 4 1833 1846 -1848 -1846
		mu 0 4 1180 1182 1192 1193
		f 4 1840 1848 -1850 -1847
		mu 0 4 1182 1152 1194 1192
		f 4 -1842 1850 1851 -1849
		mu 0 4 1152 1151 1195 1194
		f 4 -1839 1845 1852 -1851
		mu 0 4 1151 1180 1193 1195
		f 4 -1837 1853 1855 -1855
		mu 0 4 1183 1181 1196 1197
		f 4 1837 1856 -1858 -1854
		mu 0 4 1181 1150 1198 1196
		f 4 1844 1858 -1860 -1857
		mu 0 4 1150 1153 1199 1198
		f 4 -1843 1854 1860 -1859
		mu 0 4 1153 1183 1197 1199
		f 4 1847 1862 -1864 -1862
		mu 0 4 1193 1192 1200 1201
		f 4 1849 1864 -1866 -1863
		mu 0 4 1192 1194 1202 1200
		f 4 -1852 1866 1867 -1865
		mu 0 4 1194 1195 1203 1202
		f 4 -1853 1861 1868 -1867
		mu 0 4 1195 1193 1201 1203
		f 4 -1856 1869 1871 -1871
		mu 0 4 1197 1196 1204 1205
		f 4 1857 1872 -1874 -1870
		mu 0 4 1196 1198 1206 1204
		f 4 1859 1874 -1876 -1873
		mu 0 4 1198 1199 1207 1206
		f 4 -1861 1870 1876 -1875
		mu 0 4 1199 1197 1205 1207
		f 4 1863 1878 -1880 -1878
		mu 0 4 1201 1200 1208 1209
		f 4 1865 1880 -1882 -1879
		mu 0 4 1200 1202 1210 1208
		f 4 -1868 1882 1883 -1881
		mu 0 4 1202 1203 1211 1210
		f 4 -1869 1877 1884 -1883
		mu 0 4 1203 1201 1209 1211
		f 4 -1872 1885 1887 -1887
		mu 0 4 1205 1204 1212 1213
		f 4 1873 1888 -1890 -1886
		mu 0 4 1204 1206 1214 1212
		f 4 1875 1890 -1892 -1889
		mu 0 4 1206 1207 1215 1214
		f 4 -1877 1886 1892 -1891
		mu 0 4 1207 1205 1213 1215
		f 4 1879 1894 -1896 -1894
		mu 0 4 1209 1208 1185 1184
		f 4 1881 1896 -1898 -1895
		mu 0 4 1208 1210 1186 1185
		f 4 -1884 1898 1899 -1897
		mu 0 4 1210 1211 1187 1186
		f 4 -1885 1893 1900 -1899
		mu 0 4 1211 1209 1184 1187
		f 4 -1888 1901 1903 -1903
		mu 0 4 1213 1212 1189 1188
		f 4 1889 1904 -1906 -1902
		mu 0 4 1212 1214 1190 1189
		f 4 1891 1906 -1908 -1905
		mu 0 4 1214 1215 1191 1190
		f 4 -1893 1902 1908 -1907
		mu 0 4 1215 1213 1188 1191;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 4 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr ".mb" 2;
	setAttr ".gi" yes;
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 108 -max 122 -ast 1 -aet 122 ";
	setAttr ".st" 6;
createNode mentalrayOptions -s -n "miContourPreset";
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
	setAttr ".ctp" 1;
createNode brush -n "art3dPaintLastPaintBrush";
	setAttr ".lcl[0]"  0 0.5 1;
	setAttr ".pcl[0]"  0 0.5 1;
	setAttr ".wsc[0]"  0 1 1;
	setAttr ".lws[0]"  0 1 1;
	setAttr ".pws[0]"  0 1 1;
	setAttr ".tls[0]"  0 1 1;
	setAttr -s 3 ".env";
	setAttr ".env[0].envp" 0.20000000298023224;
	setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
	setAttr ".env[0].envi" 2;
	setAttr ".env[1].envp" 0.5;
	setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
	setAttr ".env[1].envi" 2;
	setAttr ".env[2].envp" 1;
	setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
	setAttr ".env[2].envi" 2;
	setAttr ".rro[0]"  0 1 1;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "//p-file-home-1.ad.calpoly.edu/Home1$/user/2122561/maya/projects/default/default/3dPaintTextures/squirrel/polySurfaceShape7_color.png";
createNode place2dTexture -n "place2dTexture1";
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode tripleShadingSwitch -n "tripleShadingSwitch1";
	setAttr ".def" -type "float3" 0 0 0 ;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode tweak -n "tweak1";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1187]";
	setAttr ".gi" 7;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[0:1187]";
	setAttr ".gi" 7;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1187]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode tweak -n "tweak2";
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:597]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "//p-file-home-1.ad.calpoly.edu/Home1$/user/2122561/maya/projects/default/default/3dPaintTextures/squirrel/polySurfaceShape8_color.png";
createNode place2dTexture -n "place2dTexture2";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk[1146:1215]" -type "float2" 0.53009552 0.046520881 0.28907156
		 0.058182403 0.27770561 -0.17821632 0.51334882 -0.18865077 0.5179646 -0.17988527 0.26792642
		 -0.17978811 0.26791948 -0.42978022 0.51796824 -0.4298774 0.5112195 -0.42922726 0.26943681
		 -0.42326385 0.26340458 -0.66790515 0.50800383 -0.67183447 0.26145622 -0.91523421
		 0.50605536 -0.91918373 0.045760341 0.0609961 0.044023052 -0.17136312 0.77633691 0.038170654
		 0.75413483 -0.2090375 0.2705158 -0.17991132 0.51719058 -0.18232842 0.26812643 -0.4277443
		 0.51587749 -0.42937797 0.26806563 -0.17988735 0.51794207 -0.179977 0.2679137 -0.42971843
		 0.51783192 -0.42978171 0.2680316 -0.1798466 0.51792365 -0.17994042 0.26794127 -0.42975247
		 0.5178594 -0.42982471 0.26797315 -0.179829 0.51793045 -0.179885 0.26794389 -0.42979926
		 0.51791018 -0.42984781 0.2679303 -0.17979372 0.51796085 -0.17988172 0.26792198 -0.42978457
		 0.51795447 -0.42987427 0.26788291 -0.17961784 0.26788378 -0.42961946 0.26788682 -0.42961675
		 0.2678853 -0.17961565 0.51802748 -0.43002975 0.51802468 -0.1800293 0.51801413 -0.18002662
		 0.51801652 -0.43002677 0.26791558 -0.42975897 0.26791504 -0.17976239 0.26791331 -0.42975706
		 0.26791608 -0.17975983 0.51797241 -0.17990352 0.51797563 -0.42990273 0.51797891 -0.17990607
		 0.51797789 -0.42990354 0.26789364 -0.42965925 0.26787722 -0.17965926 0.26788884 -0.42965981
		 0.26788029 -0.17966038 0.5180155 -0.17999396 0.51802105 -0.4299905 0.51801497 -0.17999357
		 0.51801831 -0.42999044 0.26788947 -0.42964774 0.26787642 -0.17965013 0.26789087 -0.42964953
		 0.26787335 -0.17964958 0.51801854 -0.18000239 0.51802534 -0.43000033 0.51801378 -0.18000081
		 0.51802349 -0.42999956;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1791]" "e[1797]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 71 ".uvtk[1146:1216]" -type "float2" 0.014313496 -0.022801505
		 0.039968118 -0.013149489 0.0091165444 0.0039273873 -0.024381105 -0.0084733823 -0.014092191
		 0.002640778 -0.014273929 0.0028923682 -0.014315282 0.0029063358 -0.014059976 0.002672595
		 -0.031404104 0.00018360891 -0.012176892 0.0090434588 -0.027240997 0.013955991 -0.040190522
		 0.0071335905 -0.031978995 0.016734557 -0.045168489 0.0094993794 0.058624018 -0.01307766
		 0.044378456 0.007392047 0.0042971214 -0.0300321 -0.032402612 -0.021753235 0.0039123329
		 0.0037933509 -0.022577643 -0.0081630656 -0.012519505 0.0099253813 -0.027404914 -0.0010413749
		 -0.013385868 0.0028034775 -0.014332881 0.0023029251 -0.014302189 0.0030994683 -0.014922154
		 0.0027476496 -0.013591822 0.0028784878 -0.014429229 0.0023891425 -0.014141581 0.0030341644
		 -0.014771882 0.0026544002 -0.013984392 0.0028382435 -0.014331127 0.0025822378 -0.014162889
		 0.0028855563 -0.014439491 0.0026684122 -0.014252379 0.0028805202 -0.014115437 0.0026458243
		 -0.01430187 0.0028963336 -0.014153482 0.0026590659 -0.014426047 0.0033798306 -0.01442185
		 0.0033758478 -0.014399059 0.0033898866 -0.014408124 0.0033910512 -0.013774293 0.0022839319
		 -0.013793851 0.0022804665 -0.013866515 0.0022705707 -0.01384968 0.0022742741 -0.014323762
		 0.002969454 -0.014330812 0.0029571874 -0.014337678 0.0029718757 -0.014321209 0.0029674505
		 -0.014053238 0.0025950051 -0.014030132 0.0026030783 -0.014009812 0.002597939 -0.014014689
		 0.0026044196 -0.014388663 0.0032608353 -0.014500349 0.0032330325 -0.014421887 0.0032508497
		 -0.014480243 0.003234583 -0.013827999 0.0023777548 -0.013785626 0.0023984571 -0.013831475
		 0.0023780679 -0.013805096 0.0023938976 -0.014407094 0.0032918612 -0.014498129 0.003261864
		 -0.01439948 0.0032882264 -0.014518295 0.0032585387 -0.013813728 0.0023560026 -0.013763727
		 0.0023743697 -0.013846304 0.0023527432 -0.01377613 0.0023736616 -0.024381105 -0.0084733823;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1805:1908]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk[1146:1369]" -type "float2" 0.041020453 0.012841188 0.041020453
		 0.012841188 0.041020453 0.012841194 0.041020453 0.012841183 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020393 0.012841185 0.041020393
		 0.012841186 0.041020453 0.012841192 0.041020453 0.012841192 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841183 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186
		 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453
		 0.012841194 0.041020453 0.012841194 0.041020453 0.012841194 0.041020453 0.012841186
		 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453 0.012841186 0.041020453
		 0.012841186 0.041020453 0.012841186 0.041020453 0.012841194 0.041020453 0.012841194
		 0.041020453 0.012841194 0.041020453 0.012841194;
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1799]" "e[1801]" "e[1803:1804]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[1164]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1165]" -type "float2" -0.0014267778 0.00071340066 ;
	setAttr ".uvtk[1166]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1167]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1369]" -type "float2" -0.0014267778 0.00071340066 ;
	setAttr ".uvtk[1370]" -type "float2" -0.0014267778 0.00071340066 ;
	setAttr ".uvtk[1371]" -type "float2" -0.0014267778 0.00071340066 ;
	setAttr ".uvtk[1372]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1373]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1374]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1375]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1376]" -type "float2" -0.0014267778 0.00071339693 ;
	setAttr ".uvtk[1377]" -type "float2" -0.0014267778 0.00071339693 ;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1799]" "e[1801]" "e[1803:1804]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 1378 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.35682872 -0.034715571 -0.10323042
		 0.12825455 -0.056581557 0.13981733 -0.10189071 0.13002118 -0.35530528 -0.0429684
		 -0.10146882 0.12945662 -0.027405087 0.1364475 0.062485743 0.1289614 -0.02717776 0.1360731
		 -0.3545002 -0.043536916 0.062444616 0.12828979 -0.027244009 0.13613929 0.062419515
		 0.12902759 0.15877938 0.13410395 0.0036600819 0.13920563 -0.056582198 0.13981615
		 0.003659256 0.1392042 0.4743852 0.13801777 0.15877983 0.13410434 -0.055133846 0.13738364
		 0.16439885 0.12809257 0.47438458 0.1380167 0.47438505 0.13801718 0.0036590784 0.13920361
		 0.0013783887 0.12034747 -0.0023526207 0.12194558 -0.0023526207 0.12034747 0.0013783887
		 0.12204462 -0.0057419012 0.12179706 -0.0023526207 0.11874934 -0.0024756165 0.12536207
		 -0.0036718412 0.12247919 -0.0057419012 0.12034747 -0.0057419012 0.11889788 0.0013783887
		 0.11865031 -0.0096927825 0.12285905 -0.0096096611 0.1216485 -0.0036718412 0.11821575
		 -0.0024756165 0.11533286 -0.0080354735 0.12677667 -0.0096096611 0.12034747 -0.0096096611
		 0.11904643 -0.0096927825 0.11783589 -0.0037635996 0.12812069 -0.010622418 0.12536207
		 -0.010811148 0.12034747 -0.0080354735 0.11391827 -3.2590022e-005 0.12843195 -0.010701172
		 0.1266378 -0.010566828 0.12415963 -0.011316029 0.12412538 -0.0037635996 0.11257424
		 -0.010622418 0.11533286 0.0023317703 0.12219316 -0.010451549 0.1280636 -0.013300936
		 0.12637293 -0.013005116 0.12546325 -0.011316029 0.11656955 -3.2590022e-005 0.11226298
		 -0.010566828 0.1165353 -0.010701172 0.11405715 -0.012796741 0.12762846 0.0023317703
		 0.11850177 -0.013005116 0.11523168 -0.010451549 0.11263133 -0.013300936 0.114322
		 -0.013286833 0.12917466 -0.014726498 0.12789261 -0.012796741 0.11306647 -0.0094140042
		 0.13204649 -0.013952341 0.12834053 -0.015616598 0.12730035 -0.013286833 0.11152027
		 -0.014726498 0.11280232 -0.0077799978 0.12829466 -0.014087945 0.13096873 -0.01345035
		 0.12887734 -0.0094140042 0.10864844 -0.015616598 0.11339457 -0.013952341 0.1123544
		 -0.014513199 0.13096873 -0.014087945 0.10972619 -0.0077799978 0.11240028 -0.01345035
		 0.11181762 -0.01377127 0.12881495 -0.014513199 0.10972619 -0.01377127 0.11187998
		 -0.19593145 0.029037556 -0.1975278 0.024567781 -0.19125894 0.0253065 -0.20124407
		 0.030342894 -0.19690777 0.019656135 -0.1984781 0.03119023 -0.20041932 0.023588547
		 -0.19879529 0.032811187 -0.20202273 0.027895365 -0.199569 0.01966073 -0.20189092
		 0.031750873 -0.20427765 0.023249449 -0.20199637 0.019746955 -0.19805771 0.016653704
		 -0.20067595 0.033972144 -0.20015442 0.014976112 -0.19441257 0.014982156 -0.20428789
		 0.020672137 -0.19861345 0.013527234 -0.19743022 0.014692168 -0.2043024 0.019441577
		 -0.1941365 0.014556909 -0.2033916 0.012434903 -0.19551896 0.012376025 -0.19404733
		 0.014251414 -0.20003822 0.011181028 -0.19202669 0.015040529 -0.19364583 0.012626087
		 -0.19199398 0.015298829 -0.19238882 0.012521253 -0.19162905 0.01510729 -0.19141451
		 0.015354379 -0.19110474 0.014592465 -0.19090611 0.014853372 -0.19140388 0.01561972
		 -0.19014062 0.013777683 -0.19074453 0.015117759 -0.1921628 0.015783267 -0.1897029
		 0.010671984 -0.18994813 0.014043077 -0.18972802 0.014343611 -0.19026381 0.016273359
		 -0.18874025 0.012824455 -0.18861032 0.013119189 -0.18756868 0.01050993 -0.18846332
		 0.013453511 -0.18718415 0.0074619511 -0.18740082 0.012504641 -0.18733644 0.012826038
		 -0.19112366 0.0089006312 -0.18574701 0.012569616 -0.18726531 0.01319172 -0.18905178
		 0.015769165 -0.1855672 0.013980241 -0.18771073 0.016064985 -0.18410556 0.012985299
		 -0.18924996 0.018447721 -0.18434794 0.014910425 -0.18630286 0.016689485 -0.18291073
		 0.013685915 -0.18817241 0.018503273 -0.18549164 0.01775408 -0.18748921 0.019377317
		 0.057206705 0.017917901 0.055064403 0.017769359 0.056379925 0.016072202 0.054437973
		 0.021086805 0.053639937 0.016072202 0.059586909 0.016072202 0.055064403 0.014375045
		 0.057206705 0.014226502 0.059586909 0.018016927 0.059586909 0.014127467 0.06249864
		 0.016072202 0.060886517 0.024156684 0.054437973 0.011057589 0.060886517 0.0079877106
		 0.06249864 0.018363522 0.063433185 0.024701348 0.063433185 0.007443056 0.06249864
		 0.013780872 0.064529665 0.017472271 0.064529665 0.01467213 0.064529665 0.016072202
		 0.063840911 0.02336446 0.063840911 0.0087799439 0.067215517 0.016072202 0.067215517
		 0.01752178 0.067215517 0.014622622 0.0667881 0.024006672 0.0667881 0.0081377206 0.069340035
		 0.016072202 0.069340035 0.017670324 0.064158104 0.024851095 0.069340035 0.014474071
		 0.064158104 0.0072933086 0.067434959 0.025553666 0.067434959 0.0065907375 0.070412964
		 0.016072202 0.065731049 0.027786467 0.065731049 0.0043579256 0.067101203 0.028455829
		 0.063750356 0.026187982 0.063750356 0.0059564207 0.067101203 0.0036885729 0.065631017
		 0.028513424 0.068129107 0.02960806 0.065631017 0.0036309776 0.068129107 0.0025363425
		 0.066914611 0.028983278 0.066914611 0.0031611151 0.067851312 0.030198999 0.067851312
		 0.0019453942 -0.18696664 0.12702282 -0.18416245 0.12676735 -0.18662702 0.13103922
		 -0.18696664 0.12435127 -0.054141235 0.012206893 -0.054141235 0.0098165311 -0.051836338
		 0.012157374 -0.055625308 0.01141465 -0.051836338 0.0098165311 -0.054517072 0.019238634
		 -0.051836338 0.007475683 -0.048113916 0.0098165311 -0.054069009 0.020327199 -0.057224549
		 0.01775101 -0.054141235 0.0074261678 -0.048113916 0.012652513 -0.049423061 0.020426234
		 -0.055712096 0.020845972 -0.055625308 0.0082184067 -0.054517072 0.00039442739 -0.048113916
		 0.0069805444 -0.045290481 0.0098165311 -0.05526403 0.021934541 -0.058632549 0.019298
		 -0.054069009 -0.00069413992 -0.049423061 -0.00079317484 -0.045290481 0.013543771
		 -0.04684579 0.021129075 -0.057983633 0.023352396 -0.057224549 0.0018820504 -0.055712096
		 -0.0012129323 -0.04684579 -0.0014960369 -0.045290481 0.0060892864 -0.041309636 0.0098165311
		 -0.057583399 0.023943326 -0.05526403 -0.0023014995 -0.041309636 0.01359327 -0.045615226
		 0.021026837 -0.058632549 0.00033505645 -0.057983633 -0.0037193373 -0.045615226 -0.0013937955
		 -0.041309636 0.0060397871 -0.038608555 0.01141465 -0.057583399 -0.004310268 -0.038608555
		 0.0082184067 -0.038608555 0.0098165311 0.4067722 -0.051452368 0.40341884 -0.051508363
		 0.40602899 -0.053139448 0.40304476 -0.053106483;
	setAttr ".uvtk[250:499]" 0.40341884 -0.054704603 0.4067722 -0.054826524 0.40481406
		 -0.06539762 0.40250802 -0.064316802 0.40152448 -0.056883235 0.48423088 -0.03380907
		 0.48332012 -0.024196878 0.48233658 -0.031630445 0.31295741 -0.10541434 0.30916232
		 -0.094676234 0.30439147 -0.094777331 -0.27565438 0.1249524 -0.2740334 0.12643905
		 -0.27650422 0.12628929 -0.27488321 0.12777592 -0.020631356 0.13443139 -0.02217835
		 0.1358394 -0.022265323 0.13198389 -0.02387266 0.13317892 -0.025881449 0.1354983 -0.02466573
		 0.13696642 -0.024195865 0.13806063 0.053459849 0.14054003 0.051462296 0.14180636
		 0.0523623 0.13932948 0.13820821 -0.026253792 0.13536456 -0.026303416 0.13649824 -0.028730672
		 0.13414001 -0.027389754 0.13822794 -0.028600305 0.13558517 -0.02946938 0.13414001
		 -0.030031715 0.13558517 -0.030031715 0.13343944 -0.030031715 0.13802677 -0.030031715
		 0.13558517 -0.030594025 0.13343944 -0.025398457 0.13414001 -0.032673642 0.13802677
		 -0.029121751 0.13343944 -0.034664955 0.13802677 -0.030941661 0.13649824 -0.03133275
		 0.13536456 -0.033760004 0.13443437 -0.035755862 0.13820821 -0.033809621 0.13822794
		 -0.031463113 -0.2636638 0.12303326 -0.26556364 0.12251181 -0.2636638 0.12160186 -0.26556364
		 0.12160186 -0.26121965 0.12160186 -0.26556364 0.12069192 -0.26043129 0.12537977 -0.2636638
		 0.12017046 -0.26043129 0.11782394 -0.27666706 0.12488518 -0.27646592 0.12678505 -0.27910864
		 0.1265633 -0.27819559 0.1282659 -0.85924804 0.13588674 -0.85761589 0.13823143 -0.85925734
		 0.14014867 -0.85761589 0.14053236 0.01203679 0.150278 0.0082885548 0.14898536 0.01203679
		 0.14794569 0.0082885548 0.14794569 0.0080149993 0.14883165 0.0082885548 0.14690602
		 0.0080149993 0.14794569 0.01203679 0.14561337 0.0080149993 0.14705975 0.081687562
		 0.11705462 0.080801614 0.11705462 0.081699923 0.11321347 0.082573518 0.11705462 -0.14626457
		 0.14755921 -0.14584571 0.14783278 -0.1469294 0.15140036 -0.14529721 0.151581 0.38560531
		 -0.064681239 0.38417426 -0.057329129 0.38274944 -0.066507541 0.38726875 -0.058430828
		 0.38263327 -0.05576944 0.38738951 -0.064764164 0.1000541 0.011879371 0.097994439
		 0.013593205 0.097525381 0.010959147 0.094946451 0.011705911 0.10028916 0.0076174326
		 0.094946526 0.0076298066 0.097525381 0.00430045 0.094946451 0.0035536941 0.1000541
		 0.0033802185 0.097994439 0.0016663839 0.099989168 0.00074666925 0.10031056 0.0010271667
		 0.10067619 0.00074666925 0.10146476 0.0019056596 -0.063709334 -0.016345996 -0.065213807
		 -0.017365163 -0.063709334 -0.02221561 -0.066231497 -0.013487442 -0.065213807 -0.02221561
		 -0.059769824 -0.018139498 -0.066429153 -0.020259321 -0.065213807 -0.027066069 -0.059769776
		 -0.02221561 -0.068104625 -0.012484776 -0.066218331 -0.022248575 -0.063709334 -0.028085234
		 -0.066429153 -0.024192501 -0.059769824 -0.026291724 -0.067983814 -0.018818121 -0.066231497
		 -0.030943789 -0.06228856 -0.028978126 -0.068104625 -0.031946447 -0.067983814 -0.025646064
		 -0.62115669 0.12173525 -0.62477732 0.1204701 -0.62300599 0.11904932 -0.62105185 0.12299225
		 0.06156043 0.12849589 0.056887917 0.12476486 0.063156769 0.12402613 0.062536754 0.11911449
		 0.066873044 0.12980121 0.066048309 0.1230469 0.064107083 0.13064858 0.065197982 0.11911909
		 0.067651711 0.12735373 0.064424261 0.13226955 0.063686699 0.11611203 0.067625359
		 0.11920531 0.069906585 0.12270781 0.067519903 0.13120927 0.060041551 0.11444048 0.065783411
		 0.11443447 0.066304922 0.1334305 0.063059196 0.11415056 0.06424243 0.11298556 0.069916829
		 0.12013053 0.059765477 0.11401527 0.069931336 0.11889993 0.059676308 0.11370977 0.061147943
		 0.11183438 0.057655659 0.11449885 0.057622954 0.11475716 0.059274811 0.11208444 0.057258029
		 0.11456562 0.058017798 0.11197961 0.057043478 0.1148127 0.056535084 0.1143117 0.057032865
		 0.11507808 0.05673372 0.11405079 0.056373511 0.11457609 0.057791773 0.11524162 0.0557696
		 0.11323604 0.055357005 0.11380196 0.055577099 0.11350143 0.055892788 0.11573172 0.055331867
		 0.11013034 0.054239299 0.11257754 0.054369234 0.11228281 0.054092295 0.11291187 0.053197667
		 0.10996828 0.052965421 0.11228443 0.053029802 0.11196303 0.052813139 0.10692029 0.052894287
		 0.11265007 0.054680753 0.11522749 0.053339709 0.11552338 0.05487895 0.11790605 0.05119618
		 0.11343864 0.051931832 0.11614784 0.053801402 0.11796163 0.04997693 0.11436878 0.053118192
		 0.11883567 0.051120628 0.11721244 -0.24276535 0.13869528 -0.24310499 0.14271168 -0.24556956
		 0.13843982 -0.24276535 0.13602374 -0.050521806 -0.041176662 -0.045750983 -0.041277744
		 -0.041955877 -0.030605553 0.084913209 0.13166521 0.084063366 0.13032834 0.086534195
		 0.13017857 0.085684359 0.12884168 -0.57553405 0.13443132 -0.57390004 0.13198382 -0.57398707
		 0.13583933 -0.57229269 0.13317886 -0.57028395 0.13549824 -0.57149965 0.13696635 -0.57196951
		 0.13806057 0.28280449 0.14375132 0.28190449 0.14127442 0.28390208 0.14254077 -0.65172058
		 0.12689748 -0.64999086 0.12837833 -0.65263361 0.12860009 -0.65019202 0.1302782 -0.65589595
		 0.16195394 -0.65589595 0.16425487 -0.6575374 0.16233762 -0.65752816 0.16657484 -0.65735763
		 0.16086304 -0.073006153 0.15147065 -0.07408984 0.14790307 -0.073670983 0.1476295
		 -0.074638344 0.15165129 0.40901944 -0.045168258 0.41056037 -0.043608565 0.40913564
		 -0.034496084 0.41199142 -0.036322381 0.41365486 -0.04250687 0.41377565 -0.036206495
		 -0.32566193 0.15103211 -0.32751119 0.15371804 -0.32928252 0.15229726 -0.32555708
		 0.14977509 0.0088506378 0.031792223 0.0057943617 0.035920188 0.0072594709 0.031351641
		 0.0045580575 0.036238782 0.0099670794 0.029108442 0.0060902978 0.036885507 0.0056805476
		 0.031244272 0.0067615085 0.029108442 0.0066757314 0.036845841 0.0033217601 0.036557388
		 0.0095133809 0.024394115 0.0054836106 0.037413832 0.013175159 0.026531855 0.0065251873
		 0.037902541 0.0042383135 0.037942152 0.013795909 0.017784694 0.0078997742 0.036806177
		 0.0059981728 0.038560659 0.0024784433 0.037323654 0.017536066 0.023376491 0.0079706451
		 0.035619687 0.0078289025 0.037992664 0.0008886992 0.040112641 0.017114688 0.015711593
		 0.0065593366 0.035816554 0.016435545 0.037098166;
	setAttr ".uvtk[500:749]" 0.0077580321 0.03917915 0.00071857608 0.036705159
		 0.021459095 0.02225888 0.004988844 0.042117026 0.024528846 0.020744525 0.021276221
		 0.028968286 0.016335187 0.041694533 0.0070260842 0.046531685 0.020141922 0.012618061
		 0.025241761 0.029429853 0.016459126 0.026778836 0.022972871 0.041101899 0.022816233
		 0.012781266 0.028915761 0.02887099 0.012984941 0.028999746 0.015653592 0.048578162
		 0.022876497 0.044474911 0.027649311 0.018855793 0.030186145 0.026433518 0.0068947924
		 0.052399911 0.027485581 0.042092782 0.028556291 0.010681766 0.015551711 0.053978212
		 0.0042725625 0.049432129 0.02284015 0.045642402 0.027470404 0.044642076 0.019811565
		 0.0097645819 0.031539287 0.016207555 0.034522273 0.021733342 0.0066523766 0.057689995
		 0.02273109 0.049144894 0.00011139041 0.049603514 0.024045654 0.045474414 0.022803798
		 0.046809901 0.036920119 0.042058215 0.03036784 0.0072466121 0.033488266 0.014599843
		 0.015961779 0.058797125 0.00071857608 0.054652654 0.022628695 0.052938297 0.022767439
		 0.047977399 0.023837369 0.046507545 0.025214808 0.046473917 0.036246534 0.044914059
		 0.030685445 0.010013961 0.036136042 0.016834736 0.022525983 0.056533482 0.02743361
		 0.050823461 0.023745073 0.048458695 0.023325181 0.047310635 0.026383955 0.047473434
		 0.027553119 0.048472937 0.032814603 0.0093461741 0.038314275 0.008458076 0.037856448
		 0.02111873 0.027418386 0.053381864 0.023936594 0.048976913 0.025113313 0.046617959
		 0.035821244 0.046698306 0.035712942 0.0055701574 0.04064085 0.0099920509 0.041907709
		 0.0088211074 0.0251421 0.048808917 0.035286196 0.048463777 0.025019763 0.048576552
		 0.026347604 0.048640929 0.025835589 0.047868863 0.03659426 0.0054995939 0.040530637
		 0.0064507388 0.035408884 0.048252959 0.038941655 0.0063511608 0.038810626 0.0034922578
		 0.040420428 0.0029094233 0.038414214 0.0021914756 0.037466083 0.0019453919 0.03720082
		 0.004075082 -0.14268652 0.028651437 -0.14294988 0.030787243 -0.14625669 0.028542744
		 -0.14625669 0.035784043 -0.14625669 0.01670773 -0.14357559 0.036100388 -0.14956349
		 0.030787243 -0.14982685 0.028651437 -0.14199848 0.023937108 -0.14425746 0.036866654
		 -0.14893776 0.036100388 -0.1505149 0.023937108 -0.14131042 0.017327659 -0.14825591
		 0.036866654 -0.15086783 0.030894633 -0.15252797 0.028651437 -0.15120293 0.017327659
		 -0.14082749 0.015254572 -0.1499881 0.037485119 -0.14905788 0.035781782 -0.15404189
		 0.026074819 -0.15168589 0.015254572 -0.14625669 0.0093075624 -0.14034453 0.012161042
		 -0.15216884 0.012161042 0.42196843 -0.19709422 0.42129013 -0.200818 0.42548561 -0.20037818
		 0.41770041 -0.20056841 0.42397174 -0.20358627 0.42638674 -0.19601728 0.42111275 -0.20470272
		 0.41770041 -0.20776899 0.41428819 -0.20470272 0.42062169 -0.20775898 0.41411072 -0.200818
		 0.41477913 -0.20775898 0.4114292 -0.20358627 0.41343245 -0.19709422 0.40991524 -0.20037818
		 0.41308928 -0.20629387 0.41275421 -0.19227713 0.40901414 -0.19601728 0.41770041 -0.19231799
		 0.40815094 -0.19209425 0.41227126 -0.18831155 0.42264664 -0.19227713 0.41770041 -0.18272866
		 0.42312968 -0.18831155 0.41178825 -0.18463755 0.42361256 -0.18463755 -0.81620431
		 0.17642643 -0.81587392 0.18233857 -0.81887865 0.17699562 0.05807076 0.0032399371
		 0.057501573 0.0056774081 0.052158616 0.0019453942 0.052158616 0.010992196 0.056932379
		 0.010377586 0.046815645 0.0056774081 0.04738484 0.010377586 0.046246458 0.0032399371
		 0.04805753 0.015276192 0.041908026 0.011366403 0.052158616 0.023289822 0.043751653
		 0.015903374 0.048730206 0.022118881 0.044611823 0.017511085 0.048937187 0.025660189
		 0.045930494 0.023652852 0.049144167 0.029201506 0.046600901 0.028618671 0.052158616
		 0.03210846 0.0462282 0.025759768 0.046600901 0.029919453 0.049144167 0.030748371
		 0.055173051 0.029201506 0.049144167 0.032295227 0.055380031 0.025660189 0.055173051
		 0.030748371 0.052158616 0.035636801 0.055587012 0.022118881 0.057716336 0.029919453
		 0.055173051 0.032295227 0.056259703 0.015276192 0.25348654 0.006132443 0.25650099
		 0.0083472198 0.25348654 0.0098422961 0.25650099 0.0040878407 0.256708 0.0097717345
		 0.2504721 0.0083472198 0.25348654 0.00074626319 0.2576431 0.0062175258 0.25904426
		 0.0077643907 0.25691497 0.013618314 0.25026512 0.0097717345 0.2504721 0.0040878407
		 0.25005814 0.013618314 0.24792886 0.0077643907 0.24933001 0.0062175258 0.24755616
		 0.0106233 0.24725844 0.012730216 0.24792886 0.0064636138 -0.0096472465 0.12043988
		 -0.0038503089 0.1154203 0.0011988312 0.12043988 -0.0090570888 0.11402872 -0.0038503089
		 0.12545948 -0.00089427351 0.10970521 -0.013341183 0.11503766 -0.0090570888 0.12685105
		 -0.0095366407 0.10970521 -0.016748665 0.12043988 -0.016503302 0.10970521 -0.013341183
		 0.12584211 -0.00089427351 0.13117456 -0.016503302 0.13117456 -0.0095366407 0.13117456
		 0.022484602 0.0021221377 0.02083049 0.011556684 0.020797525 0.0019453857 0.019110417
		 0.0021221377 0.0184188 0.011571861 0.017284151 0.0027957296 0.017429013 0.016165767
		 0.02083049 0.016069394 0.015779307 0.022707079 0.02083049 0.022606721 0.013634697
		 0.031284235 0.015366887 0.031213364 0.017099038 0.031142492 0.015366887 0.033044092
		 0.018831227 0.031071618 0.016102578 0.032517079 0.015428264 0.038153566 0.02083049
		 0.031000748 0.017604966 0.032366533 0.017040003 0.033558644 0.017099038 0.034803953
		 0.022829713 0.031071618 0.019189706 0.032482937 0.018831227 0.03656381 0.022471236
		 0.032482937 0.02083049 0.032831479 0.017909186 0.033247903 0.017545899 0.032951958
		 0.02083049 0.038323686 0.02083049 0.033257902 0.018149406 0.035720512 0.02083049
		 0.035764884 0.022829713 0.03656381 0.023751754 0.033247903 0.024056004 0.032366533
		 -0.31858224 -0.13347685 -0.31580651 -0.13280608 -0.31858224 -0.12557992 -0.31858224
		 -0.14149976 -0.31580651 -0.12611863 -0.32201049 -0.12727417 -0.31534362 -0.14149976
		 -0.3178916 -0.12086362 -0.32429731 -0.13143533 -0.31580651 -0.14313532 -0.31580651
		 -0.1215344 -0.31858224 -0.14313532 -0.31580651 -0.14551598 -0.31858224 -0.14551598
		 0.11429236 -0.021914339 0.11429236 -0.015123961 0.1122073 -0.022137407 0.11154348
		 -0.014125289 -0.29148608 0.069498017 -0.28873718 0.070319578 -0.29151291 0.077632003;
	setAttr ".uvtk[750:999]" -0.28873718 0.077342026 -0.29426959 0.07255616 -0.29151291
		 0.083902121 -0.29684538 0.076656267 -0.28873718 0.083902121 -0.29151291 0.087716594
		 -0.28873718 0.087716594 -0.29151291 0.09205161 -0.28873718 0.09205161 -0.12028365
		 0.12497422 -0.12028365 0.11851495 -0.11892676 0.12497422 -0.11892676 0.11851495 0.63036484
		 -0.030413734 0.62918967 -0.026489932 0.62559855 -0.029015694 0.63249737 -0.031327918
		 0.62474227 -0.02452955 0.62694865 -0.033225261 0.63112247 -0.024305416 0.62184113
		 -0.027263889 0.62171358 -0.03141205 0.62738228 -0.03725639 0.62433213 -0.021518514
		 0.61923778 -0.026102753 0.61953408 -0.032790191 0.63069969 -0.037888005 0.62862825
		 -0.041483872 0.63233203 -0.041702475 0.62954849 -0.043119442 0.63184005 -0.046037465
		 0.62857032 -0.045500055 0.62875605 -0.046846919 0.6178568 -0.047692269 0.61777097
		 -0.046335373 -0.37314588 -0.15298827 -0.37416676 -0.16034165 -0.37050974 -0.16100039
		 -0.37620401 -0.15592699 -0.37522605 -0.16704567 -0.37692028 -0.1632421 -0.45466334
		 0.045981161 -0.45845875 0.054623529 -0.46268624 0.055869449 -0.46290484 0.059573315
		 -0.45909038 0.0579409 -0.46432182 0.056789715 -0.45282024 0.061590191 -0.46723986
		 0.059081309 -0.46670246 0.055811528 -0.46804932 0.055997282 -0.46889466 0.045098078
		 -0.46753776 0.045012195 -0.23154615 -0.096622944 -0.22877042 -0.096622944 -0.23154615
		 -0.093538925 -0.22877042 -0.093538925 -0.23338793 -0.082639717 -0.22692864 -0.082639717
		 0.0047289343 -0.062643103 0.0019532023 -0.062643103 0.006570708 -0.073442437 0.00011142383
		 -0.073442437 -0.055230655 0.11042578 -0.053906992 0.10130665 -0.053389005 0.11054749
		 -0.052718177 0.10138522 -0.053639073 0.11260635 -0.052401818 0.10096435 -0.054915003
		 0.11308727 -0.054165229 0.1008478 -0.052429948 0.093684323 -0.053179391 0.093634844
		 -0.052137334 0.093290389 -0.053417634 0.093205795 -0.051996212 0.09149576 -0.05326524
		 0.091411866 -0.05277748 0.090595283 0.16229613 0.17456301 0.16229613 0.16546543 0.16389453
		 0.17462385 0.16069773 0.17462385 0.16332793 0.16550471 0.16322908 0.17728533 0.16127048
		 0.17641401 0.16126433 0.16550471 0.1638266 0.16504586 0.16197817 0.17711689 0.16229613
		 0.16498761 0.16076563 0.16504586 0.16294658 0.15783291 0.16229613 0.1578081 0.16164568
		 0.15783291 0.16340731 0.15740386 0.16229612 0.15736151 0.16118495 0.15740386 0.16348243
		 0.15560992 0.16246596 0.15555829 0.16127963 0.15559052 0.16229613 0.15479334 -0.66302258
		 0.033729173 -0.66486424 0.033850878 -0.66434622 0.024610039 -0.66470647 0.035012927
		 -0.66553503 0.024688592 -0.66343176 0.035519343 -0.66408801 0.024151191 -0.66585141
		 0.024267713 -0.66507381 0.016938198 -0.66582328 0.016987719 -0.66483557 0.016509142
		 -0.66611588 0.016593734 -0.66469449 0.014695841 -0.66596353 0.014779721 -0.66547573
		 0.013898637 -0.64736819 0.1883633 -0.64896661 0.18842414 -0.64793479 0.17920102 -0.64805883
		 0.18952535 -0.64896661 0.1792403 -0.64920688 0.18973836 -0.64999837 0.17920102 -0.64743614
		 0.17878014 -0.65056503 0.1883633 -0.64896661 0.1788384 -0.65000999 0.19042215 -0.65049708
		 0.17878014 -0.64831614 0.17150013 -0.64896661 0.17152491 -0.64961708 0.17150013 -0.6478554
		 0.17110616 -0.64896661 0.17114851 -0.65007776 0.1711062 -0.6477803 0.16929214 -0.6487968
		 0.16934378 -0.64998311 0.16931152 -0.64896661 0.16841106 -0.3229104 0.13457671 -0.32392687
		 0.13535796 -0.32409668 0.13408892 -0.49345672 0.12394401 -0.49211219 0.12549086 -0.49372199
		 0.12607369 -0.52114719 0.12635203 -0.52275699 0.12749414 -0.52209532 0.12495086 -0.3007018
		 0.19124673 -0.30229294 0.19168732 -0.30375805 0.18711877 -0.30499434 0.18680017 -0.30346212
		 0.18615346 -0.30623066 0.18648157 -0.30287671 0.18619312 -0.30387187 0.19179468 0.1552783
		 -0.17519499 0.14770059 -0.17773183 0.14958932 -0.18085231 0.15057814 -0.17085886
		 0.14162606 -0.18256491 0.14505234 -0.17384186 0.13952656 -0.17682487 0.14146285 -0.18523923
		 0.13860938 -0.18556958 0.14455639 -0.18826646 0.14344464 -0.17189288 0.13609141 -0.17501332
		 0.15110368 -0.18392205 0.13885877 -0.1746957 0.15222129 -0.18784508 0.15827464 -0.18013938
		 0.13819097 -0.17256655 0.1466295 -0.19158523 0.15771578 -0.17646538 0.13730286 -0.16706687
		 0.13441496 -0.1696682 0.15537666 -0.19220598 0.1343444 -0.16878688 -0.3978157 0.1706668
		 -0.40049005 0.1700976 -0.39748538 0.16475463 0.032045115 0.027441708 0.028486272
		 0.036135145 0.028214281 0.027359001 0.030270478 0.035709854 0.031045642 0.026272554
		 0.034395631 0.027322203 0.030046102 0.025103401 0.03221314 0.026236201 0.03182517
		 0.035297498 0.029046591 0.023934247 0.03019017 0.02500191 0.031441033 0.025724182
		 0.032381129 0.025030693 0.030079721 0.023725962 0.028047118 0.022765096 0.032549113
		 0.023825187 0.029214615 0.022728743 0.03214876 0.024908364 0.032717071 0.022619683
		 0.030382076 0.022692388 0.032150377 0.015542191 0.036510475 0.022517292 0.032030907
		 0.023633666 0.030882847 0.023213768 0.025266707 0.016223786 0.037550382 0.015440318
		 0.036954042 0.027306976 0.031549573 0.022656033 0.030103892 0.0069146832 0.040105656
		 0.022414573 0.032035954 0.035174806 0.022751365 0.0076466333 0.035972089 0.0067833895
		 0.042369306 0.015850376 0.025689201 0.0048774458 0.03300431 0.0041611553 0.041262168
		 0.0065409737 0.023684813 0.00077730068 0.033175714 -7.7752871e-009 0.038224835 0.00060717802
		 -0.0091407262 7.2458017e-005 -0.0091407262 0.0079693934 -0.011916419 0.00074324338
		 -0.0057124379 0.0062751323 -0.011916419 0.0074306759 -0.0091407262 -0.0079504428
		 -0.0034256354 0.0021139688 -0.0098313298 0.012685691 -0.012379342 -0.0079504428 -0.011916419
		 0.012014914 -0.011916419 -0.0095860148 -0.0091407262 -0.0095860148 -0.011916419 -0.011966693
		 -0.0091407262 -0.011966693 -0.1454891 0.11026587 -0.14340404 0.1100428 -0.1454891
		 0.11705624 -0.14274022 0.11805491 0.19245496 0.10256905 0.19248177 0.1107031 0.18970603
		 0.10339061 0.19523846 0.10562719 0.18970603 0.11041313 0.19781423 0.10972737 0.19248177
		 0.11697322 0.18970603 0.11697322 0.19248177 0.1207877 0.18970603 0.1207877 0.19248177
		 0.12512271 0.18970603 0.12512271;
	setAttr ".uvtk[1000:1249]" -0.56291121 0.13018775 -0.56155431 0.13018775 -0.56291121
		 0.13664703 -0.56155431 0.13664703 0.61574596 0.018221488 0.62051231 0.019619528 0.61692107
		 0.02214529 0.61916214 0.015409959 0.62136853 0.024105672 0.61361343 0.017307302 0.62439722
		 0.017223172 0.62426972 0.021371331 0.61498827 0.024329806 0.61872852 0.01137883 0.62657678
		 0.015845029 0.62687302 0.022532469 0.62177867 0.027116707 0.6154111 0.010747217 0.61377871
		 0.0069327462 0.6174826 0.0071513504 0.61656237 0.0055157784 0.61427075 0.0025976901
		 0.61754054 0.0031350998 0.61735475 0.0017882341 0.628254 0.00094288343 0.62833989
		 0.0022997821 0.34917691 -0.095065251 0.35181305 -0.087053128 0.34815601 -0.087711863
		 0.34709671 -0.081007846 0.34611875 -0.092126526 0.34540251 -0.084811419 -0.10258389
		 0.093002021 -0.1106068 0.08311373 -0.10637931 0.084359661 -0.11082543 0.079409868
		 -0.11224241 0.082193464 -0.10701093 0.081042282 -0.11516042 0.079901874 -0.1007408
		 0.077392988 -0.11462301 0.083171651 -0.11596991 0.0829859 -0.11681523 0.093885109
		 -0.11545836 0.093970984 0.67289144 -0.094677724 0.67289144 -0.091593705 0.67011571
		 -0.094677724 0.67011571 -0.091593705 0.67473316 -0.080694497 0.66827393 -0.080694497
		 0.0051786876 -0.062616773 0.0033369123 -0.073416106 0.0079544187 -0.062616773 0.0097961994
		 -0.073416106 -0.72196412 0.13731493 -0.72315294 0.13739347 -0.72263497 0.12815264
		 -0.7216478 0.13773581 -0.72447658 0.12827435 -0.7234112 0.13785234 -0.72288501 0.12609376
		 -0.72167593 0.14501581 -0.72416097 0.12561281 -0.72242534 0.14506532 -0.72138327
		 0.14540976 -0.72266358 0.14549439 -0.72124219 0.14720441 -0.72251117 0.14728828 -0.72202343
		 0.14810488 -0.65955186 0.067282446 -0.66058367 0.067321725 -0.65898526 0.058163311
		 -0.65905315 0.067741297 -0.66058367 0.05822416 -0.66058367 0.067799561 -0.66218203
		 0.058163311 -0.65965068 0.055501819 -0.65993321 0.074954286 -0.66161543 0.067282446
		 -0.66160929 0.056373145 -0.66090161 0.055670265 -0.66058367 0.074979059 -0.66211414
		 0.067741297 -0.65947247 0.07538335 -0.66058367 0.075425647 -0.66123408 0.074954286
		 -0.65939736 0.077177234 -0.6604138 0.077228859 -0.66169482 0.07538335 -0.66160011
		 0.077196643 -0.66058367 0.077993862 0.050369706 0.00012568907 0.049046054 0.0092448238
		 0.048528049 3.9929855e-006 0.047857232 0.0091662705 0.048685819 -0.0011580646 0.049304277
		 0.0097036716 0.049960516 -0.001664479 0.047540866 0.0095871417 0.048318438 0.016916664
		 0.04756901 0.016867146 0.048556671 0.017345721 0.047276396 0.017261121 0.048697796
		 0.019159023 0.047428757 0.019075142 0.047916528 0.019956226 -0.60847396 0.17241599
		 -0.60904056 0.18157829 -0.61007231 0.17235513 -0.61007231 0.18153901 -0.60916454
		 0.17125396 -0.60854185 0.18199916 -0.61110413 0.18157829 -0.61031264 0.17104095 -0.61007231
		 0.18194091 -0.61167073 0.17241599 -0.60942191 0.18927917 -0.61160284 0.18199916 -0.61111569
		 0.17035715 -0.61007231 0.1892544 -0.60896116 0.18967316 -0.61072278 0.18927917 -0.61007231
		 0.18963084 -0.608886 0.19148716 -0.61118352 0.18967316 -0.6099025 0.19143555 -0.61007231
		 0.19236825 -0.61108887 0.19146778 -0.44769377 0.13652287 -0.44650745 0.13603508 -0.44667727
		 0.13730413 -0.31597909 0.13194044 -0.31683552 0.12977858 -0.31545076 0.13069512 -0.43300387
		 0.13190982 -0.43326914 0.12978014 -0.43165934 0.13036297 -0.34786081 0.14024243 -0.34880894
		 0.1416436 -0.34947062 0.13910034 -0.37333819 0.090589643 -0.37334397 0.09856493 -0.37528789
		 0.098442234 -0.32723469 0.10829042 -0.32712922 0.10031513 -0.32524544 0.10816772
		 -0.16847514 0.87074089 -0.18970798 0.86678314 -0.16473754 0.85652995 -0.13690147
		 0.85380781 0.070358001 0.90009969 -0.25785002 0.9012562 -0.91764092 0.89754683 0.065899976
		 0.89578837 -0.14107017 0.86198759 -0.15276861 0.85938132 -0.14368089 0.85832566 -0.13509092
		 0.86137933 -0.14077596 0.85748571 -0.13177964 0.8610335 -0.20487191 0.86805791 -0.19135903
		 0.8565864 -0.15665531 0.87536746 -0.12457425 0.86100984 0.053716302 0.88627321 -0.05880649
		 0.89706457 -0.20448413 0.88128376 -0.65401608 0.87573385 -0.50045544 0.87324959 -0.57920092
		 0.581738 -0.72792852 0.61889207 -0.60373658 0.90438169 -0.24662736 0.90290326 -0.027583882
		 0.85472214 -0.29337153 0.83574134 -0.57862419 0.89941972 -0.36353403 0.80165213 -0.27511662
		 0.74166662 -0.60783547 0.79896712 -0.28745437 0.90003002 -0.71608979 0.87830925 -0.63968915
		 0.90317738 -0.80540323 0.89521891 -0.077422649 0.89633089 -0.43476781 0.89961922
		 -0.42428845 0.90338391 -0.69813401 0.90509671 -0.043797087 0.90678561 -0.76138186
		 0.89077049 0.052208029 0.75228029 -0.70705712 0.86551952 -0.84816897 0.8501187 0.037571572
		 0.89396751 -0.026328852 0.90505958 -0.079478212 0.90408581 -0.54605997 0.88579363
		 -0.91017431 0.89405322 0.00082431408 0.89910167 -0.14540166 0.90188128 -0.34705064
		 0.90236974 -0.28129151 0.89466339 -0.77621365 0.8978861 -0.71826881 0.9010331 -0.30643097
		 0.89946055 -0.51755124 0.90211654 -0.79815847 0.86843008 -0.61274612 0.89248651 -0.57765931
		 0.87689131 -0.42727876 0.89764786 -0.17382745 0.88855249 -0.70353353 0.89703417 -0.049740791
		 0.89683759 0.01524907 0.8395946 -0.47669265 0.8921026 -0.68004292 0.88511235 -0.81153297
		 0.86703062 -0.1443366 0.86943185 -0.46462044 0.90803879 -0.84713399 0.87326288 -0.71004516
		 0.88513452 -0.77229816 0.89689124 -0.0018755978 0.75677347 -0.76594537 0.90829229
		 -0.56742424 0.88173044 -0.61869186 0.89926845 -0.68309164 0.90470868 -0.46163058
		 0.89807653 -0.75502598 0.90217102 -0.61334711 0.89008546 -0.51939714 0.9035368 -0.038880751
		 0.84408259 -0.80546486 0.86350608 -0.58241129 0.83798271 -0.81042606 0.89018142 -0.51762319
		 0.90147656 -0.79782915 0.89995074 -0.46966693 0.88941842 -0.17434968 0.8966524 -0.044118457
		 0.90545499 -0.69826669 0.90484083 -0.43505514 0.90072751 -0.42387357 0.90509683 -0.43401799
		 0.90042233 -0.30653656 0.89930516 -0.71885192 0.89922011 -0.69764304 0.89813405 -0.16959879
		 0.8975085 -0.43472868 0.89949286 -0.71776962 0.90111238 -0.2810289 0.89280909;
	setAttr ".uvtk[1250:1377]" -0.42310771 0.89865255 -0.28086147 0.89496028 -0.77489722
		 0.90137655 -0.17262821 0.89184332 -0.77734578 0.89776886 -0.30648711 0.90008587 -0.043228891
		 0.89835441 -0.34892884 0.90097946 -0.14570582 0.90266818 -0.61624724 0.89853692 -0.14589493
		 0.90247047 -0.89810103 0.90169293 -0.51874137 0.90347308 -0.001985664 0.90213126
		 -0.35021627 0.90219575 -0.58755368 0.84804219 -0.90644068 0.9064905 0.00018801546
		 0.90411246 -0.79311359 0.89247024 -0.53364193 0.90569168 -0.096475974 0.88958162
		 -0.71900547 0.8997826 -0.083229505 0.88656718 0.045922484 0.90862304 -0.28135797
		 0.89325207 0.035707824 0.90715015 -0.038218219 0.89930743 -0.77491713 0.90049946
		 -0.030997684 0.8955484 -0.51958966 0.89527893 -0.30635989 0.89997756 0.056776524
		 0.89397877 0.073271871 0.89797372 -0.14517689 0.90208888 0.072218932 0.89923525 -0.6365968
		 0.90211838 -0.90678519 0.89048743 -0.07576602 0.89541125 0.052776147 0.89939117 -0.34829813
		 0.90359098 -0.63745117 0.90355361 -0.074823625 0.89416516 0.0029763496 0.90106761
		 -0.25806013 0.90115404 -0.91264808 0.87851477 -0.09281078 0.90709084 -0.91271925
		 0.88712341 -0.80651814 0.90354049 0.047764231 0.8954255 -0.80868584 0.89990211 -0.71499449
		 0.89520162 -0.03342877 0.90883082 -0.71724421 0.88806987 -0.25813019 0.90134412 -0.53582019
		 0.87755936 -0.10915048 0.87438971 -0.37906992 0.87828034 0.073893562 0.89578837 -0.36066794
		 0.87479335 -0.54605627 0.90227431 -0.63777161 0.90010017 -0.29308403 0.87949204 -0.71551555
		 0.77293617 -0.12022194 0.87654674 0.057366714 0.90743673 -0.54975981 0.90482879 -0.31091779
		 0.81662023 -0.30702689 0.8853482 -0.074342445 0.89207107 -0.55211395 0.89278841 -0.3551904
		 0.90182436 -0.91738105 0.86818302 -0.37350827 0.90532923 -0.10358884 0.90143859 -0.80076069
		 0.90303826 -0.11478348 0.9035995 -0.64361882 0.72295266 -0.4313072 0.69874823 -0.70833296
		 0.90266204 -0.35543633 0.69238514 -0.22792858 0.84000576 -0.55586994 0.89536887 -0.25804892
		 0.90165484 -0.56740117 0.9085235 -0.32027021 0.87939572 -0.65670401 0.8332845 -0.31057605
		 0.82421893 -0.2323956 0.85512316 -0.40554661 0.80512726 -0.21557638 0.89724195 -0.043369535
		 0.89506572 -0.21871147 0.75761247 -0.044148847 0.84765548 -0.5579223 0.88942492 -0.29567215
		 0.904217 -0.58588821 0.91233718 -0.80818152 0.69979441 -0.29963779 0.87449604 -0.70530945
		 0.55989081 -0.45783985 0.82292992 -0.25834566 0.87213928 -0.46177852 0.88600111 -0.60137564
		 0.68588656 -0.027713874 0.88742721 -0.59200764 0.52353984 -0.58207887 0.88251585
		 -0.5720579 0.8858493 -0.65154058 0.90225542 -0.20592006 0.90745157 -0.75801104 0.66075075
		 -0.21146734 0.90433311 0.035601329 0.8038497 -0.49722481 0.83160174 0.07193324 0.8042677
		 -0.097729929 0.80766511 -0.58277464 0.62956887 -0.06920398 0.80826491 -0.63919353
		 0.89469939 -0.60167205 0.88522238 -0.14493859 0.86731756 -0.13935377 0.85966617 -0.64710945
		 0.87760991 -0.14090697 0.86273444 -0.18250424 0.89658755 -0.15256123 0.85346287 0.035137471
		 0.878021 -0.16296308 0.85334802 -0.11607726 0.88268191;
createNode skinCluster -n "skinCluster1";
	setAttr ".skm" 1;
	setAttr -s 662 ".wl";
	setAttr -s 3 ".wl[0].w[2:4]"  0.17549086395158561 0.4130780077366239 
		0.41143112831179057;
	setAttr -s 3 ".wl[1].w[2:4]"  0.16485553990014748 0.56032106634586332 
		0.27482339375398929;
	setAttr -s 3 ".wl[2].w[2:4]"  0.24867546170459143 0.40904949246605743 
		0.34227504582935103;
	setAttr -s 3 ".wl[3].w[2:4]"  0.28402717064596217 0.45613528293383726 
		0.25983754642020052;
	setAttr -s 3 ".wl[4].w[2:4]"  0.1101095318524782 0.44494523407376096 
		0.44494523407376085;
	setAttr -s 3 ".wl[5].w[2:4]"  0.16340233504031382 0.51142579701532964 
		0.3251718679443566;
	setAttr -s 3 ".wl[6].w[2:4]"  0.10364626228121306 0.44817686885939334 
		0.44817686885939362;
	setAttr -s 3 ".wl[7].w[2:4]"  0.15366383314795093 0.42316808342602447 
		0.42316808342602447;
	setAttr -s 4 ".wl[8].w[1:4]"  0.12246295280888198 0.17359537875410688 
		0.37908053973933153 0.32486112869767958;
	setAttr -s 4 ".wl[9].w[1:4]"  0.11447470937458172 0.1643676926873742 
		0.40533543834354607 0.31582215959449811;
	setAttr -s 3 ".wl[10].w[2:4]"  0.13649899405897065 0.43175050297051465 
		0.43175050297051465;
	setAttr -s 3 ".wl[11].w[2:4]"  0.14312176622276515 0.6944506042955404 
		0.16242762948169454;
	setAttr -s 3 ".wl[12].w[2:4]"  0.2463517957345629 0.58397778579913262 
		0.16967041846630451;
	setAttr -s 3 ".wl[13].w[2:4]"  0.15270200355646332 0.71407426127529106 
		0.13322373516824557;
	setAttr -s 4 ".wl[14].w[1:4]"  0.10881553229275467 0.15953163727179193 
		0.44886780639669271 0.28278502403876071;
	setAttr -s 4 ".wl[15].w[1:4]"  0.11864354083470569 0.16865777738147245 
		0.47347952691017209 0.23921915487364989;
	setAttr -s 4 ".wl[16].w[1:4]"  0.13049936220084782 0.18239196697224017 
		0.43137920041057193 0.25572947041634025;
	setAttr -s 3 ".wl[17].w[2:4]"  0.18645900954345965 0.62798005303298443 
		0.185560937423556;
	setAttr -s 3 ".wl[18].w[2:4]"  0.2184943632176414 0.55954838267362561 
		0.22195725410873304;
	setAttr -s 3 ".wl[19].w[2:4]"  0.23810879508945587 0.51857315161850837 
		0.24331805329203579;
	setAttr ".wl[20].w[29]"  1;
	setAttr -s 3 ".wl[21].w[2:4]"  0.094726202918722219 0.82342434991509317 
		0.081849447166184641;
	setAttr -s 3 ".wl[22].w[2:4]"  0.10589671149924774 0.80024574229155732 
		0.093857546209195078;
	setAttr -s 3 ".wl[23].w[2:4]"  0.15801959704214755 0.69841059315659171 
		0.1435698098012608;
	setAttr -s 3 ".wl[24].w[2:4]"  0.1981081165651547 0.40097719620036865 
		0.40091468723447665;
	setAttr -s 3 ".wl[25].w[2:4]"  0.28291992710195768 0.38110978349615365 
		0.33597028940188861;
	setAttr -s 3 ".wl[26].w[2:4]"  0.17605400547088068 0.41197299726455966 
		0.41197299726455966;
	setAttr -s 3 ".wl[27].w[2:4]"  0.064663953128681534 0.46766802343565922 
		0.46766802343565922;
	setAttr -s 3 ".wl[28].w[2:4]"  0.077576800123451015 0.46121159993827449 
		0.46121159993827449;
	setAttr -s 3 ".wl[29].w[2:4]"  0.23577152391917905 0.38699269815308479 
		0.37723577792773616;
	setAttr -s 3 ".wl[30].w[2:4]"  0.18887904697481983 0.40556047651259008 
		0.40556047651259008;
	setAttr -s 3 ".wl[31].w[2:4]"  0.15854040358003024 0.42072979820998491 
		0.42072979820998491;
	setAttr -s 3 ".wl[32].w[2:4]"  0.22806171106266707 0.39013730309254357 
		0.38180098584478922;
	setAttr -s 3 ".wl[33].w[2:4]"  0.13662996001741515 0.4316850199912925 
		0.43168501999129238;
	setAttr -s 3 ".wl[34].w[2:4]"  0.13352017906358338 0.43323991046820831 
		0.43323991046820831;
	setAttr -s 3 ".wl[35].w[2:4]"  0.090483582284258943 0.45475820885787049 
		0.45475820885787049;
	setAttr -s 3 ".wl[36].w[2:4]"  0.095397752804922395 0.45230112359753882 
		0.45230112359753882;
	setAttr -s 3 ".wl[37].w[2:4]"  0.18042543469085787 0.41326901253932891 
		0.40630555276981312;
	setAttr -s 3 ".wl[38].w[2:4]"  0.17788859175073868 0.41470023651173782 
		0.4074111717375235;
	setAttr -s 3 ".wl[39].w[2:4]"  0.063624045881316177 0.4681879770593419 
		0.4681879770593419;
	setAttr -s 3 ".wl[40].w[2:4]"  0.081194345262576323 0.45940282736871185 
		0.45940282736871185;
	setAttr -s 3 ".wl[41].w[2:4]"  0.23859720109642985 0.40989851101810182 
		0.35150428788546845;
	setAttr -s 3 ".wl[42].w[2:4]"  0.24091011938319432 0.40850682226875623 
		0.35058305834804948;
	setAttr -s 3 ".wl[43].w[2:4]"  0.29332566912631702 0.38039519094178065 
		0.32627913993190227;
	setAttr -s 3 ".wl[44].w[2:4]"  0.20594994574368211 0.40889059785619142 
		0.38515945640012633;
	setAttr -s 3 ".wl[45].w[2:4]"  0.20389043719785135 0.40974980289433077 
		0.38635975990781785;
	setAttr -s 3 ".wl[46].w[2:4]"  0.29501865725364429 0.41383936971139373 
		0.29114197303496198;
	setAttr -s 3 ".wl[47].w[2:4]"  0.2959648975986926 0.41404069109016722 
		0.28999441131114023;
	setAttr -s 3 ".wl[48].w[2:4]"  0.32331451594756511 0.377919428486996 
		0.29876605556543895;
	setAttr -s 3 ".wl[49].w[2:4]"  0.31024802438602711 0.41040165282964031 
		0.27935032278433253;
	setAttr -s 3 ".wl[50].w[2:4]"  0.32552670530259326 0.38634662521495677 
		0.28812666948245008;
	setAttr -s 3 ".wl[51].w[2:4]"  0.34053725949001235 0.41109534870514758 
		0.24836739180483999;
	setAttr -s 3 ".wl[52].w[2:4]"  0.3408487080896237 0.41557007072293206 
		0.24358122118744424;
	setAttr -s 3 ".wl[53].w[2:4]"  0.33636233337312554 0.37895933522718983 
		0.28467833139968457;
	setAttr -s 4 ".wl[54].w[2:5]"  0.34164797816698361 0.35658730451343668 
		0.15791593643553417 0.14384878088404549;
	setAttr -s 3 ".wl[55].w[2:4]"  0.40141047450682743 0.41802908823716001 
		0.18056043725601267;
	setAttr -s 3 ".wl[56].w[1:3]"  0.12945340156504626 0.43527329921747698 
		0.43527329921747682;
	setAttr -s 3 ".wl[57].w[1:3]"  0.13012960571080037 0.43493519714459966 
		0.43493519714459983;
	setAttr -s 3 ".wl[58].w[2:4]"  0.32583531817229822 0.43545843557173269 
		0.23870624625596912;
	setAttr -s 2 ".wl[59].w[2:3]"  0.37884926161890503 0.62115073838109491;
	setAttr -s 2 ".wl[60].w[2:3]"  0.4641620402230115 0.53583795977698845;
	setAttr -s 3 ".wl[61].w[1:3]"  0.075973979195991082 0.46226285866178862 
		0.46176316214222018;
	setAttr -s 3 ".wl[62].w[1:3]"  0.066853695572146488 0.4665731522139267 
		0.4665731522139267;
	setAttr -s 3 ".wl[63].w[2:4]"  0.20946932548162028 0.39526533725918983 
		0.39526533725918983;
	setAttr -s 3 ".wl[64].w[2:4]"  0.18949366314078947 0.40525316842960502 
		0.40525316842960546;
	setAttr -s 3 ".wl[65].w[2:4]"  0.20218853959961561 0.39890573020019227 
		0.39890573020019227;
	setAttr -s 3 ".wl[66].w[2:4]"  0.1760670362363172 0.41196648188184121 
		0.4119664818818416;
	setAttr -s 3 ".wl[67].w[2:4]"  0.2437161806662092 0.37950895339471602 
		0.37677486593907478;
	setAttr -s 3 ".wl[68].w[2:4]"  0.23743272342462377 0.38224044769453225 
		0.38032682888084401;
	setAttr -s 3 ".wl[69].w[2:4]"  0.2251789419811053 0.38741052900944734 
		0.38741052900944734;
	setAttr -s 3 ".wl[70].w[2:4]"  0.21405945744203872 0.39297027127898071 
		0.3929702712789806;
	setAttr -s 3 ".wl[71].w[2:4]"  0.22079909185162139 0.38960045407418936 
		0.38960045407418936;
	setAttr -s 3 ".wl[72].w[2:4]"  0.20785224516167511 0.39607387741916239 
		0.39607387741916239;
	setAttr -s 3 ".wl[73].w[2:4]"  0.24292797294344656 0.37853601352827682 
		0.37853601352827665;
	setAttr -s 3 ".wl[74].w[2:4]"  0.2383917666516927 0.3808041166741537 
		0.3808041166741537;
	setAttr -s 3 ".wl[75].w[2:4]"  0.22514184018702368 0.59018042361315781 
		0.18467773619981848;
	setAttr -s 3 ".wl[76].w[2:4]"  0.21090711477867163 0.59832484789208029 
		0.1907680373292481;
	setAttr -s 3 ".wl[77].w[2:4]"  0.2542046627871884 0.50535592872768442 
		0.24043940848512724;
	setAttr -s 3 ".wl[78].w[2:4]"  0.1962925994275776 0.6598965012789566 
		0.14381089929346577;
	setAttr -s 3 ".wl[79].w[2:4]"  0.20756697718021869 0.64370982769968232 
		0.14872319512009904;
	setAttr -s 3 ".wl[80].w[2:4]"  0.21350371595184636 0.62454648329709905 
		0.16194980075105458;
	setAttr -s 3 ".wl[81].w[1:3]"  0.22623540085766644 0.26747253709364249 
		0.50629206204869104;
	setAttr -s 3 ".wl[82].w[1:3]"  0.23048452633439853 0.27528498500011889 
		0.49423048866548258;
	setAttr -s 3 ".wl[83].w[1:3]"  0.22475208650207945 0.26739950733385537 
		0.50784840616406524;
	setAttr -s 3 ".wl[84].w[1:3]"  0.22544377535425827 0.27570495536634754 
		0.49885126927939416;
	setAttr -s 2 ".wl[85].w[2:3]"  0.28826331275477779 0.71173668724522221;
	setAttr -s 2 ".wl[86].w[2:3]"  0.30965684737603932 0.69034315262396062;
	setAttr -s 3 ".wl[87].w[1:3]"  0.21005671384787855 0.2704024206973239 
		0.5195408654547975;
	setAttr -s 3 ".wl[88].w[1:3]"  0.27185518293998195 0.30458474376505956 
		0.42356007329495837;
	setAttr -s 3 ".wl[89].w[1:3]"  0.26069263872396048 0.29114887108488724 
		0.44815849019115234;
	setAttr -s 3 ".wl[90].w[1:3]"  0.25841357568082735 0.29071420636484629 
		0.45087221795432642;
	setAttr -s 3 ".wl[91].w[1:3]"  0.25998131023596016 0.29252187794343476 
		0.44749681182060502;
	setAttr -s 3 ".wl[92].w[1:3]"  0.27357025150730269 0.31220925027306035 
		0.41422049821963686;
	setAttr -s 3 ".wl[93].w[1:3]"  0.25592397838385778 0.28847540632384527 
		0.45560061529229695;
	setAttr -s 3 ".wl[94].w[1:3]"  0.26397213382766183 0.31727864332948746 
		0.4187492228428506;
	setAttr -s 3 ".wl[95].w[1:3]"  0.25149860910042049 0.29559662486993449 
		0.45290476602964497;
	setAttr -s 3 ".wl[96].w[2:4]"  0.26548536258098354 0.48410504339837385 
		0.25040959402064261;
	setAttr -s 3 ".wl[97].w[2:4]"  0.25544458354897209 0.50351992505686782 
		0.24103549139416017;
	setAttr -s 3 ".wl[98].w[2:4]"  0.27205464689270015 0.47008569065128192 
		0.25785966245601782;
	setAttr -s 3 ".wl[99].w[2:4]"  0.26792889207173926 0.47808848868686166 
		0.25398261924139903;
	setAttr -s 3 ".wl[100].w[1:3]"  0.27357025150730269 0.31220925027306035 
		0.41422049821963686;
	setAttr -s 3 ".wl[101].w[1:3]"  0.26404046070013887 0.30029092887452874 
		0.4356686104253325;
	setAttr -s 3 ".wl[102].w[1:3]"  0.32327820620749409 0.34639699533102536 
		0.33032479846148055;
	setAttr -s 3 ".wl[103].w[1:3]"  0.32107394281512813 0.34383290737693911 
		0.33509314980793276;
	setAttr -s 3 ".wl[104].w[1:3]"  0.32584942210699508 0.35061740229165289 
		0.32353317560135197;
	setAttr -s 3 ".wl[105].w[1:3]"  0.32409032595881543 0.34854923226470474 
		0.32736044177647988;
	setAttr -s 3 ".wl[106].w[2:4]"  0.238943693442601 0.59573412940515746 
		0.16532217715224151;
	setAttr -s 2 ".wl[107].w[2:3]"  0.45766006235390816 0.54233993764609179;
	setAttr -s 2 ".wl[108].w[2:3]"  0.43725603253009226 0.56274396746990774;
	setAttr -s 3 ".wl[109].w[1:3]"  0.13547600952613212 0.43669023724622347 
		0.42783375322764433;
	setAttr -s 2 ".wl[110].w[2:3]"  0.29267646783364409 0.70732353216635602;
	setAttr -s 3 ".wl[111].w[1:3]"  0.18628836929682752 0.25841006648328418 
		0.5553015642198883;
	setAttr -s 2 ".wl[112].w[2:3]"  0.30077315808207611 0.69922684191792384;
	setAttr -s 2 ".wl[113].w[2:3]"  0.38200265112754433 0.61799734887245572;
	setAttr -s 3 ".wl[114].w[1:3]"  0.21463818973963816 0.27729224599731522 
		0.50806956426304661;
	setAttr -s 3 ".wl[115].w[1:3]"  0.23155944790173064 0.28262402629504269 
		0.4858165258032266;
	setAttr -s 2 ".wl[116].w[2:3]"  0.28750051434535939 0.71249948565464061;
	setAttr -s 2 ".wl[117].w[2:3]"  0.3081923614803137 0.6918076385196863;
	setAttr -s 2 ".wl[118].w[2:3]"  0.32993839705347539 0.67006160294652461;
	setAttr -s 2 ".wl[119].w[2:3]"  0.31585714883012805 0.68414285116987195;
	setAttr -s 2 ".wl[120].w[2:3]"  0.38610594731088743 0.61389405268911257;
	setAttr -s 3 ".wl[121].w[1:3]"  0.22069789089859251 0.28307232933697563 
		0.49622977976443178;
	setAttr -s 3 ".wl[122].w[1:3]"  0.23776919051318432 0.2875871205534743 
		0.47464368893334147;
	setAttr -s 2 ".wl[123].w[2:3]"  0.30424267787855119 0.69575732212144881;
	setAttr -s 3 ".wl[124].w[1:3]"  0.20444654875838 0.30428102310173005 
		0.49127242813988992;
	setAttr -s 3 ".wl[125].w[1:3]"  0.25572814560733542 0.32414202695639005 
		0.42012982743627458;
	setAttr -s 2 ".wl[126].w[2:3]"  0.43149697283086746 0.56850302716913259;
	setAttr -s 3 ".wl[127].w[1:3]"  0.16539370443871282 0.43176980635503537 
		0.40283648920625181;
	setAttr -s 3 ".wl[128].w[1:3]"  0.20842258561565183 0.315591475328311 
		0.47598593905603714;
	setAttr -s 3 ".wl[129].w[1:3]"  0.27375123920039984 0.32098908163396755 
		0.40525967916563266;
	setAttr -s 3 ".wl[130].w[1:3]"  0.29470055002736134 0.33375955570132321 
		0.37153989427131551;
	setAttr -s 2 ".wl[131].w[2:3]"  0.43149697283086746 0.56850302716913259;
	setAttr -s 3 ".wl[132].w[1:3]"  0.18660347982096881 0.45343106519613557 
		0.35996545498289567;
	setAttr -s 3 ".wl[133].w[1:3]"  0.20444654875838 0.30428102310173005 
		0.49127242813988992;
	setAttr -s 3 ".wl[134].w[1:3]"  0.18581875834442815 0.48436021419864694 
		0.32982102745692499;
	setAttr -s 3 ".wl[135].w[1:3]"  0.27630056564534372 0.36526502992528975 
		0.35843440442936664;
	setAttr -s 3 ".wl[136].w[1:3]"  0.26344734321065871 0.42412704248702526 
		0.31242561430231602;
	setAttr -s 3 ".wl[137].w[1:3]"  0.22061556366989932 0.45929332780476995 
		0.32009110852533068;
	setAttr -s 3 ".wl[138].w[1:3]"  0.24607587561697344 0.38728819361744737 
		0.36663593076557921;
	setAttr -s 3 ".wl[139].w[1:3]"  0.34162652598674242 0.37771686474781585 
		0.28065660926544167;
	setAttr -s 3 ".wl[140].w[1:3]"  0.33357471610173817 0.3622607085015917 
		0.30416457539667024;
	setAttr -s 3 ".wl[141].w[2:4]"  0.17357741125260098 0.41406377877110306 
		0.41235880997629598;
	setAttr -s 3 ".wl[142].w[2:4]"  0.16794498378117448 0.55035176150680565 
		0.28170325471201996;
	setAttr -s 3 ".wl[143].w[2:4]"  0.25020695079754923 0.40381941291522921 
		0.3459736362872215;
	setAttr -s 3 ".wl[144].w[2:4]"  0.2869619519479053 0.45084565035851781 
		0.26219239769357677;
	setAttr -s 3 ".wl[145].w[2:4]"  0.1641578083028902 0.50720891282244351 
		0.32863327887466631;
	setAttr -s 3 ".wl[146].w[2:4]"  0.10270647498599413 0.44864676250700297 
		0.44864676250700286;
	setAttr -s 4 ".wl[147].w[1:4]"  0.1140512087062422 0.16380879535558188 
		0.40689631934940296 0.31524367658877289;
	setAttr -s 3 ".wl[148].w[2:4]"  0.13593787928978596 0.43203106035510702 
		0.43203106035510697;
	setAttr -s 3 ".wl[149].w[2:4]"  0.14940969460659995 0.6807749369994095 
		0.16981536839399064;
	setAttr -s 3 ".wl[150].w[2:4]"  0.25031589535670262 0.5780471424960002 
		0.17163696214729715;
	setAttr -s 3 ".wl[151].w[2:4]"  0.15933048287004159 0.70187738867315552 
		0.13879212845680292;
	setAttr -s 4 ".wl[152].w[1:4]"  0.10809925133913494 0.15855773878274143 
		0.45174112237418163 0.28160188750394199;
	setAttr -s 4 ".wl[153].w[1:4]"  0.11715908486523924 0.16660315818547 
		0.47977459322704247 0.2364631637222484;
	setAttr -s 3 ".wl[154].w[2:4]"  0.18164020550484961 0.63759744629093684 
		0.18076234820421364;
	setAttr -s 4 ".wl[155].w[1:4]"  0.13325093154696838 0.18607484706608743 
		0.49164547999611424 0.18902874139083001;
	setAttr ".wl[156].w[30]"  1;
	setAttr -s 3 ".wl[157].w[2:4]"  0.099596186333589076 0.81446400701158772 
		0.085939806654823328;
	setAttr -s 3 ".wl[158].w[2:4]"  0.10171485605592737 0.80821357346566236 
		0.09007157047841019;
	setAttr -s 3 ".wl[159].w[2:4]"  0.15296836016065196 0.70812171423458437 
		0.13890992560476367;
	setAttr -s 3 ".wl[160].w[2:4]"  0.19674285211960332 0.401660601606326 
		0.40159654627407065;
	setAttr -s 3 ".wl[161].w[2:4]"  0.28220605664077536 0.38189748641086346 
		0.33589645694836123;
	setAttr -s 3 ".wl[162].w[2:4]"  0.17438664475895524 0.41280667762052242 
		0.41280667762052242;
	setAttr -s 3 ".wl[163].w[2:4]"  0.076098050797090963 0.46195097460145446 
		0.46195097460145446;
	setAttr -s 3 ".wl[164].w[2:4]"  0.23468419043023872 0.38763915389795323 
		0.37767665567180803;
	setAttr -s 3 ".wl[165].w[2:4]"  0.18755069895644599 0.40622465052177698 
		0.40622465052177698;
	setAttr -s 3 ".wl[166].w[2:4]"  0.15683667036467533 0.42158166481766229 
		0.42158166481766229;
	setAttr -s 3 ".wl[167].w[2:4]"  0.22696725575143753 0.3907707591382299 
		0.3822619851103326;
	setAttr -s 3 ".wl[168].w[2:4]"  0.13612111996721182 0.43193944001639406 
		0.43193944001639406;
	setAttr -s 3 ".wl[169].w[2:4]"  0.094579101996895412 0.45271044900155233 
		0.45271044900155233;
	setAttr -s 3 ".wl[170].w[2:4]"  0.180045207945356 0.41348303048344337 
		0.40647176157120063;
	setAttr -s 3 ".wl[171].w[2:4]"  0.079532832841370998 0.46023358357931449 
		0.46023358357931449;
	setAttr -s 3 ".wl[172].w[2:4]"  0.23822928914461183 0.41028523705352615 
		0.35148547380186201;
	setAttr -s 3 ".wl[173].w[2:4]"  0.29281164833986423 0.3810791595723016 
		0.32610919208783418;
	setAttr -s 3 ".wl[174].w[2:4]"  0.2034109141157753 0.41009028691209071 
		0.38649879897213407;
	setAttr -s 3 ".wl[175].w[2:4]"  0.29475051917722117 0.41438964522325838 
		0.29085983559952044;
	setAttr -s 3 ".wl[176].w[2:4]"  0.32311734853892543 0.37857759104920402 
		0.2983050604118706;
	setAttr -s 3 ".wl[177].w[2:4]"  0.31243332759639769 0.40665055582635534 
		0.28091611657724691;
	setAttr -s 3 ".wl[178].w[2:4]"  0.32721010396885736 0.38363194995907918 
		0.28915794607206341;
	setAttr -s 3 ".wl[179].w[2:4]"  0.34043552745608374 0.4117481372147978 
		0.24781633532911851;
	setAttr -s 3 ".wl[180].w[2:4]"  0.33631085542947764 0.37961897556412633 
		0.28407016900639603;
	setAttr -s 3 ".wl[181].w[2:4]"  0.39937494726812223 0.41712256597538255 
		0.18350248675649519;
	setAttr -s 3 ".wl[182].w[1:3]"  0.128521922076657 0.43573903896167154 
		0.43573903896167154;
	setAttr -s 3 ".wl[183].w[2:4]"  0.32857856214681969 0.4317405890643275 
		0.23968084878885287;
	setAttr -s 2 ".wl[184].w[2:3]"  0.38371371560605816 0.61628628439394184;
	setAttr -s 2 ".wl[185].w[2:3]"  0.46716045024164488 0.53283954975835512;
	setAttr -s 3 ".wl[186].w[1:3]"  0.074358178846868253 0.46308343686342573 
		0.46255838428970603;
	setAttr -s 3 ".wl[187].w[2:4]"  0.2083238949788345 0.39583805251058279 
		0.39583805251058274;
	setAttr -s 3 ".wl[188].w[2:4]"  0.18812775392390496 0.4059361230380476 
		0.40593612303804755;
	setAttr -s 3 ".wl[189].w[2:4]"  0.20107250407845248 0.39946374796077377 
		0.39946374796077377;
	setAttr -s 3 ".wl[190].w[2:4]"  0.17469348854280506 0.41265325572859746 
		0.41265325572859746;
	setAttr -s 3 ".wl[191].w[2:4]"  0.24280881093695592 0.37998747050868392 
		0.37720371855436025;
	setAttr -s 3 ".wl[192].w[2:4]"  0.2365188216104383 0.38271444195016713 
		0.38076673643939463;
	setAttr -s 3 ".wl[193].w[2:4]"  0.22422939464308364 0.38788530267845822 
		0.38788530267845822;
	setAttr -s 3 ".wl[194].w[2:4]"  0.21304024135870789 0.39347987932064593 
		0.39347987932064615;
	setAttr -s 3 ".wl[195].w[2:4]"  0.21983914866770285 0.39008042566614864 
		0.39008042566614853;
	setAttr -s 3 ".wl[196].w[2:4]"  0.20681855555220641 0.39659072222389691 
		0.39659072222389691;
	setAttr -s 3 ".wl[197].w[2:4]"  0.24210350292555069 0.37894824853722459 
		0.3789482485372247;
	setAttr -s 3 ".wl[198].w[2:4]"  0.2375469090331104 0.38122654548344481 
		0.38122654548344481;
	setAttr -s 3 ".wl[199].w[2:4]"  0.2226490146932403 0.59487006193734671 
		0.18248092336941299;
	setAttr -s 3 ".wl[200].w[2:4]"  0.20775365056761547 0.60440558569022795 
		0.18784076374215661;
	setAttr -s 3 ".wl[201].w[2:4]"  0.19930029290330073 0.65512892082884244 
		0.14557078626785674;
	setAttr -s 3 ".wl[202].w[2:4]"  0.20811516992044335 0.64316100619126371 
		0.148723823888293;
	setAttr -s 3 ".wl[203].w[2:4]"  0.21236745987155459 0.62682152080480169 
		0.16081101932364367;
	setAttr -s 3 ".wl[204].w[1:3]"  0.22489984163268009 0.26606322870282778 
		0.5090369296644921;
	setAttr -s 3 ".wl[205].w[1:3]"  0.22862800905307337 0.2731263056027855 
		0.4982456853441411;
	setAttr -s 3 ".wl[206].w[1:3]"  0.22424649519846776 0.26709821835941416 
		0.5086552864421181;
	setAttr -s 3 ".wl[207].w[1:3]"  0.22559275635712267 0.27638446134546929 
		0.49802278229740798;
	setAttr -s 2 ".wl[208].w[2:3]"  0.29228924842124082 0.70771075157875918;
	setAttr -s 3 ".wl[209].w[1:3]"  0.18495621003665796 0.25457987675011939 
		0.56046391321322264;
	setAttr -s 3 ".wl[210].w[1:3]"  0.21036037978919617 0.27145906270451042 
		0.51818055750629344;
	setAttr -s 3 ".wl[211].w[1:3]"  0.25955950641977377 0.28996895875110368 
		0.45047153482912267;
	setAttr -s 3 ".wl[212].w[1:3]"  0.25684396065872878 0.28896488568365086 
		0.45419115365762047;
	setAttr -s 3 ".wl[213].w[1:3]"  0.25526767299712599 0.28791525389268652 
		0.45681707311018743;
	setAttr -s 3 ".wl[214].w[1:3]"  0.25094150647950364 0.29522261779368125 
		0.45383587572681511;
	setAttr -s 3 ".wl[215].w[2:4]"  0.25307167800285596 0.50814792335532499 
		0.23878039864181913;
	setAttr -s 3 ".wl[216].w[2:4]"  0.26620679766868477 0.48145143393062079 
		0.25234176840069444;
	setAttr -s 3 ".wl[217].w[1:3]"  0.26308468908195015 0.29931230326846436 
		0.43760300764958543;
	setAttr -s 3 ".wl[218].w[1:3]"  0.32069238524210619 0.34346944825362669 
		0.33583816650426712;
	setAttr -s 3 ".wl[219].w[1:3]"  0.32374821692514899 0.34822644985328777 
		0.32802533322156324;
	setAttr -s 3 ".wl[220].w[2:4]"  0.2426089870584493 0.59022356717548208 
		0.16716744576606865;
	setAttr -s 2 ".wl[221].w[2:3]"  0.4608393420805546 0.53916065791944534;
	setAttr -s 2 ".wl[222].w[2:3]"  0.44109479350761727 0.55890520649238262;
	setAttr -s 3 ".wl[223].w[1:3]"  0.13429646243364499 0.43984241787229783 
		0.42586111969405727;
	setAttr -s 2 ".wl[224].w[2:3]"  0.29640912221353394 0.70359087778646612;
	setAttr -s 3 ".wl[225].w[1:3]"  0.18694810784324692 0.26022691684825777 
		0.55282497530849528;
	setAttr -s 2 ".wl[226].w[2:3]"  0.30573174814971649 0.69426825185028351;
	setAttr -s 2 ".wl[227].w[2:3]"  0.3866885716092156 0.61331142839078434;
	setAttr -s 3 ".wl[228].w[1:3]"  0.21485255918130869 0.27827578965922395 
		0.50687165115946731;
	setAttr -s 3 ".wl[229].w[1:3]"  0.23164646167370459 0.28324189725731236 
		0.48511164106898302;
	setAttr -s 2 ".wl[230].w[2:3]"  0.29217807422819192 0.70782192577180802;
	setAttr -s 2 ".wl[231].w[2:3]"  0.31205810860618355 0.68794189139381645;
	setAttr -s 2 ".wl[232].w[2:3]"  0.33267268108070336 0.66732731891929664;
	setAttr -s 2 ".wl[233].w[2:3]"  0.32069846745044317 0.67930153254955683;
	setAttr -s 2 ".wl[234].w[2:3]"  0.39064377045231546 0.60935622954768454;
	setAttr -s 3 ".wl[235].w[1:3]"  0.22100417662035624 0.28420621861626844 
		0.4947896047633753;
	setAttr -s 3 ".wl[236].w[1:3]"  0.23795553454446045 0.28833708800958879 
		0.47370737744595071;
	setAttr -s 2 ".wl[237].w[2:3]"  0.30893493506859904 0.69106506493140096;
	setAttr -s 3 ".wl[238].w[1:3]"  0.20486432075172165 0.30668025861273029 
		0.48845542063554798;
	setAttr -s 3 ".wl[239].w[1:3]"  0.25594681976757466 0.32547377106162706 
		0.41857940917079822;
	setAttr -s 2 ".wl[240].w[2:3]"  0.43503749361539928 0.56496250638460066;
	setAttr -s 3 ".wl[241].w[1:3]"  0.20887701146454363 0.31832173245992179 
		0.47280125607553458;
	setAttr -s 3 ".wl[242].w[1:3]"  0.27385765165989556 0.32166533918973939 
		0.40447700915036511;
	setAttr -s 3 ".wl[243].w[1:3]"  0.29446039783973016 0.3337554101695796 
		0.37178419199069018;
	setAttr -s 2 ".wl[244].w[2:3]"  0.43503749361539928 0.56496250638460066;
	setAttr -s 3 ".wl[245].w[1:3]"  0.16395725644883541 0.43537469302322573 
		0.4006680505279388;
	setAttr -s 3 ".wl[246].w[1:3]"  0.20486432075172165 0.30668025861273029 
		0.48845542063554798;
	setAttr -s 3 ".wl[247].w[1:3]"  0.18555233356863071 0.45599102660603819 
		0.3584566398253311;
	setAttr -s 3 ".wl[248].w[1:3]"  0.2762124220868501 0.36700713371398058 
		0.35678044419916932;
	setAttr -s 3 ".wl[249].w[1:3]"  0.24540548697084935 0.38971521949971694 
		0.36487929352943366;
	setAttr -s 3 ".wl[250].w[1:3]"  0.33373906848831619 0.36277748928110598 
		0.30348344223057788;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[0]" 0.43264496217076798;
	setAttr ".wl[251].w[13]" 0.045475309105490219;
	setAttr ".wl[251].w[17]" 0.045475391415618648;
	setAttr ".wl[251].w[21]" 0.43264496217076798;
	setAttr ".wl[251].w[22]" 0.043759375137355165;
	setAttr -s 5 ".wl[252].w";
	setAttr ".wl[252].w[0]" 0.35809217684327393;
	setAttr ".wl[252].w[13]" 0.071402319020909252;
	setAttr ".wl[252].w[17]" 0.094560446429699893;
	setAttr ".wl[252].w[21]" 0.38288638595128555;
	setAttr ".wl[252].w[22]" 0.093058671754831318;
	setAttr -s 5 ".wl[253].w";
	setAttr ".wl[253].w[0]" 0.37379655150534891;
	setAttr ".wl[253].w[13]" 0.074328928887654092;
	setAttr ".wl[253].w[17]" 0.099465533487189894;
	setAttr ".wl[253].w[21]" 0.37364257948857238;
	setAttr ".wl[253].w[22]" 0.078766406631234756;
	setAttr -s 5 ".wl[254].w";
	setAttr ".wl[254].w[0]" 0.11425753887463538;
	setAttr ".wl[254].w[1]" 0.066542090977052534;
	setAttr ".wl[254].w[21]" 0.36411470964317982;
	setAttr ".wl[254].w[22]" 0.33403766036727517;
	setAttr ".wl[254].w[23]" 0.12104800013785716;
	setAttr -s 5 ".wl[255].w";
	setAttr ".wl[255].w[0]" 0.20499077317245301;
	setAttr ".wl[255].w[17]" 0.096157830974494415;
	setAttr ".wl[255].w[21]" 0.36795397840485206;
	setAttr ".wl[255].w[22]" 0.22677882359934173;
	setAttr ".wl[255].w[23]" 0.10411859384885884;
	setAttr -s 5 ".wl[256].w";
	setAttr ".wl[256].w[0]" 0.073776457415679994;
	setAttr ".wl[256].w[1]" 0.042079047145081247;
	setAttr ".wl[256].w[21]" 0.48873042563331137;
	setAttr ".wl[256].w[22]" 0.31983932981499802;
	setAttr ".wl[256].w[23]" 0.075574739990929424;
	setAttr -s 5 ".wl[257].w";
	setAttr ".wl[257].w[0]" 0.23039306055037739;
	setAttr ".wl[257].w[17]" 0.089373444674794231;
	setAttr ".wl[257].w[21]" 0.37951310563781976;
	setAttr ".wl[257].w[22]" 0.20435893533473459;
	setAttr ".wl[257].w[23]" 0.096361453802274108;
	setAttr -s 5 ".wl[258].w";
	setAttr ".wl[258].w[9]" 0.11763314203458716;
	setAttr ".wl[258].w[21]" 0.2198110467441548;
	setAttr ".wl[258].w[22]" 0.27756217797056904;
	setAttr ".wl[258].w[23]" 0.25569359857756524;
	setAttr ".wl[258].w[24]" 0.12930003467312384;
	setAttr -s 5 ".wl[259].w";
	setAttr ".wl[259].w[0]" 0.11220259610156892;
	setAttr ".wl[259].w[21]" 0.23975414789702873;
	setAttr ".wl[259].w[22]" 0.27484140425488901;
	setAttr ".wl[259].w[23]" 0.24311486899118348;
	setAttr ".wl[259].w[24]" 0.13008698275532979;
	setAttr -s 5 ".wl[260].w";
	setAttr ".wl[260].w[0]" 0.116507058607681;
	setAttr ".wl[260].w[21]" 0.2570952411219033;
	setAttr ".wl[260].w[22]" 0.27696906448694847;
	setAttr ".wl[260].w[23]" 0.22742585648892105;
	setAttr ".wl[260].w[24]" 0.1220027792945462;
	setAttr -s 5 ".wl[261].w";
	setAttr ".wl[261].w[2]" 0.13054710174058998;
	setAttr ".wl[261].w[5]" 0.13054710174058998;
	setAttr ".wl[261].w[21]" 0.23055302303415257;
	setAttr ".wl[261].w[22]" 0.27073483230293433;
	setAttr ".wl[261].w[23]" 0.23761794118173316;
	setAttr -s 5 ".wl[262].w";
	setAttr ".wl[262].w[2]" 0.15834808510048093;
	setAttr ".wl[262].w[21]" 0.1630827563778369;
	setAttr ".wl[262].w[22]" 0.23559457084463603;
	setAttr ".wl[262].w[23]" 0.24515802222258401;
	setAttr ".wl[262].w[24]" 0.19781656545446216;
	setAttr -s 5 ".wl[263].w[21:25]"  0.1611374686970872 0.24269941596649525 
		0.25617345736410702 0.20228592926450129 0.13770372870780917;
	setAttr -s 5 ".wl[264].w[21:25]"  0.1563050739508213 0.2305183073303444 
		0.24917320168830073 0.21149534035774209 0.15250807667279148;
	setAttr -s 4 ".wl[265].w";
	setAttr ".wl[265].w[2]" 0.22444156805787796;
	setAttr ".wl[265].w[22]" 0.26115165324144529;
	setAttr ".wl[265].w[23]" 0.27801399490201434;
	setAttr ".wl[265].w[24]" 0.23639278379866233;
	setAttr -s 5 ".wl[266].w";
	setAttr ".wl[266].w[3]" 0.10290109377409964;
	setAttr ".wl[266].w[22]" 0.16219761460744311;
	setAttr ".wl[266].w[23]" 0.28908195018787664;
	setAttr ".wl[266].w[24]" 0.28908134702685578;
	setAttr ".wl[266].w[25]" 0.15673799440372468;
	setAttr -s 5 ".wl[267].w[22:26]"  0.14676856593929585 0.26508385274669077 
		0.27661371071818591 0.18903716310981145 0.12249670748601613;
	setAttr -s 5 ".wl[268].w[22:26]"  0.10998643459329988 0.21000693012979821 
		0.28180386774459754 0.24598597081322679 0.15221679671907751;
	setAttr -s 4 ".wl[269].w[22:25]"  0.15520573296715853 0.32023249375268314 
		0.32089542374379165 0.2036663495363667;
	setAttr -s 5 ".wl[270].w[22:26]"  0.066916819068840061 0.13266981573582767 
		0.34596892755113312 0.34596892755113312 0.10847551009306602;
	setAttr -s 5 ".wl[271].w[22:26]"  0.093222212795617876 0.20813666857455557 
		0.33065014004020499 0.25006333380435886 0.11792764478526264;
	setAttr -s 5 ".wl[272].w[22:26]"  0.048066297964959481 0.091461497536917361 
		0.27233527399557428 0.47117148946045934 0.11696544104208968;
	setAttr -s 5 ".wl[273].w[22:26]"  0.055280048364380781 0.10561421962217384 
		0.36783752788584734 0.36783752788584734 0.10343067624175072;
	setAttr -s 5 ".wl[274].w[22:26]"  0.059072458324385062 0.098266892708478826 
		0.24002825080702744 0.39407634275759568 0.20855605540251287;
	setAttr -s 5 ".wl[275].w[22:26]"  0.055349632748658326 0.096951807195750903 
		0.24585394515318779 0.43434789534347296 0.16749671955893006;
	setAttr -s 5 ".wl[276].w[22:26]"  0.020677261257277101 0.034245243341963202 
		0.077875438717731921 0.76536005070082447 0.10184200598220328;
	setAttr -s 5 ".wl[277].w[22:26]"  0.04876406884253396 0.076519707509895382 
		0.16205290297998354 0.42528400020538037 0.28737932046220682;
	setAttr -s 5 ".wl[278].w[22:26]"  0.047586712643434587 0.074043942117253014 
		0.14378912769503274 0.43409700260112938 0.30048321494315039;
	setAttr -s 5 ".wl[279].w[22:26]"  0.0037946142546087581 0.0055349339465380837 
		0.0094147904720792777 0.49062783066338689 0.49062783066338689;
	setAttr -s 3 ".wl[280].w";
	setAttr ".wl[280].w[0]" 0.42321255457549639;
	setAttr ".wl[280].w[13]" 0.31164540090417847;
	setAttr ".wl[280].w[14]" 0.26514204452032525;
	setAttr -s 5 ".wl[281].w";
	setAttr ".wl[281].w[0]" 0.59023374840650999;
	setAttr ".wl[281].w[1]" 0.12800765151974949;
	setAttr ".wl[281].w[2]" 0.07717721626956954;
	setAttr ".wl[281].w[13]" 0.10229078272388845;
	setAttr ".wl[281].w[17]" 0.10229060108028255;
	setAttr -s 5 ".wl[282].w";
	setAttr ".wl[282].w[0]" 0.20504738595227567;
	setAttr ".wl[282].w[13]" 0.051980861298902711;
	setAttr ".wl[282].w[17]" 0.051980967429199408;
	setAttr ".wl[282].w[21]" 0.60496566298298959;
	setAttr ".wl[282].w[22]" 0.086025122336632495;
	setAttr -s 5 ".wl[283].w";
	setAttr ".wl[283].w[0]" 0.33617417560429391;
	setAttr ".wl[283].w[1]" 0.11518695921964808;
	setAttr ".wl[283].w[17]" 0.33328155776198348;
	setAttr ".wl[283].w[18]" 0.11095422006791834;
	setAttr ".wl[283].w[21]" 0.10440308734615636;
	setAttr -s 5 ".wl[284].w";
	setAttr ".wl[284].w[0]" 0.33122442043984612;
	setAttr ".wl[284].w[1]" 0.18546976947683977;
	setAttr ".wl[284].w[17]" 0.24015278067779824;
	setAttr ".wl[284].w[18]" 0.12371444502410144;
	setAttr ".wl[284].w[21]" 0.11943858438141448;
	setAttr -s 4 ".wl[285].w";
	setAttr ".wl[285].w[0]" 0.33386356240807707;
	setAttr ".wl[285].w[1]" 0.18735803266346787;
	setAttr ".wl[285].w[17]" 0.30773441302727028;
	setAttr ".wl[285].w[18]" 0.17104399190118483;
	setAttr -s 4 ".wl[286].w";
	setAttr ".wl[286].w[0]" 0.41933157664780335;
	setAttr ".wl[286].w[1]" 0.18837175726054103;
	setAttr ".wl[286].w[13]" 0.22614075500126463;
	setAttr ".wl[286].w[18]" 0.16615591109039091;
	setAttr -s 4 ".wl[287].w";
	setAttr ".wl[287].w[0]" 0.39184096856233558;
	setAttr ".wl[287].w[13]" 0.11841908807846704;
	setAttr ".wl[287].w[14]" 0.0982629757755588;
	setAttr ".wl[287].w[21]" 0.39147696758363854;
	setAttr -s 4 ".wl[288].w";
	setAttr ".wl[288].w[0]" 0.34386132242502043;
	setAttr ".wl[288].w[13]" 0.13555392553153267;
	setAttr ".wl[288].w[17]" 0.31383613074013;
	setAttr ".wl[288].w[18]" 0.206748621303317;
	setAttr -s 3 ".wl[289].w[0:2]"  0.51817095790083523 0.27611687604833524 
		0.20571216605082956;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[0]" 0.33311505129600105;
	setAttr ".wl[290].w[1]" 0.33092868961293331;
	setAttr ".wl[290].w[22]" 0.33595625909106558;
	setAttr -s 3 ".wl[291].w[0:2]"  0.35645399553523038 0.35691429583687379 
		0.28663170862789583;
	setAttr -s 3 ".wl[292].w[0:2]"  0.37212064952661567 0.37355504082740715 
		0.25432430964597713;
	setAttr -s 3 ".wl[293].w[0:2]"  0.35367533976516202 0.35420484230003668 
		0.2921198179348013;
	setAttr -s 3 ".wl[294].w[0:2]"  0.14634996224735239 0.42682501887632385 
		0.42682501887632385;
	setAttr -s 2 ".wl[295].w[1:2]"  0.4339026951065042 0.56609730489349575;
	setAttr -s 2 ".wl[296].w[1:2]"  0.42784367266129553 0.57215632733870447;
	setAttr -s 3 ".wl[297].w[0:2]"  0.10528820635686748 0.44141527204764902 
		0.4532965215954835;
	setAttr -s 2 ".wl[298].w[1:2]"  0.42763594392727056 0.57236405607272944;
	setAttr -s 3 ".wl[299].w[0:2]"  0.26422660501022682 0.37968083379332906 
		0.35609256119644406;
	setAttr -s 3 ".wl[300].w[0:2]"  0.26271358231652442 0.35699538957933313 
		0.38029102810414256;
	setAttr -s 3 ".wl[301].w[0:2]"  0.18421770491491624 0.31036046357773739 
		0.50542183150734643;
	setAttr -s 3 ".wl[302].w[0:2]"  0.23239433646499799 0.38527386215611514 
		0.38233180137888689;
	setAttr -s 3 ".wl[303].w[0:2]"  0.18824824680604199 0.30988050479326229 
		0.50187124840069575;
	setAttr -s 4 ".wl[304].w";
	setAttr ".wl[304].w[0]" 0.3923093110387002;
	setAttr ".wl[304].w[1]" 0.11043348687854078;
	setAttr ".wl[304].w[17]" 0.36219673320621742;
	setAttr ".wl[304].w[18]" 0.13506046887654155;
	setAttr -s 5 ".wl[305].w";
	setAttr ".wl[305].w[0]" 0.37170105867454806;
	setAttr ".wl[305].w[1]" 0.10863144920911764;
	setAttr ".wl[305].w[17]" 0.31078747173103732;
	setAttr ".wl[305].w[18]" 0.11262982955515433;
	setAttr ".wl[305].w[21]" 0.096250190830142635;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[0]" 0.27494434024099201;
	setAttr ".wl[306].w[17]" 0.2944479629215857;
	setAttr ".wl[306].w[18]" 0.21049629917055829;
	setAttr ".wl[306].w[19]" 0.11544008263957065;
	setAttr ".wl[306].w[21]" 0.10467131502729342;
	setAttr -s 3 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.3947330925480842;
	setAttr ".wl[307].w[17]" 0.39473309254808447;
	setAttr ".wl[307].w[18]" 0.21053381490383133;
	setAttr -s 5 ".wl[308].w";
	setAttr ".wl[308].w[0]" 0.29311449861959887;
	setAttr ".wl[308].w[17]" 0.29367173153021237;
	setAttr ".wl[308].w[18]" 0.17991965153794892;
	setAttr ".wl[308].w[19]" 0.10597149960004502;
	setAttr ".wl[308].w[21]" 0.12732261871219483;
	setAttr -s 5 ".wl[309].w";
	setAttr ".wl[309].w[0]" 0.24325417610100639;
	setAttr ".wl[309].w[17]" 0.29955440326386429;
	setAttr ".wl[309].w[18]" 0.22759406436309432;
	setAttr ".wl[309].w[19]" 0.11753229406796507;
	setAttr ".wl[309].w[21]" 0.11206506220406984;
	setAttr -s 5 ".wl[310].w";
	setAttr ".wl[310].w[0]" 0.33824160132580616;
	setAttr ".wl[310].w[13]" 0.11566260824720163;
	setAttr ".wl[310].w[17]" 0.27247640739625029;
	setAttr ".wl[310].w[18]" 0.15542536709147556;
	setAttr ".wl[310].w[21]" 0.1181940159392664;
	setAttr -s 5 ".wl[311].w";
	setAttr ".wl[311].w[0]" 0.25450447243066771;
	setAttr ".wl[311].w[17]" 0.28730546170459992;
	setAttr ".wl[311].w[18]" 0.216161188135851;
	setAttr ".wl[311].w[19]" 0.1246338016124437;
	setAttr ".wl[311].w[20]" 0.1173950761164378;
	setAttr -s 5 ".wl[312].w";
	setAttr ".wl[312].w[0]" 0.30092489298077246;
	setAttr ".wl[312].w[1]" 0.11304321379235578;
	setAttr ".wl[312].w[17]" 0.30092489298077246;
	setAttr ".wl[312].w[18]" 0.17635755517767707;
	setAttr ".wl[312].w[19]" 0.1087494450684222;
	setAttr -s 4 ".wl[313].w";
	setAttr ".wl[313].w[0]" 0.31275011636797412;
	setAttr ".wl[313].w[17]" 0.3659945355184705;
	setAttr ".wl[313].w[18]" 0.20974246557915965;
	setAttr ".wl[313].w[19]" 0.1115128825343958;
	setAttr -s 5 ".wl[314].w";
	setAttr ".wl[314].w[0]" 0.18982802543725863;
	setAttr ".wl[314].w[17]" 0.31623439500375394;
	setAttr ".wl[314].w[18]" 0.27928787420267087;
	setAttr ".wl[314].w[19]" 0.12036719096360558;
	setAttr ".wl[314].w[20]" 0.094282514392710862;
	setAttr -s 5 ".wl[315].w";
	setAttr ".wl[315].w[0]" 0.23948967865121187;
	setAttr ".wl[315].w[17]" 0.25894998823744497;
	setAttr ".wl[315].w[18]" 0.20469405255036752;
	setAttr ".wl[315].w[19]" 0.14941178923148932;
	setAttr ".wl[315].w[20]" 0.14745449132948626;
	setAttr -s 5 ".wl[316].w";
	setAttr ".wl[316].w[0]" 0.23823376840175511;
	setAttr ".wl[316].w[17]" 0.26553664131301563;
	setAttr ".wl[316].w[18]" 0.21380355133730805;
	setAttr ".wl[316].w[19]" 0.14289240118412658;
	setAttr ".wl[316].w[20]" 0.13953363776379463;
	setAttr -s 4 ".wl[317].w";
	setAttr ".wl[317].w[0]" 0.32712302985876235;
	setAttr ".wl[317].w[1]" 0.15626564955285718;
	setAttr ".wl[317].w[17]" 0.32712302985876235;
	setAttr ".wl[317].w[18]" 0.18948829072961815;
	setAttr -s 4 ".wl[318].w";
	setAttr ".wl[318].w[0]" 0.32121246840751144;
	setAttr ".wl[318].w[1]" 0.18074758947394257;
	setAttr ".wl[318].w[17]" 0.32121246840751144;
	setAttr ".wl[318].w[18]" 0.17682747371103458;
	setAttr -s 3 ".wl[319].w";
	setAttr ".wl[319].w[0]" 0.37294700984706375;
	setAttr ".wl[319].w[1]" 0.2541059803058725;
	setAttr ".wl[319].w[17]" 0.37294700984706375;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[0]" 0.38655868078269601;
	setAttr ".wl[320].w[1]" 0.22688263843460796;
	setAttr ".wl[320].w[17]" 0.38655868078269601;
	setAttr -s 4 ".wl[321].w";
	setAttr ".wl[321].w[0]" 0.32569162155347409;
	setAttr ".wl[321].w[1]" 0.1507963149154285;
	setAttr ".wl[321].w[17]" 0.32569162155347431;
	setAttr ".wl[321].w[18]" 0.19782044197762305;
	setAttr -s 5 ".wl[322].w";
	setAttr ".wl[322].w[0]" 0.2600840375661651;
	setAttr ".wl[322].w[1]" 0.13881902204182664;
	setAttr ".wl[322].w[17]" 0.2600840375661651;
	setAttr ".wl[322].w[18]" 0.15066816550535381;
	setAttr ".wl[322].w[21]" 0.19034473732048932;
	setAttr -s 4 ".wl[323].w";
	setAttr ".wl[323].w[0]" 0.25397718566673583;
	setAttr ".wl[323].w[17]" 0.32174957559477835;
	setAttr ".wl[323].w[18]" 0.27242110273774467;
	setAttr ".wl[323].w[19]" 0.15185213600074124;
	setAttr -s 4 ".wl[324].w";
	setAttr ".wl[324].w[0]" 0.25937214357098942;
	setAttr ".wl[324].w[17]" 0.30512588903305499;
	setAttr ".wl[324].w[18]" 0.26543012739493566;
	setAttr ".wl[324].w[19]" 0.17007184000101996;
	setAttr -s 5 ".wl[325].w";
	setAttr ".wl[325].w[0]" 0.077991206780481687;
	setAttr ".wl[325].w[17]" 0.41545928978921776;
	setAttr ".wl[325].w[18]" 0.37774521026489793;
	setAttr ".wl[325].w[19]" 0.078290773420159068;
	setAttr ".wl[325].w[20]" 0.050513519745243526;
	setAttr -s 5 ".wl[326].w";
	setAttr ".wl[326].w[0]" 0.092492642077367612;
	setAttr ".wl[326].w[17]" 0.36456122367306781;
	setAttr ".wl[326].w[18]" 0.36456122367306781;
	setAttr ".wl[326].w[19]" 0.10784071199845308;
	setAttr ".wl[326].w[20]" 0.070544198578043588;
	setAttr -s 5 ".wl[327].w";
	setAttr ".wl[327].w[0]" 0.078365397808144929;
	setAttr ".wl[327].w[17]" 0.17183009591960566;
	setAttr ".wl[327].w[18]" 0.39176350254333803;
	setAttr ".wl[327].w[19]" 0.28218453052508086;
	setAttr ".wl[327].w[20]" 0.075856473203830668;
	setAttr -s 5 ".wl[328].w";
	setAttr ".wl[328].w[0]" 0.069863226618522567;
	setAttr ".wl[328].w[17]" 0.16264505573655583;
	setAttr ".wl[328].w[18]" 0.41776393716879839;
	setAttr ".wl[328].w[19]" 0.2793433840380472;
	setAttr ".wl[328].w[20]" 0.070384396438075952;
	setAttr -s 5 ".wl[329].w";
	setAttr ".wl[329].w[0]" 0.061337655402723915;
	setAttr ".wl[329].w[17]" 0.18789960064805608;
	setAttr ".wl[329].w[18]" 0.4850726835861261;
	setAttr ".wl[329].w[19]" 0.19365800034915784;
	setAttr ".wl[329].w[20]" 0.072032060013936194;
	setAttr -s 5 ".wl[330].w";
	setAttr ".wl[330].w[0]" 0.069519279617947502;
	setAttr ".wl[330].w[17]" 0.19706290114838357;
	setAttr ".wl[330].w[18]" 0.45354558043169818;
	setAttr ".wl[330].w[19]" 0.20281472756631427;
	setAttr ".wl[330].w[20]" 0.077057511235656573;
	setAttr -s 5 ".wl[331].w";
	setAttr ".wl[331].w[0]" 0.10659128714976664;
	setAttr ".wl[331].w[17]" 0.3122828883917837;
	setAttr ".wl[331].w[18]" 0.36275446168962167;
	setAttr ".wl[331].w[19]" 0.14637825019818354;
	setAttr ".wl[331].w[20]" 0.071993112570644488;
	setAttr -s 5 ".wl[332].w";
	setAttr ".wl[332].w[0]" 0.092747008826893004;
	setAttr ".wl[332].w[17]" 0.31813309607875789;
	setAttr ".wl[332].w[18]" 0.38320109596438007;
	setAttr ".wl[332].w[19]" 0.13867671541419382;
	setAttr ".wl[332].w[20]" 0.067242083715775378;
	setAttr -s 5 ".wl[333].w";
	setAttr ".wl[333].w[0]" 0.044028211989917534;
	setAttr ".wl[333].w[17]" 0.082204547785318383;
	setAttr ".wl[333].w[18]" 0.40718622462403536;
	setAttr ".wl[333].w[19]" 0.40718622462403536;
	setAttr ".wl[333].w[20]" 0.059394790976693222;
	setAttr -s 5 ".wl[334].w";
	setAttr ".wl[334].w[0]" 0.031070138308891881;
	setAttr ".wl[334].w[17]" 0.059994076779449387;
	setAttr ".wl[334].w[18]" 0.43290974384754721;
	setAttr ".wl[334].w[19]" 0.43290974384754721;
	setAttr ".wl[334].w[20]" 0.043116297216564195;
	setAttr -s 5 ".wl[335].w";
	setAttr ".wl[335].w[0]" 0.044211852091839025;
	setAttr ".wl[335].w[17]" 0.11028481463259274;
	setAttr ".wl[335].w[18]" 0.5233645863302383;
	setAttr ".wl[335].w[19]" 0.26483331180787228;
	setAttr ".wl[335].w[20]" 0.0573054351374577;
	setAttr -s 5 ".wl[336].w";
	setAttr ".wl[336].w[0]" 0.057976759348109801;
	setAttr ".wl[336].w[17]" 0.1360678473526544;
	setAttr ".wl[336].w[18]" 0.44179211332142232;
	setAttr ".wl[336].w[19]" 0.29205739538079944;
	setAttr ".wl[336].w[20]" 0.072105884597014044;
	setAttr -s 5 ".wl[337].w";
	setAttr ".wl[337].w[0]" 0.054978486471948661;
	setAttr ".wl[337].w[17]" 0.10349429292470164;
	setAttr ".wl[337].w[18]" 0.27746965350135955;
	setAttr ".wl[337].w[19]" 0.4680358946196147;
	setAttr ".wl[337].w[20]" 0.096021672482375281;
	setAttr -s 5 ".wl[338].w";
	setAttr ".wl[338].w[0]" 0.045049944914919073;
	setAttr ".wl[338].w[17]" 0.087719566931861184;
	setAttr ".wl[338].w[18]" 0.25379787188479386;
	setAttr ".wl[338].w[19]" 0.53217576596059146;
	setAttr ".wl[338].w[20]" 0.081256850307834583;
	setAttr -s 5 ".wl[339].w";
	setAttr ".wl[339].w[0]" 0.035876554387707475;
	setAttr ".wl[339].w[17]" 0.075534120034376373;
	setAttr ".wl[339].w[18]" 0.21416680482591921;
	setAttr ".wl[339].w[19]" 0.61389349386488556;
	setAttr ".wl[339].w[20]" 0.060529026887111551;
	setAttr -s 5 ".wl[340].w";
	setAttr ".wl[340].w[0]" 0.051522716963042794;
	setAttr ".wl[340].w[17]" 0.10407864220257892;
	setAttr ".wl[340].w[18]" 0.26814843343773437;
	setAttr ".wl[340].w[19]" 0.49239590867871552;
	setAttr ".wl[340].w[20]" 0.083854298717928377;
	setAttr -s 5 ".wl[341].w";
	setAttr ".wl[341].w[0]" 0.067229845548002029;
	setAttr ".wl[341].w[17]" 0.09331590766398562;
	setAttr ".wl[341].w[18]" 0.099322684586740304;
	setAttr ".wl[341].w[19]" 0.37006578110063598;
	setAttr ".wl[341].w[20]" 0.37006578110063598;
	setAttr -s 5 ".wl[342].w";
	setAttr ".wl[342].w[0]" 0.054532883885127198;
	setAttr ".wl[342].w[17]" 0.079799347756123892;
	setAttr ".wl[342].w[18]" 0.085067636478281097;
	setAttr ".wl[342].w[19]" 0.39030006594023386;
	setAttr ".wl[342].w[20]" 0.39030006594023386;
	setAttr -s 5 ".wl[343].w";
	setAttr ".wl[343].w[0]" 0.057675578408354231;
	setAttr ".wl[343].w[17]" 0.0848842146207444;
	setAttr ".wl[343].w[18]" 0.088324994568412182;
	setAttr ".wl[343].w[19]" 0.38455760620124457;
	setAttr ".wl[343].w[20]" 0.38455760620124457;
	setAttr -s 5 ".wl[344].w";
	setAttr ".wl[344].w[0]" 0.070995025468672701;
	setAttr ".wl[344].w[17]" 0.098455054737087183;
	setAttr ".wl[344].w[18]" 0.10233745218039826;
	setAttr ".wl[344].w[19]" 0.36410623380692103;
	setAttr ".wl[344].w[20]" 0.36410623380692103;
	setAttr -s 4 ".wl[345].w";
	setAttr ".wl[345].w[0]" 0.043580405130112583;
	setAttr ".wl[345].w[1]" 0.1127890755325536;
	setAttr ".wl[345].w[2]" 0.42181525966866695;
	setAttr ".wl[345].w[9]" 0.42181525966866695;
	setAttr -s 3 ".wl[346].w[0:2]"  0.10066396335131182 0.25596972742850366 
		0.64336630922018445;
	setAttr -s 3 ".wl[347].w[0:2]"  0.14897608446366467 0.26850007943535431 
		0.58252383610098102;
	setAttr -s 3 ".wl[348].w[0:2]"  0.098152718863900687 0.20523091265446908 
		0.69661636848163022;
	setAttr -s 3 ".wl[349].w[0:2]"  0.16238153699387342 0.28435589177920828 
		0.55326257122691824;
	setAttr -s 3 ".wl[350].w[0:2]"  0.12794340211485267 0.26060208492818104 
		0.61145451295696629;
	setAttr -s 4 ".wl[351].w";
	setAttr ".wl[351].w[0]" 0.037125900740044349;
	setAttr ".wl[351].w[1]" 0.093819326582768134;
	setAttr ".wl[351].w[2]" 0.43452738633859378;
	setAttr ".wl[351].w[9]" 0.43452738633859378;
	setAttr -s 4 ".wl[352].w";
	setAttr ".wl[352].w[0]" 0.068410161588878277;
	setAttr ".wl[352].w[1]" 0.13211955563587297;
	setAttr ".wl[352].w[2]" 0.35217269693087866;
	setAttr ".wl[352].w[9]" 0.44729758584437018;
	setAttr -s 4 ".wl[353].w";
	setAttr ".wl[353].w[0]" 0.044066636321644211;
	setAttr ".wl[353].w[1]" 0.13082813752427372;
	setAttr ".wl[353].w[2]" 0.42176423177428818;
	setAttr ".wl[353].w[9]" 0.40334099437979398;
	setAttr -s 4 ".wl[354].w";
	setAttr ".wl[354].w[0]" 0.053493137482841825;
	setAttr ".wl[354].w[1]" 0.17648678475625881;
	setAttr ".wl[354].w[2]" 0.40761569805304521;
	setAttr ".wl[354].w[9]" 0.36240437970785422;
	setAttr -s 3 ".wl[355].w[0:2]"  0.095916778711440637 0.30741601904161336 
		0.59666720224694603;
	setAttr -s 4 ".wl[356].w";
	setAttr ".wl[356].w[0]" 0.093134189983276966;
	setAttr ".wl[356].w[1]" 0.23225549200392459;
	setAttr ".wl[356].w[2]" 0.67087987206870092;
	setAttr ".wl[356].w[9]" 0.0037304459440975313;
	setAttr -s 4 ".wl[357].w";
	setAttr ".wl[357].w[0]" 0.067235976535139186;
	setAttr ".wl[357].w[1]" 0.13697972023730998;
	setAttr ".wl[357].w[2]" 0.33147093026237451;
	setAttr ".wl[357].w[9]" 0.46431337296517633;
	setAttr -s 3 ".wl[358].w[0:2]"  0.13548566296511275 0.27703996761300143 
		0.5874743694218858;
	setAttr -s 4 ".wl[359].w";
	setAttr ".wl[359].w[0]" 0.090300370111494582;
	setAttr ".wl[359].w[1]" 0.16022579703060319;
	setAttr ".wl[359].w[2]" 0.3143553733782517;
	setAttr ".wl[359].w[9]" 0.43511845947965055;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[1]" 0.26126542952226173;
	setAttr ".wl[360].w[2]" 0.55217494224096841;
	setAttr ".wl[360].w[10]" 0.18655962823676983;
	setAttr -s 4 ".wl[361].w";
	setAttr ".wl[361].w[1]" 0.12809832013091987;
	setAttr ".wl[361].w[2]" 0.2788029456837034;
	setAttr ".wl[361].w[9]" 0.49968785023023399;
	setAttr ".wl[361].w[10]" 0.093410883955142701;
	setAttr -s 4 ".wl[362].w";
	setAttr ".wl[362].w[1]" 0.14190585660512572;
	setAttr ".wl[362].w[2]" 0.28153748184912097;
	setAttr ".wl[362].w[9]" 0.4809506047033737;
	setAttr ".wl[362].w[10]" 0.095606056842379508;
	setAttr -s 4 ".wl[363].w";
	setAttr ".wl[363].w[1]" 0.15222104468397896;
	setAttr ".wl[363].w[2]" 0.28195174972899484;
	setAttr ".wl[363].w[9]" 0.4680564969982336;
	setAttr ".wl[363].w[10]" 0.097770708588792596;
	setAttr -s 4 ".wl[364].w";
	setAttr ".wl[364].w[1]" 0.15439070232828137;
	setAttr ".wl[364].w[2]" 0.27901914339269845;
	setAttr ".wl[364].w[9]" 0.46906026220308106;
	setAttr ".wl[364].w[10]" 0.097529892075939054;
	setAttr -s 4 ".wl[365].w";
	setAttr ".wl[365].w[1]" 0.14714006621917219;
	setAttr ".wl[365].w[2]" 0.27502739957064087;
	setAttr ".wl[365].w[9]" 0.48289651793654359;
	setAttr ".wl[365].w[10]" 0.094936016273643356;
	setAttr -s 5 ".wl[366].w";
	setAttr ".wl[366].w[2]" 0.043447067575392719;
	setAttr ".wl[366].w[9]" 0.42160422377267848;
	setAttr ".wl[366].w[10]" 0.42174826736636656;
	setAttr ".wl[366].w[11]" 0.065470880503678996;
	setAttr ".wl[366].w[12]" 0.047729560781883326;
	setAttr -s 5 ".wl[367].w";
	setAttr ".wl[367].w[2]" 0.036030445074258011;
	setAttr ".wl[367].w[9]" 0.43513397897650913;
	setAttr ".wl[367].w[10]" 0.4351569989659298;
	setAttr ".wl[367].w[11]" 0.054187800426354862;
	setAttr ".wl[367].w[12]" 0.03949077655694818;
	setAttr -s 5 ".wl[368].w";
	setAttr ".wl[368].w[2]" 0.035857885266549511;
	setAttr ".wl[368].w[9]" 0.43554014862922386;
	setAttr ".wl[368].w[10]" 0.43554014862922386;
	setAttr ".wl[368].w[11]" 0.053812860978585737;
	setAttr ".wl[368].w[12]" 0.039248956496417173;
	setAttr -s 5 ".wl[369].w";
	setAttr ".wl[369].w[2]" 0.043223097137627446;
	setAttr ".wl[369].w[9]" 0.4222746835161213;
	setAttr ".wl[369].w[10]" 0.4222892490439093;
	setAttr ".wl[369].w[11]" 0.064856140576747559;
	setAttr ".wl[369].w[12]" 0.047356829725594282;
	setAttr -s 5 ".wl[370].w";
	setAttr ".wl[370].w[2]" 0.049051825706379781;
	setAttr ".wl[370].w[9]" 0.41161474298100098;
	setAttr ".wl[370].w[10]" 0.41171951097618353;
	setAttr ".wl[370].w[11]" 0.07374731640328859;
	setAttr ".wl[370].w[12]" 0.053866603933146934;
	setAttr -s 5 ".wl[371].w";
	setAttr ".wl[371].w[2]" 0.049128114014341098;
	setAttr ".wl[371].w[9]" 0.41132158894430854;
	setAttr ".wl[371].w[10]" 0.41150917380235913;
	setAttr ".wl[371].w[11]" 0.074018958869739193;
	setAttr ".wl[371].w[12]" 0.054022164369252029;
	setAttr -s 5 ".wl[372].w";
	setAttr ".wl[372].w[2]" 0.057252111916228789;
	setAttr ".wl[372].w[9]" 0.38374485531739777;
	setAttr ".wl[372].w[10]" 0.39725504994224647;
	setAttr ".wl[372].w[11]" 0.093890873263022562;
	setAttr ".wl[372].w[12]" 0.06785710956110455;
	setAttr -s 5 ".wl[373].w";
	setAttr ".wl[373].w[2]" 0.051648233905960655;
	setAttr ".wl[373].w[9]" 0.39349673399546808;
	setAttr ".wl[373].w[10]" 0.40930856812439587;
	setAttr ".wl[373].w[11]" 0.084506656061641067;
	setAttr ".wl[373].w[12]" 0.061039807912534279;
	setAttr -s 5 ".wl[374].w";
	setAttr ".wl[374].w[2]" 0.05162530150474489;
	setAttr ".wl[374].w[9]" 0.39426495576622078;
	setAttr ".wl[374].w[10]" 0.40902026845492079;
	setAttr ".wl[374].w[11]" 0.084195088147073049;
	setAttr ".wl[374].w[12]" 0.060894386127040512;
	setAttr -s 5 ".wl[375].w";
	setAttr ".wl[375].w[2]" 0.057259326578402027;
	setAttr ".wl[375].w[9]" 0.38500485208587648;
	setAttr ".wl[375].w[10]" 0.39683233976024257;
	setAttr ".wl[375].w[11]" 0.093298970443723331;
	setAttr ".wl[375].w[12]" 0.067604511131755723;
	setAttr -s 5 ".wl[376].w";
	setAttr ".wl[376].w[2]" 0.061940021607864451;
	setAttr ".wl[376].w[9]" 0.37641280425593981;
	setAttr ".wl[376].w[10]" 0.38714836432270133;
	setAttr ".wl[376].w[11]" 0.10115854484707744;
	setAttr ".wl[376].w[12]" 0.073340264966417004;
	setAttr -s 5 ".wl[377].w";
	setAttr ".wl[377].w[2]" 0.061917051775881006;
	setAttr ".wl[377].w[9]" 0.37587092386118959;
	setAttr ".wl[377].w[10]" 0.3873131503834551;
	setAttr ".wl[377].w[11]" 0.10144527964713128;
	setAttr ".wl[377].w[12]" 0.073453594332342859;
	setAttr -s 5 ".wl[378].w";
	setAttr ".wl[378].w[2]" 0.015281458084454929;
	setAttr ".wl[378].w[9]" 0.038449358420053655;
	setAttr ".wl[378].w[10]" 0.42727569490939282;
	setAttr ".wl[378].w[11]" 0.4237579819014613;
	setAttr ".wl[378].w[12]" 0.095235506684637247;
	setAttr -s 5 ".wl[379].w";
	setAttr ".wl[379].w[2]" 0.013478504821742112;
	setAttr ".wl[379].w[9]" 0.033980840912948049;
	setAttr ".wl[379].w[10]" 0.43710330075818771;
	setAttr ".wl[379].w[11]" 0.43071645281273357;
	setAttr ".wl[379].w[12]" 0.084720900694388299;
	setAttr -s 5 ".wl[380].w";
	setAttr ".wl[380].w[2]" 0.014948768209630757;
	setAttr ".wl[380].w[9]" 0.037682463196850827;
	setAttr ".wl[380].w[10]" 0.42969503914025303;
	setAttr ".wl[380].w[11]" 0.42407099985226449;
	setAttr ".wl[380].w[12]" 0.09360272960100087;
	setAttr -s 5 ".wl[381].w";
	setAttr ".wl[381].w[2]" 0.017643359932536979;
	setAttr ".wl[381].w[9]" 0.044380202249314098;
	setAttr ".wl[381].w[10]" 0.41604497536239726;
	setAttr ".wl[381].w[11]" 0.41280007083939346;
	setAttr ".wl[381].w[12]" 0.10913139161635828;
	setAttr -s 5 ".wl[382].w";
	setAttr ".wl[382].w[2]" 0.018895229225263103;
	setAttr ".wl[382].w[9]" 0.047434938566314165;
	setAttr ".wl[382].w[10]" 0.40989768476559502;
	setAttr ".wl[382].w[11]" 0.40785799635037057;
	setAttr ".wl[382].w[12]" 0.11591415109245694;
	setAttr -s 5 ".wl[383].w";
	setAttr ".wl[383].w[2]" 0.017900084398092191;
	setAttr ".wl[383].w[9]" 0.044942769615406733;
	setAttr ".wl[383].w[10]" 0.41447335792770962;
	setAttr ".wl[383].w[11]" 0.41246972282102162;
	setAttr ".wl[383].w[12]" 0.11021406523776985;
	setAttr -s 5 ".wl[384].w";
	setAttr ".wl[384].w[2]" 0.023604575055489106;
	setAttr ".wl[384].w[9]" 0.057220567291321446;
	setAttr ".wl[384].w[10]" 0.37312584718681474;
	setAttr ".wl[384].w[11]" 0.38442806914611738;
	setAttr ".wl[384].w[12]" 0.16162094132025709;
	setAttr -s 5 ".wl[385].w";
	setAttr ".wl[385].w[2]" 0.02224713609543574;
	setAttr ".wl[385].w[9]" 0.0540887030664687;
	setAttr ".wl[385].w[10]" 0.3769014808247495;
	setAttr ".wl[385].w[11]" 0.39177484839171967;
	setAttr ".wl[385].w[12]" 0.15498783162162641;
	setAttr -s 5 ".wl[386].w";
	setAttr ".wl[386].w[2]" 0.02331417931150026;
	setAttr ".wl[386].w[9]" 0.056670105678407155;
	setAttr ".wl[386].w[10]" 0.37253952852704086;
	setAttr ".wl[386].w[11]" 0.38628567302525574;
	setAttr ".wl[386].w[12]" 0.16119051345779575;
	setAttr -s 5 ".wl[387].w";
	setAttr ".wl[387].w[2]" 0.025484054387221278;
	setAttr ".wl[387].w[9]" 0.061748633811694223;
	setAttr ".wl[387].w[10]" 0.36533471759929198;
	setAttr ".wl[387].w[11]" 0.37547064088714266;
	setAttr ".wl[387].w[12]" 0.17196195331464983;
	setAttr -s 5 ".wl[388].w";
	setAttr ".wl[388].w[2]" 0.026576152737699112;
	setAttr ".wl[388].w[9]" 0.064207936179451877;
	setAttr ".wl[388].w[10]" 0.36235024998018162;
	setAttr ".wl[388].w[11]" 0.37040975906901674;
	setAttr ".wl[388].w[12]" 0.17645590203365066;
	setAttr -s 5 ".wl[389].w";
	setAttr ".wl[389].w[2]" 0.025733363407137895;
	setAttr ".wl[389].w[9]" 0.062185919337796741;
	setAttr ".wl[389].w[10]" 0.36583275316182562;
	setAttr ".wl[389].w[11]" 0.37418711949002842;
	setAttr ".wl[389].w[12]" 0.17206084460321136;
	setAttr -s 5 ".wl[390].w";
	setAttr ".wl[390].w[2]" 0.023352367147847903;
	setAttr ".wl[390].w[9]" 0.050689688343054075;
	setAttr ".wl[390].w[10]" 0.20623964442579013;
	setAttr ".wl[390].w[11]" 0.39213401044959001;
	setAttr ".wl[390].w[12]" 0.32758428963371772;
	setAttr -s 5 ".wl[391].w";
	setAttr ".wl[391].w[2]" 0.021935377533402731;
	setAttr ".wl[391].w[9]" 0.047679068277430646;
	setAttr ".wl[391].w[10]" 0.19785915264274695;
	setAttr ".wl[391].w[11]" 0.40408724028273291;
	setAttr ".wl[391].w[12]" 0.32843916126368694;
	setAttr -s 5 ".wl[392].w";
	setAttr ".wl[392].w[2]" 0.0029122355377720699;
	setAttr ".wl[392].w[9]" 0.0060960218409333343;
	setAttr ".wl[392].w[10]" 0.022164984786516524;
	setAttr ".wl[392].w[11]" 0.484413378917389;
	setAttr ".wl[392].w[12]" 0.484413378917389;
	setAttr -s 5 ".wl[393].w";
	setAttr ".wl[393].w[2]" 0.021822768189476524;
	setAttr ".wl[393].w[9]" 0.047468416231198379;
	setAttr ".wl[393].w[10]" 0.19580556930892987;
	setAttr ".wl[393].w[11]" 0.40459852704046928;
	setAttr ".wl[393].w[12]" 0.33030471922992577;
	setAttr -s 5 ".wl[394].w";
	setAttr ".wl[394].w[2]" 0.023158874277276063;
	setAttr ".wl[394].w[9]" 0.050341683404848993;
	setAttr ".wl[394].w[10]" 0.20246268822832644;
	setAttr ".wl[394].w[11]" 0.39296381805968378;
	setAttr ".wl[394].w[12]" 0.33107293602986487;
	setAttr -s 5 ".wl[395].w";
	setAttr ".wl[395].w[2]" 0.024466026439401264;
	setAttr ".wl[395].w[9]" 0.053110251577241675;
	setAttr ".wl[395].w[10]" 0.20968311313554883;
	setAttr ".wl[395].w[11]" 0.38329726184732743;
	setAttr ".wl[395].w[12]" 0.32944334700048078;
	setAttr -s 5 ".wl[396].w";
	setAttr ".wl[396].w[2]" 0.024550347160344505;
	setAttr ".wl[396].w[9]" 0.053255385561160384;
	setAttr ".wl[396].w[10]" 0.211438509199152;
	setAttr ".wl[396].w[11]" 0.38294039955426851;
	setAttr ".wl[396].w[12]" 0.32781535852507482;
	setAttr -s 5 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.35229784998796876;
	setAttr ".wl[397].w[1]" 0.083487289590289074;
	setAttr ".wl[397].w[17]" 0.11304030387110164;
	setAttr ".wl[397].w[21]" 0.35356712450640437;
	setAttr ".wl[397].w[22]" 0.097607432044236261;
	setAttr -s 5 ".wl[398].w";
	setAttr ".wl[398].w[0]" 0.30826746776209568;
	setAttr ".wl[398].w[1]" 0.10675308933069724;
	setAttr ".wl[398].w[17]" 0.13039928778817098;
	setAttr ".wl[398].w[21]" 0.32901022540277824;
	setAttr ".wl[398].w[22]" 0.12556992971625788;
	setAttr -s 5 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.35322049418311369;
	setAttr ".wl[399].w[17]" 0.13788919676397085;
	setAttr ".wl[399].w[18]" 0.091508122512857518;
	setAttr ".wl[399].w[21]" 0.32828060105294354;
	setAttr ".wl[399].w[22]" 0.089101585487114304;
	setAttr -s 5 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.1788730579498784;
	setAttr ".wl[400].w[13]" 0.017976279924468142;
	setAttr ".wl[400].w[17]" 0.017976316149318595;
	setAttr ".wl[400].w[21]" 0.7634428460552678;
	setAttr ".wl[400].w[22]" 0.021731499921066967;
	setAttr -s 5 ".wl[401].w";
	setAttr ".wl[401].w[0]" 0.34299323401452758;
	setAttr ".wl[401].w[13]" 0.058351331483493994;
	setAttr ".wl[401].w[17]" 0.068051153698767686;
	setAttr ".wl[401].w[21]" 0.45313942803908153;
	setAttr ".wl[401].w[22]" 0.077464852764129233;
	setAttr -s 5 ".wl[402].w";
	setAttr ".wl[402].w[0]" 0.30131996835564939;
	setAttr ".wl[402].w[1]" 0.080131064164912766;
	setAttr ".wl[402].w[17]" 0.088440051201130451;
	setAttr ".wl[402].w[21]" 0.41799174308865394;
	setAttr ".wl[402].w[22]" 0.11211717318965345;
	setAttr -s 5 ".wl[403].w";
	setAttr ".wl[403].w[0]" 0.34257751480830317;
	setAttr ".wl[403].w[1]" 0.08810647835121263;
	setAttr ".wl[403].w[17]" 0.11408900374944007;
	setAttr ".wl[403].w[21]" 0.35167325098727059;
	setAttr ".wl[403].w[22]" 0.10355375210377356;
	setAttr -s 5 ".wl[404].w";
	setAttr ".wl[404].w[0]" 0.3133994144930301;
	setAttr ".wl[404].w[1]" 0.10979886925937828;
	setAttr ".wl[404].w[17]" 0.16261350570841251;
	setAttr ".wl[404].w[21]" 0.30039996330672347;
	setAttr ".wl[404].w[22]" 0.11378824723245563;
	setAttr -s 5 ".wl[405].w";
	setAttr ".wl[405].w[0]" 0.28437176930299951;
	setAttr ".wl[405].w[1]" 0.12857476640221319;
	setAttr ".wl[405].w[17]" 0.17946625303934635;
	setAttr ".wl[405].w[21]" 0.27751769622777372;
	setAttr ".wl[405].w[22]" 0.13006951502766709;
	setAttr -s 5 ".wl[406].w";
	setAttr ".wl[406].w[0]" 0.29885351320479331;
	setAttr ".wl[406].w[1]" 0.11495623381251947;
	setAttr ".wl[406].w[17]" 0.19274168769407057;
	setAttr ".wl[406].w[18]" 0.11443098253955968;
	setAttr ".wl[406].w[21]" 0.27901758274905708;
	setAttr -s 5 ".wl[407].w";
	setAttr ".wl[407].w[0]" 0.34714405424501132;
	setAttr ".wl[407].w[1]" 0.088446519201275123;
	setAttr ".wl[407].w[17]" 0.13072281155144752;
	setAttr ".wl[407].w[21]" 0.33623361408047414;
	setAttr ".wl[407].w[22]" 0.097453000921791738;
	setAttr -s 5 ".wl[408].w";
	setAttr ".wl[408].w[0]" 0.37827417735421337;
	setAttr ".wl[408].w[13]" 0.080006104626901886;
	setAttr ".wl[408].w[17]" 0.10149740952114721;
	setAttr ".wl[408].w[18]" 0.075941193352150493;
	setAttr ".wl[408].w[21]" 0.36428111514558714;
	setAttr -s 5 ".wl[409].w";
	setAttr ".wl[409].w[0]" 0.23480393948093445;
	setAttr ".wl[409].w[17]" 0.10978227738735707;
	setAttr ".wl[409].w[21]" 0.36126240357673639;
	setAttr ".wl[409].w[22]" 0.19567707680540697;
	setAttr ".wl[409].w[23]" 0.098474302749565104;
	setAttr -s 5 ".wl[410].w";
	setAttr ".wl[410].w[0]" 0.37909007405381834;
	setAttr ".wl[410].w[13]" 0.068927473859090302;
	setAttr ".wl[410].w[17]" 0.091974031885930244;
	setAttr ".wl[410].w[21]" 0.37929412690680103;
	setAttr ".wl[410].w[22]" 0.080714293294360112;
	setAttr -s 5 ".wl[411].w";
	setAttr ".wl[411].w[0]" 0.25613704484194744;
	setAttr ".wl[411].w[17]" 0.10076130261317444;
	setAttr ".wl[411].w[21]" 0.3847412378612643;
	setAttr ".wl[411].w[22]" 0.17176520892700969;
	setAttr ".wl[411].w[23]" 0.086595205756604121;
	setAttr -s 5 ".wl[412].w";
	setAttr ".wl[412].w[0]" 0.17933386906028118;
	setAttr ".wl[412].w[17]" 0.10792412855487152;
	setAttr ".wl[412].w[21]" 0.31361298075214733;
	setAttr ".wl[412].w[22]" 0.26561248590540087;
	setAttr ".wl[412].w[23]" 0.13351653572729896;
	setAttr -s 5 ".wl[413].w";
	setAttr ".wl[413].w[0]" 0.20389913897073861;
	setAttr ".wl[413].w[17]" 0.089437033656905696;
	setAttr ".wl[413].w[21]" 0.42464669475668798;
	setAttr ".wl[413].w[22]" 0.19245204678694369;
	setAttr ".wl[413].w[23]" 0.089565085828723967;
	setAttr -s 5 ".wl[414].w";
	setAttr ".wl[414].w[0]" 0.14588034924692478;
	setAttr ".wl[414].w[17]" 0.10163678401785958;
	setAttr ".wl[414].w[21]" 0.28483215784460303;
	setAttr ".wl[414].w[22]" 0.28489869163419224;
	setAttr ".wl[414].w[23]" 0.18275201725642048;
	setAttr -s 5 ".wl[415].w";
	setAttr ".wl[415].w[0]" 0.13552633826452418;
	setAttr ".wl[415].w[17]" 0.081022306764851698;
	setAttr ".wl[415].w[21]" 0.31990368482630621;
	setAttr ".wl[415].w[22]" 0.31815984560691679;
	setAttr ".wl[415].w[23]" 0.14538782453740107;
	setAttr -s 5 ".wl[416].w";
	setAttr ".wl[416].w[0]" 0.11682477530942267;
	setAttr ".wl[416].w[21]" 0.23031454452107081;
	setAttr ".wl[416].w[22]" 0.27257055207498226;
	setAttr ".wl[416].w[23]" 0.24790304786710804;
	setAttr ".wl[416].w[24]" 0.13238708022741638;
	setAttr -s 5 ".wl[417].w";
	setAttr ".wl[417].w[0]" 0.099818874798792367;
	setAttr ".wl[417].w[21]" 0.28473733764757647;
	setAttr ".wl[417].w[22]" 0.33551654881078169;
	setAttr ".wl[417].w[23]" 0.19602361152119072;
	setAttr ".wl[417].w[24]" 0.08390362722165863;
	setAttr -s 5 ".wl[418].w[21:25]"  0.18948715098139873 0.2669828832984007 
		0.26698288347336741 0.16904627155672292 0.10750081069011019;
	setAttr -s 5 ".wl[419].w[21:25]"  0.19435869285396248 0.26893925147207032 
		0.26818276816749081 0.16101197868967779 0.1075073088167986;
	setAttr -s 5 ".wl[420].w[21:25]"  0.16223322506994259 0.2472446814065663 
		0.26059385306628463 0.2029865506044935 0.12694168985271306;
	setAttr -s 5 ".wl[421].w";
	setAttr ".wl[421].w[9]" 0.14228182745677309;
	setAttr ".wl[421].w[21]" 0.18580897740311597;
	setAttr ".wl[421].w[22]" 0.25373819546460324;
	setAttr ".wl[421].w[23]" 0.25372799389868028;
	setAttr ".wl[421].w[24]" 0.16444300577682738;
	setAttr -s 5 ".wl[422].w[21:25]"  0.13286309239775676 0.2145976185209385 
		0.26792298798653597 0.24069672881851228 0.14391957227625651;
	setAttr -s 5 ".wl[423].w[21:25]"  0.13665346962783773 0.22610439138919788 
		0.26918117184122076 0.22507660862026521 0.14298435852147848;
	setAttr -s 5 ".wl[424].w[22:26]"  0.16165534270308121 0.27782295052505479 
		0.27782857850161607 0.17620755919000042 0.10648556908024752;
	setAttr -s 4 ".wl[425].w[21:24]"  0.16722473295207685 0.26627816529405163 
		0.30603984526297473 0.26045725649089674;
	setAttr -s 5 ".wl[426].w[22:26]"  0.13410150037986385 0.27093534394803559 
		0.28589455526565244 0.1995737912028071 0.10949480920364103;
	setAttr -s 5 ".wl[427].w[22:26]"  0.11829002219234808 0.24864308704103943 
		0.29899640116446641 0.21258038131484441 0.12149010828730168;
	setAttr -s 5 ".wl[428].w[22:26]"  0.084635141033971795 0.15832228757273972 
		0.30698515529922588 0.30698515529922588 0.14307226079483668;
	setAttr -s 5 ".wl[429].w[22:26]"  0.11169775822368463 0.29052835952374778 
		0.31976480296917498 0.18978372294882451 0.088225356334567989;
	setAttr -s 5 ".wl[430].w[22:26]"  0.078335395470771674 0.13860322290619934 
		0.30036169226773568 0.31707633734707885 0.16562335200821457;
	setAttr -s 5 ".wl[431].w[22:26]"  0.060207149534396119 0.11095655079410724 
		0.29178241606413868 0.39139767088959199 0.14565621271776583;
	setAttr -s 5 ".wl[432].w[22:26]"  0.073274974800817155 0.1214587949791508 
		0.25513347988349838 0.3370460692719135 0.21308668106462017;
	setAttr -s 5 ".wl[433].w[22:26]"  0.059282161472147495 0.10773393841509989 
		0.33337352107598311 0.3634753442332988 0.13613503480347061;
	setAttr -s 5 ".wl[434].w[22:26]"  0.071841171381418434 0.11555679564419624 
		0.22897970527018752 0.34168680230158416 0.24193552540261351;
	setAttr -s 5 ".wl[435].w[22:26]"  0.062018535856806611 0.10076306311526304 
		0.20785442493534567 0.38843934500632576 0.24092463108625897;
	setAttr -s 5 ".wl[436].w[22:26]"  0.053115404778235779 0.085680407903758263 
		0.18729659607382171 0.42827757965913305 0.24563001158505121;
	setAttr -s 5 ".wl[437].w";
	setAttr ".wl[437].w[0]" 0.35809223435609083;
	setAttr ".wl[437].w[13]" 0.094560198026915995;
	setAttr ".wl[437].w[17]" 0.071402433469829343;
	setAttr ".wl[437].w[21]" 0.38288644744627481;
	setAttr ".wl[437].w[22]" 0.093058686700889029;
	setAttr -s 5 ".wl[438].w";
	setAttr ".wl[438].w[0]" 0.37379661097688471;
	setAttr ".wl[438].w[13]" 0.099465295545045698;
	setAttr ".wl[438].w[17]" 0.074329035379382069;
	setAttr ".wl[438].w[21]" 0.37364263893561112;
	setAttr ".wl[438].w[22]" 0.078766419163076362;
	setAttr -s 5 ".wl[439].w";
	setAttr ".wl[439].w[0]" 0.11425753887463531;
	setAttr ".wl[439].w[1]" 0.066542090977052493;
	setAttr ".wl[439].w[21]" 0.36411470964317982;
	setAttr ".wl[439].w[22]" 0.33403766036727517;
	setAttr ".wl[439].w[23]" 0.12104800013785708;
	setAttr -s 5 ".wl[440].w";
	setAttr ".wl[440].w[0]" 0.20499081560921495;
	setAttr ".wl[440].w[13]" 0.096157643862975262;
	setAttr ".wl[440].w[21]" 0.36795405457791663;
	setAttr ".wl[440].w[22]" 0.22677887054662044;
	setAttr ".wl[440].w[23]" 0.1041186154032728;
	setAttr -s 5 ".wl[441].w";
	setAttr ".wl[441].w[5]" 0.11763321291946524;
	setAttr ".wl[441].w[21]" 0.21981102908565009;
	setAttr ".wl[441].w[22]" 0.27756215567263137;
	setAttr ".wl[441].w[23]" 0.25569357803643833;
	setAttr ".wl[441].w[24]" 0.12930002428581489;
	setAttr -s 5 ".wl[442].w";
	setAttr ".wl[442].w[0]" 0.11220259610156892;
	setAttr ".wl[442].w[21]" 0.23975414789702881;
	setAttr ".wl[442].w[22]" 0.27484140425488901;
	setAttr ".wl[442].w[23]" 0.24311486899118351;
	setAttr ".wl[442].w[24]" 0.13008698275532979;
	setAttr -s 5 ".wl[443].w";
	setAttr ".wl[443].w[2]" 0.15834808510048093;
	setAttr ".wl[443].w[21]" 0.1630827563778369;
	setAttr ".wl[443].w[22]" 0.23559457084463609;
	setAttr ".wl[443].w[23]" 0.24515802222258404;
	setAttr ".wl[443].w[24]" 0.19781656545446219;
	setAttr -s 5 ".wl[444].w[21:25]"  0.16113746869708717 0.24269941596649527 
		0.25617345736410702 0.20228592926450131 0.13770372870780917;
	setAttr -s 4 ".wl[445].w[22:25]"  0.1808023769528482 0.3222408902537246 
		0.32224021790754664 0.17471651488588055;
	setAttr -s 5 ".wl[446].w[22:26]"  0.14676856593929585 0.26508385274669083 
		0.27661371071818597 0.18903716310981147 0.12249670748601613;
	setAttr -s 5 ".wl[447].w[22:26]"  0.066916819068839992 0.13266981573582756 
		0.34596892755113329 0.34596892755113329 0.10847551009306594;
	setAttr -s 5 ".wl[448].w[22:26]"  0.093222212795617834 0.20813666857455557 
		0.33065014004020515 0.25006333380435891 0.11792764478526264;
	setAttr -s 5 ".wl[449].w[22:26]"  0.059072458324385013 0.098266892708478756 
		0.24002825080702739 0.39407634275759601 0.20855605540251279;
	setAttr -s 5 ".wl[450].w[22:26]"  0.055349632748658235 0.096951807195750722 
		0.24585394515318759 0.43434789534347346 0.16749671955892986;
	setAttr -s 5 ".wl[451].w[22:26]"  0.047586712643434489 0.074043942117252862 
		0.14378912769503249 0.43409700260112993 0.30048321494315022;
	setAttr -s 5 ".wl[452].w";
	setAttr ".wl[452].w[0]" 0.33617392721024886;
	setAttr ".wl[452].w[1]" 0.11518722693810972;
	setAttr ".wl[452].w[13]" 0.33328129365335613;
	setAttr ".wl[452].w[14]" 0.11095422219762945;
	setAttr ".wl[452].w[21]" 0.10440333000065588;
	setAttr -s 5 ".wl[453].w";
	setAttr ".wl[453].w[0]" 0.33122429954192317;
	setAttr ".wl[453].w[1]" 0.18546970177980865;
	setAttr ".wl[453].w[13]" 0.24015331705419216;
	setAttr ".wl[453].w[14]" 0.123714140838109;
	setAttr ".wl[453].w[21]" 0.11943854078596712;
	setAttr -s 5 ".wl[454].w";
	setAttr ".wl[454].w[0]" 0.25406758296140985;
	setAttr ".wl[454].w[1]" 0.14257801050187485;
	setAttr ".wl[454].w[13]" 0.23418236954298577;
	setAttr ".wl[454].w[14]" 0.13016309693208244;
	setAttr ".wl[454].w[21]" 0.23900894006164711;
	setAttr -s 4 ".wl[455].w";
	setAttr ".wl[455].w[0]" 0.34386084498889097;
	setAttr ".wl[455].w[13]" 0.31383594425805639;
	setAttr ".wl[455].w[14]" 0.20674905878566521;
	setAttr ".wl[455].w[17]" 0.13555415196738754;
	setAttr -s 3 ".wl[456].w[0:2]"  0.35645399501893738 0.35691429531991409 
		0.28663170966114859;
	setAttr -s 3 ".wl[457].w[0:2]"  0.37212069133594294 0.37355508279789462 
		0.25432422586616255;
	setAttr -s 4 ".wl[458].w";
	setAttr ".wl[458].w[0]" 0.28802846350072103;
	setAttr ".wl[458].w[1]" 0.28845968327883997;
	setAttr ".wl[458].w[2]" 0.23789868030866501;
	setAttr ".wl[458].w[9]" 0.18561317291177404;
	setAttr -s 2 ".wl[459].w[1:2]"  0.42784397892735226 0.57215602107264774;
	setAttr -s 3 ".wl[460].w[0:2]"  0.10528820635686756 0.4414152720476493 
		0.45329652159548312;
	setAttr -s 2 ".wl[461].w[1:2]"  0.42763553435064866 0.57236446564935139;
	setAttr -s 3 ".wl[462].w[0:2]"  0.18421787537986767 0.31036075076827302 
		0.50542137385185926;
	setAttr -s 3 ".wl[463].w[0:2]"  0.23239444873867163 0.38527404828849926 
		0.38233150297282914;
	setAttr -s 4 ".wl[464].w";
	setAttr ".wl[464].w[0]" 0.15314878546183686;
	setAttr ".wl[464].w[1]" 0.25210233695449136;
	setAttr ".wl[464].w[2]" 0.40829725668363193;
	setAttr ".wl[464].w[9]" 0.18645162090003983;
	setAttr -s 4 ".wl[465].w";
	setAttr ".wl[465].w[0]" 0.39230849948991958;
	setAttr ".wl[465].w[1]" 0.11043426362744135;
	setAttr ".wl[465].w[13]" 0.36219596647694952;
	setAttr ".wl[465].w[14]" 0.13506127040568941;
	setAttr -s 5 ".wl[466].w";
	setAttr ".wl[466].w[0]" 0.37170185141082968;
	setAttr ".wl[466].w[1]" 0.10863104236165765;
	setAttr ".wl[466].w[13]" 0.31078815425263134;
	setAttr ".wl[466].w[14]" 0.11262912162180076;
	setAttr ".wl[466].w[21]" 0.096249830353080518;
	setAttr -s 5 ".wl[467].w";
	setAttr ".wl[467].w[0]" 0.27494463567091748;
	setAttr ".wl[467].w[13]" 0.29444784880262992;
	setAttr ".wl[467].w[14]" 0.21049579984869499;
	setAttr ".wl[467].w[15]" 0.11544021040155984;
	setAttr ".wl[467].w[21]" 0.10467150527619765;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[0]" 0.39473317498931226;
	setAttr ".wl[468].w[13]" 0.39473317498931237;
	setAttr ".wl[468].w[14]" 0.21053365002137531;
	setAttr -s 5 ".wl[469].w";
	setAttr ".wl[469].w[0]" 0.29311407687766977;
	setAttr ".wl[469].w[13]" 0.29367133375349785;
	setAttr ".wl[469].w[14]" 0.17991984731416449;
	setAttr ".wl[469].w[15]" 0.10597170700617492;
	setAttr ".wl[469].w[21]" 0.12732303504849302;
	setAttr -s 5 ".wl[470].w";
	setAttr ".wl[470].w[0]" 0.2432539337976049;
	setAttr ".wl[470].w[13]" 0.29955417001890705;
	setAttr ".wl[470].w[14]" 0.22759417367107959;
	setAttr ".wl[470].w[15]" 0.11753238504564732;
	setAttr ".wl[470].w[21]" 0.11206533746676101;
	setAttr -s 5 ".wl[471].w";
	setAttr ".wl[471].w[0]" 0.33824238121592681;
	setAttr ".wl[471].w[13]" 0.27247720932043118;
	setAttr ".wl[471].w[14]" 0.15542460050612741;
	setAttr ".wl[471].w[17]" 0.11566212757750843;
	setAttr ".wl[471].w[21]" 0.1181936813800063;
	setAttr -s 5 ".wl[472].w";
	setAttr ".wl[472].w[0]" 0.25450535944501246;
	setAttr ".wl[472].w[13]" 0.28730544823015974;
	setAttr ".wl[472].w[14]" 0.21616003617026136;
	setAttr ".wl[472].w[15]" 0.12463389579931616;
	setAttr ".wl[472].w[16]" 0.11739526035525032;
	setAttr -s 5 ".wl[473].w";
	setAttr ".wl[473].w[0]" 0.30092528697627918;
	setAttr ".wl[473].w[1]" 0.11304317785894503;
	setAttr ".wl[473].w[13]" 0.30092528697627918;
	setAttr ".wl[473].w[14]" 0.1763568171335794;
	setAttr ".wl[473].w[15]" 0.10874943105491718;
	setAttr -s 5 ".wl[474].w";
	setAttr ".wl[474].w[0]" 0.27663841175090864;
	setAttr ".wl[474].w[13]" 0.3237355204002762;
	setAttr ".wl[474].w[14]" 0.18552405810460881;
	setAttr ".wl[474].w[15]" 0.098636834004492524;
	setAttr ".wl[474].w[21]" 0.1154651757397139;
	setAttr -s 5 ".wl[475].w";
	setAttr ".wl[475].w[0]" 0.18982867109065696;
	setAttr ".wl[475].w[13]" 0.31623401179749544;
	setAttr ".wl[475].w[14]" 0.27928699979585375;
	setAttr ".wl[475].w[15]" 0.1203674481898248;
	setAttr ".wl[475].w[16]" 0.094282869126168956;
	setAttr -s 5 ".wl[476].w";
	setAttr ".wl[476].w[0]" 0.23949054936351755;
	setAttr ".wl[476].w[13]" 0.25895014776550862;
	setAttr ".wl[476].w[14]" 0.20469286299637743;
	setAttr ".wl[476].w[15]" 0.14941184263833454;
	setAttr ".wl[476].w[16]" 0.14745459723626175;
	setAttr -s 5 ".wl[477].w";
	setAttr ".wl[477].w[0]" 0.23823466844595195;
	setAttr ".wl[477].w[13]" 0.26553667535823455;
	setAttr ".wl[477].w[14]" 0.21380232715746511;
	setAttr ".wl[477].w[15]" 0.1428925128313582;
	setAttr ".wl[477].w[16]" 0.13953381620699015;
	setAttr -s 4 ".wl[478].w";
	setAttr ".wl[478].w[0]" 0.32712351357973779;
	setAttr ".wl[478].w[1]" 0.15626549584943639;
	setAttr ".wl[478].w[13]" 0.32712351357973762;
	setAttr ".wl[478].w[14]" 0.18948747699108809;
	setAttr -s 4 ".wl[479].w";
	setAttr ".wl[479].w[0]" 0.32121297979889102;
	setAttr ".wl[479].w[1]" 0.18074732809797275;
	setAttr ".wl[479].w[13]" 0.32121297979889085;
	setAttr ".wl[479].w[14]" 0.17682671230424538;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[0]" 0.37294684016032942;
	setAttr ".wl[480].w[1]" 0.25410631967934122;
	setAttr ".wl[480].w[13]" 0.37294684016032931;
	setAttr -s 3 ".wl[481].w";
	setAttr ".wl[481].w[0]" 0.38655851941063019;
	setAttr ".wl[481].w[1]" 0.22688296117873985;
	setAttr ".wl[481].w[13]" 0.38655851941063019;
	setAttr -s 5 ".wl[482].w";
	setAttr ".wl[482].w[0]" 0.27418761496444882;
	setAttr ".wl[482].w[1]" 0.12695042072119375;
	setAttr ".wl[482].w[13]" 0.27418761496444882;
	setAttr ".wl[482].w[14]" 0.16653826223169191;
	setAttr ".wl[482].w[21]" 0.15813608711821678;
	setAttr -s 5 ".wl[483].w";
	setAttr ".wl[483].w[0]" 0.26008341747486768;
	setAttr ".wl[483].w[1]" 0.13881941497720862;
	setAttr ".wl[483].w[13]" 0.26008341747486768;
	setAttr ".wl[483].w[14]" 0.15066847397062624;
	setAttr ".wl[483].w[21]" 0.19034527610242977;
	setAttr -s 4 ".wl[484].w";
	setAttr ".wl[484].w[0]" 0.25397670619064977;
	setAttr ".wl[484].w[13]" 0.32174962214124336;
	setAttr ".wl[484].w[14]" 0.27242156318904942;
	setAttr ".wl[484].w[15]" 0.15185210847905753;
	setAttr -s 4 ".wl[485].w";
	setAttr ".wl[485].w[0]" 0.25937146373850473;
	setAttr ".wl[485].w[13]" 0.30512601007130818;
	setAttr ".wl[485].w[14]" 0.26543079032387745;
	setAttr ".wl[485].w[15]" 0.17007173586630961;
	setAttr -s 5 ".wl[486].w";
	setAttr ".wl[486].w[0]" 0.077990703249166973;
	setAttr ".wl[486].w[13]" 0.41546178800241407;
	setAttr ".wl[486].w[14]" 0.3777442748179059;
	setAttr ".wl[486].w[15]" 0.078290089995869824;
	setAttr ".wl[486].w[16]" 0.050513143934643262;
	setAttr -s 5 ".wl[487].w";
	setAttr ".wl[487].w[0]" 0.092493305101016929;
	setAttr ".wl[487].w[13]" 0.36456041445735538;
	setAttr ".wl[487].w[14]" 0.36456041445735538;
	setAttr ".wl[487].w[15]" 0.1078412127765231;
	setAttr ".wl[487].w[16]" 0.070544653207749289;
	setAttr -s 5 ".wl[488].w";
	setAttr ".wl[488].w[0]" 0.078365227599762208;
	setAttr ".wl[488].w[13]" 0.17183102037100292;
	setAttr ".wl[488].w[14]" 0.39176440249421263;
	setAttr ".wl[488].w[15]" 0.28218310147103803;
	setAttr ".wl[488].w[16]" 0.075856248063984388;
	setAttr -s 5 ".wl[489].w";
	setAttr ".wl[489].w[0]" 0.069863330678830091;
	setAttr ".wl[489].w[13]" 0.16264641297890861;
	setAttr ".wl[489].w[14]" 0.41776388297595801;
	setAttr ".wl[489].w[15]" 0.27934193811464636;
	setAttr ".wl[489].w[16]" 0.070384435251656774;
	setAttr -s 5 ".wl[490].w";
	setAttr ".wl[490].w[0]" 0.061338019157848214;
	setAttr ".wl[490].w[13]" 0.18790174438005519;
	setAttr ".wl[490].w[14]" 0.48506968123717153;
	setAttr ".wl[490].w[15]" 0.19365818275994515;
	setAttr ".wl[490].w[16]" 0.072032372464979927;
	setAttr -s 5 ".wl[491].w";
	setAttr ".wl[491].w[0]" 0.069519065397551136;
	setAttr ".wl[491].w[13]" 0.19706380704582213;
	setAttr ".wl[491].w[14]" 0.45354629159817667;
	setAttr ".wl[491].w[15]" 0.20281366837251363;
	setAttr ".wl[491].w[16]" 0.077057167585936462;
	setAttr -s 5 ".wl[492].w";
	setAttr ".wl[492].w[0]" 0.10659057356624928;
	setAttr ".wl[492].w[13]" 0.31228491765335825;
	setAttr ".wl[492].w[14]" 0.36275495397233543;
	setAttr ".wl[492].w[15]" 0.14637692530636914;
	setAttr ".wl[492].w[16]" 0.071992629501687902;
	setAttr -s 5 ".wl[493].w";
	setAttr ".wl[493].w[0]" 0.092746580147298224;
	setAttr ".wl[493].w[13]" 0.31813523445682529;
	setAttr ".wl[493].w[14]" 0.38320078607457042;
	setAttr ".wl[493].w[15]" 0.13867563217322951;
	setAttr ".wl[493].w[16]" 0.067241767148076628;
	setAttr -s 5 ".wl[494].w";
	setAttr ".wl[494].w[0]" 0.044027750571415371;
	setAttr ".wl[494].w[13]" 0.082204024887680596;
	setAttr ".wl[494].w[14]" 0.40718708352008998;
	setAttr ".wl[494].w[15]" 0.40718708352008998;
	setAttr ".wl[494].w[16]" 0.059394057500724205;
	setAttr -s 5 ".wl[495].w";
	setAttr ".wl[495].w[0]" 0.031070110774568619;
	setAttr ".wl[495].w[13]" 0.059994249786196371;
	setAttr ".wl[495].w[14]" 0.4329097351938398;
	setAttr ".wl[495].w[15]" 0.4329097351938398;
	setAttr ".wl[495].w[16]" 0.043116169051555339;
	setAttr -s 5 ".wl[496].w";
	setAttr ".wl[496].w[0]" 0.044212228761618434;
	setAttr ".wl[496].w[13]" 0.1102863132187612;
	setAttr ".wl[496].w[14]" 0.52336249676375701;
	setAttr ".wl[496].w[15]" 0.26483314577737571;
	setAttr ".wl[496].w[16]" 0.057305815478487503;
	setAttr -s 5 ".wl[497].w";
	setAttr ".wl[497].w[0]" 0.057976571385799112;
	setAttr ".wl[497].w[13]" 0.13606820449707374;
	setAttr ".wl[497].w[14]" 0.44179370334756801;
	setAttr ".wl[497].w[15]" 0.29205598836034863;
	setAttr ".wl[497].w[16]" 0.072105532409210374;
	setAttr -s 5 ".wl[498].w";
	setAttr ".wl[498].w[0]" 0.054978203731947277;
	setAttr ".wl[498].w[13]" 0.10349404215582318;
	setAttr ".wl[498].w[14]" 0.27746922484983361;
	setAttr ".wl[498].w[15]" 0.4680376187499739;
	setAttr ".wl[498].w[16]" 0.096020910512421967;
	setAttr -s 5 ".wl[499].w";
	setAttr ".wl[499].w[0]" 0.045050003048564671;
	setAttr ".wl[499].w[13]" 0.087719887057829404;
	setAttr ".wl[499].w[14]" 0.25379822865518947;
	setAttr ".wl[499].w[15]" 0.53217518594335156;
	setAttr ".wl[499].w[16]" 0.081256695295064796;
	setAttr -s 5 ".wl[500].w";
	setAttr ".wl[500].w[0]" 0.035876992224568811;
	setAttr ".wl[500].w[13]" 0.075535250492232905;
	setAttr ".wl[500].w[14]" 0.21416902159887208;
	setAttr ".wl[500].w[15]" 0.61388914380310222;
	setAttr ".wl[500].w[16]" 0.060529591881223865;
	setAttr -s 5 ".wl[501].w";
	setAttr ".wl[501].w[0]" 0.051522454403837362;
	setAttr ".wl[501].w[13]" 0.10407844970570625;
	setAttr ".wl[501].w[14]" 0.26814783237809725;
	setAttr ".wl[501].w[15]" 0.49239760019031864;
	setAttr ".wl[501].w[16]" 0.083853663322040542;
	setAttr -s 5 ".wl[502].w";
	setAttr ".wl[502].w[0]" 0.06722973819329757;
	setAttr ".wl[502].w[13]" 0.093315577853082421;
	setAttr ".wl[502].w[14]" 0.099322343080613565;
	setAttr ".wl[502].w[15]" 0.37006617043650314;
	setAttr ".wl[502].w[16]" 0.37006617043650314;
	setAttr -s 5 ".wl[503].w";
	setAttr ".wl[503].w[0]" 0.054533223838693405;
	setAttr ".wl[503].w[13]" 0.079799665663085328;
	setAttr ".wl[503].w[14]" 0.085067977477658249;
	setAttr ".wl[503].w[15]" 0.39029956651028153;
	setAttr ".wl[503].w[16]" 0.39029956651028153;
	setAttr -s 5 ".wl[504].w";
	setAttr ".wl[504].w[0]" 0.057675739665907576;
	setAttr ".wl[504].w[13]" 0.084884224744064166;
	setAttr ".wl[504].w[14]" 0.088325002939171254;
	setAttr ".wl[504].w[15]" 0.38455751632542856;
	setAttr ".wl[504].w[16]" 0.38455751632542856;
	setAttr -s 5 ".wl[505].w";
	setAttr ".wl[505].w[0]" 0.07099478535015763;
	setAttr ".wl[505].w[13]" 0.098454492594385906;
	setAttr ".wl[505].w[14]" 0.10233687052345682;
	setAttr ".wl[505].w[15]" 0.36410692576599973;
	setAttr ".wl[505].w[16]" 0.36410692576599973;
	setAttr -s 4 ".wl[506].w";
	setAttr ".wl[506].w[0]" 0.043580077154207149;
	setAttr ".wl[506].w[1]" 0.11278822670843046;
	setAttr ".wl[506].w[2]" 0.42181584806868122;
	setAttr ".wl[506].w[5]" 0.42181584806868122;
	setAttr -s 4 ".wl[507].w";
	setAttr ".wl[507].w[0]" 0.057950745815172525;
	setAttr ".wl[507].w[1]" 0.14735796323476374;
	setAttr ".wl[507].w[2]" 0.37037366617459871;
	setAttr ".wl[507].w[5]" 0.42431762477546503;
	setAttr -s 4 ".wl[508].w";
	setAttr ".wl[508].w[0]" 0.08771531776102752;
	setAttr ".wl[508].w[1]" 0.15808960123581092;
	setAttr ".wl[508].w[2]" 0.34298368877660712;
	setAttr ".wl[508].w[5]" 0.41121139222655451;
	setAttr -s 4 ".wl[509].w";
	setAttr ".wl[509].w[0]" 0.055633148721887925;
	setAttr ".wl[509].w[1]" 0.1163252736978856;
	setAttr ".wl[509].w[2]" 0.39484624217212239;
	setAttr ".wl[509].w[5]" 0.43319533540810407;
	setAttr -s 4 ".wl[510].w";
	setAttr ".wl[510].w[0]" 0.10308262610169629;
	setAttr ".wl[510].w[1]" 0.18051406960876631;
	setAttr ".wl[510].w[2]" 0.35122204278719654;
	setAttr ".wl[510].w[5]" 0.36518126150234081;
	setAttr -s 4 ".wl[511].w";
	setAttr ".wl[511].w[0]" 0.082061174462784894;
	setAttr ".wl[511].w[1]" 0.16714666644130435;
	setAttr ".wl[511].w[2]" 0.39218114163031931;
	setAttr ".wl[511].w[5]" 0.35861101746559143;
	setAttr -s 4 ".wl[512].w";
	setAttr ".wl[512].w[0]" 0.037125557891463379;
	setAttr ".wl[512].w[1]" 0.093818460184314612;
	setAttr ".wl[512].w[2]" 0.43452799096211103;
	setAttr ".wl[512].w[5]" 0.43452799096211103;
	setAttr -s 4 ".wl[513].w";
	setAttr ".wl[513].w[0]" 0.065156277028668608;
	setAttr ".wl[513].w[1]" 0.12583537544684062;
	setAttr ".wl[513].w[2]" 0.33542208959269465;
	setAttr ".wl[513].w[5]" 0.4735862579317961;
	setAttr -s 4 ".wl[514].w";
	setAttr ".wl[514].w[0]" 0.044066849681274153;
	setAttr ".wl[514].w[1]" 0.13082877096138937;
	setAttr ".wl[514].w[2]" 0.42176397566966722;
	setAttr ".wl[514].w[5]" 0.40334040368766927;
	setAttr -s 4 ".wl[515].w";
	setAttr ".wl[515].w[0]" 0.053493185639778659;
	setAttr ".wl[515].w[1]" 0.17648694363762835;
	setAttr ".wl[515].w[2]" 0.40761578788994185;
	setAttr ".wl[515].w[5]" 0.36240408283265113;
	setAttr -s 4 ".wl[516].w";
	setAttr ".wl[516].w[0]" 0.06204377705823489;
	setAttr ".wl[516].w[1]" 0.198852079957028;
	setAttr ".wl[516].w[2]" 0.38595269997565546;
	setAttr ".wl[516].w[5]" 0.35315144300908163;
	setAttr -s 4 ".wl[517].w";
	setAttr ".wl[517].w[0]" 0.051301434838364642;
	setAttr ".wl[517].w[1]" 0.12793411303658839;
	setAttr ".wl[517].w[2]" 0.36954012314562601;
	setAttr ".wl[517].w[5]" 0.45122432897942094;
	setAttr -s 4 ".wl[518].w";
	setAttr ".wl[518].w[0]" 0.06546544995829702;
	setAttr ".wl[518].w[1]" 0.13337262999088792;
	setAttr ".wl[518].w[2]" 0.32274116553926019;
	setAttr ".wl[518].w[5]" 0.4784207545115548;
	setAttr -s 4 ".wl[519].w";
	setAttr ".wl[519].w[0]" 0.074987224735423727;
	setAttr ".wl[519].w[1]" 0.15333325945668527;
	setAttr ".wl[519].w[2]" 0.32514803446108642;
	setAttr ".wl[519].w[5]" 0.4465314813468047;
	setAttr -s 3 ".wl[520].w[0:2]"  0.15985725003215345 0.28364507549523127 
		0.55649767447261533;
	setAttr -s 5 ".wl[521].w";
	setAttr ".wl[521].w[1]" 0.1193827480718738;
	setAttr ".wl[521].w[2]" 0.25231144825053947;
	setAttr ".wl[521].w[5]" 0.45908524934377598;
	setAttr ".wl[521].w[6]" 0.085246831125361702;
	setAttr ".wl[521].w[9]" 0.083973723208449008;
	setAttr -s 5 ".wl[522].w";
	setAttr ".wl[522].w[1]" 0.11735359310055828;
	setAttr ".wl[522].w[2]" 0.25541751799699514;
	setAttr ".wl[522].w[5]" 0.45777694716735784;
	setAttr ".wl[522].w[6]" 0.085575878351515033;
	setAttr ".wl[522].w[9]" 0.083876063383573618;
	setAttr -s 4 ".wl[523].w";
	setAttr ".wl[523].w[1]" 0.14190603698682688;
	setAttr ".wl[523].w[2]" 0.28153743147558374;
	setAttr ".wl[523].w[5]" 0.48095017438337223;
	setAttr ".wl[523].w[6]" 0.095606357154217156;
	setAttr -s 4 ".wl[524].w";
	setAttr ".wl[524].w[1]" 0.15222159901125781;
	setAttr ".wl[524].w[2]" 0.28195194098993448;
	setAttr ".wl[524].w[5]" 0.4680552325923919;
	setAttr ".wl[524].w[6]" 0.097771227406415903;
	setAttr -s 4 ".wl[525].w";
	setAttr ".wl[525].w[1]" 0.15439113083576511;
	setAttr ".wl[525].w[2]" 0.27901926266560123;
	setAttr ".wl[525].w[5]" 0.46905927594210234;
	setAttr ".wl[525].w[6]" 0.097530330556531375;
	setAttr -s 4 ".wl[526].w";
	setAttr ".wl[526].w[1]" 0.14713995504211927;
	setAttr ".wl[526].w[2]" 0.27502713509295401;
	setAttr ".wl[526].w[5]" 0.48289677689325949;
	setAttr ".wl[526].w[6]" 0.094936132971667045;
	setAttr -s 5 ".wl[527].w";
	setAttr ".wl[527].w[2]" 0.043446786215693235;
	setAttr ".wl[527].w[5]" 0.42160480695125102;
	setAttr ".wl[527].w[6]" 0.42174901428920242;
	setAttr ".wl[527].w[7]" 0.06547020417334691;
	setAttr ".wl[527].w[8]" 0.047729188370506118;
	setAttr -s 5 ".wl[528].w";
	setAttr ".wl[528].w[2]" 0.036030148951414542;
	setAttr ".wl[528].w[5]" 0.4351345969131149;
	setAttr ".wl[528].w[6]" 0.4351577035701038;
	setAttr ".wl[528].w[7]" 0.054187150550400257;
	setAttr ".wl[528].w[8]" 0.039490400014966322;
	setAttr -s 5 ".wl[529].w";
	setAttr ".wl[529].w[2]" 0.035858013906041104;
	setAttr ".wl[529].w[5]" 0.43554004624978399;
	setAttr ".wl[529].w[6]" 0.43554004624978399;
	setAttr ".wl[529].w[7]" 0.053812848283943664;
	setAttr ".wl[529].w[8]" 0.039249045310447137;
	setAttr -s 5 ".wl[530].w";
	setAttr ".wl[530].w[2]" 0.043223445457011615;
	setAttr ".wl[530].w[5]" 0.4222741899613876;
	setAttr ".wl[530].w[6]" 0.42228880973110478;
	setAttr ".wl[530].w[7]" 0.064856407113804332;
	setAttr ".wl[530].w[8]" 0.047357147736691786;
	setAttr -s 5 ".wl[531].w";
	setAttr ".wl[531].w[2]" 0.049052059183752578;
	setAttr ".wl[531].w[5]" 0.41161444954424192;
	setAttr ".wl[531].w[6]" 0.411719333569324;
	setAttr ".wl[531].w[7]" 0.073747370334073595;
	setAttr ".wl[531].w[8]" 0.053866787368607824;
	setAttr -s 5 ".wl[532].w";
	setAttr ".wl[532].w[2]" 0.049128094940500425;
	setAttr ".wl[532].w[5]" 0.41132173081099666;
	setAttr ".wl[532].w[6]" 0.41150946824632861;
	setAttr ".wl[532].w[7]" 0.074018635322264562;
	setAttr ".wl[532].w[8]" 0.054022070679909898;
	setAttr -s 5 ".wl[533].w";
	setAttr ".wl[533].w[2]" 0.05725194429765406;
	setAttr ".wl[533].w[5]" 0.38374483972232482;
	setAttr ".wl[533].w[6]" 0.3972561661902716;
	setAttr ".wl[533].w[7]" 0.093890230517898979;
	setAttr ".wl[533].w[8]" 0.06785681927185068;
	setAttr -s 5 ".wl[534].w";
	setAttr ".wl[534].w[2]" 0.051648077880594945;
	setAttr ".wl[534].w[5]" 0.3934964813263449;
	setAttr ".wl[534].w[6]" 0.4093098191816224;
	setAttr ".wl[534].w[7]" 0.084506079935933093;
	setAttr ".wl[534].w[8]" 0.061039541675504599;
	setAttr -s 5 ".wl[535].w";
	setAttr ".wl[535].w[2]" 0.051625455153638262;
	setAttr ".wl[535].w[5]" 0.39426424161184753;
	setAttr ".wl[535].w[6]" 0.40902080908109473;
	setAttr ".wl[535].w[7]" 0.084195010544475354;
	setAttr ".wl[535].w[8]" 0.060894483608944047;
	setAttr -s 5 ".wl[536].w";
	setAttr ".wl[536].w[2]" 0.057259666810344591;
	setAttr ".wl[536].w[5]" 0.38500403039451264;
	setAttr ".wl[536].w[6]" 0.39683234531647271;
	setAttr ".wl[536].w[7]" 0.093299140634925462;
	setAttr ".wl[536].w[8]" 0.067604816843744697;
	setAttr -s 5 ".wl[537].w";
	setAttr ".wl[537].w[2]" 0.061940255437580589;
	setAttr ".wl[537].w[5]" 0.37641227806098798;
	setAttr ".wl[537].w[6]" 0.38714852895292418;
	setAttr ".wl[537].w[7]" 0.10115850023947576;
	setAttr ".wl[537].w[8]" 0.073340437309031517;
	setAttr -s 5 ".wl[538].w";
	setAttr ".wl[538].w[2]" 0.061917093707411053;
	setAttr ".wl[538].w[5]" 0.37587071411024353;
	setAttr ".wl[538].w[6]" 0.38731372229275601;
	setAttr ".wl[538].w[7]" 0.10144492832997438;
	setAttr ".wl[538].w[8]" 0.073453541559615018;
	setAttr -s 5 ".wl[539].w";
	setAttr ".wl[539].w[2]" 0.015281392880042502;
	setAttr ".wl[539].w[5]" 0.038449111654359075;
	setAttr ".wl[539].w[6]" 0.42727757613563616;
	setAttr ".wl[539].w[7]" 0.42375724176399454;
	setAttr ".wl[539].w[8]" 0.095234677565967804;
	setAttr -s 5 ".wl[540].w";
	setAttr ".wl[540].w[2]" 0.013478338951631133;
	setAttr ".wl[540].w[5]" 0.03398034855494575;
	setAttr ".wl[540].w[6]" 0.43710644065600696;
	setAttr ".wl[540].w[7]" 0.43071540686412629;
	setAttr ".wl[540].w[8]" 0.084719464973289901;
	setAttr -s 5 ".wl[541].w";
	setAttr ".wl[541].w[2]" 0.014948792430829232;
	setAttr ".wl[541].w[5]" 0.037682437742655721;
	setAttr ".wl[541].w[6]" 0.42969683976463002;
	setAttr ".wl[541].w[7]" 0.42406955391502599;
	setAttr ".wl[541].w[8]" 0.09360237614685897;
	setAttr -s 5 ".wl[542].w";
	setAttr ".wl[542].w[2]" 0.017643567122257505;
	setAttr ".wl[542].w[5]" 0.044380618007693384;
	setAttr ".wl[542].w[6]" 0.41604531200094863;
	setAttr ".wl[542].w[7]" 0.41279847519167567;
	setAttr ".wl[542].w[8]" 0.10913202767742482;
	setAttr -s 5 ".wl[543].w";
	setAttr ".wl[543].w[2]" 0.018895449798955501;
	setAttr ".wl[543].w[5]" 0.047435381807429462;
	setAttr ".wl[543].w[6]" 0.40989771951945903;
	setAttr ".wl[543].w[7]" 0.40785659475791231;
	setAttr ".wl[543].w[8]" 0.11591485411624372;
	setAttr -s 5 ".wl[544].w";
	setAttr ".wl[544].w[2]" 0.017900216901095493;
	setAttr ".wl[544].w[5]" 0.044943002040679969;
	setAttr ".wl[544].w[6]" 0.41447382666673871;
	setAttr ".wl[544].w[7]" 0.41246862177192456;
	setAttr ".wl[544].w[8]" 0.11021433261956136;
	setAttr -s 5 ".wl[545].w";
	setAttr ".wl[545].w[2]" 0.023604428504855009;
	setAttr ".wl[545].w[5]" 0.057220100875026797;
	setAttr ".wl[545].w[6]" 0.37312800961744874;
	setAttr ".wl[545].w[7]" 0.3844281185837457;
	setAttr ".wl[545].w[8]" 0.16161934241892384;
	setAttr -s 5 ".wl[546].w";
	setAttr ".wl[546].w[2]" 0.022246926304851516;
	setAttr ".wl[546].w[5]" 0.054088085450181407;
	setAttr ".wl[546].w[6]" 0.37690427217086536;
	setAttr ".wl[546].w[7]" 0.39177497550159102;
	setAttr ".wl[546].w[8]" 0.15498574057251077;
	setAttr -s 5 ".wl[547].w";
	setAttr ".wl[547].w[2]" 0.023314120806562092;
	setAttr ".wl[547].w[5]" 0.05666984120853584;
	setAttr ".wl[547].w[6]" 0.37254170758030059;
	setAttr ".wl[547].w[7]" 0.38628512189353409;
	setAttr ".wl[547].w[8]" 0.16118920851106744;
	setAttr -s 5 ".wl[548].w";
	setAttr ".wl[548].w[2]" 0.025484157880906601;
	setAttr ".wl[548].w[5]" 0.06174874397752405;
	setAttr ".wl[548].w[6]" 0.36533592711162982;
	setAttr ".wl[548].w[7]" 0.37546965259368104;
	setAttr ".wl[548].w[8]" 0.1719615184362584;
	setAttr -s 5 ".wl[549].w";
	setAttr ".wl[549].w[2]" 0.026576283604729977;
	setAttr ".wl[549].w[5]" 0.064208109253410833;
	setAttr ".wl[549].w[6]" 0.36235108650693032;
	setAttr ".wl[549].w[7]" 0.370408834430906;
	setAttr ".wl[549].w[8]" 0.17645568620402291;
	setAttr -s 5 ".wl[550].w";
	setAttr ".wl[550].w[2]" 0.025733389407821747;
	setAttr ".wl[550].w[5]" 0.062185853760769287;
	setAttr ".wl[550].w[6]" 0.36583396061483514;
	setAttr ".wl[550].w[7]" 0.37418659960150658;
	setAttr ".wl[550].w[8]" 0.17206019661506736;
	setAttr -s 5 ".wl[551].w";
	setAttr ".wl[551].w[2]" 0.023352381369096235;
	setAttr ".wl[551].w[5]" 0.050689631916855715;
	setAttr ".wl[551].w[6]" 0.206241893471348;
	setAttr ".wl[551].w[7]" 0.39213366001425809;
	setAttr ".wl[551].w[8]" 0.32758243322844199;
	setAttr -s 5 ".wl[552].w";
	setAttr ".wl[552].w[2]" 0.021935252729180454;
	setAttr ".wl[552].w[5]" 0.047678719626656221;
	setAttr ".wl[552].w[6]" 0.19786069128646289;
	setAttr ".wl[552].w[7]" 0.4040882916562038;
	setAttr ".wl[552].w[8]" 0.32843704470149659;
	setAttr -s 5 ".wl[553].w";
	setAttr ".wl[553].w[2]" 0.0029124335226356495;
	setAttr ".wl[553].w[5]" 0.0060964264137866398;
	setAttr ".wl[553].w[6]" 0.022166735952138101;
	setAttr ".wl[553].w[7]" 0.48441220205571978;
	setAttr ".wl[553].w[8]" 0.48441220205571978;
	setAttr -s 5 ".wl[554].w";
	setAttr ".wl[554].w[2]" 0.021822642823293641;
	setAttr ".wl[554].w[5]" 0.047468065753584879;
	setAttr ".wl[554].w[6]" 0.19580722583098659;
	setAttr ".wl[554].w[7]" 0.40459967972220534;
	setAttr ".wl[554].w[8]" 0.3303023858699296;
	setAttr -s 5 ".wl[555].w";
	setAttr ".wl[555].w[2]" 0.02315887038010038;
	setAttr ".wl[555].w[5]" 0.050341587430114285;
	setAttr ".wl[555].w[6]" 0.2024651005346236;
	setAttr ".wl[555].w[7]" 0.39296375557822849;
	setAttr ".wl[555].w[8]" 0.33107068607693335;
	setAttr -s 5 ".wl[556].w";
	setAttr ".wl[556].w[2]" 0.024466129473910771;
	setAttr ".wl[556].w[5]" 0.053110378132360664;
	setAttr ".wl[556].w[6]" 0.20968595050242345;
	setAttr ".wl[556].w[7]" 0.38329630829080547;
	setAttr ".wl[556].w[8]" 0.32944123360049982;
	setAttr -s 5 ".wl[557].w";
	setAttr ".wl[557].w[2]" 0.024550444581875951;
	setAttr ".wl[557].w[5]" 0.053255500595217699;
	setAttr ".wl[557].w[6]" 0.2114411842084099;
	setAttr ".wl[557].w[7]" 0.38293943109923906;
	setAttr ".wl[557].w[8]" 0.32781343951525738;
	setAttr -s 5 ".wl[558].w";
	setAttr ".wl[558].w[0]" 0.35229796997847868;
	setAttr ".wl[558].w[1]" 0.0834873180255533;
	setAttr ".wl[558].w[13]" 0.1130400017780112;
	setAttr ".wl[558].w[21]" 0.35356724492922154;
	setAttr ".wl[558].w[22]" 0.097607465288735346;
	setAttr -s 5 ".wl[559].w";
	setAttr ".wl[559].w[0]" 0.30826759181830932;
	setAttr ".wl[559].w[1]" 0.10675313229139027;
	setAttr ".wl[559].w[13]" 0.13039893783437109;
	setAttr ".wl[559].w[21]" 0.32901035780650906;
	setAttr ".wl[559].w[22]" 0.12556998024942034;
	setAttr -s 5 ".wl[560].w";
	setAttr ".wl[560].w[0]" 0.35322063338403425;
	setAttr ".wl[560].w[13]" 0.13788881046127491;
	setAttr ".wl[560].w[14]" 0.091508205128184486;
	setAttr ".wl[560].w[21]" 0.32828073042528361;
	setAttr ".wl[560].w[22]" 0.089101620601222731;
	setAttr -s 5 ".wl[561].w";
	setAttr ".wl[561].w[0]" 0.34299325691444033;
	setAttr ".wl[561].w[13]" 0.068050991886385345;
	setAttr ".wl[561].w[17]" 0.058351434970215693;
	setAttr ".wl[561].w[21]" 0.45313945829289554;
	setAttr ".wl[561].w[22]" 0.077464857936063239;
	setAttr -s 5 ".wl[562].w";
	setAttr ".wl[562].w[0]" 0.18274058246721023;
	setAttr ".wl[562].w[13]" 0.024506489895772105;
	setAttr ".wl[562].w[17]" 0.024506539640166716;
	setAttr ".wl[562].w[21]" 0.73665577402667171;
	setAttr ".wl[562].w[22]" 0.031590613970179295;
	setAttr -s 5 ".wl[563].w";
	setAttr ".wl[563].w[0]" 0.30132003538113117;
	setAttr ".wl[563].w[1]" 0.080131081989231578;
	setAttr ".wl[563].w[13]" 0.088439848434134591;
	setAttr ".wl[563].w[21]" 0.41799183606655427;
	setAttr ".wl[563].w[22]" 0.11211719812894833;
	setAttr -s 5 ".wl[564].w";
	setAttr ".wl[564].w[0]" 0.34257763156181881;
	setAttr ".wl[564].w[1]" 0.088106508378697365;
	setAttr ".wl[564].w[13]" 0.1140887018229596;
	setAttr ".wl[564].w[21]" 0.35167337084069539;
	setAttr ".wl[564].w[22]" 0.10355378739582892;
	setAttr -s 5 ".wl[565].w";
	setAttr ".wl[565].w[0]" 0.31339960351173479;
	setAttr ".wl[565].w[1]" 0.1097989354817102;
	setAttr ".wl[565].w[13]" 0.16261300066053055;
	setAttr ".wl[565].w[21]" 0.30040014448514735;
	setAttr ".wl[565].w[22]" 0.11378831586087712;
	setAttr -s 5 ".wl[566].w";
	setAttr ".wl[566].w[0]" 0.28437196601969933;
	setAttr ".wl[566].w[1]" 0.12857485534495103;
	setAttr ".wl[566].w[13]" 0.1794656854278314;
	setAttr ".wl[566].w[21]" 0.27751788820310758;
	setAttr ".wl[566].w[22]" 0.13006960500441059;
	setAttr -s 5 ".wl[567].w";
	setAttr ".wl[567].w[0]" 0.29885375716291729;
	setAttr ".wl[567].w[1]" 0.11495632765283222;
	setAttr ".wl[567].w[13]" 0.19274102635177875;
	setAttr ".wl[567].w[14]" 0.1144310783176265;
	setAttr ".wl[567].w[21]" 0.27901781051484542;
	setAttr -s 5 ".wl[568].w";
	setAttr ".wl[568].w[0]" 0.34714420187514372;
	setAttr ".wl[568].w[1]" 0.088446556814972307;
	setAttr ".wl[568].w[13]" 0.13072244187348589;
	setAttr ".wl[568].w[21]" 0.33623375707071795;
	setAttr ".wl[568].w[22]" 0.097453042365680115;
	setAttr -s 5 ".wl[569].w";
	setAttr ".wl[569].w[0]" 0.37827419701837672;
	setAttr ".wl[569].w[13]" 0.10149719070322263;
	setAttr ".wl[569].w[14]" 0.075941270020545598;
	setAttr ".wl[569].w[17]" 0.080006208175518442;
	setAttr ".wl[569].w[21]" 0.36428113408233653;
	setAttr -s 5 ".wl[570].w";
	setAttr ".wl[570].w[0]" 0.23480400471113885;
	setAttr ".wl[570].w[13]" 0.10978203007854206;
	setAttr ".wl[570].w[21]" 0.36126250393800158;
	setAttr ".wl[570].w[22]" 0.19567713116589064;
	setAttr ".wl[570].w[23]" 0.098474330106426783;
	setAttr -s 5 ".wl[571].w";
	setAttr ".wl[571].w[0]" 0.37909013269410602;
	setAttr ".wl[571].w[13]" 0.091973796853032641;
	setAttr ".wl[571].w[17]" 0.068927579094400199;
	setAttr ".wl[571].w[21]" 0.37929418557865296;
	setAttr ".wl[571].w[22]" 0.080714305779808038;
	setAttr -s 5 ".wl[572].w";
	setAttr ".wl[572].w[0]" 0.25613710485018082;
	setAttr ".wl[572].w[13]" 0.10076109193796444;
	setAttr ".wl[572].w[21]" 0.38474132799911243;
	setAttr ".wl[572].w[22]" 0.17176524916846234;
	setAttr ".wl[572].w[23]" 0.086595226044279883;
	setAttr -s 5 ".wl[573].w";
	setAttr ".wl[573].w[0]" 0.17933391421665887;
	setAttr ".wl[573].w[13]" 0.10792390392962233;
	setAttr ".wl[573].w[21]" 0.31361305972008752;
	setAttr ".wl[573].w[22]" 0.26561255278678708;
	setAttr ".wl[573].w[23]" 0.13351656934684414;
	setAttr -s 5 ".wl[574].w";
	setAttr ".wl[574].w[0]" 0.20389918274658739;
	setAttr ".wl[574].w[13]" 0.089436838164825991;
	setAttr ".wl[574].w[21]" 0.42464678592563371;
	setAttr ".wl[574].w[22]" 0.19245208810517456;
	setAttr ".wl[574].w[23]" 0.089565105057778469;
	setAttr -s 5 ".wl[575].w";
	setAttr ".wl[575].w[0]" 0.14588037915348021;
	setAttr ".wl[575].w[13]" 0.10163659984672552;
	setAttr ".wl[575].w[21]" 0.2848322162373117;
	setAttr ".wl[575].w[22]" 0.28489875004054083;
	setAttr ".wl[575].w[23]" 0.18275205472194184;
	setAttr -s 5 ".wl[576].w";
	setAttr ".wl[576].w[0]" 0.13552635804872315;
	setAttr ".wl[576].w[13]" 0.081022172612053286;
	setAttr ".wl[576].w[21]" 0.31990373152599755;
	setAttr ".wl[576].w[22]" 0.31815989205204159;
	setAttr ".wl[576].w[23]" 0.14538784576118449;
	setAttr -s 5 ".wl[577].w";
	setAttr ".wl[577].w[0]" 0.11682477530942265;
	setAttr ".wl[577].w[21]" 0.23031454452107081;
	setAttr ".wl[577].w[22]" 0.27257055207498226;
	setAttr ".wl[577].w[23]" 0.24790304786710807;
	setAttr ".wl[577].w[24]" 0.13238708022741638;
	setAttr -s 5 ".wl[578].w";
	setAttr ".wl[578].w[0]" 0.099818874798792354;
	setAttr ".wl[578].w[21]" 0.28473733764757647;
	setAttr ".wl[578].w[22]" 0.33551654881078175;
	setAttr ".wl[578].w[23]" 0.19602361152119072;
	setAttr ".wl[578].w[24]" 0.08390362722165863;
	setAttr -s 5 ".wl[579].w[21:25]"  0.18948715098139873 0.26698288329840075 
		0.26698288347336746 0.16904627155672297 0.10750081069011018;
	setAttr -s 5 ".wl[580].w[21:25]"  0.19435869285396243 0.26893925147207037 
		0.26818276816749081 0.16101197868967779 0.1075073088167986;
	setAttr -s 5 ".wl[581].w[21:25]"  0.16223322506994256 0.2472446814065663 
		0.26059385306628458 0.20298655060449344 0.12694168985271304;
	setAttr -s 5 ".wl[582].w";
	setAttr ".wl[582].w[5]" 0.14228191068237642;
	setAttr ".wl[582].w[21]" 0.18580895937380895;
	setAttr ".wl[582].w[22]" 0.2537381708440285;
	setAttr ".wl[582].w[23]" 0.25372796927909541;
	setAttr ".wl[582].w[24]" 0.16444298982069072;
	setAttr -s 5 ".wl[583].w[21:25]"  0.13286309239775668 0.21459761852093839 
		0.26792298798653597 0.24069672881851228 0.14391957227625646;
	setAttr -s 5 ".wl[584].w[21:25]"  0.1366534696278377 0.22610439138919783 
		0.26918117184122081 0.22507660862026521 0.14298435852147848;
	setAttr -s 5 ".wl[585].w[22:26]"  0.16165534270308118 0.27782295052505485 
		0.27782857850161607 0.17620755919000036 0.10648556908024744;
	setAttr -s 4 ".wl[586].w[21:24]"  0.16722473295207682 0.26627816529405163 
		0.30603984526297484 0.26045725649089679;
	setAttr -s 5 ".wl[587].w[22:26]"  0.13410150037986382 0.2709353439480357 
		0.28589455526565255 0.19957379120280713 0.10949480920364102;
	setAttr -s 5 ".wl[588].w[22:26]"  0.11829002219234803 0.24864308704103943 
		0.29899640116446652 0.21258038131484441 0.12149010828730164;
	setAttr -s 5 ".wl[589].w[22:26]"  0.084635141033971725 0.15832228757273964 
		0.30698515529922604 0.30698515529922604 0.14307226079483665;
	setAttr -s 5 ".wl[590].w[22:26]"  0.11169775822368457 0.29052835952374778 
		0.31976480296917503 0.18978372294882451 0.088225356334567961;
	setAttr -s 5 ".wl[591].w[22:26]"  0.078335395470771618 0.13860322290619922 
		0.30036169226773579 0.31707633734707907 0.16562335200821451;
	setAttr -s 5 ".wl[592].w[22:26]"  0.06020714953439605 0.1109565507941071 
		0.29178241606413874 0.39139767088959249 0.14565621271776572;
	setAttr -s 5 ".wl[593].w[22:26]"  0.0732749748008171 0.12145879497915071 
		0.25513347988349844 0.33704606927191372 0.21308668106462011;
	setAttr -s 5 ".wl[594].w[22:26]"  0.059282161472147418 0.10773393841509978 
		0.33337352107598323 0.36347534423329897 0.13613503480347044;
	setAttr -s 5 ".wl[595].w[22:26]"  0.071841171381418378 0.11555679564419612 
		0.22897970527018752 0.34168680230158438 0.24193552540261357;
	setAttr -s 5 ".wl[596].w[22:26]"  0.062018535856806535 0.10076306311526292 
		0.20785442493534556 0.38843934500632626 0.24092463108625889;
	setAttr -s 5 ".wl[597].w[22:26]"  0.053115404778235696 0.085680407903758124 
		0.18729659607382149 0.42827757965913354 0.24563001158505104;
	setAttr ".wl[598].w[27]"  1;
	setAttr ".wl[599].w[27]"  1;
	setAttr ".wl[600].w[27]"  1;
	setAttr ".wl[601].w[27]"  1;
	setAttr ".wl[602].w[27]"  1;
	setAttr ".wl[603].w[27]"  1;
	setAttr ".wl[604].w[27]"  1;
	setAttr ".wl[605].w[27]"  1;
	setAttr ".wl[606].w[27]"  1;
	setAttr ".wl[607].w[27]"  1;
	setAttr ".wl[608].w[27]"  1;
	setAttr ".wl[609].w[27]"  1;
	setAttr ".wl[610].w[27]"  1;
	setAttr ".wl[611].w[27]"  1;
	setAttr ".wl[612].w[27]"  1;
	setAttr ".wl[613].w[27]"  1;
	setAttr ".wl[614].w[27]"  1;
	setAttr ".wl[615].w[27]"  1;
	setAttr ".wl[616].w[27]"  1;
	setAttr ".wl[617].w[27]"  1;
	setAttr ".wl[618].w[27]"  1;
	setAttr ".wl[619].w[27]"  1;
	setAttr ".wl[620].w[27]"  1;
	setAttr ".wl[621].w[27]"  1;
	setAttr ".wl[622].w[27]"  1;
	setAttr ".wl[623].w[27]"  1;
	setAttr ".wl[624].w[27]"  1;
	setAttr ".wl[625].w[27]"  1;
	setAttr ".wl[626].w[27]"  1;
	setAttr ".wl[627].w[27]"  1;
	setAttr ".wl[628].w[27]"  1;
	setAttr ".wl[629].w[27]"  1;
	setAttr ".wl[630].w[27]"  1;
	setAttr ".wl[631].w[27]"  1;
	setAttr ".wl[632].w[27]"  1;
	setAttr ".wl[633].w[27]"  1;
	setAttr ".wl[634].w[27]"  1;
	setAttr ".wl[635].w[27]"  1;
	setAttr ".wl[636].w[27]"  1;
	setAttr ".wl[637].w[27]"  1;
	setAttr ".wl[638].w[27]"  1;
	setAttr ".wl[639].w[27]"  1;
	setAttr ".wl[640].w[27]"  1;
	setAttr ".wl[641].w[27]"  1;
	setAttr ".wl[642].w[27]"  1;
	setAttr ".wl[643].w[27]"  1;
	setAttr ".wl[644].w[27]"  1;
	setAttr ".wl[645].w[27]"  1;
	setAttr ".wl[646].w[27]"  1;
	setAttr ".wl[647].w[27]"  1;
	setAttr ".wl[648].w[27]"  1;
	setAttr ".wl[649].w[27]"  1;
	setAttr ".wl[650].w[27]"  1;
	setAttr ".wl[651].w[27]"  1;
	setAttr ".wl[652].w[27]"  1;
	setAttr ".wl[653].w[27]"  1;
	setAttr ".wl[654].w[27]"  1;
	setAttr ".wl[655].w[27]"  1;
	setAttr ".wl[656].w[27]"  1;
	setAttr ".wl[657].w[27]"  1;
	setAttr ".wl[658].w[27]"  1;
	setAttr ".wl[659].w[27]"  1;
	setAttr ".wl[660].w[27]"  1;
	setAttr ".wl[661].w[27]"  1;
	setAttr -s 31 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.0820087074851992e-016 2.4870126926503508e-017 -1 0
		 0.97458680236839468 0.22401018871771625 -2.4870126926503508e-017 0 0.22401018871771605 -0.97458680236839468 1.0820087074851992e-016 0
		 0.17350629708039506 0.18191972685627184 -2.0197146938935253e-017 1;
	setAttr ".pm[1]" -type "matrix" 1.1077086763492798e-016 7.467698941680556e-018 -1 0
		 0.99773527640833615 0.067263052342135185 -2.4870126926503514e-017 0 0.067263052342135018 -0.99773527640833615 1.0820087074851994e-016 0
		 0.068461392162652873 0.17328146616091553 -2.019714693893525e-017 1;
	setAttr ".pm[2]" -type "matrix" 9.9100356124415484e-017 -7.2413995003414336e-017 1 0
		 0.89261665382840205 0.45081649183252642 8.007922429905772e-017 0 -0.45081649183252653 0.89261665382840205 1.1131420491373985e-018 0
		 0.032550277911707635 -0.18213565630956127 -4.4458963520641176e-018 1;
	setAttr ".pm[3]" -type "matrix" 5.5368084865982547e-017 2.3753058866138492e-016 -1 0
		 0.99021866573898365 0.13952417002837281 -4.7924660029172542e-017 0 0.13952417002837264 -0.99021866573898365 -1.1928116574096526e-016 0
		 -0.21335538132999157 0.07347351836418009 2.1862751258300552e-017 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999989 -5.7069595373476525e-016 -2.2887004696068267e-016 0
		 7.6387636613532828e-016 0.99211071902613979 0.12536475259591501 0 2.8812323115491244e-017 -0.12536475259591529 0.99211071902613968 0
		 -3.3271282354000436e-016 -0.4062801024329355 -0.18669746590218889 1;
	setAttr ".pm[5]" -type "matrix" 0.99661347510640164 0.082228834579736843 -6.2075087367416406e-016 0
		 0.082228834579736954 -0.99661347510640119 9.1859270903689419e-015 0 6.7570199845124585e-017 -8.9063896886082206e-015 -0.99999999999999956 0
		 0.03890188866915377 0.042271711170390067 0.15543499999999957 1;
	setAttr ".pm[6]" -type "matrix" 0.99644243075937533 0.084276225487071463 -2.5116278623347069e-009 0
		 0.084276225487071602 -0.99644243075937478 2.9696307748197039e-008 0 8.5868432384950765e-017 -2.9802331293927666e-008 -0.99999999999999933 0
		 0.18678966604480621 0.042655582819471898 0.15543499872876421 1;
	setAttr ".pm[7]" -type "matrix" 0.99861782933250975 0.052558833122766553 -4.4308295518672919e-009 0
		 0.052558833122766845 -0.9986178293325072 6.6161139849314014e-008 0 -9.4735314086992865e-010 -6.6302572792102825e-008 -0.99999999999999756 0
		 0.28618085977680796 0.033575549475325484 0.15543499750274059 1;
	setAttr ".pm[8]" -type "matrix" 1.0000000000000002 -5.3397958433914226e-016 -4.4308295518672638e-009 0
		 2.2375979751943364e-016 -0.99999999999999045 1.3774111856153956e-007 0 -4.4308295961370901e-009 -1.3774111825739666e-007 -0.99999999999999045 0
		 0.32454000068870609 0.016540921409790445 0.15543499628365498 1;
	setAttr ".pm[9]" -type "matrix" 0.99661347510640164 0.082228834579735954 2.8623289690107421e-016 0
		 -0.082228834579735732 0.99661347510640164 -1.7036292813145112e-015 0 -5.7841443647782279e-016 1.6232694342702411e-015 0.99999999999999989 0
		 -0.038901921487948021 -0.042271754587177843 -0.15543515593076432 1;
	setAttr ".pm[10]" -type "matrix" 0.99644243075937522 0.084276225487070575 2.8623289690107426e-016 0
		 -0.084276225487070353 0.996442430759375 -1.703629281314511e-015 0 -5.8174825871415412e-016 1.6220776430384078e-015 0.99999999999999989 0
		 -0.18678989905879681 -0.042655608597203243 -0.15543515593076432 1;
	setAttr ".pm[11]" -type "matrix" 0.99861782933250987 0.052558833122762313 2.8623289690107436e-016 0
		 -0.052558833122762098 0.99861782933250975 -1.7036292813145112e-015 0 -5.2989183929409342e-016 1.6397504551642943e-015 0.99999999999999989 0
		 -0.28618044811705656 -0.033575503819832368 -0.15543515593076432 1;
	setAttr ".pm[12]" -type "matrix" 1.0000000000000002 6.938893903907706e-018 2.8623289690107436e-016 0
		 2.0816681711721769e-016 1 -1.7036292813145114e-015 0 -4.4297606780092506e-016 1.6653345369377346e-015 0.99999999999999989 0
		 -0.32453979011493383 -0.016540933542640759 -0.15543515593076429 1;
	setAttr ".pm[13]" -type "matrix" 1.0815267611528767e-016 -5.916327711828356e-016 1 0
		 0.97415270370386275 -0.22589048201828715 -1.0310900432180219e-016 0 0.22589048201828699 0.97415270370386275 4.4370913275979815e-016 0
		 0.20157461402666951 -0.18286536191690111 0.11731599999999992 1;
	setAttr ".pm[14]" -type "matrix" -2.5496447719069644e-017 -6.008962210249692e-016 1 0
		 0.89998132382353646 -0.4359284537270246 -1.0310900432180216e-016 0 0.43592845372702449 0.89998132382353635 4.4370913275979805e-016 0
		 0.26283918000525125 -0.24717965965501135 0.15697199999999986 1;
	setAttr ".pm[15]" -type "matrix" 1.3399097770409867e-017 -1.5931374560083289e-016 -1 0
		 0.1401135067804142 -0.9901354479149278 2.3727152046772115e-017 0 -0.99013544791492747 -0.14011350678041404 1.1725595665041472e-016 0
		 0.1214794920548915 -0.4304321022580978 -0.15697199999999992 1;
	setAttr ".pm[16]" -type "matrix" 1.0000000000000002 -4.0623364969459876e-018 -1.1083262576879695e-015 0
		 1.289285101826835e-016 -1.0000000000000002 -3.2934855120903003e-009 0 -1.2274789817783407e-015 3.2934856508681784e-009 -1 0
		 0.15697200000000039 -0.46638700073702294 0.22378199846396107 1;
	setAttr ".pm[17]" -type "matrix" -1.0815267611528767e-016 1.4754356133277306e-016 1 0
		 -0.97415270370386275 0.22589048201828713 -2.7934786496512901e-018 0 -0.22589048201828693 -0.97415270370386275 1.109842829864761e-017 0
		 -0.20157445660922885 0.18286482445825061 -0.117316080306807 1;
	setAttr ".pm[18]" -type "matrix" -7.2808768147962243e-017 1.6782427453271578e-016 1 0
		 -0.89998132382353635 0.4359284537270246 -2.7934786496512901e-018 0 -0.43592845372702438 -0.89998132382353646 1.1098428298647605e-017 0
		 -0.26283865631612269 0.24717995962896372 -0.15697222012882622 1;
	setAttr ".pm[19]" -type "matrix" -1.3755423558825911e-016 1.4901161436914726e-008 -0.99999999999999989 0
		 -0.14011350678041404 0.99013544791492747 1.4754168037172984e-008 0 0.9901354479149278 0.14011350678041368 2.0878539560307389e-009 0
		 -0.12147949823452188 0.43043181057712626 0.15697222654276005 1;
	setAttr ".pm[20]" -type "matrix" 0.99999999999999989 -1.5669161680040496e-016 9.6018598201768833e-016 0
		 2.9662729900744421e-016 0.99999999999999989 1.0916416073910915e-009 0 -1.0815615612447295e-015 -1.0916419743115034e-009 0.99999999999999989 0
		 -0.15697222012882578 0.466387352494674 -0.22378168711386837 1;
	setAttr ".pm[21]" -type "matrix" 7.0693770863819696e-017 6.5215962792020461e-016 1 0
		 0.63675288023942733 0.7710679409149318 -4.1198141427178453e-016 0 -0.77106794091493203 0.63675288023942722 -4.6895569186710599e-016 0
		 0.14898684490508832 0.15295795000913637 -7.9474711621538118e-017 1;
	setAttr ".pm[22]" -type "matrix" 3.0948657609560035e-016 5.7838382476050276e-016 1 0
		 0.87893504273087653 0.476941496055514 -4.1198141427178453e-016 0 -0.47694149605551417 0.8789350427308763 -4.6895569186710599e-016 0
		 0.044160271896523814 0.14711900058234981 -7.9474711621538057e-017 1;
	setAttr ".pm[23]" -type "matrix" 3.0310518387261717e-016 5.8175341600846037e-016 1 0
		 0.87363513635478651 0.48658159493177838 -4.1198141427178444e-016 0 -0.48658159493177855 0.8736351363547864 -4.6895569186710599e-016 0
		 -0.076505374560149803 0.14628623467720431 -5.2284719474887346e-017 1;
	setAttr ".pm[24]" -type "matrix" 8.9281779704278966e-017 6.4987579839597243e-016 1 0
		 0.65850460786851805 0.7525766947068776 -4.1198141427178463e-016 0 -0.7525766947068776 0.65850460786851794 -4.6895569186710608e-016 0
		 -0.25945134545919485 0.062492115307307042 -1.9696152539535993e-017 1;
	setAttr ".pm[25]" -type "matrix" -4.1569138625171799e-016 5.0745488560471158e-016 1 0
		 -0.10383133771915376 0.99459491920452259 -4.1198141427178463e-016 0 -0.99459491920452237 -0.10383133771915384 -4.6895569186710599e-016 0
		 -0.31024303290317201 -0.24251464152710633 -1.744161309103701e-017 1;
	setAttr ".pm[26]" -type "matrix" 1 6.2856700293020867e-016 1.1337103467518267e-015 0
		 -4.8830924721476395e-016 0.99999999999999989 -3.3306690738754731e-016 0 -1.2461118091047154e-015 2.914335439641031e-016 0.99999999999999989 0
		 -4.4142818736997944e-016 -0.19357897068751764 0.4813766432601756 1;
	setAttr ".pm[27]" -type "matrix" -1.1101634491202112e-016 1.1501332329217963e-018 -1 0
		 -0.99994633915562525 0.010359479198426051 -2.4870126926503514e-017 0 0.010359479198426218 0.99994633915562525 1.0820087074851994e-016 0
		 -0.076720585744120898 -0.47805033522176898 -5.3593466045822679e-017 1;
	setAttr ".pm[28]" -type "matrix" 1.0820087074851987e-016 2.4870126926503499e-017 -1 0
		 0.97458680236839434 0.22401018871771616 -2.4870126926503505e-017 0 0.22401018871771597 -0.97458680236839457 1.0820087074851992e-016 0
		 0.33076847576197033 0.57135717762732441 -6.3433389388670117e-017 1;
	setAttr ".pm[29]" -type "matrix" 5.5368084865982541e-017 2.3753058866138492e-016 -1 0
		 0.99021866573898365 0.13952417002837281 -4.7924660029172542e-017 0 0.13952417002837264 -0.99021866573898365 -1.1928116574096526e-016 0
		 -0.34442433544937395 0.18221874277534383 -0.082168863788203164 1;
	setAttr ".pm[30]" -type "matrix" 5.5368084865982541e-017 2.3753058866138492e-016 -1 0
		 0.99021866573898365 0.13952417002837281 -4.7924660029172542e-017 0 0.13952417002837264 -0.99021866573898365 -1.1928116574096526e-016 0
		 -0.34261135425015238 0.18179560600388789 0.076919849621537625 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 31 ".ma";
	setAttr -s 31 ".dpf[0:30]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 31 ".lw";
	setAttr -s 31 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 31 ".ifcl";
	setAttr -s 31 ".ifcl";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 31 ".wm";
	setAttr -s 31 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.20984881960691193
		 0.13842938653189443 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.44045141936491811 -0.55317496976944736 0.44045141936491811 0.55317496976944747 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.13327395048882151 4.8572257327350599e-017
		 -5.3926038442842604e-033 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.079223602247567068 0.99685687079285323 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.13331855349868066 6.4184768611141862e-017
		 -2.3378584399887097e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.96443554231149531 0.26431815058056823 1.618481885325205e-017 5.9054644993785719e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0.12569547575130388 0 0.16576243705629545
		 2.7755575615628914e-017 1.1765523792875898e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.9335234515178632 0.35851633918996728 2.1952794361551013e-017 5.7161825341517021e-017 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.22769008968904544 5.5511151231257827e-017
		 -1.7660081572430949e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.42937106833873928 0.56181890825572045 -0.42937106833873889 0.56181890825572078 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0027730849477375918
		 -0.025841635939650887 -0.042246100000000009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.61698634866001567 -0.34543862778673423 0.5864918932495411 0.39500285967644411 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.14797501997989326 -1.3485529012924324e-008
		 2.7755575615628914e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4901153331498186e-008 -1.5307390901538943e-011 -0.0010272616142062041 0.99999947236664866 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.098179272918492239
		 -7.882305406992085e-008 2.3314683517128287e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.825534441098943e-008 2.9022277322199917e-010 0.015895953394993743 0.99987365135084127 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.037041200299216315
		 5.7814716299120494e-008 3.5087238670072907e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		3.577762025034726e-008 9.4086520427756849e-010 0.026288501930411098 0.99965439761262165 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0027731190294531458
		 -0.025841478463130198 0.042246136277764586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.34543862778673662 -0.61698634866001389 -0.39500285967644611 0.58649189324954021 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14797522023707596 -3.8163916471489762e-017
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0010272616142062044 0.99999947236664877 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.098178629723659164
		 -4.0245584642661925e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.015895953394995506 0.99987365135084161 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.037041400453784595
		 -4.1850203857940471e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.026288501930408877 0.9996543976126222 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.028420826337193339
		 -0.00055630564470618427 0.117316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99999953450682333 -0.00096487622868433463 -2.7332719025134927e-019 2.8327681301891401e-016 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.10946047089751285
		 -9.4591639338004185e-007 -0.039655999999999969 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.11137475381888852 0.99377847844063427 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.10989542854138062
		 3.824920625228323e-007 2.7755575615628914e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.58926705513201982 0.80793832545314814 1.6692577109764673e-016 2.2887030048776917e-016 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.16544211683720389
		 -6.8188573304484024e-007 8.3266726846886741e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.04966022690879987 0.70536080261336187 0.049660226908799815 0.70536080261336265 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.02842066788288411
		 -0.00055576849083302515 -0.117316080306807 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.00096487622868430439 -0.99999953450682333 6.1232311454131221e-017 5.9081629251580152e-020 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.10946018402119063 3.7271448950789017e-017
		 0.039656139822019237 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.11137475381888852 0.99377847844063427 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.10989567483604944 5.5511151231257827e-017
		 -1.459901296248468e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.58926705513201971 -0.80793832545314836 -6.019609660604309e-009 4.3903817234552704e-009 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.16544185071706541 -6.9388939039072284e-018
		 -1.9898936661116615e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.04966022087690497 0.7053608022980371 0.049660231387600229 0.70536080303803139 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.029978053082029804
		 0.11721011655960915 -1.3012937012347647e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.85083602371222933 -0.52543130926274539 1.4884257603350942e-016 2.4102222939308869e-016 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.16305793140638308 6.9388939039072284e-017
		 -3.6977854932234928e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.19050102715909095 0.98168699627291156 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.11905175646101517 -5.5511151231257827e-017
		 -2.7189992146650705e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0055004662061382131 0.99998487232133426 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14669991811933414 -2.1510571102112408e-016
		 -3.2588566935351362e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.17105155464884417 0.98526207967840385 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.12934014923223719 0
		 -2.2545394484989799e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.39991527694126738 0.91655211050381058 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14843216722634478 -1.7347234759768071e-018
		 6.4657234609901286e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.036759627295027575 -0.70615064242775449 0.036759627295027547 0.70615064242775505 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.21082637577988039 -0.30080730057064875
		 3.3396319106887423e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99302917286638848 0.11786883318458886 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37860862041172577 2.2204460492503131e-016
		 9.8399233428474565e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99302917286638848 0.11786883318458886 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -2.4651903288156619e-032 -9.2444637330587321e-033
		 0 0 0.13106895411938232 -0.10874522441116376 0.082168863788203206 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -2.4651903288156619e-032 -9.2444637330587321e-033
		 0 0 0.12925597292016081 -0.10832208763970778 -0.076919849621537612 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 31 ".m";
	setAttr -s 31 ".p";
	setAttr -s 2 ".g[29:30]" yes yes;
	setAttr ".bp" yes;
createNode animCurveTU -n "lowerBody_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 27 1
		 29 1 30 1 32 1 34 1 36 1 38 1 40 1 41 1 42 1 44 1 45 1 48 1 60 1 61 1 63 1 64 1 65 1
		 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 105 1 109 1 110 1 112 1 114 1;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lowerBody_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 0 2 0 6 -10.058426668680736 9 -0.88626501893347565
		 11 0 12 0 20 0 21 0 27 0 29 0 30 0 32 0 34 0 36 0 38 0 40 0 41 0 42 0 44 0 45 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lowerBody_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 0 2 0 6 -0.2056582132345299 9 -0.0015756744948617648
		 11 0 12 0 20 0 21 0 27 0 29 0 30 0 32 0 34 0 36 0 38 0 40 0 41 0 42 0 44 0 45 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lowerBody_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 0 2 0 6 2.336638476142006 9 0.2037259765912941
		 11 0 12 0 20 0 21 0 27 0 29 0 30 0 32 0 34 0 36 0 38 0 40 0 41 0 42 0 44 0 45 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lowerBody_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 27 1
		 29 1 30 1 32 1 34 1 36 1 38 1 40 1 41 1 42 1 44 1 45 1 48 1 60 1 61 1 63 1 64 1 65 1
		 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 105 1 109 1 110 1 112 1 114 1;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lowerBody_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 27 1
		 29 1 30 1 32 1 34 1 36 1 38 1 40 1 41 1 42 1 44 1 45 1 48 1 60 1 61 1 63 1 64 1 65 1
		 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 105 1 109 1 110 1 112 1 114 1;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lowerBody_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 0.13842938653189443 2 0.13842938653189443
		 6 0.13842938653189443 9 0.13842938653189443 11 0.13842938653189443 12 0.13842938653189443
		 20 0.13842938653189443 21 0.13842938653189443 27 0.13842938653189443 29 0.13842938653189443
		 30 0.13842938653189443 32 0.13842938653189443 34 0.13842938653189443 36 0.13842938653189443
		 38 0.13842938653189443 40 0.13842938653189443 41 0.13842938653189443 42 0.13842938653189443
		 44 0.13842938653189443 45 0.13842938653189443 48 0.13842938653189443 60 0.13842938653189443
		 61 0.13842938653189443 63 0.13842938653189443 64 0.13842938653189443 65 0.13842938653189443
		 66 0.13842938653189443 67 0.13842938653189443 68 0.13842938653189443 69 0.13842938653189443
		 70 0.13842938653189443 71 0.13842938653189443 72 0.13842938653189443 73 0.13842938653189443
		 74 0.13842938653189443 75 0.13842938653189443 76 0.13842938653189443 90 0.13842938653189443
		 91 0.13842938653189443 92 0.057864602768379431 93 0.057864602768379431 94 0.057864602768379431
		 95 0.057864602768379431 96 0.057864602768379431 97 0.057864602768379431 98 0.057864602768379431
		 99 0.057864602768379431 100 0.057864602768379431 101 0.057864602768379431 102 0.13842938653189443
		 105 0.13842938653189443 109 0.13842938653189443 110 0.13842938653189443 112 0.13842938653189443
		 114 0.13842938653189443;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lowerBody_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 -0.20984881960691193 2 -0.20984881960691193
		 6 -0.13979026528464647 9 -0.214519389895063 11 -0.20984881960691193 12 -0.20984881960691193
		 20 -0.20984881960691193 21 -0.20984881960691193 27 -0.20984881960691193 29 -0.15539135147112987
		 30 -0.13676116500362545 32 -0.15539135147112984 34 -0.21128191087364312 36 -0.22991209734114751
		 38 -0.21844736720729868 40 -0.21558118467383652 41 -0.14822589513747447 42 -0.12243025233631456
		 44 -0.15539135147113003 45 -0.20841572834018104 48 -0.20984881960691193 60 -0.20984881960691193
		 61 -0.20984881960691193 63 -0.20984881960691193 64 -0.15675552793249803 65 -0.18928325019150513
		 66 -0.09917096512859358 67 -0.14924015418176936 68 -0.099176011753779963 69 -0.15675664571195408
		 70 -0.074143933918910082 71 -0.10920510657696464 72 -0.05911312432750164 73 -0.11191790215794148
		 74 0.0068928479605488979 75 -0.098716707700331419 76 -0.20984881960691193 90 -0.20984881960691193
		 91 -0.20984881960691193 92 -0.24103518751536937 93 -0.24103518751536937 94 -0.24103518751536937
		 95 -0.24103518751536937 96 -0.24103518751536937 97 -0.24103518751536937 98 -0.24103518751536937
		 99 -0.24103518751536937 100 -0.24103518751536937 101 -0.24103518751536937 102 -0.20984881960691193
		 105 -0.20984881960691193 109 -0.20984881960691193 110 -0.20984881960691193 112 -0.20984881960691193
		 114 -0.20984881960691193;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 0.86326450109481812 1 0.91290128231048584 
		0.91290122270584106 1 0.99632364511489868 0.99471879005432129 0.66674065589904785 
		1 0.82389426231384277 0.999409019947052 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.3588714599609375 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0.50475180149078369 0 -0.40818056464195251 
		-0.40818056464195251 0 0.085669383406639099 0.10263773798942566 0.74528980255126953 
		0 -0.56674355268478394 -0.034373864531517029 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.93338698148727417 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 0.86326450109481812 1 0.91290122270584106 
		0.91290128231048584 1 0.99632364511489868 0.99471879005432129 0.66674065589904785 
		1 0.82389426231384277 0.99940907955169678 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.3588714599609375 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0.50475180149078369 0 -0.40818056464195251 
		-0.40818056464195251 0 0.085669383406639099 0.10263774544000626 0.74528986215591431 
		0 -0.56674355268478394 -0.034373864531517029 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.93338698148727417 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lowerBody_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 27 1
		 29 1 30 1 32 1 34 1 36 1 38 1 40 1 41 1 42 1 44 1 45 1 48 1 60 1 61 1 63 1 64 1 65 1
		 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 105 1 109 1 110 1 112 1 114 1;
	setAttr -s 55 ".kit[0:54]"  9 9 9 9 1 1 1 1 
		9 9 9 9 9 9 9 9 9 9 9 9 1 1 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lowerBody_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  1 0 2 0 6 0 9 -2.1684043449710089e-019 11 0
		 12 0 20 0 21 0 27 0 29 -3.8518598887744717e-034 30 -3.8518598887744717e-034 32 -3.8518598887744717e-034
		 34 -3.8518598887744717e-034 36 -3.8518598887744717e-034 38 -3.8518598887744717e-034
		 40 -3.8518598887744717e-034 41 -7.7037197775489434e-034 42 -7.7037197775489434e-034
		 44 -7.7037197775489434e-034 45 -7.7037197775489434e-034 48 0 60 0 61 0 63 0 64 0.0099964741294471526
		 65 -0.0099915496941712922 66 0.054982788949862083 67 0.064966775225793555 68 0.064966775225793555
		 69 0.02997934604034147 70 0.012479475752333212 71 0.012479475752333212 72 0.012479475752333212
		 73 0.052083059125163568 74 0.085086045269188421 75 -0.013922913162886658 76 0 90 0
		 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 105 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 55 ".kit[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kot[4:54]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 55 ".kix[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 0.81197857856750488 1 1 0.84615010023117065 1 1 1 0.75396507978439331 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".kiy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.58368724584579468 0 0 -0.53294461965560913 0 0 0 0.65691447257995605 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 55 ".kox[4:54]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 0.81197857856750488 1 1 0.84615010023117065 1 1 1 0.75396513938903809 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 55 ".koy[4:54]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.58368724584579468 0 0 -0.53294461965560913 0 0 0 0.65691447257995605 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "upperbody_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "upperbody_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "upperbody_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "upperbody_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -5.3926038442842604e-033 11 -5.3926038442842604e-033
		 12 -5.3926038442842604e-033 20 -5.3926038442842604e-033 21 -5.3926038442842604e-033
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "upperbody_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 4.8572257327350599e-017 11 4.8572257327350599e-017
		 12 4.8572257327350599e-017 20 4.8572257327350599e-017 21 4.8572257327350599e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "upperbody_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.13327395048882151 2 0.13327395048882151
		 11 0.13327395048882151 12 0.13327395048882151 20 0.13327395048882151 21 0.13327395048882151
		 48 0.13327395048882151 60 0.13327395048882151 61 0.13327395048882151 63 0.13327395048882151
		 64 0.13327395048882151 65 0.13327395048882151 66 0.13327395048882151 67 0.13327395048882151
		 68 0.13327395048882151 69 0.13327395048882151 70 0.13327395048882151 71 0.13327395048882151
		 72 0.13327395048882151 73 0.13327395048882151 74 0.13327395048882151 75 0.13327395048882151
		 76 0.13327395048882151 90 0.13327395048882151 91 0.13327395048882151 92 0.13327395048882151
		 93 0.13327395048882151 94 0.13327395048882151 95 0.13327395048882151 96 0.13327395048882151
		 97 0.13327395048882151 98 0.13327395048882151 99 0.13327395048882151 100 0.13327395048882151
		 101 0.13327395048882151 102 0.13327395048882151 109 0.13327395048882151 110 0.13327395048882151
		 112 0.13327395048882151 114 0.13327395048882151;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "upperbody_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "upperbody_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 -39.005781334411616 64 -39.005781334411616 65 -39.005781334411616 66 -39.005781334411616
		 67 -39.005781334411616 68 -39.005781334411616 69 -39.005781334411616 70 -39.005781334411616
		 71 -39.005781334411616 72 -39.005781334411616 73 -39.005781334411616 74 -39.005781334411616
		 75 -39.005781334411616 76 0 90 0 91 0 92 23.141607102537844 93 23.141607102537844
		 94 23.141607102537844 95 23.141607102537844 96 23.141607102537844 97 23.141607102537844
		 98 23.141607102537844 99 23.141607102537844 100 23.141607102537844 101 23.141607102537844
		 102 0 109 0 110 0 112 23.579685649576788 114 23.579685649576788;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "upperbody_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "upperbody_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "chestAndShoulders_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "chestAndShoulders_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "chestAndShoulders_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chestAndShoulders_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -2.3378584399887097e-018 11 -2.3378584399887097e-018
		 12 -2.3378584399887097e-018 20 -2.3378584399887097e-018 21 -2.3378584399887097e-018
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chestAndShoulders_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 6.4184768611141862e-017 11 6.4184768611141862e-017
		 12 6.4184768611141862e-017 20 6.4184768611141862e-017 21 6.4184768611141862e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "chestAndShoulders_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.13331855349868066 2 0.13331855349868066
		 11 0.13331855349868066 12 0.13331855349868066 20 0.13331855349868066 21 0.13331855349868066
		 48 0.13331855349868066 60 0.13331855349868066 61 0.13331855349868066 63 0.13331855349868066
		 64 0.13331855349868066 65 0.13331855349868066 66 0.13331855349868066 67 0.13331855349868066
		 68 0.13331855349868066 69 0.13331855349868066 70 0.13331855349868066 71 0.13331855349868066
		 72 0.13331855349868066 73 0.13331855349868066 74 0.13331855349868066 75 0.13331855349868066
		 76 0.13331855349868066 90 0.13331855349868066 91 0.13331855349868066 92 0.13331855349868066
		 93 0.13331855349868066 94 0.13331855349868066 95 0.13331855349868066 96 0.13331855349868066
		 97 0.13331855349868066 98 0.13331855349868066 99 0.13331855349868066 100 0.13331855349868066
		 101 0.13331855349868066 102 0.13331855349868066 109 0.13331855349868066 110 0.13331855349868066
		 112 0.13331855349868066 114 0.13331855349868066;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "chestAndShoulders_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "chestAndShoulders_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 14.989605348461529
		 93 14.989605348461529 94 14.989605348461529 95 14.989605348461529 96 14.989605348461529
		 97 14.989605348461529 98 14.989605348461529 99 14.989605348461529 100 14.989605348461529
		 101 14.989605348461529 102 0 109 0 110 0 112 -20.488826417056742 114 -20.488826417056742;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "chestAndShoulders_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "chestAndShoulders_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "neck_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 0 2 1.1765523792875898e-017 6 1.1765523792875898e-017
		 9 1.1765523792875898e-017 11 1.1765523792875898e-017 12 1.1765523792875898e-017 20 1.1765523792875898e-017
		 21 1.1765523792875898e-017 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0
		 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "neck_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 0 2 2.7755575615628914e-017 6 2.7755575615628914e-017
		 9 2.7755575615628914e-017 11 2.7755575615628914e-017 12 2.7755575615628914e-017 20 2.7755575615628914e-017
		 21 2.7755575615628914e-017 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0
		 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "neck_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 0.16576243705629545 2 0.16576243705629545
		 6 0.16576243705629545 9 0.16576243705629545 11 0.16576243705629545 12 0.16576243705629545
		 20 0.16576243705629545 21 0.16576243705629545 48 0.16576243705629545 60 0.16576243705629545
		 61 0.16576243705629545 63 0.16576243705629545 64 0.16576243705629545 65 0.16576243705629545
		 66 0.16576243705629545 67 0.16576243705629545 68 0.16576243705629545 69 0.16576243705629545
		 70 0.16576243705629545 71 0.16576243705629545 72 0.16576243705629545 73 0.16576243705629545
		 74 0.16576243705629545 75 0.16576243705629545 76 0.16576243705629545 90 0.16576243705629545
		 91 0.16576243705629545 92 0.16576243705629545 93 0.16576243705629545 94 0.16576243705629545
		 95 0.16576243705629545 96 0.16576243705629545 97 0.16576243705629545 98 0.16576243705629545
		 99 0.16576243705629545 100 0.16576243705629545 101 0.16576243705629545 102 0.16576243705629545
		 109 0.16576243705629545 110 0.16576243705629545 112 0.16576243705629545 114 0.16576243705629545;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 42 ".kit[0:41]"  9 9 9 9 1 1 1 1 
		1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 7.2018202644386928 2 7.2018202644386928
		 6 7.0362671058958082 9 7.2007962598238926 11 7.2018202644386928 12 7.2018202644386928
		 20 7.2018202644386928 21 7.2018202644386928 48 7.2018202644386928 60 7.2018202644386928
		 61 7.2018202644386928 63 7.2018202644386928 64 7.2018202644386928 65 7.2018202644386928
		 66 7.2018202644386928 67 7.2018202644386928 68 7.2018202644386928 69 7.2018202644386928
		 70 7.2018202644386928 71 7.2018202644386928 72 7.2018202644386928 73 7.2018202644386928
		 74 7.2018202644386928 75 7.2018202644386928 76 7.2018202644386928 90 7.2018202644386928
		 91 7.2018202644386928 92 7.2018202644386928 93 0.44179733944241106 94 7.2018202644386928
		 95 17.680684431705437 96 0.44179733944241106 97 7.2018202644386928 98 17.680684431705437
		 99 0.44179733944241106 100 7.2018202644386928 101 17.680684431705437 102 0.44179733944241106
		 109 0.44179733944241106 110 7.2018202644386928 112 28.399356102693577 114 28.399356102693577;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 0.26692050695419312 1 1 0.26692125201225281 1 1 0.26692125201225281 1 1 
		1 0.24815972149372101 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.9637184739112854 0 0 0.96371841430664063 0 0 0.96371841430664063 0 0 
		0 0.96871912479400635 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 0.2669205367565155 1 1 0.26692122220993042 1 1 0.26692122220993042 1 1 
		1 0.24815972149372101 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.96371859312057495 0 0 0.96371835470199585 0 0 0.96371835470199585 0 0 
		0 0.96871918439865112 0 0;
createNode animCurveTA -n "neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 0 2 0 6 11.504403974968159 9 0.91252522073419406
		 11 0 12 0 20 0 21 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0
		 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0
		 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  1 0 2 0 6 -1.6433647170846823 9 -0.12858795893044045
		 11 0 12 0 20 0 21 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0
		 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0
		 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 42 ".kit[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kot[4:41]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "head_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "head_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "head_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "head_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -1.7660081572430949e-017 11 -1.7660081572430949e-017
		 12 -1.7660081572430949e-017 20 -1.7660081572430949e-017 21 -1.7660081572430949e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "head_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 5.5511151231257827e-017 11 5.5511151231257827e-017
		 12 5.5511151231257827e-017 20 5.5511151231257827e-017 21 5.5511151231257827e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "head_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.22769008968904544 2 0.22769008968904544
		 11 0.22769008968904544 12 0.22769008968904544 20 0.22769008968904544 21 0.22769008968904544
		 48 0.22769008968904544 60 0.22769008968904544 61 0.22769008968904544 63 0.22769008968904544
		 64 0.22769008968904544 65 0.22769008968904544 66 0.22769008968904544 67 0.22769008968904544
		 68 0.22769008968904544 69 0.22769008968904544 70 0.22769008968904544 71 0.22769008968904544
		 72 0.22769008968904544 73 0.22769008968904544 74 0.22769008968904544 75 0.22769008968904544
		 76 0.22769008968904544 90 0.22769008968904544 91 0.22769008968904544 92 0.22769008968904544
		 93 0.22769008968904544 94 0.22769008968904544 95 0.22769008968904544 96 0.22769008968904544
		 97 0.22769008968904544 98 0.22769008968904544 99 0.22769008968904544 100 0.22769008968904544
		 101 0.22769008968904544 102 0.22769008968904544 109 0.22769008968904544 110 0.22769008968904544
		 112 0.22769008968904544 114 0.22769008968904544;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "head_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 48 1 60 1 61 1
		 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1
		 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "head_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "head_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "head_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0
		 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_arm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_arm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_arm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_arm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 -0.042246100000000009 2 -0.042246100000000009
		 11 -0.042246100000000009 12 -0.042246100000000009 20 -0.042246100000000009 21 -0.042246100000000009
		 46 -0.042246100000000009 47 -0.042246100000000009 48 -0.042246100000000009 60 -0.042246100000000009
		 61 -0.042246100000000009 63 -0.042246100000000009 64 -0.042246100000000009 65 -0.042246100000000009
		 66 -0.042246100000000009 67 -0.042246100000000009 68 -0.042246100000000009 69 -0.042246100000000009
		 70 -0.042246100000000009 71 -0.042246100000000009 72 -0.042246100000000009 73 -0.042246100000000009
		 74 -0.042246100000000009 75 -0.042246100000000009 76 -0.042246100000000009 90 -0.042246100000000009
		 91 -0.042246100000000009 92 -0.042246100000000009 93 -0.042246100000000009 94 -0.042246100000000009
		 95 -0.042246100000000009 96 -0.042246100000000009 97 -0.042246100000000009 98 -0.042246100000000009
		 99 -0.042246100000000009 100 -0.042246100000000009 101 -0.042246100000000009 102 -0.042246100000000009
		 109 -0.042246100000000009 110 -0.042246100000000009 112 -0.042246100000000009 114 -0.042246100000000009
		 115 -0.042246100000000009 116 -0.042246100000000009 117 -0.042246100000000009 118 -0.042246100000000009
		 119 -0.042246100000000009 120 -0.042246100000000009 121 -0.042246100000000009 122 -0.042246100000000009;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_arm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 -0.025841635939650887 2 -0.025841635939650887
		 11 -0.025841635939650887 12 -0.025841635939650887 20 -0.025841635939650887 21 -0.025841635939650887
		 46 -0.025841635939650887 47 -0.025841635939650887 48 -0.025841635939650887 60 -0.025841635939650887
		 61 -0.025841635939650887 63 -0.025841635939650887 64 -0.025841635939650887 65 -0.025841635939650887
		 66 -0.025841635939650887 67 -0.025841635939650887 68 -0.025841635939650887 69 -0.025841635939650887
		 70 -0.025841635939650887 71 -0.025841635939650887 72 -0.025841635939650887 73 -0.025841635939650887
		 74 -0.025841635939650887 75 -0.025841635939650887 76 -0.025841635939650887 90 -0.025841635939650887
		 91 -0.025841635939650887 92 -0.025841635939650887 93 -0.025841635939650887 94 -0.025841635939650887
		 95 -0.025841635939650887 96 -0.025841635939650887 97 -0.025841635939650887 98 -0.025841635939650887
		 99 -0.025841635939650887 100 -0.025841635939650887 101 -0.025841635939650887 102 -0.025841635939650887
		 109 -0.025841635939650887 110 -0.025841635939650887 112 -0.025841635939650887 114 -0.025841635939650887
		 115 -0.025841635939650887 116 -0.025841635939650887 117 -0.025841635939650887 118 -0.025841635939650887
		 119 -0.025841635939650887 120 -0.025841635939650887 121 -0.025841635939650887 122 -0.025841635939650887;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_arm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 -0.0027730849477375918 2 -0.0027730849477375918
		 11 -0.0027730849477375918 12 -0.0027730849477375918 20 -0.0027730849477375918 21 -0.0027730849477375918
		 46 -0.0027730849477375918 47 -0.0027730849477375918 48 -0.0027730849477375918 60 -0.0027730849477375918
		 61 -0.0027730849477375918 63 -0.0027730849477375918 64 -0.0027730849477375918 65 -0.0027730849477375918
		 66 -0.0027730849477375918 67 -0.0027730849477375918 68 -0.0027730849477375918 69 -0.0027730849477375918
		 70 -0.0027730849477375918 71 -0.0027730849477375918 72 -0.0027730849477375918 73 -0.0027730849477375918
		 74 -0.0027730849477375918 75 -0.0027730849477375918 76 -0.0027730849477375918 90 -0.0027730849477375918
		 91 -0.0027730849477375918 92 -0.0027730849477375918 93 -0.0027730849477375918 94 -0.0027730849477375918
		 95 -0.0027730849477375918 96 -0.0027730849477375918 97 -0.0027730849477375918 98 -0.0027730849477375918
		 99 -0.0027730849477375918 100 -0.0027730849477375918 101 -0.0027730849477375918 102 -0.0027730849477375918
		 109 -0.0027730849477375918 110 -0.0027730849477375918 112 -0.0027730849477375918
		 114 -0.0027730849477375918 115 -0.0027730849477375918 116 -0.0027730849477375918
		 117 -0.0027730849477375918 118 -0.0027730849477375918 119 -0.0027730849477375918
		 120 -0.0027730849477375918 121 -0.0027730849477375918 122 -0.0027730849477375918;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_arm_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[0:49]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_arm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 -22.926498637266679 11 0 12 0 20 0
		 21 7.5043810721710216 46 7.5043810721710216 47 0 48 0 60 0 61 7.5043810721710216
		 63 5.3996600733050162 64 5.3996600733050162 65 5.3996600733050162 66 5.3996600733050162
		 67 5.3996600733050162 68 5.3996600733050162 69 5.3996600733050162 70 5.3996600733050162
		 71 5.3996600733050162 72 5.3996600733050162 73 5.3996600733050162 74 5.3996600733050162
		 75 5.3996600733050162 76 0 90 0 91 7.5043810721710216 92 7.5043810721710216 93 4.9034786324827904
		 94 6.5907151227687972 95 8.5654324406498663 96 4.9034786324828055 97 6.5907151227687972
		 98 8.5654324406498841 99 5.2631794089022996 100 6.6093764313488785 101 8.5654324406498699
		 102 0 109 0 110 7.5043810721710216 112 7.5043810721710216 114 4.7746681539501266
		 115 2.5607963537686134 116 4.7746681539501266 117 2.5607963537686134 118 4.7746681539501266
		 119 2.5607963537686134 120 4.7746681539501266 121 2.5607963537686134 122 4.7746681539501266;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.79349452257156372 1 1 0.7934952974319458 1 1 0.8224564790725708 1 
		1 1 1 1 0.82298213243484497 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.60857737064361572 0 0 0.60857629776000977 0 0 0.56882810592651367 
		0 0 0 0 0 -0.56806725263595581 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.79349452257156372 1 1 0.79349541664123535 1 1 0.82245641946792603 
		1 1 1 1 1 0.82298219203948975 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.60857737064361572 0 0 0.60857635736465454 0 0 0.56882810592651367 
		0 0 0 0 0 -0.56806725263595581 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_arm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 -8.6822646739456637 11 0 12 0 20 0
		 21 -36.868404064926381 46 -36.868404064926381 47 0 48 0 60 0 61 -36.868404064926381
		 63 -20.568079776750828 64 -20.568079776750828 65 -20.568079776750828 66 -20.568079776750828
		 67 -20.568079776750828 68 -20.568079776750828 69 -20.568079776750828 70 -20.568079776750828
		 71 -20.568079776750828 72 -20.568079776750828 73 -20.568079776750828 74 -20.568079776750828
		 75 -20.568079776750828 76 0 90 0 91 -36.868404064926381 92 -36.868404064926381 93 -16.003318695158725
		 94 -30.429418889738301 95 -43.183307453970329 96 -16.003318695158754 97 -30.429418889738301
		 98 -43.183307453970372 99 -17.271996602657573 100 -30.570730361712524 101 -43.183307453970308
		 102 0 109 0 110 -36.868404064926381 112 -36.868404064926381 114 -14.780490036786878
		 115 7.4572721812788876 116 -14.780490036786878 117 7.4572721812788876 118 -14.780490036786878
		 119 7.4572721812788876 120 -14.780490036786878 121 7.4572721812788876 122 -14.780490036786878;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.17301829159259796 1 1 0.17301878333091736 1 1 0.18121828138828278 
		1 1 1 1 1 0.15950746834278107 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.98491859436035156 0 0 -0.98491853475570679 0 0 -0.98344296216964722 
		0 0 0 0 0 0.98719674348831177 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.17301830649375916 1 1 0.17301878333091736 1 1 0.18121825158596039 
		1 1 1 1 1 0.15950743854045868 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.98491859436035156 0 0 -0.98491847515106201 0 0 -0.98344284296035767 
		0 0 0 0 0 0.98719668388366699 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_arm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 -10.602175417895833 11 0 12 0 20 0
		 21 -6.9938152222945069 46 -6.9938152222945069 47 0 48 0 60 0 61 -6.9938152222945069
		 63 -5.9720845167072181 64 -5.9720845167072181 65 -5.9720845167072181 66 -5.9720845167072181
		 67 -5.9720845167072181 68 -5.9720845167072181 69 -5.9720845167072181 70 -5.9720845167072181
		 71 -5.9720845167072181 72 -5.9720845167072181 73 -5.9720845167072181 74 -5.9720845167072181
		 75 -5.9720845167072181 76 0 90 0 91 -6.9938152222945069 92 -6.9938152222945069 93 -5.8162803954586799
		 94 -6.4867430129922035 95 -7.6772615443155061 96 -16.576067368091 97 -6.4867430129922035
		 98 0.059461606874029266 99 -15.249721790593791 100 -6.4962143712059435 101 0.013372600882531586
		 102 0 109 0 110 -6.9938152222945069 112 -6.9938152222945069 114 -5.7820895719945016
		 115 -5.6379811059690201 116 -5.7820895719945016 117 -5.6379811059690201 118 -5.7820895719945016
		 119 -5.6379811059690201 120 -5.7820895719945016 121 -5.6379811059690201 122 -5.7820895719945016;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.93172919750213623 0.55571150779724121 1 0.27587738633155823 1 1 0.29855641722679138 
		1 1 1 1 1 0.98399525880813599 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.36315387487411499 -0.83137524127960205 0 0.96119284629821777 0 0 
		0.95439201593399048 0 0 0 0 0 0.17819438874721527 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.93172919750213623 0.55571150779724121 1 0.27587738633155823 1 1 0.29855641722679138 
		1 1 1 1 1 0.98399531841278076 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.36315387487411499 -0.83137518167495728 0 0.961192786693573 0 0 0.95439201593399048 
		0 0 0 0 0 0.17819440364837646 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_forearm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_forearm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_forearm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_forearm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 2.7755575615628914e-017 11 2.7755575615628914e-017
		 12 2.7755575615628914e-017 20 2.7755575615628914e-017 21 2.7755575615628914e-017
		 46 2.7755575615628914e-017 47 0 48 0 60 0 61 2.7755575615628914e-017 63 2.7755575615628914e-017
		 64 2.7755575615628914e-017 65 2.7755575615628914e-017 66 2.7755575615628914e-017
		 67 2.7755575615628914e-017 68 2.7755575615628914e-017 69 2.7755575615628914e-017
		 70 2.7755575615628914e-017 71 2.7755575615628914e-017 72 2.7755575615628914e-017
		 73 2.7755575615628914e-017 74 2.7755575615628914e-017 75 2.7755575615628914e-017
		 76 0 90 0 91 2.7755575615628914e-017 92 2.7755575615628914e-017 93 2.7755575615628914e-017
		 94 2.7755575615628914e-017 95 2.7755575615628914e-017 96 2.7755575615628914e-017
		 97 2.7755575615628914e-017 98 2.7755575615628914e-017 99 2.7755575615628914e-017
		 100 2.7755575615628914e-017 101 2.7755575615628914e-017 102 0 109 0 110 2.7755575615628914e-017
		 112 2.7755575615628914e-017 114 2.7755575615628914e-017 115 2.7755575615628914e-017
		 116 2.7755575615628914e-017 117 2.7755575615628914e-017 118 2.7755575615628914e-017
		 119 2.7755575615628914e-017 120 2.7755575615628914e-017 121 2.7755575615628914e-017
		 122 2.7755575615628914e-017;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_forearm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 -1.3485529012924324e-008 2 -1.3485529012924324e-008
		 11 -1.3485529012924324e-008 12 -1.3485529012924324e-008 20 -1.3485529012924324e-008
		 21 -1.3485529012924324e-008 46 -1.3485529012924324e-008 47 -1.3485529012924324e-008
		 48 -1.3485529012924324e-008 60 -1.3485529012924324e-008 61 -1.3485529012924324e-008
		 63 -1.3485529012924324e-008 64 -1.3485529012924324e-008 65 -1.3485529012924324e-008
		 66 -1.3485529012924324e-008 67 -1.3485529012924324e-008 68 -1.3485529012924324e-008
		 69 -1.3485529012924324e-008 70 -1.3485529012924324e-008 71 -1.3485529012924324e-008
		 72 -1.3485529012924324e-008 73 -1.3485529012924324e-008 74 -1.3485529012924324e-008
		 75 -1.3485529012924324e-008 76 -1.3485529012924324e-008 90 -1.3485529012924324e-008
		 91 -1.3485529012924324e-008 92 -1.3485529012924324e-008 93 -1.3485529012924324e-008
		 94 -1.3485529012924324e-008 95 -1.3485529012924324e-008 96 -1.3485529012924324e-008
		 97 -1.3485529012924324e-008 98 -1.3485529012924324e-008 99 -1.3485529012924324e-008
		 100 -1.3485529012924324e-008 101 -1.3485529012924324e-008 102 -1.3485529012924324e-008
		 109 -1.3485529012924324e-008 110 -1.3485529012924324e-008 112 -1.3485529012924324e-008
		 114 -1.3485529012924324e-008 115 -1.3485529012924324e-008 116 -1.3485529012924324e-008
		 117 -1.3485529012924324e-008 118 -1.3485529012924324e-008 119 -1.3485529012924324e-008
		 120 -1.3485529012924324e-008 121 -1.3485529012924324e-008 122 -1.3485529012924324e-008;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_forearm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 -0.14797501997989326 2 -0.14797501997989326
		 11 -0.14797501997989326 12 -0.14797501997989326 20 -0.14797501997989326 21 -0.14797501997989326
		 46 -0.14797501997989326 47 -0.14797501997989326 48 -0.14797501997989326 60 -0.14797501997989326
		 61 -0.14797501997989326 63 -0.14797501997989326 64 -0.14797501997989326 65 -0.14797501997989326
		 66 -0.14797501997989326 67 -0.14797501997989326 68 -0.14797501997989326 69 -0.14797501997989326
		 70 -0.14797501997989326 71 -0.14797501997989326 72 -0.14797501997989326 73 -0.14797501997989326
		 74 -0.14797501997989326 75 -0.14797501997989326 76 -0.14797501997989326 90 -0.14797501997989326
		 91 -0.14797501997989326 92 -0.14797501997989326 93 -0.14797501997989326 94 -0.14797501997989326
		 95 -0.14797501997989326 96 -0.14797501997989326 97 -0.14797501997989326 98 -0.14797501997989326
		 99 -0.14797501997989326 100 -0.14797501997989326 101 -0.14797501997989326 102 -0.14797501997989326
		 109 -0.14797501997989326 110 -0.14797501997989326 112 -0.14797501997989326 114 -0.14797501997989326
		 115 -0.14797501997989326 116 -0.14797501997989326 117 -0.14797501997989326 118 -0.14797501997989326
		 119 -0.14797501997989326 120 -0.14797501997989326 121 -0.14797501997989326 122 -0.14797501997989326;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_forearm_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1
		 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 50 ".kit[0:49]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_forearm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 -24.278096967669462 11 0 12 0 20 0
		 21 0 46 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 58.930452164110243 94 23.994372254008265 95 13.719315813169644
		 96 58.9304521641101 97 23.994372254008265 98 13.719315813169631 99 62.396612523224007
		 100 24.090034886035916 101 13.719315813169644 102 0 109 0 110 0 112 0 114 0 115 39.464070737153648
		 116 0 117 39.464070737153648 118 0 119 39.464070737153648 120 0 121 39.464070737153648
		 122 0;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.10502364486455917 1 1 0.10502394288778305 1 1 0.097619488835334778 
		0.19441859424114227 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99446970224380493 0 0 -0.99446964263916016 0 0 -0.99522382020950317 
		-0.98091870546340942 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.10502364486455917 1 1 0.10502395033836365 1 1 0.097619481384754181 
		0.19441859424114227 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99446964263916016 0 0 -0.99446970224380493 0 0 -0.99522382020950317 
		-0.98091864585876465 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_forearm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 11 0 12 0 20 0 21 -44.472490667144633
		 46 -44.472490667144633 47 0 48 0 60 0 61 -44.472490667144633 63 -59.075565522019389
		 64 -59.075565522019389 65 -59.075565522019389 66 -59.075565522019389 67 -59.075565522019389
		 68 -59.075565522019389 69 -59.075565522019389 70 -59.075565522019389 71 -59.075565522019389
		 72 -59.075565522019389 73 -59.075565522019389 74 -59.075565522019389 75 -59.075565522019389
		 76 0 90 0 91 -44.472490667144633 92 -44.472490667144633 93 -69.141977642597197 94 -48.100308145605403
		 95 -29.412776122493305 96 -69.141977642597212 97 -48.100308145605403 98 -29.412776122493305
		 99 -69.631690563746673 100 -48.227414861194482 101 -29.412776122493327 102 0 109 0
		 110 -44.472490667144633 112 -44.472490667144633 114 -74.001364388566543 115 -101.6286493874703
		 116 -74.001364388566543 117 -101.6286493874703 118 -74.001364388566543 119 -101.6286493874703
		 120 -74.001364388566543 121 -101.6286493874703 122 -74.001364388566543;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.11932110786437988 1 1 0.11932145059108734 1 1 0.11788888275623322 
		0.098521314561367035 1 1 1 1 0.12433304637670517 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.99285566806793213 0 0 0.9928557276725769 0 0 0.99302679300308228 
		0.99513494968414307 0 0 0 0 -0.9922405481338501 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.11932111531496048 1 1 0.11932145059108734 1 1 0.11788887530565262 
		0.098521307110786438 1 1 1 1 0.12433305382728577 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.9928557276725769 0 0 0.9928557276725769 0 0 0.99302679300308228 0.99513489007949829 
		0 0 0 0 -0.9922405481338501 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_forearm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 93 -57.187355164162383 94 -26.620896989674922 95 -20.091639432403429 96 -67.94714213679454
		 97 -26.620896989674922 98 -12.354916281213898 99 -69.762205436657354 100 -26.692171005816832
		 101 -12.401005287205399 102 0 109 0 110 0 112 0 114 0 115 -38.882200470842463 116 0
		 117 -38.882200470842463 118 0 119 -38.882200470842463 120 0 121 -38.882200470842463
		 122 0;
	setAttr -s 50 ".kit[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kot[2:49]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 50 ".kix[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.12765835225582123 1 1 0.085572108626365662 1 1 0.082951575517654419 
		0.17608363926410675 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.9918181300163269 0 0 0.99633198976516724 0 0 0.99655354022979736 
		0.9843752384185791 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[2:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.12765836715698242 1 1 0.085572101175785065 1 1 0.082951575517654419 
		0.17608362436294556 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[2:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.99181818962097168 0 0 0.99633193016052246 0 0 0.99655359983444214 
		0.9843752384185791 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_hand_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_hand_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_hand_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_hand_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 2.3314683517128287e-015 11 2.3314683517128287e-015
		 12 2.3314683517128287e-015 20 2.3314683517128287e-015 21 2.3314683517128287e-015
		 46 2.3314683517128287e-015 47 0 48 0 60 0 61 2.3314683517128287e-015 63 2.3314683517128287e-015
		 64 2.3314683517128287e-015 65 2.3314683517128287e-015 66 2.3314683517128287e-015
		 67 2.3314683517128287e-015 68 2.3314683517128287e-015 69 2.3314683517128287e-015
		 70 2.3314683517128287e-015 71 2.3314683517128287e-015 72 2.3314683517128287e-015
		 73 2.3314683517128287e-015 74 2.3314683517128287e-015 75 2.3314683517128287e-015
		 76 0 90 0 91 2.3314683517128287e-015 92 2.3314683517128287e-015 102 0 109 0 110 2.3314683517128287e-015
		 112 2.3314683517128287e-015 114 2.3314683517128287e-015 116 2.3314683517128287e-015
		 117 2.3314683517128287e-015 118 2.3314683517128287e-015 119 2.3314683517128287e-015
		 120 2.3314683517128287e-015 121 2.3314683517128287e-015 122 2.3314683517128287e-015;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_hand_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -7.882305406992085e-008 2 -7.882305406992085e-008
		 11 -7.882305406992085e-008 12 -7.882305406992085e-008 20 -7.882305406992085e-008
		 21 -7.882305406992085e-008 46 -7.882305406992085e-008 47 -7.882305406992085e-008
		 48 -7.882305406992085e-008 60 -7.882305406992085e-008 61 -7.882305406992085e-008
		 63 -7.882305406992085e-008 64 -7.882305406992085e-008 65 -7.882305406992085e-008
		 66 -7.882305406992085e-008 67 -7.882305406992085e-008 68 -7.882305406992085e-008
		 69 -7.882305406992085e-008 70 -7.882305406992085e-008 71 -7.882305406992085e-008
		 72 -7.882305406992085e-008 73 -7.882305406992085e-008 74 -7.882305406992085e-008
		 75 -7.882305406992085e-008 76 -7.882305406992085e-008 90 -7.882305406992085e-008
		 91 -7.882305406992085e-008 92 -7.882305406992085e-008 102 -7.882305406992085e-008
		 109 -7.882305406992085e-008 110 -7.882305406992085e-008 112 -7.882305406992085e-008
		 114 -7.882305406992085e-008 116 -7.882305406992085e-008 117 -7.882305406992085e-008
		 118 -7.882305406992085e-008 119 -7.882305406992085e-008 120 -7.882305406992085e-008
		 121 -7.882305406992085e-008 122 -7.882305406992085e-008;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_hand_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -0.098179272918492239 2 -0.098179272918492239
		 11 -0.098179272918492239 12 -0.098179272918492239 20 -0.098179272918492239 21 -0.098179272918492239
		 46 -0.098179272918492239 47 -0.098179272918492239 48 -0.098179272918492239 60 -0.098179272918492239
		 61 -0.098179272918492239 63 -0.098179272918492239 64 -0.098179272918492239 65 -0.098179272918492239
		 66 -0.098179272918492239 67 -0.098179272918492239 68 -0.098179272918492239 69 -0.098179272918492239
		 70 -0.098179272918492239 71 -0.098179272918492239 72 -0.098179272918492239 73 -0.098179272918492239
		 74 -0.098179272918492239 75 -0.098179272918492239 76 -0.098179272918492239 90 -0.098179272918492239
		 91 -0.098179272918492239 92 -0.098179272918492239 102 -0.098179272918492239 109 -0.098179272918492239
		 110 -0.098179272918492239 112 -0.098179272918492239 114 -0.098179272918492239 116 -0.098179272918492239
		 117 -0.098179272918492239 118 -0.098179272918492239 119 -0.098179272918492239 120 -0.098179272918492239
		 121 -0.098179272918492239 122 -0.098179272918492239;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_hand_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_hand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_hand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_hand_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 3.5087238670072907e-011 11 3.5087238670072907e-011
		 12 3.5087238670072907e-011 20 3.5087238670072907e-011 21 3.5087238670072907e-011
		 46 3.5087238670072907e-011 47 0 48 0 60 0 61 3.5087238670072907e-011 63 3.5087238670072907e-011
		 64 3.5087238670072907e-011 65 3.5087238670072907e-011 66 3.5087238670072907e-011
		 67 3.5087238670072907e-011 68 3.5087238670072907e-011 69 3.5087238670072907e-011
		 70 3.5087238670072907e-011 71 3.5087238670072907e-011 72 3.5087238670072907e-011
		 73 3.5087238670072907e-011 74 3.5087238670072907e-011 75 3.5087238670072907e-011
		 76 0 90 0 91 3.5087238670072907e-011 92 3.5087238670072907e-011 102 0 109 0 110 3.5087238670072907e-011
		 112 3.5087238670072907e-011 114 3.5087238670072907e-011 116 3.5087238670072907e-011
		 117 3.5087238670072907e-011 118 3.5087238670072907e-011 119 3.5087238670072907e-011
		 120 3.5087238670072907e-011 121 3.5087238670072907e-011 122 3.5087238670072907e-011;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 5.7814716299120494e-008 2 5.7814716299120494e-008
		 11 5.7814716299120494e-008 12 5.7814716299120494e-008 20 5.7814716299120494e-008
		 21 5.7814716299120494e-008 46 5.7814716299120494e-008 47 5.7814716299120494e-008
		 48 5.7814716299120494e-008 60 5.7814716299120494e-008 61 5.7814716299120494e-008
		 63 5.7814716299120494e-008 64 5.7814716299120494e-008 65 5.7814716299120494e-008
		 66 5.7814716299120494e-008 67 5.7814716299120494e-008 68 5.7814716299120494e-008
		 69 5.7814716299120494e-008 70 5.7814716299120494e-008 71 5.7814716299120494e-008
		 72 5.7814716299120494e-008 73 5.7814716299120494e-008 74 5.7814716299120494e-008
		 75 5.7814716299120494e-008 76 5.7814716299120494e-008 90 5.7814716299120494e-008
		 91 5.7814716299120494e-008 92 5.7814716299120494e-008 102 5.7814716299120494e-008
		 109 5.7814716299120494e-008 110 5.7814716299120494e-008 112 5.7814716299120494e-008
		 114 5.7814716299120494e-008 116 5.7814716299120494e-008 117 5.7814716299120494e-008
		 118 5.7814716299120494e-008 119 5.7814716299120494e-008 120 5.7814716299120494e-008
		 121 5.7814716299120494e-008 122 5.7814716299120494e-008;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 -0.037041200299216315 2 -0.037041200299216315
		 11 -0.037041200299216315 12 -0.037041200299216315 20 -0.037041200299216315 21 -0.037041200299216315
		 46 -0.037041200299216315 47 -0.037041200299216315 48 -0.037041200299216315 60 -0.037041200299216315
		 61 -0.037041200299216315 63 -0.037041200299216315 64 -0.037041200299216315 65 -0.037041200299216315
		 66 -0.037041200299216315 67 -0.037041200299216315 68 -0.037041200299216315 69 -0.037041200299216315
		 70 -0.037041200299216315 71 -0.037041200299216315 72 -0.037041200299216315 73 -0.037041200299216315
		 74 -0.037041200299216315 75 -0.037041200299216315 76 -0.037041200299216315 90 -0.037041200299216315
		 91 -0.037041200299216315 92 -0.037041200299216315 102 -0.037041200299216315 109 -0.037041200299216315
		 110 -0.037041200299216315 112 -0.037041200299216315 114 -0.037041200299216315 116 -0.037041200299216315
		 117 -0.037041200299216315 118 -0.037041200299216315 119 -0.037041200299216315 120 -0.037041200299216315
		 121 -0.037041200299216315 122 -0.037041200299216315;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_tip_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_arm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 46 1
		 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_arm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 46 1
		 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_arm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 46 1
		 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_arm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 0.042246136277764586 2 0.042246136277764586
		 6 0.042246136277764586 10 0.042246136277764586 11 0.042246136277764586 12 0.042246136277764586
		 20 0.042246136277764586 21 0.042246136277764586 46 0.042246136277764586 47 0.042246136277764586
		 48 0.042246136277764586 60 0.042246136277764586 61 0.042246136277764586 63 0.042246136277764586
		 64 0.042246136277764586 65 0.042246136277764586 66 0.042246136277764586 67 0.042246136277764586
		 68 0.042246136277764586 69 0.042246136277764586 70 0.042246136277764586 71 0.042246136277764586
		 72 0.042246136277764586 73 0.042246136277764586 74 0.042246136277764586 75 0.042246136277764586
		 76 0.042246136277764586 90 0.042246136277764586 91 0.042246136277764586 92 0.042246136277764586
		 93 0.042246136277764586 94 0.042246136277764586 95 0.042246136277764586 96 0.042246136277764586
		 97 0.042246136277764586 98 0.042246136277764586 99 0.042246136277764586 100 0.042246136277764586
		 101 0.042246136277764586 102 0.042246136277764586 109 0.042246136277764586 110 0.042246136277764586
		 112 0.042246136277764586 114 0.042246136277764586 115 0.042246136277764586 116 0.042246136277764586
		 117 0.042246136277764586 118 0.042246136277764586 119 0.042246136277764586 120 0.042246136277764586
		 121 0.042246136277764586 122 0.042246136277764586;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_arm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 -0.025841478463130198 2 -0.025841478463130198
		 6 -0.025841478463130198 10 -0.025841478463130198 11 -0.025841478463130198 12 -0.025841478463130198
		 20 -0.025841478463130198 21 -0.025841478463130198 46 -0.025841478463130198 47 -0.025841478463130198
		 48 -0.025841478463130198 60 -0.025841478463130198 61 -0.025841478463130198 63 -0.025841478463130198
		 64 -0.025841478463130198 65 -0.025841478463130198 66 -0.025841478463130198 67 -0.025841478463130198
		 68 -0.025841478463130198 69 -0.025841478463130198 70 -0.025841478463130198 71 -0.025841478463130198
		 72 -0.025841478463130198 73 -0.025841478463130198 74 -0.025841478463130198 75 -0.025841478463130198
		 76 -0.025841478463130198 90 -0.025841478463130198 91 -0.025841478463130198 92 -0.025841478463130198
		 93 -0.025841478463130198 94 -0.025841478463130198 95 -0.025841478463130198 96 -0.025841478463130198
		 97 -0.025841478463130198 98 -0.025841478463130198 99 -0.025841478463130198 100 -0.025841478463130198
		 101 -0.025841478463130198 102 -0.025841478463130198 109 -0.025841478463130198 110 -0.025841478463130198
		 112 -0.025841478463130198 114 -0.025841478463130198 115 -0.025841478463130198 116 -0.025841478463130198
		 117 -0.025841478463130198 118 -0.025841478463130198 119 -0.025841478463130198 120 -0.025841478463130198
		 121 -0.025841478463130198 122 -0.025841478463130198;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_arm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 -0.0027731190294531458 2 -0.0027731190294531458
		 6 -0.0027731190294531458 10 -0.0027731190294531458 11 -0.0027731190294531458 12 -0.0027731190294531458
		 20 -0.0027731190294531458 21 -0.0027731190294531458 46 -0.0027731190294531458 47 -0.0027731190294531458
		 48 -0.0027731190294531458 60 -0.0027731190294531458 61 -0.0027731190294531458 63 -0.0027731190294531458
		 64 -0.0027731190294531458 65 -0.0027731190294531458 66 -0.0027731190294531458 67 -0.0027731190294531458
		 68 -0.0027731190294531458 69 -0.0027731190294531458 70 -0.0027731190294531458 71 -0.0027731190294531458
		 72 -0.0027731190294531458 73 -0.0027731190294531458 74 -0.0027731190294531458 75 -0.0027731190294531458
		 76 -0.0027731190294531458 90 -0.0027731190294531458 91 -0.0027731190294531458 92 -0.0027731190294531458
		 93 -0.0027731190294531458 94 -0.0027731190294531458 95 -0.0027731190294531458 96 -0.0027731190294531458
		 97 -0.0027731190294531458 98 -0.0027731190294531458 99 -0.0027731190294531458 100 -0.0027731190294531458
		 101 -0.0027731190294531458 102 -0.0027731190294531458 109 -0.0027731190294531458
		 110 -0.0027731190294531458 112 -0.0027731190294531458 114 -0.0027731190294531458
		 115 -0.0027731190294531458 116 -0.0027731190294531458 117 -0.0027731190294531458
		 118 -0.0027731190294531458 119 -0.0027731190294531458 120 -0.0027731190294531458
		 121 -0.0027731190294531458 122 -0.0027731190294531458;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_arm_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 46 1
		 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 52 ".kit[0:51]"  9 9 9 9 1 1 1 1 
		1 1 1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_arm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 0 2 0 6 53.475194856704654 10 8.3829974010447756
		 11 0 12 0 20 0 21 11.200314684120013 46 11.200314684120013 47 0 48 0 60 0 61 11.200314684120013
		 63 7.7044195154314412 64 7.7044195154314412 65 7.7044195154314412 66 7.7044195154314412
		 67 7.7044195154314412 68 7.7044195154314412 69 7.7044195154314412 70 7.7044195154314412
		 71 7.7044195154314412 72 7.7044195154314412 73 7.7044195154314412 74 7.7044195154314412
		 75 7.7044195154314412 76 0 90 0 91 11.200314684120013 92 11.200314684120013 93 7.7733716096315666
		 94 9.2720526237429048 95 4.6367076877349716 96 7.773371609631555 97 9.2720526237429048
		 98 4.6367076877349813 99 8.1855316634387911 100 9.2957284682396928 101 4.636707687734976
		 102 0 109 0 110 11.200314684120013 112 11.200314684120013 114 7.3790651971380177
		 115 3.8603941291426183 116 7.3790651971380177 117 3.8603941291426183 118 7.3790651971380177
		 119 3.8603941291426183 120 7.3790651971380177 121 3.8603941291426183 122 7.3790651971380177;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.71749567985534668 1 1 0.71571862697601318 1 0.4568936824798584 
		1 1 1 1 0.69837754964828491 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0.69656294584274292 0 0 0.69838875532150269 0 -0.88952130079269409 
		0 0 0 0 -0.71572959423065186 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.71749573945999146 1 1 0.71571862697601318 1 0.45689371228218079 
		1 1 1 1 0.69837749004364014 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0.6965630054473877 0 0 0.69838875532150269 0 -0.88952136039733887 
		0 0 0 0 -0.71572953462600708 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_arm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 0 2 0 6 0 10 0 11 0 12 0 20 0 21 -37.342652225634744
		 46 -37.342652225634744 47 0 48 0 60 0 61 -37.342652225634744 63 -16.986932177977845
		 64 -16.986932177977845 65 -16.986932177977845 66 -16.986932177977845 67 -16.986932177977845
		 68 -16.986932177977845 69 -16.986932177977845 70 -16.986932177977845 71 -16.986932177977845
		 72 -16.986932177977845 73 -16.986932177977845 74 -16.986932177977845 75 -16.986932177977845
		 76 0 90 0 91 -37.342652225634744 92 -37.342652225634744 93 -17.45947445639824 94 -27.061245811717281
		 95 -35.225473777564623 96 -17.459474456398233 97 -27.061245811717281 98 -35.225473777564574
		 99 -18.714393245630745 100 -27.201899643105001 101 -35.225473777564588 102 0 109 0
		 110 -37.342652225634744 112 -37.342652225634744 114 -14.725435143532831 115 11.24466110981826
		 116 -14.725435143532831 117 11.24466110981826 118 -14.725435143532831 119 11.24466110981826
		 120 -14.725435143532831 121 11.24466110981826 122 -14.725435143532831;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.25954213738441467 1 1 0.25954282283782959 1 1 0.27779686450958252 
		1 1 1 1 1 0.14582839608192444 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.96573173999786377 0 0 -0.96573168039321899 0 0 -0.96063989400863647 
		0 0 0 0 0 0.98930996656417847 0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.25954213738441467 1 1 0.25954282283782959 1 1 0.27779686450958252 
		1 1 1 1 1 0.14582841098308563 1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.96573185920715332 0 0 -0.96573156118392944 0 0 -0.9606398344039917 
		0 0 0 0 0 0.98930990695953369 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_arm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  1 0 2 0 6 0 10 0 11 0 12 0 20 0 21 -9.5462208517993155
		 46 -9.5462208517993155 47 0 48 0 60 0 61 -9.5462208517993155 63 -7.9242533065718304
		 64 -7.9242533065718304 65 -7.9242533065718304 66 -7.9242533065718304 67 -7.9242533065718304
		 68 -7.9242533065718304 69 -7.9242533065718304 70 -7.9242533065718304 71 -7.9242533065718304
		 72 -7.9242533065718304 73 -7.9242533065718304 74 -7.9242533065718304 75 -7.9242533065718304
		 76 0 90 0 91 -9.5462208517993155 92 -9.5462208517993155 93 -7.9446698450862829 94 -8.5144207675512611
		 95 -6.4417745552987027 96 -18.704456817718583 97 -8.5144207675512611 98 1.2949485958908316
		 99 -17.403082993712669 100 -8.5252177987393942 101 1.2488595898993349 102 0 109 0
		 110 -9.5462208517993155 112 -9.5462208517993155 114 -7.8353412745793198 115 -7.7256375443792242
		 116 -7.8353412745793198 117 -7.7256375443792242 118 -7.8353412745793198 119 -7.7256375443792242
		 120 -7.8353412745793198 121 -7.7256375443792242 122 -7.8353412745793198;
	setAttr -s 52 ".kit[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kot[4:51]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 52 ".kix[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.23221395909786224 1 1 0.24799071252346039 1 1 1 1 1 0.9906308650970459 
		1 1 1 1 1 1 1 1;
	setAttr -s 52 ".kiy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.97266477346420288 0 0 0.96876239776611328 0 0 0 0 0 0.13656668365001678 
		0 0 0 0 0 0 0 0;
	setAttr -s 52 ".kox[4:51]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.23221394419670105 1 1 0.24799071252346039 1 1 1 1 1 0.9906308650970459 
		1 1 1 1 1 1 1 1;
	setAttr -s 52 ".koy[4:51]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.97266471385955811 0 0 0.96876239776611328 0 0 0 0 0 0.13656668365001678 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_forearm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 12 1 20 1
		 21 1 46 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_forearm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 12 1 20 1
		 21 1 46 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_forearm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 12 1 20 1
		 21 1 46 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_forearm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 4 0 6 0 8 0 10 0 11 0 12 0 20 0
		 21 0 46 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0
		 109 0 110 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_forearm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 -3.8163916471489762e-017 4 -3.8163916471489762e-017
		 6 -3.8163916471489762e-017 8 -3.8163916471489762e-017 10 -3.8163916471489762e-017
		 11 -3.8163916471489762e-017 12 -3.8163916471489762e-017 20 -3.8163916471489762e-017
		 21 -3.8163916471489762e-017 46 -3.8163916471489762e-017 47 0 48 0 60 0 61 -3.8163916471489762e-017
		 63 -3.8163916471489762e-017 64 -3.8163916471489762e-017 65 -3.8163916471489762e-017
		 66 -3.8163916471489762e-017 67 -3.8163916471489762e-017 68 -3.8163916471489762e-017
		 69 -3.8163916471489762e-017 70 -3.8163916471489762e-017 71 -3.8163916471489762e-017
		 72 -3.8163916471489762e-017 73 -3.8163916471489762e-017 74 -3.8163916471489762e-017
		 75 -3.8163916471489762e-017 76 0 90 0 91 -3.8163916471489762e-017 92 -3.8163916471489762e-017
		 93 -3.8163916471489762e-017 94 -3.8163916471489762e-017 95 -3.8163916471489762e-017
		 96 -3.8163916471489762e-017 97 -3.8163916471489762e-017 98 -3.8163916471489762e-017
		 99 -3.8163916471489762e-017 100 -3.8163916471489762e-017 101 -3.8163916471489762e-017
		 102 0 109 0 110 -3.8163916471489762e-017 112 -3.8163916471489762e-017 114 -3.8163916471489762e-017
		 115 -3.8163916471489762e-017 116 -3.8163916471489762e-017 117 -3.8163916471489762e-017
		 118 -3.8163916471489762e-017 119 -3.8163916471489762e-017 120 -3.8163916471489762e-017
		 121 -3.8163916471489762e-017 122 -3.8163916471489762e-017;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_forearm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0.14797522023707596 2 0.14797522023707596
		 4 0.14797522023707596 6 0.14797522023707596 8 0.14797522023707596 10 0.14797522023707596
		 11 0.14797522023707596 12 0.14797522023707596 20 0.14797522023707596 21 0.14797522023707596
		 46 0.14797522023707596 47 0.14797522023707596 48 0.14797522023707596 60 0.14797522023707596
		 61 0.14797522023707596 63 0.14797522023707596 64 0.14797522023707596 65 0.14797522023707596
		 66 0.14797522023707596 67 0.14797522023707596 68 0.14797522023707596 69 0.14797522023707596
		 70 0.14797522023707596 71 0.14797522023707596 72 0.14797522023707596 73 0.14797522023707596
		 74 0.14797522023707596 75 0.14797522023707596 76 0.14797522023707596 90 0.14797522023707596
		 91 0.14797522023707596 92 0.14797522023707596 93 0.14797522023707596 94 0.14797522023707596
		 95 0.14797522023707596 96 0.14797522023707596 97 0.14797522023707596 98 0.14797522023707596
		 99 0.14797522023707596 100 0.14797522023707596 101 0.14797522023707596 102 0.14797522023707596
		 109 0.14797522023707596 110 0.14797522023707596 112 0.14797522023707596 114 0.14797522023707596
		 115 0.14797522023707596 116 0.14797522023707596 117 0.14797522023707596 118 0.14797522023707596
		 119 0.14797522023707596 120 0.14797522023707596 121 0.14797522023707596 122 0.14797522023707596;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_forearm_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 4 1 6 1 8 1 10 1 11 1 12 1 20 1
		 21 1 46 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[0:53]"  9 9 9 9 9 9 1 1 
		1 1 1 1 1 1 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_forearm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 4 44.544076392161358 6 11.976438768653541
		 8 29.05935775926805 10 0.21602888667227571 11 0 12 0 20 0 21 0 46 0 47 0 48 0 60 0
		 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0
		 92 0 93 25.195523353586328 94 8.2704356279062878 95 6.3477046050696497 96 25.195523353586307
		 97 8.2704356279062878 98 6.3477046050696515 99 26.941712887815047 100 8.308304934226113
		 101 6.3477046050696524 102 0 109 0 110 0 112 0 114 0 115 34.872454120383949 116 0
		 117 34.872454120383949 118 0 119 34.872454120383949 120 0 121 34.872454120383949
		 122 0;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.38241696357727051 1 1 0.38242068886756897 1 1 0.3760877251625061 
		0.4982658326625824 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.92398989200592041 0 0 -0.92398828268051147 0 0 -0.92658400535583496 
		-0.86702436208724976 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.38241696357727051 1 1 0.38242071866989136 1 1 0.3760877251625061 
		0.49826577305793762 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.92398983240127563 0 0 -0.92398834228515625 0 0 -0.92658400535583496 
		-0.86702430248260498 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_forearm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 4 0 6 0 8 0 10 0 11 0 12 0 20 0
		 21 -44.643205562793234 46 -44.643205562793234 47 0 48 0 60 0 61 -44.643205562793234
		 63 -63.46694962595425 64 -63.46694962595425 65 -63.46694962595425 66 -63.46694962595425
		 67 -63.46694962595425 68 -63.46694962595425 69 -63.46694962595425 70 -63.46694962595425
		 71 -63.46694962595425 72 -63.46694962595425 73 -63.46694962595425 74 -63.46694962595425
		 75 -63.46694962595425 76 0 90 0 91 -44.643205562793234 92 -44.643205562793234 93 -65.081417196254591
		 94 -53.684403611667001 95 -45.108820918156134 96 -65.081417196254591 97 -53.684403611667001
		 98 -45.108820918156113 99 -66.181186361652095 100 -53.824853455039886 101 -45.108820918156113
		 102 0 109 0 110 -44.643205562793234 112 -44.643205562793234 114 -73.504004502538208
		 115 -107.71494744445734 116 -73.504004502538208 117 -107.71494744445734 118 -73.504004502538208
		 119 -107.71494744445734 120 -73.504004502538208 121 -107.71494744445734 122 -73.504004502538208;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.23250818252563477 1 1 0.23250880837440491 1 1 0.22098219394683838 
		0.090922638773918152 1 1 1 1 0.11282771080732346 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.97259443998336792 0 0 0.97259426116943359 0 0 0.97527784109115601 
		0.99585795402526855 0 0 0 0 -0.9936145544052124 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.23250818252563477 1 1 0.23250880837440491 1 1 0.22098219394683838 
		0.090922638773918152 1 1 1 1 0.11282770335674286 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.97259443998336792 0 0 0.97259432077407837 0 0 0.97527784109115601 
		0.99585795402526855 0 0 0 0 -0.9936145544052124 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_forearm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 4 0 6 0 8 0 10 0 11 0 12 0 20 0
		 21 0 46 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 -23.106570272757192 94 -9.0424069036923829 95 -7.5784513256686381
		 96 -33.866357245389516 97 -9.0424069036923829 98 0.15827182552089544 99 -34.027730520337542
		 100 -9.0729482336059579 101 0.11218281952940173 102 0 109 0 110 0 112 0 114 0 115 -33.578190834317475
		 116 0 117 -33.578190834317475 118 0 119 -33.578190834317475 120 0 121 -33.578190834317475
		 122 0;
	setAttr -s 54 ".kit[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kot[6:53]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 54 ".kix[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.47757989168167114 1 1 0.13896781206130981 1 1 0.13850757479667664 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.87858837842941284 0 0 0.99029690027236938 0 0 0.99036139249801636 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[6:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.47757989168167114 1 1 0.13896781206130981 1 1 0.13850755989551544 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[6:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0.87858837842941284 0 0 0.99029690027236938 0 0 0.99036139249801636 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_hand_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_hand_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_hand_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_hand_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_hand_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -4.0245584642661925e-015 11 -4.0245584642661925e-015
		 12 -4.0245584642661925e-015 20 -4.0245584642661925e-015 21 -4.0245584642661925e-015
		 46 -4.0245584642661925e-015 47 0 48 0 60 0 61 -4.0245584642661925e-015 63 -4.0245584642661925e-015
		 64 -4.0245584642661925e-015 65 -4.0245584642661925e-015 66 -4.0245584642661925e-015
		 67 -4.0245584642661925e-015 68 -4.0245584642661925e-015 69 -4.0245584642661925e-015
		 70 -4.0245584642661925e-015 71 -4.0245584642661925e-015 72 -4.0245584642661925e-015
		 73 -4.0245584642661925e-015 74 -4.0245584642661925e-015 75 -4.0245584642661925e-015
		 76 0 90 0 91 -4.0245584642661925e-015 92 -4.0245584642661925e-015 102 0 109 0 110 -4.0245584642661925e-015
		 112 -4.0245584642661925e-015 114 -4.0245584642661925e-015 116 -4.0245584642661925e-015
		 117 -4.0245584642661925e-015 118 -4.0245584642661925e-015 119 -4.0245584642661925e-015
		 120 -4.0245584642661925e-015 121 -4.0245584642661925e-015 122 -4.0245584642661925e-015;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_hand_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.098178629723659164 2 0.098178629723659164
		 11 0.098178629723659164 12 0.098178629723659164 20 0.098178629723659164 21 0.098178629723659164
		 46 0.098178629723659164 47 0.098178629723659164 48 0.098178629723659164 60 0.098178629723659164
		 61 0.098178629723659164 63 0.098178629723659164 64 0.098178629723659164 65 0.098178629723659164
		 66 0.098178629723659164 67 0.098178629723659164 68 0.098178629723659164 69 0.098178629723659164
		 70 0.098178629723659164 71 0.098178629723659164 72 0.098178629723659164 73 0.098178629723659164
		 74 0.098178629723659164 75 0.098178629723659164 76 0.098178629723659164 90 0.098178629723659164
		 91 0.098178629723659164 92 0.098178629723659164 102 0.098178629723659164 109 0.098178629723659164
		 110 0.098178629723659164 112 0.098178629723659164 114 0.098178629723659164 116 0.098178629723659164
		 117 0.098178629723659164 118 0.098178629723659164 119 0.098178629723659164 120 0.098178629723659164
		 121 0.098178629723659164 122 0.098178629723659164;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_hand_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_hand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_hand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_hand_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_tip_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_tip_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_tip_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_tip_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_tip_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 -4.1850203857940471e-017 11 -4.1850203857940471e-017
		 12 -4.1850203857940471e-017 20 -4.1850203857940471e-017 21 -4.1850203857940471e-017
		 46 -4.1850203857940471e-017 47 0 48 0 60 0 61 -4.1850203857940471e-017 63 -4.1850203857940471e-017
		 64 -4.1850203857940471e-017 65 -4.1850203857940471e-017 66 -4.1850203857940471e-017
		 67 -4.1850203857940471e-017 68 -4.1850203857940471e-017 69 -4.1850203857940471e-017
		 70 -4.1850203857940471e-017 71 -4.1850203857940471e-017 72 -4.1850203857940471e-017
		 73 -4.1850203857940471e-017 74 -4.1850203857940471e-017 75 -4.1850203857940471e-017
		 76 0 90 0 91 -4.1850203857940471e-017 92 -4.1850203857940471e-017 102 0 109 0 110 -4.1850203857940471e-017
		 112 -4.1850203857940471e-017 114 -4.1850203857940471e-017 116 -4.1850203857940471e-017
		 117 -4.1850203857940471e-017 118 -4.1850203857940471e-017 119 -4.1850203857940471e-017
		 120 -4.1850203857940471e-017 121 -4.1850203857940471e-017 122 -4.1850203857940471e-017;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_tip_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.037041400453784595 2 0.037041400453784595
		 11 0.037041400453784595 12 0.037041400453784595 20 0.037041400453784595 21 0.037041400453784595
		 46 0.037041400453784595 47 0.037041400453784595 48 0.037041400453784595 60 0.037041400453784595
		 61 0.037041400453784595 63 0.037041400453784595 64 0.037041400453784595 65 0.037041400453784595
		 66 0.037041400453784595 67 0.037041400453784595 68 0.037041400453784595 69 0.037041400453784595
		 70 0.037041400453784595 71 0.037041400453784595 72 0.037041400453784595 73 0.037041400453784595
		 74 0.037041400453784595 75 0.037041400453784595 76 0.037041400453784595 90 0.037041400453784595
		 91 0.037041400453784595 92 0.037041400453784595 102 0.037041400453784595 109 0.037041400453784595
		 110 0.037041400453784595 112 0.037041400453784595 114 0.037041400453784595 116 0.037041400453784595
		 117 0.037041400453784595 118 0.037041400453784595 119 0.037041400453784595 120 0.037041400453784595
		 121 0.037041400453784595 122 0.037041400453784595;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_tip_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 1 2 1 11 1 12 1 20 1 21 1 46 1 47 1 48 1
		 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1
		 91 1 92 1 102 1 109 1 110 1 112 1 114 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 40 ".kit[0:39]"  9 9 1 1 1 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_tip_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_tip_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_tip_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0 2 0 11 0 12 0 20 0 21 0 46 0 47 0 48 0
		 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0
		 91 0 92 0 102 0 109 0 110 0 112 0 114 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 40 ".kit[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[2:39]"  1 1 1 1 1 1 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thigh_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thigh_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thigh_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_thigh_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0.117316 2 0.117316 6 0.117316 9 0.117316
		 11 0.117316 12 0.117316 20 0.117316 21 0.117316 24 0.117316 27 0.117316 30 0.117316
		 33 0.117316 48 0.117316 60 0.117316 61 0.117316 63 0.117316 64 0.117316 65 0.117316
		 66 0.117316 67 0.117316 68 0.117316 69 0.117316 70 0.117316 71 0.117316 72 0.117316
		 73 0.117316 74 0.117316 75 0.117316 76 0.117316 90 0.117316 91 0.117316 92 0.117316
		 93 0.117316 94 0.117316 95 0.117316 96 0.117316 97 0.117316 98 0.117316 99 0.117316
		 100 0.117316 101 0.117316 102 0.117316 109 0.117316 110 0.117316 112 0.117316 114 0.117316;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_thigh_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 -0.00055630564470618427 2 -0.00055630564470618427
		 6 -0.00055630564470618427 9 -0.00055630564470618427 11 -0.00055630564470618427 12 -0.00055630564470618427
		 20 -0.00055630564470618427 21 -0.00055630564470618427 24 -0.00055630564470618427
		 27 -0.00055630564470618427 30 -0.00055630564470618427 33 -0.00055630564470618427
		 48 -0.00055630564470618427 60 -0.00055630564470618427 61 -0.00055630564470618427
		 63 -0.00055630564470618427 64 -0.00055630564470618427 65 -0.00055630564470618427
		 66 -0.00055630564470618427 67 -0.00055630564470618427 68 -0.00055630564470618427
		 69 -0.00055630564470618427 70 -0.00055630564470618427 71 -0.00055630564470618427
		 72 -0.00055630564470618427 73 -0.00055630564470618427 74 -0.00055630564470618427
		 75 -0.00055630564470618427 76 -0.00055630564470618427 90 -0.00055630564470618427
		 91 -0.00055630564470618427 92 -0.00055630564470618427 93 -0.00055630564470618427
		 94 -0.00055630564470618427 95 -0.00055630564470618427 96 -0.00055630564470618427
		 97 -0.00055630564470618427 98 -0.00055630564470618427 99 -0.00055630564470618427
		 100 -0.00055630564470618427 101 -0.00055630564470618427 102 -0.00055630564470618427
		 109 -0.00055630564470618427 110 -0.00055630564470618427 112 -0.00055630564470618427
		 114 -0.00055630564470618427;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_thigh_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 -0.028420826337193339 2 -0.028420826337193339
		 6 -0.028420826337193339 9 -0.028420826337193339 11 -0.028420826337193339 12 -0.028420826337193339
		 20 -0.028420826337193339 21 -0.028420826337193339 24 -0.028420826337193339 27 -0.028420826337193339
		 30 -0.028420826337193339 33 -0.028420826337193339 48 -0.028420826337193339 60 -0.028420826337193339
		 61 -0.028420826337193339 63 -0.028420826337193339 64 -0.028420826337193339 65 -0.028420826337193339
		 66 -0.028420826337193339 67 -0.028420826337193339 68 -0.028420826337193339 69 -0.028420826337193339
		 70 -0.028420826337193339 71 -0.028420826337193339 72 -0.028420826337193339 73 -0.028420826337193339
		 74 -0.028420826337193339 75 -0.028420826337193339 76 -0.028420826337193339 90 -0.028420826337193339
		 91 -0.028420826337193339 92 -0.028420826337193339 93 -0.028420826337193339 94 -0.028420826337193339
		 95 -0.028420826337193339 96 -0.028420826337193339 97 -0.028420826337193339 98 -0.028420826337193339
		 99 -0.028420826337193339 100 -0.028420826337193339 101 -0.028420826337193339 102 -0.028420826337193339
		 109 -0.028420826337193339 110 -0.028420826337193339 112 -0.028420826337193339 114 -0.028420826337193339;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_thigh_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[0:45]"  9 9 9 9 1 1 1 1 
		9 9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_thigh_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  1 0 2 0 6 0.22563458833854608 9 2.2519839234437143e-015
		 11 0 12 0 20 0 21 -33.480264201849756 24 -27.468924813363859 27 -6.434747591146281
		 30 7.039415329784469 33 27.103746100520972 36 7.3067322943396791 39 -20.115804187245537
		 42 -46.789905944275993 48 0 60 0 61 0 63 37.243882948145021 64 41.382748982055091
		 65 35.216593306276565 66 46.994456554168195 67 34.959025180348078 68 33.604438895219396
		 69 39.504393345090726 70 47.740258841452572 71 36.569549488877506 72 50.888315441541714
		 73 32.775147841235693 74 26.1176984240869 75 27.087913136379829 76 0 90 0 91 0 92 34.609573070473346
		 93 34.609573070473346 94 34.609573070473346 95 34.609573070473346 96 34.609573070473346
		 97 34.609573070473346 98 34.609573070473346 99 34.609573070473346 100 34.609573070473346
		 101 34.609573070473346 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 49 ".kit[4:48]"  1 1 1 1 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 49 ".kot[4:48]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 49 ".kix[4:48]"  1 1 1 1 0.46803393959999084 0.38337147235870361 
		0.39276778697967529 1 0.2902856171131134 0.25596347451210022 1 1 1 1 0.18881088495254517 
		1 1 1 0.50652647018432617 1 0.32000833749771118 1 1 1 0.18927030265331268 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[4:48]"  0 0 0 0 0.88371050357818604 0.92359423637390137 
		0.91963768005371094 0 -0.95693999528884888 -0.9666864275932312 0 0 0 0 0.98201346397399902 
		0 0 0 -0.86222445964813232 0 0.94741469621658325 0 0 0 -0.98192501068115234 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[4:48]"  1 1 1 1 0.46803393959999084 0.38337147235870361 
		0.39276778697967529 1 0.2902856171131134 0.25596347451210022 1 1 1 1 0.18881088495254517 
		1 1 1 0.5065264105796814 1 0.32000833749771118 1 1 1 0.18927030265331268 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[4:48]"  0 0 0 0 0.88371050357818604 0.92359423637390137 
		0.91963768005371094 0 -0.95693999528884888 -0.9666864275932312 0 0 0 0 0.98201346397399902 
		0 0 0 -0.86222440004348755 0 0.94741469621658325 0 0 0 -0.98192507028579712 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_thigh_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 -10.483221559259029 9 -0.017360940549303094
		 11 0 12 0 20 0 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 -22.890514295216292 64 -21.700227253814571
		 65 -23.427687214816984 66 -19.888043389624244 67 -23.493768284080161 68 -23.833244978859177
		 69 -22.255943607477651 70 -19.630286805745872 71 -23.072550001125233 72 -18.499450283797835
		 73 -24.03439297393426 74 -25.465091601980575 75 -25.276966765153784 76 0 90 0 91 0
		 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.9198000431060791 
		1 0.75061529874801636 1 1 1 0.5653836727142334 1 0.9731757640838623 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.39238730072975159 
		0 0.6607394814491272 0 0 0 -0.82482802867889404 0 0.23006284236907959 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.91980010271072388 
		1 0.75061529874801636 1 1 1 0.5653836727142334 1 0.9731757640838623 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.3923872709274292 
		0 0.6607394814491272 0 0 0 -0.82482802867889404 0 0.23006284236907959 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_thigh_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 -2.459141309065751 9 -0.0040257254713438259
		 11 0 12 0 20 0 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 -16.47375019547485 64 -18.044628506488134
		 65 -15.67636707366349 66 -20.038490172183256 67 -15.573823787326306 68 -15.030117332493107
		 69 -17.34158786011756 70 -20.290625302873245 71 -16.210464303373488 72 -21.319182800343945
		 73 -14.693684153305451 74 -11.903699168454647 75 -12.319423808282156 76 0 90 0 91 0
		 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 0.4519035816192627 
		1 1 1 0.82567888498306274 1 0.67208510637283325 1 1 1 0.45227622985839844 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 -0.89206677675247192 
		0 0 0 0.56414037942886353 0 -0.74047392606735229 0 0 0 0.89187794923782349 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 0.4519035816192627 
		1 1 1 0.82567888498306274 1 0.67208510637283325 1 1 1 0.45227620005607605 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 -0.89206677675247192 
		0 0 0 0.56414037942886353 0 -0.74047392606735229 0 0 0 0.89187788963317871 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_leg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_leg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_leg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_leg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 -0.039655999999999969 2 -0.039655999999999969
		 11 -0.039655999999999969 12 -0.039655999999999969 20 -0.039655999999999969 21 -0.039655999999999969
		 24 -0.039655999999999969 27 -0.039655999999999969 30 -0.039655999999999969 33 -0.039655999999999969
		 48 -0.039655999999999969 60 -0.039655999999999969 61 -0.039655999999999969 63 -0.039655999999999969
		 64 -0.039655999999999969 65 -0.039655999999999969 66 -0.039655999999999969 67 -0.039655999999999969
		 68 -0.039655999999999969 69 -0.039655999999999969 70 -0.039655999999999969 71 -0.039655999999999969
		 72 -0.039655999999999969 73 -0.039655999999999969 74 -0.039655999999999969 75 -0.039655999999999969
		 76 -0.039655999999999969 90 -0.039655999999999969 91 -0.039655999999999969 92 -0.039655999999999969
		 93 -0.039655999999999969 94 -0.039655999999999969 95 -0.039655999999999969 96 -0.039655999999999969
		 97 -0.039655999999999969 98 -0.039655999999999969 99 -0.039655999999999969 100 -0.039655999999999969
		 101 -0.039655999999999969 102 -0.039655999999999969 109 -0.039655999999999969 110 -0.039655999999999969
		 112 -0.039655999999999969 114 -0.039655999999999969;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_leg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 -9.4591639338004185e-007 2 -9.4591639338004185e-007
		 11 -9.4591639338004185e-007 12 -9.4591639338004185e-007 20 -9.4591639338004185e-007
		 21 -9.4591639338004185e-007 24 -9.4591639338004185e-007 27 -9.4591639338004185e-007
		 30 -9.4591639338004185e-007 33 -9.4591639338004185e-007 48 -9.4591639338004185e-007
		 60 -9.4591639338004185e-007 61 -9.4591639338004185e-007 63 -9.4591639338004185e-007
		 64 -9.4591639338004185e-007 65 -9.4591639338004185e-007 66 -9.4591639338004185e-007
		 67 -9.4591639338004185e-007 68 -9.4591639338004185e-007 69 -9.4591639338004185e-007
		 70 -9.4591639338004185e-007 71 -9.4591639338004185e-007 72 -9.4591639338004185e-007
		 73 -9.4591639338004185e-007 74 -9.4591639338004185e-007 75 -9.4591639338004185e-007
		 76 -9.4591639338004185e-007 90 -9.4591639338004185e-007 91 -9.4591639338004185e-007
		 92 -9.4591639338004185e-007 93 -9.4591639338004185e-007 94 -9.4591639338004185e-007
		 95 -9.4591639338004185e-007 96 -9.4591639338004185e-007 97 -9.4591639338004185e-007
		 98 -9.4591639338004185e-007 99 -9.4591639338004185e-007 100 -9.4591639338004185e-007
		 101 -9.4591639338004185e-007 102 -9.4591639338004185e-007 109 -9.4591639338004185e-007
		 110 -9.4591639338004185e-007 112 -9.4591639338004185e-007 114 -9.4591639338004185e-007;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_leg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 -0.10946047089751285 2 -0.10946047089751285
		 11 -0.10946047089751285 12 -0.10946047089751285 20 -0.10946047089751285 21 -0.10946047089751285
		 24 -0.10946047089751285 27 -0.10946047089751285 30 -0.10946047089751285 33 -0.10946047089751285
		 48 -0.10946047089751285 60 -0.10946047089751285 61 -0.10946047089751285 63 -0.10946047089751285
		 64 -0.10946047089751285 65 -0.10946047089751285 66 -0.10946047089751285 67 -0.10946047089751285
		 68 -0.10946047089751285 69 -0.10946047089751285 70 -0.10946047089751285 71 -0.10946047089751285
		 72 -0.10946047089751285 73 -0.10946047089751285 74 -0.10946047089751285 75 -0.10946047089751285
		 76 -0.10946047089751285 90 -0.10946047089751285 91 -0.10946047089751285 92 -0.10946047089751285
		 93 -0.10946047089751285 94 -0.10946047089751285 95 -0.10946047089751285 96 -0.10946047089751285
		 97 -0.10946047089751285 98 -0.10946047089751285 99 -0.10946047089751285 100 -0.10946047089751285
		 101 -0.10946047089751285 102 -0.10946047089751285 109 -0.10946047089751285 110 -0.10946047089751285
		 112 -0.10946047089751285 114 -0.10946047089751285;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_leg_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 44 ".kit[0:43]"  9 9 1 1 1 1 9 9 
		9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_leg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  1 0 2 0 11 0 12 0 20 0 21 0 24 17.081190213896978
		 27 -6.2118545386948574 30 -6.2118545386948574 33 25.797980243711866 36 50.028490995889953
		 39 51.50028351320298 42 51.50028351320298 45 -0.90908500433436434 48 0 60 0 61 0
		 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 68.405461188228074
		 93 68.405461188228074 94 68.405461188228074 95 68.405461188228074 96 68.405461188228074
		 97 68.405461188228074 98 68.405461188228074 99 68.405461188228074 100 68.405461188228074
		 101 68.405461188228074 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 48 ".kit[2:47]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 48 ".kot[2:47]"  1 1 1 1 18 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 48 ".kix[2:47]"  1 1 1 1 1 1 1 1 0.85123312473297119 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[2:47]"  0 0 0 0 0 0 0 0 0.5247877836227417 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[2:47]"  1 1 1 1 1 1 1 1 0.85123312473297119 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[2:47]"  0 0 0 0 0 0 0 0 0.5247877836227417 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_leg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0
		 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_leg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0
		 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 44 ".kit[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kot[2:43]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_foot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 2.7755575615628914e-017 6 2.7755575615628914e-017
		 9 2.7755575615628914e-017 11 2.7755575615628914e-017 12 2.7755575615628914e-017 20 2.7755575615628914e-017
		 21 2.7755575615628914e-017 24 2.7755575615628914e-017 27 2.7755575615628914e-017
		 30 2.7755575615628914e-017 33 2.7755575615628914e-017 48 0 60 0 61 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_foot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 3.824920625228323e-007 2 3.824920625228323e-007
		 6 3.824920625228323e-007 9 3.824920625228323e-007 11 3.824920625228323e-007 12 3.824920625228323e-007
		 20 3.824920625228323e-007 21 3.824920625228323e-007 24 3.824920625228323e-007 27 3.824920625228323e-007
		 30 3.824920625228323e-007 33 3.824920625228323e-007 48 3.824920625228323e-007 60 3.824920625228323e-007
		 61 3.824920625228323e-007 63 3.824920625228323e-007 64 3.824920625228323e-007 65 3.824920625228323e-007
		 66 3.824920625228323e-007 67 3.824920625228323e-007 68 3.824920625228323e-007 69 3.824920625228323e-007
		 70 3.824920625228323e-007 71 3.824920625228323e-007 72 3.824920625228323e-007 73 3.824920625228323e-007
		 74 3.824920625228323e-007 75 3.824920625228323e-007 76 3.824920625228323e-007 90 3.824920625228323e-007
		 91 3.824920625228323e-007 92 3.824920625228323e-007 93 3.824920625228323e-007 94 3.824920625228323e-007
		 95 3.824920625228323e-007 96 3.824920625228323e-007 97 3.824920625228323e-007 98 3.824920625228323e-007
		 99 3.824920625228323e-007 100 3.824920625228323e-007 101 3.824920625228323e-007 102 3.824920625228323e-007
		 109 3.824920625228323e-007 110 3.824920625228323e-007 112 3.824920625228323e-007
		 114 3.824920625228323e-007;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_foot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 -0.10989542854138062 2 -0.10989542854138062
		 6 -0.10989542854138062 9 -0.10989542854138062 11 -0.10989542854138062 12 -0.10989542854138062
		 20 -0.10989542854138062 21 -0.10989542854138062 24 -0.10989542854138062 27 -0.10989542854138062
		 30 -0.10989542854138062 33 -0.10989542854138062 48 -0.10989542854138062 60 -0.10989542854138062
		 61 -0.10989542854138062 63 -0.10989542854138062 64 -0.10989542854138062 65 -0.10989542854138062
		 66 -0.10989542854138062 67 -0.10989542854138062 68 -0.10989542854138062 69 -0.10989542854138062
		 70 -0.10989542854138062 71 -0.10989542854138062 72 -0.10989542854138062 73 -0.10989542854138062
		 74 -0.10989542854138062 75 -0.10989542854138062 76 -0.10989542854138062 90 -0.10989542854138062
		 91 -0.10989542854138062 92 -0.10989542854138062 93 -0.10989542854138062 94 -0.10989542854138062
		 95 -0.10989542854138062 96 -0.10989542854138062 97 -0.10989542854138062 98 -0.10989542854138062
		 99 -0.10989542854138062 100 -0.10989542854138062 101 -0.10989542854138062 102 -0.10989542854138062
		 109 -0.10989542854138062 110 -0.10989542854138062 112 -0.10989542854138062 114 -0.10989542854138062;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[0:45]"  9 9 9 9 1 1 1 1 
		9 9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_foot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 6 -5.4471248362080322 9 0.60326617180742126
		 11 0 12 0 20 0 21 -11.825314864625881 24 -7.9779700997773251 27 -7.9779700997773251
		 30 -27.54458356025016 33 10.447490261007482 36 38.066432170237839 39 19.909982277783534
		 41 7.1829641043680947 45 -11.737998513182438 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0
		 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0
		 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 50 ".kit[4:49]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 50 ".kot[4:49]"  1 1 1 1 18 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 50 ".kix[4:49]"  1 1 1 1 1 1 1 1 1 0.36051422357559204 0.41233515739440918 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[4:49]"  0 0 0 0 0 0 0 0 0 -0.93275374174118042 
		-0.91103219985961914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 50 ".kox[4:49]"  1 1 1 1 1 1 1 1 1 0.36051422357559204 0.41233515739440918 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[4:49]"  0 0 0 0 0 0 0 0 0 -0.93275374174118042 
		-0.91103219985961914 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "L_foot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 0 9 0 11 0 12 0 20 0 21 0 24 0
		 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0
		 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_foot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 0 9 0 11 0 12 0 20 0 21 0 24 0
		 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0
		 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_toe_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "L_toe_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "L_toe_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "L_toe_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 8.3266726846886741e-017 2 8.3266726846886741e-017
		 11 8.3266726846886741e-017 12 8.3266726846886741e-017 20 8.3266726846886741e-017
		 21 8.3266726846886741e-017 24 8.3266726846886741e-017 27 8.3266726846886741e-017
		 30 8.3266726846886741e-017 76 8.3266726846886741e-017 90 8.3266726846886741e-017
		 91 8.3266726846886741e-017 92 8.3266726846886741e-017 93 8.3266726846886741e-017
		 94 8.3266726846886741e-017 95 8.3266726846886741e-017 96 8.3266726846886741e-017
		 97 8.3266726846886741e-017 98 8.3266726846886741e-017 99 8.3266726846886741e-017
		 100 8.3266726846886741e-017 101 8.3266726846886741e-017 102 8.3266726846886741e-017
		 109 8.3266726846886741e-017 110 8.3266726846886741e-017 112 8.3266726846886741e-017
		 114 8.3266726846886741e-017;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "L_toe_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 -6.8188573304484024e-007 2 -6.8188573304484024e-007
		 11 -6.8188573304484024e-007 12 -6.8188573304484024e-007 20 -6.8188573304484024e-007
		 21 -6.8188573304484024e-007 24 -6.8188573304484024e-007 27 -6.8188573304484024e-007
		 30 -6.8188573304484024e-007 76 -6.8188573304484024e-007 90 -6.8188573304484024e-007
		 91 -6.8188573304484024e-007 92 -6.8188573304484024e-007 93 -6.8188573304484024e-007
		 94 -6.8188573304484024e-007 95 -6.8188573304484024e-007 96 -6.8188573304484024e-007
		 97 -6.8188573304484024e-007 98 -6.8188573304484024e-007 99 -6.8188573304484024e-007
		 100 -6.8188573304484024e-007 101 -6.8188573304484024e-007 102 -6.8188573304484024e-007
		 109 -6.8188573304484024e-007 110 -6.8188573304484024e-007 112 -6.8188573304484024e-007
		 114 -6.8188573304484024e-007;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "L_toe_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 -0.16544211683720389 2 -0.16544211683720389
		 11 -0.16544211683720389 12 -0.16544211683720389 20 -0.16544211683720389 21 -0.16544211683720389
		 24 -0.16544211683720389 27 -0.16544211683720389 30 -0.16544211683720389 76 -0.16544211683720389
		 90 -0.16544211683720389 91 -0.16544211683720389 92 -0.16544211683720389 93 -0.16544211683720389
		 94 -0.16544211683720389 95 -0.16544211683720389 96 -0.16544211683720389 97 -0.16544211683720389
		 98 -0.16544211683720389 99 -0.16544211683720389 100 -0.16544211683720389 101 -0.16544211683720389
		 102 -0.16544211683720389 109 -0.16544211683720389 110 -0.16544211683720389 112 -0.16544211683720389
		 114 -0.16544211683720389;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "L_toe_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1
		 112 1 114 1;
	setAttr -s 27 ".kit[0:26]"  9 9 1 1 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "L_toe_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "L_toe_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "L_toe_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 27 ".kit[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kot[2:26]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 27 ".kix[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".kiy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 27 ".kox[2:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 27 ".koy[2:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "R_thigh_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_thigh_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_thigh_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_thigh_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 -0.117316080306807 2 -0.117316080306807
		 6 -0.117316080306807 11 -0.117316080306807 12 -0.117316080306807 20 -0.117316080306807
		 21 -0.117316080306807 24 -0.117316080306807 27 -0.117316080306807 30 -0.117316080306807
		 33 -0.117316080306807 48 -0.117316080306807 60 -0.117316080306807 61 -0.117316080306807
		 63 -0.117316080306807 64 -0.117316080306807 65 -0.117316080306807 66 -0.117316080306807
		 67 -0.117316080306807 68 -0.117316080306807 69 -0.117316080306807 70 -0.117316080306807
		 71 -0.117316080306807 72 -0.117316080306807 73 -0.117316080306807 74 -0.117316080306807
		 75 -0.117316080306807 76 -0.117316080306807 90 -0.117316080306807 91 -0.117316080306807
		 92 -0.117316080306807 93 -0.117316080306807 94 -0.117316080306807 95 -0.117316080306807
		 96 -0.117316080306807 97 -0.117316080306807 98 -0.117316080306807 99 -0.117316080306807
		 100 -0.117316080306807 101 -0.117316080306807 102 -0.117316080306807 109 -0.117316080306807
		 110 -0.117316080306807 112 -0.117316080306807 114 -0.117316080306807;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_thigh_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 -0.00055576849083302515 2 -0.00055576849083302515
		 6 -0.00055576849083302515 11 -0.00055576849083302515 12 -0.00055576849083302515 20 -0.00055576849083302515
		 21 -0.00055576849083302515 24 -0.00055576849083302515 27 -0.00055576849083302515
		 30 -0.00055576849083302515 33 -0.00055576849083302515 48 -0.00055576849083302515
		 60 -0.00055576849083302515 61 -0.00055576849083302515 63 -0.00055576849083302515
		 64 -0.00055576849083302515 65 -0.00055576849083302515 66 -0.00055576849083302515
		 67 -0.00055576849083302515 68 -0.00055576849083302515 69 -0.00055576849083302515
		 70 -0.00055576849083302515 71 -0.00055576849083302515 72 -0.00055576849083302515
		 73 -0.00055576849083302515 74 -0.00055576849083302515 75 -0.00055576849083302515
		 76 -0.00055576849083302515 90 -0.00055576849083302515 91 -0.00055576849083302515
		 92 -0.00055576849083302515 93 -0.00055576849083302515 94 -0.00055576849083302515
		 95 -0.00055576849083302515 96 -0.00055576849083302515 97 -0.00055576849083302515
		 98 -0.00055576849083302515 99 -0.00055576849083302515 100 -0.00055576849083302515
		 101 -0.00055576849083302515 102 -0.00055576849083302515 109 -0.00055576849083302515
		 110 -0.00055576849083302515 112 -0.00055576849083302515 114 -0.00055576849083302515;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_thigh_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 -0.02842066788288411 2 -0.02842066788288411
		 6 -0.02842066788288411 11 -0.02842066788288411 12 -0.02842066788288411 20 -0.02842066788288411
		 21 -0.02842066788288411 24 -0.02842066788288411 27 -0.02842066788288411 30 -0.02842066788288411
		 33 -0.02842066788288411 48 -0.02842066788288411 60 -0.02842066788288411 61 -0.02842066788288411
		 63 -0.02842066788288411 64 -0.02842066788288411 65 -0.02842066788288411 66 -0.02842066788288411
		 67 -0.02842066788288411 68 -0.02842066788288411 69 -0.02842066788288411 70 -0.02842066788288411
		 71 -0.02842066788288411 72 -0.02842066788288411 73 -0.02842066788288411 74 -0.02842066788288411
		 75 -0.02842066788288411 76 -0.02842066788288411 90 -0.02842066788288411 91 -0.02842066788288411
		 92 -0.02842066788288411 93 -0.02842066788288411 94 -0.02842066788288411 95 -0.02842066788288411
		 96 -0.02842066788288411 97 -0.02842066788288411 98 -0.02842066788288411 99 -0.02842066788288411
		 100 -0.02842066788288411 101 -0.02842066788288411 102 -0.02842066788288411 109 -0.02842066788288411
		 110 -0.02842066788288411 112 -0.02842066788288411 114 -0.02842066788288411;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_thigh_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[0:44]"  9 9 9 1 1 1 1 9 
		9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_thigh_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  1 0 2 0 6 0 11 0 12 0 20 0 21 27.225896080238371
		 24 7.4288822740570764 27 -19.993654207528134 30 -46.667755964558602 33 -33.00696362816781
		 36 -26.995624239681909 39 -5.9614470174643301 42 7.5127159034664208 45 27.577046674202919
		 48 0 60 0 61 0 63 57.281475166605439 64 55.807121787100151 65 47.591237867687418
		 66 32.973753654938179 67 34.229301555718514 68 50.391074586311248 69 39.630157456766995
		 70 38.575890110290572 71 53.858238247644955 72 36.411737475175265 73 38.939593081891509
		 74 36.358680243877387 75 33.901826537333186 76 0 90 0 91 0 92 -46.793178446674965
		 93 -46.793178446674965 94 -46.793178446674965 95 -46.793178446674965 96 -46.793178446674965
		 97 -46.793178446674965 98 -46.793178446674965 99 -46.793178446674965 100 -46.793178446674965
		 101 -46.793178446674965 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 49 ".kit[3:48]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 49 ".kot[3:48]"  1 1 1 1 18 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 49 ".kix[3:48]"  1 1 1 1 0.2902856171131134 0.25596347451210022 
		1 1 0.46803393959999084 0.38337147235870361 0.39276778697967529 1 1 1 1 1 0.47497579455375671 
		0.20468108355998993 1 0.53533816337585449 1 0.60245645046234131 1 1 1 1 0.68789821863174438 
		0.3081398606300354 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[3:48]"  0 0 0 0 -0.95693999528884888 -0.9666864275932312 
		0 0 0.88371050357818604 0.92359423637390137 0.91963768005371094 0 0 0 0 0 -0.87999886274337769 
		-0.97882872819900513 0 0.84463781118392944 0 -0.79815173149108887 0 0 0 0 -0.72580718994140625 
		-0.95134097337722778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[3:48]"  1 1 1 1 0.2902856171131134 0.25596347451210022 
		1 1 0.46803393959999084 0.38337147235870361 0.39276778697967529 1 1 1 1 1 0.47497579455375671 
		0.20468108355998993 1 0.53533810377120972 1 0.60245645046234131 1 1 1 1 0.68789821863174438 
		0.3081398606300354 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[3:48]"  0 0 0 0 -0.95693999528884888 -0.9666864275932312 
		0 0 0.88371050357818604 0.92359423637390137 0.91963768005371094 0 0 0 0 0 -0.87999886274337769 
		-0.97882872819900513 0 0.84463775157928467 0 -0.79815173149108887 0 0 0 0 -0.72580718994140625 
		-0.95134097337722778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_thigh_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 0 11 0 12 0 20 0 21 0 24 0 27 0
		 30 0 33 0 48 0 60 0 61 0 63 -18.997742962030092 64 -19.695228585527587 65 -23.247105752388482
		 66 -28.11811240425553 67 -27.772736514285427 68 -22.101510780773587 69 -26.131212258630807
		 70 -26.47159251274093 71 -20.589603689672082 72 -27.139945364027746 73 -26.3552639640717
		 74 -27.155819141642148 75 -27.864129607875284 76 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 0.75202310085296631 
		0.75202316045761108 0.49314364790916443 1 0.91732853651046753 1 0.91942363977432251 
		1 1 1 1 0.95352053642272949 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 -0.65913671255111694 
		-0.65913671255111694 -0.86994791030883789 0 0.39813095331192017 0 -0.39326843619346619 
		0 0 0 0 -0.30132812261581421 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 0.75202316045761108 
		0.75202316045761108 0.49314364790916443 1 0.9173285961151123 1 0.91942363977432251 
		1 1 1 1 0.95352053642272949 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 -0.65913671255111694 
		-0.65913671255111694 -0.86994796991348267 0 0.39813098311424255 0 -0.39326843619346619 
		0 0 0 0 -0.30132812261581421 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_thigh_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 0 11 0 12 0 20 0 21 0 24 0 27 0
		 30 0 33 0 48 0 60 0 61 0 63 -26.87160915259717 64 -26.3831522964282 65 -23.369951326818558
		 66 -17.001165357688052 67 -17.589574222411798 68 -24.449503751948814 69 -20.039169370638792
		 70 -19.572018095154597 71 -25.711967389496913 72 -18.595946740524749 73 -19.733810096238205
		 74 -18.571737323745776 75 -17.43675068810165 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 0.85225605964660645 
		0.4535592794418335 1 0.80406671762466431 1 0.86238497495651245 1 1 1 1 0.90113753080368042 
		0.57408463954925537 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0.5231248140335083 
		0.89122605323791504 0 -0.59453898668289185 0 0.50625318288803101 0 0 0 0 0.4335331916809082 
		0.81879597902297974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 0.85225605964660645 
		0.4535592794418335 1 0.80406677722930908 1 0.86238497495651245 1 1 1 1 0.9011375904083252 
		0.57408463954925537 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0.52312487363815308 
		0.89122611284255981 0 -0.59453898668289185 0 0.50625318288803101 0 0 0 0 0.4335331916809082 
		0.81879597902297974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_leg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_leg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_leg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_leg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0.039656139822019237 2 0.039656139822019237
		 6 0.039656139822019237 11 0.039656139822019237 12 0.039656139822019237 20 0.039656139822019237
		 21 0.039656139822019237 24 0.039656139822019237 27 0.039656139822019237 30 0.039656139822019237
		 33 0.039656139822019237 48 0.039656139822019237 60 0.039656139822019237 61 0.039656139822019237
		 63 0.039656139822019237 64 0.039656139822019237 65 0.039656139822019237 66 0.039656139822019237
		 67 0.039656139822019237 68 0.039656139822019237 69 0.039656139822019237 70 0.039656139822019237
		 71 0.039656139822019237 72 0.039656139822019237 73 0.039656139822019237 74 0.039656139822019237
		 75 0.039656139822019237 76 0.039656139822019237 90 0.039656139822019237 91 0.039656139822019237
		 92 0.039656139822019237 93 0.039656139822019237 94 0.039656139822019237 95 0.039656139822019237
		 96 0.039656139822019237 97 0.039656139822019237 98 0.039656139822019237 99 0.039656139822019237
		 100 0.039656139822019237 101 0.039656139822019237 102 0.039656139822019237 109 0.039656139822019237
		 110 0.039656139822019237 112 0.039656139822019237 114 0.039656139822019237;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_leg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 3.7271448950789017e-017 6 3.7271448950789017e-017
		 11 3.7271448950789017e-017 12 3.7271448950789017e-017 20 3.7271448950789017e-017
		 21 3.7271448950789017e-017 24 3.7271448950789017e-017 27 3.7271448950789017e-017
		 30 3.7271448950789017e-017 33 3.7271448950789017e-017 48 0 60 0 61 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_leg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0.10946018402119063 2 0.10946018402119063
		 6 0.10946018402119063 11 0.10946018402119063 12 0.10946018402119063 20 0.10946018402119063
		 21 0.10946018402119063 24 0.10946018402119063 27 0.10946018402119063 30 0.10946018402119063
		 33 0.10946018402119063 48 0.10946018402119063 60 0.10946018402119063 61 0.10946018402119063
		 63 0.10946018402119063 64 0.10946018402119063 65 0.10946018402119063 66 0.10946018402119063
		 67 0.10946018402119063 68 0.10946018402119063 69 0.10946018402119063 70 0.10946018402119063
		 71 0.10946018402119063 72 0.10946018402119063 73 0.10946018402119063 74 0.10946018402119063
		 75 0.10946018402119063 76 0.10946018402119063 90 0.10946018402119063 91 0.10946018402119063
		 92 0.10946018402119063 93 0.10946018402119063 94 0.10946018402119063 95 0.10946018402119063
		 96 0.10946018402119063 97 0.10946018402119063 98 0.10946018402119063 99 0.10946018402119063
		 100 0.10946018402119063 101 0.10946018402119063 102 0.10946018402119063 109 0.10946018402119063
		 110 0.10946018402119063 112 0.10946018402119063 114 0.10946018402119063;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_leg_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 11 1 12 1 20 1 21 1 24 1 27 1
		 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[0:44]"  9 9 9 1 1 1 1 9 
		9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_leg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  1 0 2 0 6 -19.208506040428944 11 0 12 0
		 20 0 21 25.799697254937268 24 50.030208007115363 27 51.502000524428389 30 51.502000524428389
		 33 -0.90736799310895977 36 -24.200412745700795 39 -24.200412745700795 42 7.8094220367059251
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 46.255048963131777 93 46.255048963131777 94 46.255048963131777 95 46.255048963131777
		 96 46.255048963131777 97 46.255048963131777 98 46.255048963131777 99 46.255048963131777
		 100 46.255048963131777 101 46.255048963131777 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 48 ".kit[3:47]"  1 1 1 1 18 18 18 18 
		18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 48 ".kot[3:47]"  1 1 1 1 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 48 ".kix[3:47]"  1 1 1 1 0.85123312473297119 1 1 0.18591506779193878 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[3:47]"  0 0 0 0 0.5247877836227417 0 0 -0.98256587982177734 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[3:47]"  1 1 1 1 0.85123312473297119 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[3:47]"  0 0 0 0 0.5247877836227417 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_leg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 0.97250178903533091 11 0 12 0
		 20 0 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0
		 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_leg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 -3.337778096275724 11 0 12 0 20 0
		 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0
		 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[3:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[3:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[3:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_foot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 -1.459901296248468e-017 6 -1.459901296248468e-017
		 9 -1.459901296248468e-017 11 -1.459901296248468e-017 12 -1.459901296248468e-017 20 -1.459901296248468e-017
		 21 -1.459901296248468e-017 24 -1.459901296248468e-017 27 -1.459901296248468e-017
		 30 -1.459901296248468e-017 33 -1.459901296248468e-017 48 0 60 0 61 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_foot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 5.5511151231257827e-017 6 5.5511151231257827e-017
		 9 5.5511151231257827e-017 11 5.5511151231257827e-017 12 5.5511151231257827e-017 20 5.5511151231257827e-017
		 21 5.5511151231257827e-017 24 5.5511151231257827e-017 27 5.5511151231257827e-017
		 30 5.5511151231257827e-017 33 5.5511151231257827e-017 48 0 60 0 61 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_foot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0.10989567483604944 2 0.10989567483604944
		 6 0.10989567483604944 9 0.10989567483604944 11 0.10989567483604944 12 0.10989567483604944
		 20 0.10989567483604944 21 0.10989567483604944 24 0.10989567483604944 27 0.10989567483604944
		 30 0.10989567483604944 33 0.10989567483604944 48 0.10989567483604944 60 0.10989567483604944
		 61 0.10989567483604944 63 0.10989567483604944 64 0.10989567483604944 65 0.10989567483604944
		 66 0.10989567483604944 67 0.10989567483604944 68 0.10989567483604944 69 0.10989567483604944
		 70 0.10989567483604944 71 0.10989567483604944 72 0.10989567483604944 73 0.10989567483604944
		 74 0.10989567483604944 75 0.10989567483604944 76 0.10989567483604944 90 0.10989567483604944
		 91 0.10989567483604944 92 0.10989567483604944 93 0.10989567483604944 94 0.10989567483604944
		 95 0.10989567483604944 96 0.10989567483604944 97 0.10989567483604944 98 0.10989567483604944
		 99 0.10989567483604944 100 0.10989567483604944 101 0.10989567483604944 102 0.10989567483604944
		 109 0.10989567483604944 110 0.10989567483604944 112 0.10989567483604944 114 0.10989567483604944;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_foot_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 1 2 1 6 1 9 1 11 1 12 1 20 1 21 1 24 1
		 27 1 30 1 33 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1;
	setAttr -s 46 ".kit[0:45]"  9 9 9 9 1 1 1 1 
		9 9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_foot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 0 2 0 6 -37.502904626826215 9 0.19403717631304809
		 11 0 12 0 20 0 21 11.351585024222192 24 38.970526933452547 27 20.814077040998249
		 29 8.0870588675828028 33 -10.833903749967732 36 -6.9865589851191752 39 -6.9865589851191752
		 42 -26.553172445592011 45 11.438901375665631 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0
		 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 4.5415876106062623 93 4.5415876106062623
		 94 4.5415876106062623 95 4.5415876106062623 96 4.5415876106062623 97 4.5415876106062623
		 98 4.5415876106062623 99 4.5415876106062623 100 4.5415876106062623 101 4.5415876106062623
		 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 50 ".kit[4:49]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 50 ".kot[4:49]"  1 1 1 1 18 18 18 1 
		18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 50 ".kix[4:49]"  1 1 1 1 1 0.36051422357559204 0.41233515739440918 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[4:49]"  0 0 0 0 0 -0.93275374174118042 -0.91103219985961914 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[4:49]"  1 1 1 1 1 0.36051422357559204 0.41233515739440918 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[4:49]"  0 0 0 0 0 -0.93275374174118042 -0.91103219985961914 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_foot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 -5.9594614778634494 9 -6.037396785245396
		 11 0 12 0 20 0 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0
		 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0
		 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_foot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 0 2 0 6 3.0131296209569598 9 0.7881633035700647
		 11 0 12 0 20 0 21 0 24 0 27 0 30 0 33 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0
		 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0
		 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 46 ".kit[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kot[4:45]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[4:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[4:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_toe_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_toe_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_toe_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_toe_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -1.9898936661116615e-017 2 -1.9898936661116615e-017
		 11 -1.9898936661116615e-017 12 -1.9898936661116615e-017 20 -1.9898936661116615e-017
		 21 -1.9898936661116615e-017 24 -1.9898936661116615e-017 27 -1.9898936661116615e-017
		 30 -1.9898936661116615e-017 61 -1.9898936661116615e-017 63 -1.9898936661116615e-017
		 64 -1.9898936661116615e-017 65 -1.9898936661116615e-017 66 -1.9898936661116615e-017
		 67 -1.9898936661116615e-017 68 -1.9898936661116615e-017 69 -1.9898936661116615e-017
		 70 -1.9898936661116615e-017 71 -1.9898936661116615e-017 72 -1.9898936661116615e-017
		 73 -1.9898936661116615e-017 74 -1.9898936661116615e-017 75 -1.9898936661116615e-017
		 76 -1.9898936661116615e-017 90 -1.9898936661116615e-017 91 -1.9898936661116615e-017
		 92 -1.9898936661116615e-017 93 -1.9898936661116615e-017 94 -1.9898936661116615e-017
		 95 -1.9898936661116615e-017 96 -1.9898936661116615e-017 97 -1.9898936661116615e-017
		 98 -1.9898936661116615e-017 99 -1.9898936661116615e-017 100 -1.9898936661116615e-017
		 101 -1.9898936661116615e-017 102 -1.9898936661116615e-017 109 -1.9898936661116615e-017
		 110 -1.9898936661116615e-017 112 -1.9898936661116615e-017 114 -1.9898936661116615e-017;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_toe_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -6.9388939039072284e-018 2 -6.9388939039072284e-018
		 11 -6.9388939039072284e-018 12 -6.9388939039072284e-018 20 -6.9388939039072284e-018
		 21 -6.9388939039072284e-018 24 -6.9388939039072284e-018 27 -6.9388939039072284e-018
		 30 -6.9388939039072284e-018 61 -6.9388939039072284e-018 63 -6.9388939039072284e-018
		 64 -6.9388939039072284e-018 65 -6.9388939039072284e-018 66 -6.9388939039072284e-018
		 67 -6.9388939039072284e-018 68 -6.9388939039072284e-018 69 -6.9388939039072284e-018
		 70 -6.9388939039072284e-018 71 -6.9388939039072284e-018 72 -6.9388939039072284e-018
		 73 -6.9388939039072284e-018 74 -6.9388939039072284e-018 75 -6.9388939039072284e-018
		 76 -6.9388939039072284e-018 90 -6.9388939039072284e-018 91 -6.9388939039072284e-018
		 92 -6.9388939039072284e-018 93 -6.9388939039072284e-018 94 -6.9388939039072284e-018
		 95 -6.9388939039072284e-018 96 -6.9388939039072284e-018 97 -6.9388939039072284e-018
		 98 -6.9388939039072284e-018 99 -6.9388939039072284e-018 100 -6.9388939039072284e-018
		 101 -6.9388939039072284e-018 102 -6.9388939039072284e-018 109 -6.9388939039072284e-018
		 110 -6.9388939039072284e-018 112 -6.9388939039072284e-018 114 -6.9388939039072284e-018;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_toe_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.16544185071706541 2 0.16544185071706541
		 11 0.16544185071706541 12 0.16544185071706541 20 0.16544185071706541 21 0.16544185071706541
		 24 0.16544185071706541 27 0.16544185071706541 30 0.16544185071706541 61 0.16544185071706541
		 63 0.16544185071706541 64 0.16544185071706541 65 0.16544185071706541 66 0.16544185071706541
		 67 0.16544185071706541 68 0.16544185071706541 69 0.16544185071706541 70 0.16544185071706541
		 71 0.16544185071706541 72 0.16544185071706541 73 0.16544185071706541 74 0.16544185071706541
		 75 0.16544185071706541 76 0.16544185071706541 90 0.16544185071706541 91 0.16544185071706541
		 92 0.16544185071706541 93 0.16544185071706541 94 0.16544185071706541 95 0.16544185071706541
		 96 0.16544185071706541 97 0.16544185071706541 98 0.16544185071706541 99 0.16544185071706541
		 100 0.16544185071706541 101 0.16544185071706541 102 0.16544185071706541 109 0.16544185071706541
		 110 0.16544185071706541 112 0.16544185071706541 114 0.16544185071706541;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_toe_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 11 1 12 1 20 1 21 1 24 1 27 1 30 1
		 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[0:40]"  9 9 1 1 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_toe_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0
		 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_toe_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0
		 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_toe_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 11 0 12 0 20 0 21 0 24 0 27 0 30 0
		 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0
		 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[2:40]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 1 2 1 7 1 10 1 11 1 12 1 20 1 21 1 27 1
		 29 1 32 1 37 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1
		 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1
		 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 1 2 1 7 1 10 1 11 1 12 1 20 1 21 1 27 1
		 29 1 32 1 37 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1
		 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1
		 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 1 2 1 7 1 10 1 11 1 12 1 20 1 21 1 27 1
		 29 1 32 1 37 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1
		 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1
		 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 0 2 -1.3012937012347647e-017 7 -1.3012937012347647e-017
		 10 -1.3012937012347647e-017 11 -1.3012937012347647e-017 12 -1.3012937012347647e-017
		 20 -1.3012937012347647e-017 21 -1.3012937012347647e-017 27 -1.3012937012347647e-017
		 29 -1.3012937012347647e-017 32 -1.3012937012347647e-017 37 -1.3012937012347647e-017
		 47 -1.3012937012347647e-017 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0
		 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 0.11721011655960915 2 0.11721011655960915
		 7 0.11721011655960915 10 0.11721011655960915 11 0.11721011655960915 12 0.11721011655960915
		 20 0.11721011655960915 21 0.11721011655960915 27 0.11721011655960915 29 0.11721011655960915
		 32 0.11721011655960915 37 0.11721011655960915 47 0.11721011655960915 48 0.11721011655960915
		 60 0.11721011655960915 61 0.11721011655960915 63 0.11721011655960915 64 0.11721011655960915
		 65 0.11721011655960915 66 0.11721011655960915 67 0.11721011655960915 68 0.11721011655960915
		 69 0.11721011655960915 70 0.11721011655960915 71 0.11721011655960915 72 0.11721011655960915
		 73 0.11721011655960915 74 0.11721011655960915 75 0.11721011655960915 76 0.11721011655960915
		 90 0.11721011655960915 91 0.11721011655960915 92 0.11721011655960915 93 0.11721011655960915
		 94 0.11721011655960915 95 0.11721011655960915 96 0.11721011655960915 97 0.11721011655960915
		 98 0.11721011655960915 99 0.11721011655960915 100 0.11721011655960915 101 0.11721011655960915
		 102 0.11721011655960915 109 0.11721011655960915 110 0.11721011655960915 112 0.11721011655960915
		 114 0.11721011655960915;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 -0.029978053082029804 2 -0.029978053082029804
		 7 -0.029978053082029804 10 -0.029978053082029804 11 -0.029978053082029804 12 -0.029978053082029804
		 20 -0.029978053082029804 21 -0.029978053082029804 27 -0.029978053082029804 29 -0.029978053082029804
		 32 -0.029978053082029804 37 -0.029978053082029804 47 -0.029978053082029804 48 -0.029978053082029804
		 60 -0.029978053082029804 61 -0.029978053082029804 63 -0.029978053082029804 64 -0.029978053082029804
		 65 -0.029978053082029804 66 -0.029978053082029804 67 -0.029978053082029804 68 -0.029978053082029804
		 69 -0.029978053082029804 70 -0.029978053082029804 71 -0.029978053082029804 72 -0.029978053082029804
		 73 -0.029978053082029804 74 -0.029978053082029804 75 -0.029978053082029804 76 -0.029978053082029804
		 90 -0.029978053082029804 91 -0.029978053082029804 92 -0.029978053082029804 93 -0.029978053082029804
		 94 -0.029978053082029804 95 -0.029978053082029804 96 -0.029978053082029804 97 -0.029978053082029804
		 98 -0.029978053082029804 99 -0.029978053082029804 100 -0.029978053082029804 101 -0.029978053082029804
		 102 -0.029978053082029804 109 -0.029978053082029804 110 -0.029978053082029804 112 -0.029978053082029804
		 114 -0.029978053082029804;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 1 2 1 7 1 10 1 11 1 12 1 20 1 21 1 27 1
		 29 1 32 1 37 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1
		 73 1 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1
		 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 47 ".kit[0:46]"  9 9 9 9 1 1 1 1 
		9 9 9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 0 2 0 7 13.30310107403805 10 -0.0683854401746046
		 11 0 12 0 20 0 21 0 27 0 29 -2.7520495576545714 32 1.790450799647108 37 -2.817873337198904
		 47 7.1031214967131655 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0
		 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 8.0907830407440944 93 14.968184598372236 94 7.0828982099394109
		 95 8.0907830407440944 96 14.968184598372236 97 7.0828982099394109 98 8.0907830407440944
		 99 14.968184598372236 100 7.0828982099394109 101 8.0907830407440944 102 0 109 0 110 0
		 112 0 114 0;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.30389946699142456 1 1 0.61967939138412476 1 1 0.61968374252319336 
		1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.95270419120788574 0 0 0.78485512733459473 0 0 0.78485161066055298 
		0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.30389940738677979 1 1 0.61967939138412476 1 1 0.61968368291854858 
		1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.95270413160324097 0 0 0.78485506772994995 0 0 0.78485161066055298 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 0 2 0 7 0 10 0 11 0 12 0 20 0 21 0 27 0
		 29 0 32 0 37 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0
		 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0
		 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  1 0 2 0 7 0 10 0 11 0 12 0 20 0 21 0 27 0
		 29 0 32 0 37 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0
		 73 0 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0
		 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 47 ".kit[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kot[4:46]"  1 1 1 1 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 47 ".kix[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[4:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[4:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 29 1
		 37 1 41 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 29 1
		 37 1 41 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 29 1
		 37 1 41 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 -3.6977854932234928e-032 6 -3.6977854932234928e-032
		 10 -3.6977854932234928e-032 11 -3.6977854932234928e-032 12 -3.6977854932234928e-032
		 20 -3.6977854932234928e-032 21 -3.6977854932234928e-032 29 -3.6977854932234928e-032
		 37 -3.6977854932234928e-032 41 -3.6977854932234928e-032 47 -3.6977854932234928e-032
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 6.9388939039072284e-017 6 6.9388939039072284e-017
		 10 6.9388939039072284e-017 11 6.9388939039072284e-017 12 6.9388939039072284e-017
		 20 6.9388939039072284e-017 21 6.9388939039072284e-017 29 6.9388939039072284e-017
		 37 6.9388939039072284e-017 41 6.9388939039072284e-017 47 6.9388939039072284e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0.16305793140638308 2 0.16305793140638308
		 6 0.16305793140638308 10 0.16305793140638308 11 0.16305793140638308 12 0.16305793140638308
		 20 0.16305793140638308 21 0.16305793140638308 29 0.16305793140638308 37 0.16305793140638308
		 41 0.16305793140638308 47 0.16305793140638308 48 0.16305793140638308 60 0.16305793140638308
		 61 0.16305793140638308 63 0.16305793140638308 64 0.16305793140638308 65 0.16305793140638308
		 66 0.16305793140638308 67 0.16305793140638308 68 0.16305793140638308 69 0.16305793140638308
		 70 0.16305793140638308 71 0.16305793140638308 72 0.16305793140638308 73 0.16305793140638308
		 74 0.16305793140638308 75 0.16305793140638308 76 0.16305793140638308 90 0.16305793140638308
		 91 0.16305793140638308 92 0.16305793140638308 94 0.16305793140638308 95 0.16305793140638308
		 96 0.16305793140638308 97 0.16305793140638308 98 0.16305793140638308 99 0.16305793140638308
		 100 0.16305793140638308 101 0.16305793140638308 102 0.16305793140638308 109 0.16305793140638308
		 110 0.16305793140638308 112 0.16305793140638308 114 0.16305793140638308;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail2_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 6 1 10 1 11 1 12 1 20 1 21 1 29 1
		 37 1 41 1 47 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[0:44]"  9 9 9 9 1 1 1 1 
		9 9 9 9 1 1 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 -18.061427257019361 10 0.33850214921705563
		 11 0 12 0 20 0 21 0 29 -5.503920440993042 37 -17.103628251195474 41 -22.300391930134236
		 47 -12.254531188425789 48 0 60 0 61 0 63 0 64 -11.982254871457792 65 0 66 -13.868644069328983
		 67 0 68 -16.986282985582385 69 0 70 -17.973148931550845 71 0 72 -15.176690601869383
		 73 0 74 -18.772643456750693 75 0 76 0 90 0 91 0 92 -4.0279596578773171 94 -6.1449954591709695
		 95 -4.0279596578773171 96 -5.5985614543957256 97 -6.1449954591709695 98 -4.0279596578773171
		 99 -5.5985614543957256 100 -6.1449954591709695 101 -4.0279596578773171 102 0 109 0
		 110 0 112 -34.168700157807599 114 -34.168700157807599;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 0.91268086433410645 0.86266005039215088 
		1 0.59967780113220215 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.75893384218215942 1 
		1 0.91416847705841064 1 1 0.91416811943054199 1 0.61355751752853394 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 -0.40867292881011963 -0.50578403472900391 
		0 0.80024152994155884 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.65116769075393677 
		0 0 -0.40533441305160522 0 0 -0.40533536672592163 0 0.78965002298355103 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 0.91268086433410645 0.86266010999679565 
		1 0.59967774152755737 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.7589339017868042 1 
		1 0.91416847705841064 1 1 0.91416811943054199 1 0.61355751752853394 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 -0.40867289900779724 -0.50578403472900391 
		0 0.80024147033691406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.65116769075393677 
		0 0 -0.40533441305160522 0 0 -0.40533536672592163 0 0.78964996337890625 0 0 0 0 0;
createNode animCurveTA -n "tail2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 0 10 0 11 0 12 0 20 0 21 0 29 0
		 37 0 41 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 6.3391353649379489 67 0 68 0 69 -3.8947853576210374
		 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0
		 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 6 0 10 0 11 0 12 0 20 0 21 0 29 0
		 37 0 41 0 47 0 48 0 60 0 61 0 63 0 64 0 65 0 66 2.0000755969985905e-016 67 0 68 0
		 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 45 ".kit[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kot[4:44]"  1 1 1 1 18 18 18 18 
		1 1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[4:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[4:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 4 1 7 1 10 1 11 1 12 1 20 1 21 1
		 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 90 1 91 1 92 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 4 1 7 1 10 1 11 1 12 1 20 1 21 1
		 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 90 1 91 1 92 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 4 1 7 1 10 1 11 1 12 1 20 1 21 1
		 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 90 1 91 1 92 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 -2.7189992146650705e-017 4 -2.7189992146650705e-017
		 7 -2.7189992146650705e-017 10 -2.7189992146650705e-017 11 -2.7189992146650705e-017
		 12 -2.7189992146650705e-017 20 -2.7189992146650705e-017 21 -2.7189992146650705e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 -5.5511151231257827e-017 4 -5.5511151231257827e-017
		 7 -5.5511151231257827e-017 10 -5.5511151231257827e-017 11 -5.5511151231257827e-017
		 12 -5.5511151231257827e-017 20 -5.5511151231257827e-017 21 -5.5511151231257827e-017
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0.11905175646101517 2 0.11905175646101517
		 4 0.11905175646101517 7 0.11905175646101517 10 0.11905175646101517 11 0.11905175646101517
		 12 0.11905175646101517 20 0.11905175646101517 21 0.11905175646101517 48 0.11905175646101517
		 60 0.11905175646101517 61 0.11905175646101517 63 0.11905175646101517 64 0.11905175646101517
		 65 0.11905175646101517 66 0.11905175646101517 67 0.11905175646101517 68 0.11905175646101517
		 69 0.11905175646101517 70 0.11905175646101517 71 0.11905175646101517 72 0.11905175646101517
		 73 0.11905175646101517 74 0.11905175646101517 75 0.11905175646101517 76 0.11905175646101517
		 90 0.11905175646101517 91 0.11905175646101517 92 0.11905175646101517 95 0.11905175646101517
		 96 0.11905175646101517 97 0.11905175646101517 98 0.11905175646101517 99 0.11905175646101517
		 100 0.11905175646101517 101 0.11905175646101517 102 0.11905175646101517 109 0.11905175646101517
		 110 0.11905175646101517 112 0.11905175646101517 114 0.11905175646101517;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail3_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 1 2 1 4 1 7 1 10 1 11 1 12 1 20 1 21 1
		 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 90 1 91 1 92 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 41 ".kit[0:40]"  9 9 9 9 9 1 1 1 
		1 1 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 4 0 7 0 10 0 11 0 12 0 20 0 21 0
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 4 -22.574699504689463 7 15.815582295653439
		 10 -0.24373327678400242 11 0 12 0 20 0 21 0 48 0 60 0 61 0 63 0 64 3.4353783096312278
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 5.6078705991542472 75 -8.5674140445858473
		 76 0 90 0 91 0 92 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 0 2 0 4 0 7 0 10 0 11 0 12 0 20 0 21 0
		 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0
		 90 0 91 0 92 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 41 ".kit[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[5:40]"  1 1 1 1 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[5:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[5:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail4_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail4_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail4_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail4_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 -3.2588566935351362e-017 2 -3.2588566935351362e-017
		 11 -3.2588566935351362e-017 12 -3.2588566935351362e-017 20 -3.2588566935351362e-017
		 21 -3.2588566935351362e-017 61 -3.2588566935351362e-017 63 -3.2588566935351362e-017
		 64 -3.2588566935351362e-017 65 -3.2588566935351362e-017 66 -3.2588566935351362e-017
		 67 -3.2588566935351362e-017 68 -3.2588566935351362e-017 69 -3.2588566935351362e-017
		 70 -3.2588566935351362e-017 71 -3.2588566935351362e-017 72 -3.2588566935351362e-017
		 73 -3.2588566935351362e-017 74 -3.2588566935351362e-017 75 -3.2588566935351362e-017
		 76 -3.2588566935351362e-017 90 -3.2588566935351362e-017 91 -3.2588566935351362e-017
		 92 -3.2588566935351362e-017 94 -3.2588566935351362e-017 95 -3.2588566935351362e-017
		 96 -3.2588566935351362e-017 97 -3.2588566935351362e-017 98 -3.2588566935351362e-017
		 99 -3.2588566935351362e-017 100 -3.2588566935351362e-017 101 -3.2588566935351362e-017
		 102 -3.2588566935351362e-017 109 -3.2588566935351362e-017 110 -3.2588566935351362e-017
		 112 -3.2588566935351362e-017 114 -3.2588566935351362e-017;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail4_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 -2.1510571102112408e-016 2 -2.1510571102112408e-016
		 11 -2.1510571102112408e-016 12 -2.1510571102112408e-016 20 -2.1510571102112408e-016
		 21 -2.1510571102112408e-016 61 -2.1510571102112408e-016 63 -2.1510571102112408e-016
		 64 -2.1510571102112408e-016 65 -2.1510571102112408e-016 66 -2.1510571102112408e-016
		 67 -2.1510571102112408e-016 68 -2.1510571102112408e-016 69 -2.1510571102112408e-016
		 70 -2.1510571102112408e-016 71 -2.1510571102112408e-016 72 -2.1510571102112408e-016
		 73 -2.1510571102112408e-016 74 -2.1510571102112408e-016 75 -2.1510571102112408e-016
		 76 -2.1510571102112408e-016 90 -2.1510571102112408e-016 91 -2.1510571102112408e-016
		 92 -2.1510571102112408e-016 94 -2.1510571102112408e-016 95 -2.1510571102112408e-016
		 96 -2.1510571102112408e-016 97 -2.1510571102112408e-016 98 -2.1510571102112408e-016
		 99 -2.1510571102112408e-016 100 -2.1510571102112408e-016 101 -2.1510571102112408e-016
		 102 -2.1510571102112408e-016 109 -2.1510571102112408e-016 110 -2.1510571102112408e-016
		 112 -2.1510571102112408e-016 114 -2.1510571102112408e-016;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail4_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0.14669991811933414 2 0.14669991811933414
		 11 0.14669991811933414 12 0.14669991811933414 20 0.14669991811933414 21 0.14669991811933414
		 61 0.14669991811933414 63 0.14669991811933414 64 0.14669991811933414 65 0.14669991811933414
		 66 0.14669991811933414 67 0.14669991811933414 68 0.14669991811933414 69 0.14669991811933414
		 70 0.14669991811933414 71 0.14669991811933414 72 0.14669991811933414 73 0.14669991811933414
		 74 0.14669991811933414 75 0.14669991811933414 76 0.14669991811933414 90 0.14669991811933414
		 91 0.14669991811933414 92 0.14669991811933414 94 0.14669991811933414 95 0.14669991811933414
		 96 0.14669991811933414 97 0.14669991811933414 98 0.14669991811933414 99 0.14669991811933414
		 100 0.14669991811933414 101 0.14669991811933414 102 0.14669991811933414 109 0.14669991811933414
		 110 0.14669991811933414 112 0.14669991811933414 114 0.14669991811933414;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail4_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1
		 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 37 ".kit[0:36]"  9 9 1 1 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail4_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 94 13.199174813351126
		 95 0 96 6.5995874066755613 97 13.199174813351126 98 0 99 6.5995874066755613 100 13.199174813351126
		 101 0 102 0 109 0 110 0 112 37.429398378375417 114 37.429398378375417;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 0.34016594290733337 1 1 0.34016507863998413 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.94036543369293213 0 0 0.94036573171615601 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 0.34016594290733337 1 1 0.34016507863998413 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.94036543369293213 0 0 0.94036573171615601 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail4_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 4.6461345151881064 74 0 75 0 76 0 90 0
		 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail4_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0
		 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 37 ".kit[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kot[2:36]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 37 ".kix[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[2:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[2:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail5_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 11 1 12 1 20 1 21 1 28 1 31 1 32 1
		 35 1 41 1 43 1 45 1 47 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail5_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 11 1 12 1 20 1 21 1 28 1 31 1 32 1
		 35 1 41 1 43 1 45 1 47 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail5_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 11 1 12 1 20 1 21 1 28 1 31 1 32 1
		 35 1 41 1 43 1 45 1 47 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail5_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 -2.2545394484989799e-018 2 -2.2545394484989799e-018
		 11 -2.2545394484989799e-018 12 -2.2545394484989799e-018 20 -2.2545394484989799e-018
		 21 -2.2545394484989799e-018 28 -2.2545394484989799e-018 31 -2.2545394484989799e-018
		 32 -2.2545394484989799e-018 35 -2.2545394484989799e-018 41 -2.2545394484989799e-018
		 43 -2.2545394484989799e-018 45 -2.2545394484989799e-018 47 -2.2545394484989799e-018
		 61 -2.2545394484989799e-018 63 -2.2545394484989799e-018 64 -2.2545394484989799e-018
		 65 -2.2545394484989799e-018 66 -2.2545394484989799e-018 67 -2.2545394484989799e-018
		 68 -2.2545394484989799e-018 69 -2.2545394484989799e-018 70 -2.2545394484989799e-018
		 71 -2.2545394484989799e-018 72 -2.2545394484989799e-018 73 -2.2545394484989799e-018
		 74 -2.2545394484989799e-018 75 -2.2545394484989799e-018 76 -2.2545394484989799e-018
		 90 -2.2545394484989799e-018 91 -2.2545394484989799e-018 92 -2.2545394484989799e-018
		 94 -2.2545394484989799e-018 95 -2.2545394484989799e-018 96 -2.2545394484989799e-018
		 97 -2.2545394484989799e-018 98 -2.2545394484989799e-018 99 -2.2545394484989799e-018
		 100 -2.2545394484989799e-018 101 -2.2545394484989799e-018 102 -2.2545394484989799e-018
		 109 -2.2545394484989799e-018 110 -2.2545394484989799e-018 112 -2.2545394484989799e-018
		 114 -2.2545394484989799e-018;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail5_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 11 0 12 0 20 0 21 0 28 0 31 0 32 0
		 35 0 41 0 43 0 45 0 47 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0
		 110 0 112 0 114 0;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail5_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0.12934014923223719 2 0.12934014923223719
		 11 0.12934014923223719 12 0.12934014923223719 20 0.12934014923223719 21 0.12934014923223719
		 28 0.12934014923223719 31 0.12934014923223719 32 0.12934014923223719 35 0.12934014923223719
		 41 0.12934014923223719 43 0.12934014923223719 45 0.12934014923223719 47 0.12934014923223719
		 61 0.12934014923223719 63 0.12934014923223719 64 0.12934014923223719 65 0.12934014923223719
		 66 0.12934014923223719 67 0.12934014923223719 68 0.12934014923223719 69 0.12934014923223719
		 70 0.12934014923223719 71 0.12934014923223719 72 0.12934014923223719 73 0.12934014923223719
		 74 0.12934014923223719 75 0.12934014923223719 76 0.12934014923223719 90 0.12934014923223719
		 91 0.12934014923223719 92 0.12934014923223719 94 0.12934014923223719 95 0.12934014923223719
		 96 0.12934014923223719 97 0.12934014923223719 98 0.12934014923223719 99 0.12934014923223719
		 100 0.12934014923223719 101 0.12934014923223719 102 0.12934014923223719 109 0.12934014923223719
		 110 0.12934014923223719 112 0.12934014923223719 114 0.12934014923223719;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail5_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 1 2 1 11 1 12 1 20 1 21 1 28 1 31 1 32 1
		 35 1 41 1 43 1 45 1 47 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 109 1
		 110 1 112 1 114 1;
	setAttr -s 45 ".kit[0:44]"  9 9 1 1 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail5_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 11 0 12 0 20 0 21 0 28 6.7517135821055962
		 31 0 32 27.415462937222919 35 44.363757163707177 41 29.778600933637225 43 41.253385346233344
		 45 41.253385346233344 47 6.9662737593538484 61 6.9662737593538484 63 6.9662737593538484
		 64 24.217719855495901 65 6.9662737593538484 66 27.361624258910091 67 6.9662737593538484
		 68 18.033777879579855 69 6.9662737593538484 70 20.559658770471419 71 6.9662737593538484
		 72 25.685107366950582 73 6.9662737593538484 74 19.750117154013484 75 6.9662737593538484
		 76 0 90 0 91 6.9662737593538484 92 6.9662737593538484 94 31.396381359655695 95 6.9662737593538484
		 96 19.181327559504773 97 31.396381359655695 98 6.9662737593538484 99 19.181327559504773
		 100 31.396381359655695 101 6.9662737593538484 102 0 109 0 110 6.9662737593538484
		 112 41.705291522747373 114 41.705291522747373;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 0.21043035387992859 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.23498408496379852 1 1 1 1 1 1 0.1918119490146637 1 
		1 0.19181142747402191 1 0.15034805238246918 1 1 0.16925062239170074 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0.97760879993438721 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.97199922800064087 0 0 0 0 0 0 0.98143172264099121 
		0 0 0.98143178224563599 0 -0.98863315582275391 0 0 0.98557305335998535 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 0.21043035387992859 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.23498408496379852 1 1 1 1 1 1 0.19181196391582489 1 
		1 0.19181142747402191 1 0.15034805238246918 1 1 0.16925062239170074 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0.97760879993438721 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.97199922800064087 0 0 0 0 0 0 0.98143172264099121 
		0 0 0.98143178224563599 0 -0.98863315582275391 0 0 0.98557305335998535 0 0;
createNode animCurveTA -n "tail5_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 11 0 12 0 20 0 21 0 28 0 31 0 32 0
		 35 0 41 0 43 0 45 0 47 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0
		 110 0 112 0 114 0;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail5_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  1 0 2 0 11 0 12 0 20 0 21 0 28 0 31 0 32 0
		 35 0 41 0 43 0 45 0 47 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 109 0
		 110 0 112 0 114 0;
	setAttr -s 45 ".kit[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kot[2:44]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 45 ".kix[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[2:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[2:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail6_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 92 1 95 1 96 1 97 1
		 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail6_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 92 1 95 1 96 1 97 1
		 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail6_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 92 1 95 1 96 1 97 1
		 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail6_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 6.4657234609901286e-017 2 6.4657234609901286e-017
		 11 6.4657234609901286e-017 12 6.4657234609901286e-017 20 6.4657234609901286e-017
		 21 6.4657234609901286e-017 61 6.4657234609901286e-017 63 6.4657234609901286e-017
		 64 6.4657234609901286e-017 65 6.4657234609901286e-017 66 6.4657234609901286e-017
		 67 6.4657234609901286e-017 68 6.4657234609901286e-017 69 6.4657234609901286e-017
		 70 6.4657234609901286e-017 71 6.4657234609901286e-017 72 6.4657234609901286e-017
		 73 6.4657234609901286e-017 74 6.4657234609901286e-017 75 6.4657234609901286e-017
		 76 6.4657234609901286e-017 90 6.4657234609901286e-017 92 6.4657234609901286e-017
		 95 6.4657234609901286e-017 96 6.4657234609901286e-017 97 6.4657234609901286e-017
		 98 6.4657234609901286e-017 99 6.4657234609901286e-017 100 6.4657234609901286e-017
		 101 6.4657234609901286e-017 102 6.4657234609901286e-017 109 6.4657234609901286e-017
		 110 6.4657234609901286e-017 112 6.4657234609901286e-017 114 6.4657234609901286e-017;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail6_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 -1.7347234759768071e-018 2 -1.7347234759768071e-018
		 11 -1.7347234759768071e-018 12 -1.7347234759768071e-018 20 -1.7347234759768071e-018
		 21 -1.7347234759768071e-018 61 -1.7347234759768071e-018 63 -1.7347234759768071e-018
		 64 -1.7347234759768071e-018 65 -1.7347234759768071e-018 66 -1.7347234759768071e-018
		 67 -1.7347234759768071e-018 68 -1.7347234759768071e-018 69 -1.7347234759768071e-018
		 70 -1.7347234759768071e-018 71 -1.7347234759768071e-018 72 -1.7347234759768071e-018
		 73 -1.7347234759768071e-018 74 -1.7347234759768071e-018 75 -1.7347234759768071e-018
		 76 -1.7347234759768071e-018 90 -1.7347234759768071e-018 92 -1.7347234759768071e-018
		 95 -1.7347234759768071e-018 96 -1.7347234759768071e-018 97 -1.7347234759768071e-018
		 98 -1.7347234759768071e-018 99 -1.7347234759768071e-018 100 -1.7347234759768071e-018
		 101 -1.7347234759768071e-018 102 -1.7347234759768071e-018 109 -1.7347234759768071e-018
		 110 -1.7347234759768071e-018 112 -1.7347234759768071e-018 114 -1.7347234759768071e-018;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "tail6_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0.14843216722634478 2 0.14843216722634478
		 11 0.14843216722634478 12 0.14843216722634478 20 0.14843216722634478 21 0.14843216722634478
		 61 0.14843216722634478 63 0.14843216722634478 64 0.14843216722634478 65 0.14843216722634478
		 66 0.14843216722634478 67 0.14843216722634478 68 0.14843216722634478 69 0.14843216722634478
		 70 0.14843216722634478 71 0.14843216722634478 72 0.14843216722634478 73 0.14843216722634478
		 74 0.14843216722634478 75 0.14843216722634478 76 0.14843216722634478 90 0.14843216722634478
		 92 0.14843216722634478 95 0.14843216722634478 96 0.14843216722634478 97 0.14843216722634478
		 98 0.14843216722634478 99 0.14843216722634478 100 0.14843216722634478 101 0.14843216722634478
		 102 0.14843216722634478 109 0.14843216722634478 110 0.14843216722634478 112 0.14843216722634478
		 114 0.14843216722634478;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "tail6_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 1 2 1 11 1 12 1 20 1 21 1 61 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 92 1 95 1 96 1 97 1
		 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 35 ".kit[0:34]"  9 9 1 1 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail6_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 92 0 95 0 96 0 97 0
		 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail6_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 92 0 95 0 96 0 97 0
		 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "tail6_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0 2 0 11 0 12 0 20 0 21 0 61 0 63 0 64 0
		 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 92 0 95 0 96 0 97 0
		 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
	setAttr -s 35 ".kit[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[2:34]"  1 1 1 1 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[2:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[2:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 20 1 21 1 27 1 28 1 30 1 33 1 36 1
		 41 1 43 1 46 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 20 1 21 1 27 1 28 1 30 1 33 1 36 1
		 41 1 43 1 46 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 20 1 21 1 27 1 28 1 30 1 33 1 36 1
		 41 1 43 1 46 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "joint1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 13.319966822379866 2 13.764432130362886
		 20 14.712275589098002 21 1.8981588439006311e-017 27 1.8981588439006311e-017 28 1.8981588439006311e-017
		 30 1.8981588439006311e-017 33 1.8981588439006311e-017 36 1.8981588439006311e-017
		 41 1.8981588439006311e-017 43 1.8981588439006311e-017 46 1.8981588439006311e-017
		 48 13.319966822379866 60 13.319966822379866 61 1.8981588439006311e-017 63 2.2411637858535754e-017
		 64 2.2411637858535754e-017 65 2.2411637858535754e-017 66 2.2411637858535754e-017
		 67 2.2411637858535754e-017 68 2.2411637858535754e-017 69 2.2411637858535754e-017
		 70 2.2411637858535754e-017 71 2.2411637858535754e-017 72 2.2411637858535754e-017
		 73 2.2411637858535754e-017 74 2.2411637858535754e-017 75 2.2411637858535754e-017
		 76 13.319966822379866 90 13.319966822379866 91 1.8981588439006311e-017 92 1.1932296763385315e-017
		 93 5.4227407441158828e-018 94 8.7098357924281153e-018 95 1.2494695457248457e-017
		 96 3.6516025828396644e-018 97 7.6949985570800255e-018 98 1.2213496110316917e-017
		 99 4.7763999705659444e-018 100 7.6949985570799962e-018 101 1.2061564918095314e-017
		 102 13.319966822379866 109 13.319966822379866 110 1.8981588439006311e-017 112 2.7420612364828479e-018
		 114 -3.2533805812550878e-018 115 -2.1682116425489963e-018 116 -3.2533805812550878e-018
		 117 -2.1682116425489963e-018 118 -3.2533805812550878e-018 119 -2.1682116425489963e-018
		 120 -3.2533805812550878e-018 121 -2.1682116425489963e-018 122 -3.2533805812550878e-018;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "joint1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 -0.30080730057064875 2 -0.30080730057064875
		 20 -0.30080730057064875 21 -0.17097094924161793 27 -0.17097094924161793 28 -0.17097094924161793
		 30 -0.17097094924161793 33 -0.17097094924161793 36 -0.17097094924161793 41 -0.17097094924161793
		 43 -0.17097094924161793 46 -0.17097094924161793 48 -0.30080730057064875 60 -0.30080730057064875
		 61 -0.17097094924161793 63 -0.20186608781692816 64 -0.20186608781692816 65 -0.20186608781692816
		 66 -0.20186608781692816 67 -0.20186608781692816 68 -0.20186608781692816 69 -0.20186608781692816
		 70 -0.20186608781692816 71 -0.20186608781692816 72 -0.20186608781692816 73 -0.20186608781692816
		 74 -0.20186608781692816 75 -0.20186608781692816 76 -0.30080730057064875 90 -0.30080730057064875
		 91 -0.17097094924161793 92 -0.10747657451451265 93 -0.048843706389054289 94 -0.078451226458475021
		 95 -0.1125422116107441 96 -0.032890712062763866 97 -0.069310385268564367 98 -0.1100093930626287
		 99 -0.04302198625522663 100 -0.06931038526856409 101 -0.10864091854127832 102 -0.30080730057064875
		 109 -0.30080730057064875 110 -0.17097094924161793 112 -0.024698291925702526 114 0.0046055552211670993
		 115 -0.0051687776348144556 116 0.0046055552211670993 117 -0.0051687776348144556 118 0.0046055552211670993
		 119 -0.0051687776348144556 120 0.0046055552211670993 121 -0.0051687776348144556 122 0.0046055552211670993;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.39583352208137512 
		0.56363540887832642 1 0.79448163509368896 1 1 0.73394489288330078 1 1 0.78566467761993408 
		0.33870002627372742 1 1 0.41242405772209167 0.68846464157104492 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91832232475280762 
		0.82602369785308838 0 -0.60728812217712402 0 0 -0.67920905351638794 0 0 -0.6186525821685791 
		-0.94089436531066895 0 0 0.91099196672439575 0.72526997327804565 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.39583352208137512 
		0.56363540887832642 1 0.79448169469833374 1 1 0.73394489288330078 1 1 0.78566467761993408 
		0.3387000560760498 1 1 0.41242405772209167 0.68846464157104492 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91832226514816284 
		0.8260236382484436 0 -0.60728812217712402 0 0 -0.67920905351638794 0 0 -0.61865252256393433 
		-0.94089442491531372 0 0 0.91099196672439575 0.72526991367340088 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "joint1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0.21082637577988031 2 0.21082637577987937
		 20 0.21082637577987975 21 0.31621217513754529 27 0.31621217513754529 28 0.31621217513754529
		 30 0.31621217513754529 33 0.31621217513754529 36 0.31621217513754529 41 0.31621217513754529
		 43 0.31621217513754529 46 0.31621217513754529 48 0.21082637577988031 60 0.21082637577988031
		 61 0.31621217513754529 63 0.18179867151435605 64 0.18179867151435605 65 0.18179867151435605
		 66 0.18179867151435605 67 0.18179867151435605 68 0.18179867151435605 69 0.18179867151435605
		 70 0.18179867151435605 71 0.18179867151435605 72 0.18179867151435605 73 0.18179867151435605
		 74 0.18179867151435605 75 0.18179867151435605 76 0.21082637577988031 90 0.21082637577988031
		 91 0.31621217513754529 92 0.3256175857627816 93 0.32547389420893796 94 0.32427933071180193
		 95 0.32678192978954701 96 0.34847339163656321 97 0.34084471652184573 98 0.32619975777616417
		 99 0.35080207969009441 100 0.34084471652184561 101 0.3205519486665499 102 0.21082637577988031
		 109 0.21082637577988031 110 0.31621217513754529 112 0.39199534981238793 114 0.35391997147040399
		 115 0.31139540659268988 116 0.35391997147040399 117 0.31139540659268988 118 0.35391997147040399
		 119 0.31139540659268988 120 0.35391997147040399 121 0.31139540659268988 122 0.35391997147040399;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.82800602912902832 
		1 0.9999464750289917 1 0.98415112495422363 1 0.96608650684356689 1 1 0.93998509645462036 
		0.5648077130317688 1 1 0.5679050087928772 1 0.84043514728546143 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.56071919202804565 
		0 -0.010345218703150749 0 0.17733204364776611 0 -0.25821858644485474 0 0 -0.34121543169021606 
		-0.82522255182266235 0 0 0.82309412956237793 0 -0.54191219806671143 0 0 0 0 0 0 0 
		0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.8280060887336731 
		1 0.9999464750289917 1 0.98415112495422363 1 0.96608656644821167 1 1 0.93998509645462036 
		0.56480777263641357 1 1 0.56790494918823242 1 0.84043508768081665 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.56071919202804565 
		0 -0.010345218703150749 0 0.17733204364776611 0 -0.25821861624717712 0 0 -0.34121540188789368 
		-0.82522261142730713 0 0 0.82309412956237793 0 -0.54191213846206665 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "joint1_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 1 2 1 20 1 21 1 27 1 28 1 30 1 33 1 36 1
		 41 1 43 1 46 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1
		 74 1 75 1 76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1
		 109 1 110 1 112 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1;
	setAttr -s 54 ".kit[0:53]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 1 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "joint1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 20 0 21 0 27 -1.133077209287811
		 28 -7.1213262629585801 30 -2.2986566406215077 33 5.2802107241027922 36 -2.1724700204878991
		 41 -11.877314028475119 43 -0.25724205655428495 46 -2.027086496446564 48 0 60 0 61 -2.027086496446564
		 63 -2.027086496446564 64 -2.027086496446564 65 -2.027086496446564 66 -2.027086496446564
		 67 -2.027086496446564 68 -2.027086496446564 69 -2.027086496446564 70 -2.027086496446564
		 71 -2.027086496446564 72 -2.027086496446564 73 -2.027086496446564 74 -2.027086496446564
		 75 -2.027086496446564 76 0 90 0 91 -2.027086496446564 92 57.78622282977372 93 57.78622282977372
		 94 57.78622282977372 95 57.78622282977372 96 57.78622282977372 97 57.78622282977372
		 98 57.78622282977372 99 57.78622282977372 100 57.78622282977372 101 57.78622282977372
		 102 0 109 0 110 -2.027086496446564 112 88.036296358635354 114 167.46841715963276
		 115 167.46841715963276 116 167.46841715963276 117 167.46841715963276 118 167.46841715963276
		 119 167.46841715963276 120 167.46841715963276 121 167.46841715963276 122 167.46841715963276;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.056250270456075668 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.9984167218208313 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.056250270456075668 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.9984167218208313 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "joint1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 20 0 21 0 27 0 28 0 30 0 33 0 36 0
		 41 0 43 0 46 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0
		 109 0 110 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "joint1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  1 0 2 0 20 0 21 0 27 0 28 0 30 0 33 0 36 0
		 41 0 43 0 46 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0
		 74 0 75 0 76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0
		 109 0 110 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0;
	setAttr -s 54 ".kit[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kot[12:53]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[12:53]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[12:53]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1
		 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "joint2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1
		 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "joint2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1
		 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "joint2_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 1 48 1 60 1 61 1 63 1 64 1 65 1 66 1 67 1
		 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 90 1 91 1 92 1 102 1 109 1 110 1 112 1
		 114 1;
	setAttr -s 26 ".kit[0:25]"  9 1 1 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "joint2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 9.8399233428474565e-018 48 9.8399233428474565e-018
		 60 9.8399233428474565e-018 61 9.8399233428474565e-018 63 9.8399233428474565e-018
		 64 9.8399233428474565e-018 65 9.8399233428474565e-018 66 9.8399233428474565e-018
		 67 9.8399233428474565e-018 68 9.8399233428474565e-018 69 9.8399233428474565e-018
		 70 9.8399233428474565e-018 71 9.8399233428474565e-018 72 9.8399233428474565e-018
		 73 9.8399233428474565e-018 74 9.8399233428474565e-018 75 9.8399233428474565e-018
		 76 9.8399233428474565e-018 90 9.8399233428474565e-018 91 9.8399233428474565e-018
		 92 9.8399233428474565e-018 102 9.8399233428474565e-018 109 9.8399233428474565e-018
		 110 9.8399233428474565e-018 112 9.8399233428474565e-018 114 9.8399233428474565e-018;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "joint2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 2.2204460492503131e-016 48 2.2204460492503131e-016
		 60 2.2204460492503131e-016 61 2.2204460492503131e-016 63 2.2204460492503131e-016
		 64 2.2204460492503131e-016 65 2.2204460492503131e-016 66 2.2204460492503131e-016
		 67 2.2204460492503131e-016 68 2.2204460492503131e-016 69 2.2204460492503131e-016
		 70 2.2204460492503131e-016 71 2.2204460492503131e-016 72 2.2204460492503131e-016
		 73 2.2204460492503131e-016 74 2.2204460492503131e-016 75 2.2204460492503131e-016
		 76 2.2204460492503131e-016 90 2.2204460492503131e-016 91 2.2204460492503131e-016
		 92 2.2204460492503131e-016 102 2.2204460492503131e-016 109 2.2204460492503131e-016
		 110 2.2204460492503131e-016 112 2.2204460492503131e-016 114 2.2204460492503131e-016;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "joint2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0.37860862041172577 48 0.37860862041172577
		 60 0.37860862041172577 61 0.37860862041172577 63 0.37860862041172577 64 0.37860862041172577
		 65 0.37860862041172577 66 0.37860862041172577 67 0.37860862041172577 68 0.37860862041172577
		 69 0.37860862041172577 70 0.37860862041172577 71 0.37860862041172577 72 0.37860862041172577
		 73 0.37860862041172577 74 0.37860862041172577 75 0.37860862041172577 76 0.37860862041172577
		 90 0.37860862041172577 91 0.37860862041172577 92 0.37860862041172577 102 0.37860862041172577
		 109 0.37860862041172577 110 0.37860862041172577 112 0.37860862041172577 114 0.37860862041172577;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "joint2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0
		 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "joint2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0
		 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "joint2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 48 0 60 0 61 0 63 0 64 0 65 0 66 0 67 0
		 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 90 0 91 0 92 0 102 0 109 0 110 0 112 0
		 114 0;
	setAttr -s 26 ".kit[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kot[1:25]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 26 ".kix[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".kiy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 26 ".kox[1:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 26 ".koy[1:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "L_eye_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0.13935877558170373 90 0.13935877558170373
		 91 0.13935877558170373 92 0.13935877558170373 93 0.13935877558170373 94 0.13935877558170373
		 95 0.13935877558170373 96 0.13935877558170373 97 0.13935877558170373 98 0.13935877558170373
		 99 0.13935877558170373 100 0.13935877558170373 101 0.13935877558170373 102 0.13935877558170373
		 109 0.13935877558170373 110 0.13935877558170373 112 0.13935877558170373 114 0.13935877558170373;
createNode animCurveTL -n "L_eye_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 -0.10831281626936548 90 -0.10831281626936548
		 91 -0.10831281626936548 92 -0.10831281626936548 93 -0.10831281626936548 94 -0.10831281626936548
		 95 -0.10831281626936548 96 -0.10831281626936548 97 -0.10831281626936548 98 -0.10831281626936548
		 99 -0.10831281626936548 100 -0.10831281626936548 101 -0.10831281626936548 102 -0.10831281626936548
		 109 -0.10831281626936548 110 -0.10831281626936548 112 -0.10831281626936548 114 -0.10831281626936548;
createNode animCurveTL -n "L_eye_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 -0.073753634825455466 90 -0.073753634825455466
		 91 -0.073753634825455466 92 -0.073753634825455466 93 -0.073753634825455466 94 -0.073753634825455466
		 95 -0.073753634825455466 96 -0.073753634825455466 97 -0.073753634825455466 98 -0.073753634825455466
		 99 -0.073753634825455466 100 -0.073753634825455466 101 -0.073753634825455466 102 -0.073753634825455466
		 109 -0.073753634825455466 110 -0.073753634825455466 112 -0.073753634825455466 114 -0.073753634825455466;
createNode animCurveTL -n "R_eye_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0.13106895411938232 90 0.13106895411938232
		 91 0.13106895411938232 92 0.13106895411938232 93 0.13106895411938232 94 0.13106895411938232
		 95 0.13106895411938232 96 0.13106895411938232 97 0.13106895411938232 98 0.13106895411938232
		 99 0.13106895411938232 100 0.13106895411938232 101 0.13106895411938232 102 0.13106895411938232
		 109 0.13106895411938232 110 0.13106895411938232 112 0.13106895411938232 114 0.13106895411938232;
createNode animCurveTL -n "R_eye_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 -0.10874522441116374 90 -0.10874522441116374
		 91 -0.10874522441116374 92 -0.10874522441116374 93 -0.10874522441116374 94 -0.10874522441116374
		 95 -0.10874522441116374 96 -0.10874522441116374 97 -0.10874522441116374 98 -0.10874522441116374
		 99 -0.10874522441116374 100 -0.10874522441116374 101 -0.10874522441116374 102 -0.10874522441116374
		 109 -0.10874522441116374 110 -0.10874522441116374 112 -0.10874522441116374 114 -0.10874522441116374;
createNode animCurveTL -n "R_eye_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0.082168863788203206 90 0.082168863788203206
		 91 0.082168863788203206 92 0.082168863788203206 93 0.082168863788203206 94 0.082168863788203206
		 95 0.082168863788203206 96 0.082168863788203206 97 0.082168863788203206 98 0.082168863788203206
		 99 0.082168863788203206 100 0.082168863788203206 101 0.082168863788203206 102 0.082168863788203206
		 109 0.082168863788203206 110 0.082168863788203206 112 0.082168863788203206 114 0.082168863788203206;
createNode animCurveTU -n "R_eye_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "R_eye_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTA -n "R_eye_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTA -n "R_eye_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTU -n "R_eye_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
createNode animCurveTU -n "R_eye_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
createNode animCurveTU -n "R_eye_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
createNode animCurveTU -n "L_eye_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "L_eye_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTA -n "L_eye_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTA -n "L_eye_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0
		 97 0 98 0 99 0 100 0 101 0 102 0 109 0 110 0 112 0 114 0;
createNode animCurveTU -n "L_eye_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
createNode animCurveTU -n "L_eye_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
createNode animCurveTU -n "L_eye_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  76 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1
		 97 1 98 1 99 1 100 1 101 1 102 1 109 1 110 1 112 1 114 1;
select -ne :time1;
	setAttr ".o" 122;
	setAttr ".unw" 122;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
	setAttr -s 2 ".t";
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".outf" 32;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ef" 15;
	setAttr ".ep" 1;
	setAttr ".pff" yes;
	setAttr ".peie" 2;
	setAttr ".mb" yes;
select -ne :defaultRenderQuality;
	setAttr ".rfl" 10;
	setAttr ".rfr" 10;
	setAttr ".sl" 10;
	setAttr ".eaa" 0;
	setAttr ".ufil" yes;
	setAttr ".ss" 3;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupParts6.og" "polySurfaceShape7.i";
connectAttr "groupId4.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId3.id" "polySurfaceShape7.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape7.iog.og[4].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape7.twl";
connectAttr "lowerBody_scaleX.o" "lowerBody.sx";
connectAttr "lowerBody_scaleY.o" "lowerBody.sy";
connectAttr "lowerBody_scaleZ.o" "lowerBody.sz";
connectAttr "lowerBody_rotateX.o" "lowerBody.rx";
connectAttr "lowerBody_rotateY.o" "lowerBody.ry";
connectAttr "lowerBody_rotateZ.o" "lowerBody.rz";
connectAttr "lowerBody_visibility.o" "lowerBody.v";
connectAttr "lowerBody_translateX.o" "lowerBody.tx";
connectAttr "lowerBody_translateY.o" "lowerBody.ty";
connectAttr "lowerBody_translateZ.o" "lowerBody.tz";
connectAttr "lowerBody.s" "upperbody.is";
connectAttr "upperbody_scaleX.o" "upperbody.sx";
connectAttr "upperbody_scaleY.o" "upperbody.sy";
connectAttr "upperbody_scaleZ.o" "upperbody.sz";
connectAttr "upperbody_rotateX.o" "upperbody.rx";
connectAttr "upperbody_rotateY.o" "upperbody.ry";
connectAttr "upperbody_rotateZ.o" "upperbody.rz";
connectAttr "upperbody_visibility.o" "upperbody.v";
connectAttr "upperbody_translateX.o" "upperbody.tx";
connectAttr "upperbody_translateY.o" "upperbody.ty";
connectAttr "upperbody_translateZ.o" "upperbody.tz";
connectAttr "upperbody.s" "chestAndShoulders.is";
connectAttr "chestAndShoulders_scaleX.o" "chestAndShoulders.sx";
connectAttr "chestAndShoulders_scaleY.o" "chestAndShoulders.sy";
connectAttr "chestAndShoulders_scaleZ.o" "chestAndShoulders.sz";
connectAttr "chestAndShoulders_rotateX.o" "chestAndShoulders.rx";
connectAttr "chestAndShoulders_rotateY.o" "chestAndShoulders.ry";
connectAttr "chestAndShoulders_rotateZ.o" "chestAndShoulders.rz";
connectAttr "chestAndShoulders_visibility.o" "chestAndShoulders.v";
connectAttr "chestAndShoulders_translateX.o" "chestAndShoulders.tx";
connectAttr "chestAndShoulders_translateY.o" "chestAndShoulders.ty";
connectAttr "chestAndShoulders_translateZ.o" "chestAndShoulders.tz";
connectAttr "chestAndShoulders.s" "neck.is";
connectAttr "neck_scaleX.o" "neck.sx";
connectAttr "neck_scaleY.o" "neck.sy";
connectAttr "neck_scaleZ.o" "neck.sz";
connectAttr "neck_rotateX.o" "neck.rx";
connectAttr "neck_rotateY.o" "neck.ry";
connectAttr "neck_rotateZ.o" "neck.rz";
connectAttr "neck_visibility.o" "neck.v";
connectAttr "neck_translateX.o" "neck.tx";
connectAttr "neck_translateY.o" "neck.ty";
connectAttr "neck_translateZ.o" "neck.tz";
connectAttr "neck.s" "head.is";
connectAttr "head_rotateX.o" "head.rx";
connectAttr "head_rotateY.o" "head.ry";
connectAttr "head_rotateZ.o" "head.rz";
connectAttr "head_visibility.o" "head.v";
connectAttr "head_translateX.o" "head.tx";
connectAttr "head_translateY.o" "head.ty";
connectAttr "head_translateZ.o" "head.tz";
connectAttr "head_scaleX.o" "head.sx";
connectAttr "head_scaleY.o" "head.sy";
connectAttr "head_scaleZ.o" "head.sz";
connectAttr "neck.s" "L_eye.is";
connectAttr "L_eye_scaleX.o" "L_eye.sx";
connectAttr "L_eye_scaleY.o" "L_eye.sy";
connectAttr "L_eye_scaleZ.o" "L_eye.sz";
connectAttr "L_eye_translateX.o" "L_eye.tx";
connectAttr "L_eye_translateY.o" "L_eye.ty";
connectAttr "L_eye_translateZ.o" "L_eye.tz";
connectAttr "L_eye_visibility.o" "L_eye.v";
connectAttr "L_eye_rotateX.o" "L_eye.rx";
connectAttr "L_eye_rotateY.o" "L_eye.ry";
connectAttr "L_eye_rotateZ.o" "L_eye.rz";
connectAttr "neck.s" "R_eye.is";
connectAttr "R_eye_translateX.o" "R_eye.tx";
connectAttr "R_eye_translateY.o" "R_eye.ty";
connectAttr "R_eye_translateZ.o" "R_eye.tz";
connectAttr "R_eye_visibility.o" "R_eye.v";
connectAttr "R_eye_rotateX.o" "R_eye.rx";
connectAttr "R_eye_rotateY.o" "R_eye.ry";
connectAttr "R_eye_rotateZ.o" "R_eye.rz";
connectAttr "R_eye_scaleX.o" "R_eye.sx";
connectAttr "R_eye_scaleY.o" "R_eye.sy";
connectAttr "R_eye_scaleZ.o" "R_eye.sz";
connectAttr "L_arm_scaleX.o" "L_arm.sx";
connectAttr "L_arm_scaleY.o" "L_arm.sy";
connectAttr "L_arm_scaleZ.o" "L_arm.sz";
connectAttr "chestAndShoulders.s" "L_arm.is";
connectAttr "L_arm_rotateX.o" "L_arm.rx";
connectAttr "L_arm_rotateY.o" "L_arm.ry";
connectAttr "L_arm_rotateZ.o" "L_arm.rz";
connectAttr "L_arm_visibility.o" "L_arm.v";
connectAttr "L_arm_translateX.o" "L_arm.tx";
connectAttr "L_arm_translateY.o" "L_arm.ty";
connectAttr "L_arm_translateZ.o" "L_arm.tz";
connectAttr "L_arm.s" "L_forearm.is";
connectAttr "L_forearm_scaleX.o" "L_forearm.sx";
connectAttr "L_forearm_scaleY.o" "L_forearm.sy";
connectAttr "L_forearm_scaleZ.o" "L_forearm.sz";
connectAttr "L_forearm_rotateX.o" "L_forearm.rx";
connectAttr "L_forearm_rotateY.o" "L_forearm.ry";
connectAttr "L_forearm_rotateZ.o" "L_forearm.rz";
connectAttr "L_forearm_visibility.o" "L_forearm.v";
connectAttr "L_forearm_translateX.o" "L_forearm.tx";
connectAttr "L_forearm_translateY.o" "L_forearm.ty";
connectAttr "L_forearm_translateZ.o" "L_forearm.tz";
connectAttr "L_forearm.s" "L_hand.is";
connectAttr "L_hand_scaleX.o" "L_hand.sx";
connectAttr "L_hand_scaleY.o" "L_hand.sy";
connectAttr "L_hand_scaleZ.o" "L_hand.sz";
connectAttr "L_hand_rotateX.o" "L_hand.rx";
connectAttr "L_hand_rotateY.o" "L_hand.ry";
connectAttr "L_hand_rotateZ.o" "L_hand.rz";
connectAttr "L_hand_visibility.o" "L_hand.v";
connectAttr "L_hand_translateX.o" "L_hand.tx";
connectAttr "L_hand_translateY.o" "L_hand.ty";
connectAttr "L_hand_translateZ.o" "L_hand.tz";
connectAttr "L_hand.s" "L_tip.is";
connectAttr "L_tip_rotateX.o" "L_tip.rx";
connectAttr "L_tip_rotateY.o" "L_tip.ry";
connectAttr "L_tip_rotateZ.o" "L_tip.rz";
connectAttr "L_tip_visibility.o" "L_tip.v";
connectAttr "L_tip_translateX.o" "L_tip.tx";
connectAttr "L_tip_translateY.o" "L_tip.ty";
connectAttr "L_tip_translateZ.o" "L_tip.tz";
connectAttr "L_tip_scaleX.o" "L_tip.sx";
connectAttr "L_tip_scaleY.o" "L_tip.sy";
connectAttr "L_tip_scaleZ.o" "L_tip.sz";
connectAttr "R_arm_scaleX.o" "R_arm.sx";
connectAttr "R_arm_scaleY.o" "R_arm.sy";
connectAttr "R_arm_scaleZ.o" "R_arm.sz";
connectAttr "chestAndShoulders.s" "R_arm.is";
connectAttr "R_arm_rotateX.o" "R_arm.rx";
connectAttr "R_arm_rotateY.o" "R_arm.ry";
connectAttr "R_arm_rotateZ.o" "R_arm.rz";
connectAttr "R_arm_visibility.o" "R_arm.v";
connectAttr "R_arm_translateX.o" "R_arm.tx";
connectAttr "R_arm_translateY.o" "R_arm.ty";
connectAttr "R_arm_translateZ.o" "R_arm.tz";
connectAttr "R_arm.s" "R_forearm.is";
connectAttr "R_forearm_scaleX.o" "R_forearm.sx";
connectAttr "R_forearm_scaleY.o" "R_forearm.sy";
connectAttr "R_forearm_scaleZ.o" "R_forearm.sz";
connectAttr "R_forearm_rotateX.o" "R_forearm.rx";
connectAttr "R_forearm_rotateY.o" "R_forearm.ry";
connectAttr "R_forearm_rotateZ.o" "R_forearm.rz";
connectAttr "R_forearm_visibility.o" "R_forearm.v";
connectAttr "R_forearm_translateX.o" "R_forearm.tx";
connectAttr "R_forearm_translateY.o" "R_forearm.ty";
connectAttr "R_forearm_translateZ.o" "R_forearm.tz";
connectAttr "R_forearm.s" "R_hand.is";
connectAttr "R_hand_scaleX.o" "R_hand.sx";
connectAttr "R_hand_scaleY.o" "R_hand.sy";
connectAttr "R_hand_scaleZ.o" "R_hand.sz";
connectAttr "R_hand_rotateX.o" "R_hand.rx";
connectAttr "R_hand_rotateY.o" "R_hand.ry";
connectAttr "R_hand_rotateZ.o" "R_hand.rz";
connectAttr "R_hand_visibility.o" "R_hand.v";
connectAttr "R_hand_translateX.o" "R_hand.tx";
connectAttr "R_hand_translateY.o" "R_hand.ty";
connectAttr "R_hand_translateZ.o" "R_hand.tz";
connectAttr "R_hand.s" "R_tip.is";
connectAttr "R_tip_rotateX.o" "R_tip.rx";
connectAttr "R_tip_rotateY.o" "R_tip.ry";
connectAttr "R_tip_rotateZ.o" "R_tip.rz";
connectAttr "R_tip_visibility.o" "R_tip.v";
connectAttr "R_tip_translateX.o" "R_tip.tx";
connectAttr "R_tip_translateY.o" "R_tip.ty";
connectAttr "R_tip_translateZ.o" "R_tip.tz";
connectAttr "R_tip_scaleX.o" "R_tip.sx";
connectAttr "R_tip_scaleY.o" "R_tip.sy";
connectAttr "R_tip_scaleZ.o" "R_tip.sz";
connectAttr "L_thigh_scaleX.o" "L_thigh.sx";
connectAttr "L_thigh_scaleY.o" "L_thigh.sy";
connectAttr "L_thigh_scaleZ.o" "L_thigh.sz";
connectAttr "lowerBody.s" "L_thigh.is";
connectAttr "L_thigh_rotateX.o" "L_thigh.rx";
connectAttr "L_thigh_rotateY.o" "L_thigh.ry";
connectAttr "L_thigh_rotateZ.o" "L_thigh.rz";
connectAttr "L_thigh_visibility.o" "L_thigh.v";
connectAttr "L_thigh_translateX.o" "L_thigh.tx";
connectAttr "L_thigh_translateY.o" "L_thigh.ty";
connectAttr "L_thigh_translateZ.o" "L_thigh.tz";
connectAttr "L_thigh.s" "L_leg.is";
connectAttr "L_leg_scaleX.o" "L_leg.sx";
connectAttr "L_leg_scaleY.o" "L_leg.sy";
connectAttr "L_leg_scaleZ.o" "L_leg.sz";
connectAttr "L_leg_rotateX.o" "L_leg.rx";
connectAttr "L_leg_rotateY.o" "L_leg.ry";
connectAttr "L_leg_rotateZ.o" "L_leg.rz";
connectAttr "L_leg_visibility.o" "L_leg.v";
connectAttr "L_leg_translateX.o" "L_leg.tx";
connectAttr "L_leg_translateY.o" "L_leg.ty";
connectAttr "L_leg_translateZ.o" "L_leg.tz";
connectAttr "L_leg.s" "L_foot.is";
connectAttr "L_foot_scaleX.o" "L_foot.sx";
connectAttr "L_foot_scaleY.o" "L_foot.sy";
connectAttr "L_foot_scaleZ.o" "L_foot.sz";
connectAttr "L_foot_rotateX.o" "L_foot.rx";
connectAttr "L_foot_rotateY.o" "L_foot.ry";
connectAttr "L_foot_rotateZ.o" "L_foot.rz";
connectAttr "L_foot_visibility.o" "L_foot.v";
connectAttr "L_foot_translateX.o" "L_foot.tx";
connectAttr "L_foot_translateY.o" "L_foot.ty";
connectAttr "L_foot_translateZ.o" "L_foot.tz";
connectAttr "L_foot.s" "L_toe.is";
connectAttr "L_toe_rotateX.o" "L_toe.rx";
connectAttr "L_toe_rotateY.o" "L_toe.ry";
connectAttr "L_toe_rotateZ.o" "L_toe.rz";
connectAttr "L_toe_visibility.o" "L_toe.v";
connectAttr "L_toe_translateX.o" "L_toe.tx";
connectAttr "L_toe_translateY.o" "L_toe.ty";
connectAttr "L_toe_translateZ.o" "L_toe.tz";
connectAttr "L_toe_scaleX.o" "L_toe.sx";
connectAttr "L_toe_scaleY.o" "L_toe.sy";
connectAttr "L_toe_scaleZ.o" "L_toe.sz";
connectAttr "R_thigh_scaleX.o" "R_thigh.sx";
connectAttr "R_thigh_scaleY.o" "R_thigh.sy";
connectAttr "R_thigh_scaleZ.o" "R_thigh.sz";
connectAttr "lowerBody.s" "R_thigh.is";
connectAttr "R_thigh_rotateX.o" "R_thigh.rx";
connectAttr "R_thigh_rotateY.o" "R_thigh.ry";
connectAttr "R_thigh_rotateZ.o" "R_thigh.rz";
connectAttr "R_thigh_visibility.o" "R_thigh.v";
connectAttr "R_thigh_translateX.o" "R_thigh.tx";
connectAttr "R_thigh_translateY.o" "R_thigh.ty";
connectAttr "R_thigh_translateZ.o" "R_thigh.tz";
connectAttr "R_thigh.s" "R_leg.is";
connectAttr "R_leg_scaleX.o" "R_leg.sx";
connectAttr "R_leg_scaleY.o" "R_leg.sy";
connectAttr "R_leg_scaleZ.o" "R_leg.sz";
connectAttr "R_leg_rotateX.o" "R_leg.rx";
connectAttr "R_leg_rotateY.o" "R_leg.ry";
connectAttr "R_leg_rotateZ.o" "R_leg.rz";
connectAttr "R_leg_visibility.o" "R_leg.v";
connectAttr "R_leg_translateX.o" "R_leg.tx";
connectAttr "R_leg_translateY.o" "R_leg.ty";
connectAttr "R_leg_translateZ.o" "R_leg.tz";
connectAttr "R_leg.s" "R_foot.is";
connectAttr "R_foot_scaleX.o" "R_foot.sx";
connectAttr "R_foot_scaleY.o" "R_foot.sy";
connectAttr "R_foot_scaleZ.o" "R_foot.sz";
connectAttr "R_foot_rotateX.o" "R_foot.rx";
connectAttr "R_foot_rotateY.o" "R_foot.ry";
connectAttr "R_foot_rotateZ.o" "R_foot.rz";
connectAttr "R_foot_visibility.o" "R_foot.v";
connectAttr "R_foot_translateX.o" "R_foot.tx";
connectAttr "R_foot_translateY.o" "R_foot.ty";
connectAttr "R_foot_translateZ.o" "R_foot.tz";
connectAttr "R_foot.s" "R_toe.is";
connectAttr "R_toe_rotateX.o" "R_toe.rx";
connectAttr "R_toe_rotateY.o" "R_toe.ry";
connectAttr "R_toe_rotateZ.o" "R_toe.rz";
connectAttr "R_toe_visibility.o" "R_toe.v";
connectAttr "R_toe_translateX.o" "R_toe.tx";
connectAttr "R_toe_translateY.o" "R_toe.ty";
connectAttr "R_toe_translateZ.o" "R_toe.tz";
connectAttr "R_toe_scaleX.o" "R_toe.sx";
connectAttr "R_toe_scaleY.o" "R_toe.sy";
connectAttr "R_toe_scaleZ.o" "R_toe.sz";
connectAttr "tail1_scaleX.o" "tail1.sx";
connectAttr "tail1_scaleY.o" "tail1.sy";
connectAttr "tail1_scaleZ.o" "tail1.sz";
connectAttr "lowerBody.s" "tail1.is";
connectAttr "tail1_rotateX.o" "tail1.rx";
connectAttr "tail1_rotateY.o" "tail1.ry";
connectAttr "tail1_rotateZ.o" "tail1.rz";
connectAttr "tail1_visibility.o" "tail1.v";
connectAttr "tail1_translateX.o" "tail1.tx";
connectAttr "tail1_translateY.o" "tail1.ty";
connectAttr "tail1_translateZ.o" "tail1.tz";
connectAttr "tail1.s" "tail2.is";
connectAttr "tail2_scaleX.o" "tail2.sx";
connectAttr "tail2_scaleY.o" "tail2.sy";
connectAttr "tail2_scaleZ.o" "tail2.sz";
connectAttr "tail2_rotateX.o" "tail2.rx";
connectAttr "tail2_rotateY.o" "tail2.ry";
connectAttr "tail2_rotateZ.o" "tail2.rz";
connectAttr "tail2_visibility.o" "tail2.v";
connectAttr "tail2_translateX.o" "tail2.tx";
connectAttr "tail2_translateY.o" "tail2.ty";
connectAttr "tail2_translateZ.o" "tail2.tz";
connectAttr "tail2.s" "tail3.is";
connectAttr "tail3_scaleX.o" "tail3.sx";
connectAttr "tail3_scaleY.o" "tail3.sy";
connectAttr "tail3_scaleZ.o" "tail3.sz";
connectAttr "tail3_rotateX.o" "tail3.rx";
connectAttr "tail3_rotateY.o" "tail3.ry";
connectAttr "tail3_rotateZ.o" "tail3.rz";
connectAttr "tail3_visibility.o" "tail3.v";
connectAttr "tail3_translateX.o" "tail3.tx";
connectAttr "tail3_translateY.o" "tail3.ty";
connectAttr "tail3_translateZ.o" "tail3.tz";
connectAttr "tail3.s" "tail4.is";
connectAttr "tail4_scaleX.o" "tail4.sx";
connectAttr "tail4_scaleY.o" "tail4.sy";
connectAttr "tail4_scaleZ.o" "tail4.sz";
connectAttr "tail4_rotateX.o" "tail4.rx";
connectAttr "tail4_rotateY.o" "tail4.ry";
connectAttr "tail4_rotateZ.o" "tail4.rz";
connectAttr "tail4_visibility.o" "tail4.v";
connectAttr "tail4_translateX.o" "tail4.tx";
connectAttr "tail4_translateY.o" "tail4.ty";
connectAttr "tail4_translateZ.o" "tail4.tz";
connectAttr "tail4.s" "tail5.is";
connectAttr "tail5_scaleX.o" "tail5.sx";
connectAttr "tail5_scaleY.o" "tail5.sy";
connectAttr "tail5_scaleZ.o" "tail5.sz";
connectAttr "tail5_rotateX.o" "tail5.rx";
connectAttr "tail5_rotateY.o" "tail5.ry";
connectAttr "tail5_rotateZ.o" "tail5.rz";
connectAttr "tail5_visibility.o" "tail5.v";
connectAttr "tail5_translateX.o" "tail5.tx";
connectAttr "tail5_translateY.o" "tail5.ty";
connectAttr "tail5_translateZ.o" "tail5.tz";
connectAttr "tail5.s" "tail6.is";
connectAttr "tail6_rotateX.o" "tail6.rx";
connectAttr "tail6_rotateY.o" "tail6.ry";
connectAttr "tail6_rotateZ.o" "tail6.rz";
connectAttr "tail6_visibility.o" "tail6.v";
connectAttr "tail6_translateX.o" "tail6.tx";
connectAttr "tail6_translateY.o" "tail6.ty";
connectAttr "tail6_translateZ.o" "tail6.tz";
connectAttr "tail6_scaleX.o" "tail6.sx";
connectAttr "tail6_scaleY.o" "tail6.sy";
connectAttr "tail6_scaleZ.o" "tail6.sz";
connectAttr "lowerBody.s" "Hammer.is";
connectAttr "joint1_scaleX.o" "Hammer.sx";
connectAttr "joint1_scaleY.o" "Hammer.sy";
connectAttr "joint1_scaleZ.o" "Hammer.sz";
connectAttr "joint1_visibility.o" "Hammer.v";
connectAttr "joint1_translateX.o" "Hammer.tx";
connectAttr "joint1_translateY.o" "Hammer.ty";
connectAttr "joint1_translateZ.o" "Hammer.tz";
connectAttr "joint1_rotateX.o" "Hammer.rx";
connectAttr "joint1_rotateY.o" "Hammer.ry";
connectAttr "joint1_rotateZ.o" "Hammer.rz";
connectAttr "Hammer.s" "joint2.is";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "polyTweakUV5.out" "polySurfaceShape8.i";
connectAttr "groupId9.id" "polySurfaceShape8.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape8.iog.og[2].gco";
connectAttr "skinCluster1GroupId.id" "polySurfaceShape8.iog.og[8].gid";
connectAttr "skinCluster1Set.mwc" "polySurfaceShape8.iog.og[8].gco";
connectAttr "groupId11.id" "polySurfaceShape8.iog.og[9].gid";
connectAttr "tweakSet2.mwc" "polySurfaceShape8.iog.og[9].gco";
connectAttr "tweak2.vl[0].vt[0]" "polySurfaceShape8.twl";
connectAttr "polyTweakUV5.uvtk[0]" "polySurfaceShape8.uvst[0].uvtw";
connectAttr "groupParts10.og" "polySurfaceShape8Orig.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOff.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOn.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polySurfaceShape7.iog" "tripleShadingSwitch1.i[0].is";
connectAttr "file1.oc" "tripleShadingSwitch1.i[0].it";
connectAttr "file2.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape8.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file2.msg" "materialInfo1.t" -na;
connectAttr "polySurfaceShape7Orig1.w" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "groupId9.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape7.iog.og[4]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "tweak1.og[0]" "groupParts4.ig";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId4.id" "groupParts6.gi";
connectAttr "groupParts12.og" "tweak2.ip[0].ig";
connectAttr "groupId11.id" "tweak2.ip[0].gi";
connectAttr "polySurfaceShape8Orig.w" "groupParts12.ig";
connectAttr "groupId11.id" "groupParts12.gi";
connectAttr "groupId11.msg" "tweakSet2.gn" -na;
connectAttr "polySurfaceShape8.iog.og[9]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "polyUnite1.out" "groupParts10.ig";
connectAttr "groupId9.id" "groupParts10.gi";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[0]";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "skinCluster1.og[0]" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV5.ip";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "lowerBody.wm" "skinCluster1.ma[0]";
connectAttr "upperbody.wm" "skinCluster1.ma[1]";
connectAttr "chestAndShoulders.wm" "skinCluster1.ma[2]";
connectAttr "neck.wm" "skinCluster1.ma[3]";
connectAttr "head.wm" "skinCluster1.ma[4]";
connectAttr "L_arm.wm" "skinCluster1.ma[5]";
connectAttr "L_forearm.wm" "skinCluster1.ma[6]";
connectAttr "L_hand.wm" "skinCluster1.ma[7]";
connectAttr "L_tip.wm" "skinCluster1.ma[8]";
connectAttr "R_arm.wm" "skinCluster1.ma[9]";
connectAttr "R_forearm.wm" "skinCluster1.ma[10]";
connectAttr "R_hand.wm" "skinCluster1.ma[11]";
connectAttr "R_tip.wm" "skinCluster1.ma[12]";
connectAttr "L_thigh.wm" "skinCluster1.ma[13]";
connectAttr "L_leg.wm" "skinCluster1.ma[14]";
connectAttr "L_foot.wm" "skinCluster1.ma[15]";
connectAttr "L_toe.wm" "skinCluster1.ma[16]";
connectAttr "R_thigh.wm" "skinCluster1.ma[17]";
connectAttr "R_leg.wm" "skinCluster1.ma[18]";
connectAttr "R_foot.wm" "skinCluster1.ma[19]";
connectAttr "R_toe.wm" "skinCluster1.ma[20]";
connectAttr "tail1.wm" "skinCluster1.ma[21]";
connectAttr "tail2.wm" "skinCluster1.ma[22]";
connectAttr "tail3.wm" "skinCluster1.ma[23]";
connectAttr "tail4.wm" "skinCluster1.ma[24]";
connectAttr "tail5.wm" "skinCluster1.ma[25]";
connectAttr "tail6.wm" "skinCluster1.ma[26]";
connectAttr "Hammer.wm" "skinCluster1.ma[27]";
connectAttr "joint2.wm" "skinCluster1.ma[28]";
connectAttr "R_eye.wm" "skinCluster1.ma[29]";
connectAttr "L_eye.wm" "skinCluster1.ma[30]";
connectAttr "lowerBody.liw" "skinCluster1.lw[0]";
connectAttr "upperbody.liw" "skinCluster1.lw[1]";
connectAttr "chestAndShoulders.liw" "skinCluster1.lw[2]";
connectAttr "neck.liw" "skinCluster1.lw[3]";
connectAttr "head.liw" "skinCluster1.lw[4]";
connectAttr "L_arm.liw" "skinCluster1.lw[5]";
connectAttr "L_forearm.liw" "skinCluster1.lw[6]";
connectAttr "L_hand.liw" "skinCluster1.lw[7]";
connectAttr "L_tip.liw" "skinCluster1.lw[8]";
connectAttr "R_arm.liw" "skinCluster1.lw[9]";
connectAttr "R_forearm.liw" "skinCluster1.lw[10]";
connectAttr "R_hand.liw" "skinCluster1.lw[11]";
connectAttr "R_tip.liw" "skinCluster1.lw[12]";
connectAttr "L_thigh.liw" "skinCluster1.lw[13]";
connectAttr "L_leg.liw" "skinCluster1.lw[14]";
connectAttr "L_foot.liw" "skinCluster1.lw[15]";
connectAttr "L_toe.liw" "skinCluster1.lw[16]";
connectAttr "R_thigh.liw" "skinCluster1.lw[17]";
connectAttr "R_leg.liw" "skinCluster1.lw[18]";
connectAttr "R_foot.liw" "skinCluster1.lw[19]";
connectAttr "R_toe.liw" "skinCluster1.lw[20]";
connectAttr "tail1.liw" "skinCluster1.lw[21]";
connectAttr "tail2.liw" "skinCluster1.lw[22]";
connectAttr "tail3.liw" "skinCluster1.lw[23]";
connectAttr "tail4.liw" "skinCluster1.lw[24]";
connectAttr "tail5.liw" "skinCluster1.lw[25]";
connectAttr "tail6.liw" "skinCluster1.lw[26]";
connectAttr "Hammer.liw" "skinCluster1.lw[27]";
connectAttr "joint2.liw" "skinCluster1.lw[28]";
connectAttr "R_eye.liw" "skinCluster1.lw[29]";
connectAttr "L_eye.liw" "skinCluster1.lw[30]";
connectAttr "lowerBody.obcc" "skinCluster1.ifcl[0]";
connectAttr "upperbody.obcc" "skinCluster1.ifcl[1]";
connectAttr "chestAndShoulders.obcc" "skinCluster1.ifcl[2]";
connectAttr "neck.obcc" "skinCluster1.ifcl[3]";
connectAttr "head.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_arm.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_forearm.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_hand.obcc" "skinCluster1.ifcl[7]";
connectAttr "L_tip.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_arm.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_forearm.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_hand.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_tip.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_thigh.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_leg.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_foot.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_toe.obcc" "skinCluster1.ifcl[16]";
connectAttr "R_thigh.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_leg.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_foot.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_toe.obcc" "skinCluster1.ifcl[20]";
connectAttr "tail1.obcc" "skinCluster1.ifcl[21]";
connectAttr "tail2.obcc" "skinCluster1.ifcl[22]";
connectAttr "tail3.obcc" "skinCluster1.ifcl[23]";
connectAttr "tail4.obcc" "skinCluster1.ifcl[24]";
connectAttr "tail5.obcc" "skinCluster1.ifcl[25]";
connectAttr "tail6.obcc" "skinCluster1.ifcl[26]";
connectAttr "Hammer.obcc" "skinCluster1.ifcl[27]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[28]";
connectAttr "R_eye.obcc" "skinCluster1.ifcl[29]";
connectAttr "L_eye.obcc" "skinCluster1.ifcl[30]";
connectAttr "L_tip.msg" "skinCluster1.ptt";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurfaceShape8.iog.og[8]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "lowerBody.msg" "bindPose1.m[0]";
connectAttr "upperbody.msg" "bindPose1.m[1]";
connectAttr "chestAndShoulders.msg" "bindPose1.m[2]";
connectAttr "neck.msg" "bindPose1.m[3]";
connectAttr "head.msg" "bindPose1.m[4]";
connectAttr "L_arm.msg" "bindPose1.m[5]";
connectAttr "L_forearm.msg" "bindPose1.m[6]";
connectAttr "L_hand.msg" "bindPose1.m[7]";
connectAttr "L_tip.msg" "bindPose1.m[8]";
connectAttr "R_arm.msg" "bindPose1.m[9]";
connectAttr "R_forearm.msg" "bindPose1.m[10]";
connectAttr "R_hand.msg" "bindPose1.m[11]";
connectAttr "R_tip.msg" "bindPose1.m[12]";
connectAttr "L_thigh.msg" "bindPose1.m[13]";
connectAttr "L_leg.msg" "bindPose1.m[14]";
connectAttr "L_foot.msg" "bindPose1.m[15]";
connectAttr "L_toe.msg" "bindPose1.m[16]";
connectAttr "R_thigh.msg" "bindPose1.m[17]";
connectAttr "R_leg.msg" "bindPose1.m[18]";
connectAttr "R_foot.msg" "bindPose1.m[19]";
connectAttr "R_toe.msg" "bindPose1.m[20]";
connectAttr "tail1.msg" "bindPose1.m[21]";
connectAttr "tail2.msg" "bindPose1.m[22]";
connectAttr "tail3.msg" "bindPose1.m[23]";
connectAttr "tail4.msg" "bindPose1.m[24]";
connectAttr "tail5.msg" "bindPose1.m[25]";
connectAttr "tail6.msg" "bindPose1.m[26]";
connectAttr "Hammer.msg" "bindPose1.m[27]";
connectAttr "joint2.msg" "bindPose1.m[28]";
connectAttr "R_eye.msg" "bindPose1.m[29]";
connectAttr "L_eye.msg" "bindPose1.m[30]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[2]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[0]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[0]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[0]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[0]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[3]" "bindPose1.p[29]";
connectAttr "bindPose1.m[3]" "bindPose1.p[30]";
connectAttr "lowerBody.bps" "bindPose1.wm[0]";
connectAttr "upperbody.bps" "bindPose1.wm[1]";
connectAttr "chestAndShoulders.bps" "bindPose1.wm[2]";
connectAttr "neck.bps" "bindPose1.wm[3]";
connectAttr "head.bps" "bindPose1.wm[4]";
connectAttr "L_arm.bps" "bindPose1.wm[5]";
connectAttr "L_forearm.bps" "bindPose1.wm[6]";
connectAttr "L_hand.bps" "bindPose1.wm[7]";
connectAttr "L_tip.bps" "bindPose1.wm[8]";
connectAttr "R_arm.bps" "bindPose1.wm[9]";
connectAttr "R_forearm.bps" "bindPose1.wm[10]";
connectAttr "R_hand.bps" "bindPose1.wm[11]";
connectAttr "R_tip.bps" "bindPose1.wm[12]";
connectAttr "L_thigh.bps" "bindPose1.wm[13]";
connectAttr "L_leg.bps" "bindPose1.wm[14]";
connectAttr "L_foot.bps" "bindPose1.wm[15]";
connectAttr "L_toe.bps" "bindPose1.wm[16]";
connectAttr "R_thigh.bps" "bindPose1.wm[17]";
connectAttr "R_leg.bps" "bindPose1.wm[18]";
connectAttr "R_foot.bps" "bindPose1.wm[19]";
connectAttr "R_toe.bps" "bindPose1.wm[20]";
connectAttr "tail1.bps" "bindPose1.wm[21]";
connectAttr "tail2.bps" "bindPose1.wm[22]";
connectAttr "tail3.bps" "bindPose1.wm[23]";
connectAttr "tail4.bps" "bindPose1.wm[24]";
connectAttr "tail5.bps" "bindPose1.wm[25]";
connectAttr "tail6.bps" "bindPose1.wm[26]";
connectAttr "Hammer.bps" "bindPose1.wm[27]";
connectAttr "joint2.bps" "bindPose1.wm[28]";
connectAttr "R_eye.bps" "bindPose1.wm[29]";
connectAttr "L_eye.bps" "bindPose1.wm[30]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "tripleShadingSwitch1.out" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "tripleShadingSwitch1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tripleShadingSwitch1.msg" ":initialMaterialInfo.t" -na;
// End of squirrel (1).ma
