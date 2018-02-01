// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-5982-OUT,alpha-6545-OUT;n:type:ShaderForge.SFN_Tex2d,id:7551,x:32319,y:32362,ptovrint:False,ptlb:node_6172,ptin:_node_6172,varname:node_6172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b4a28af896314184eb83215533b72b2e,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Vector1,id:6545,x:32769,y:33070,varname:node_6545,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:6744,x:32526,y:32522,varname:node_6744,prsc:2|A-7551-RGB,B-4827-OUT,C-4368-OUT;n:type:ShaderForge.SFN_Vector1,id:4827,x:32319,y:32522,varname:node_4827,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:7525,x:32769,y:32815,varname:node_7525,prsc:2|A-6744-OUT,B-3729-OUT,C-5170-OUT,D-2141-OUT;n:type:ShaderForge.SFN_Tex2d,id:6468,x:31694,y:33023,ptovrint:False,ptlb:node_4552,ptin:_node_4552,varname:node_4552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b681d72a2c97bfa40bdedb9128e102b5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3729,x:31953,y:33023,varname:node_3729,prsc:2|A-6468-RGB,B-8508-OUT;n:type:ShaderForge.SFN_Panner,id:5204,x:31146,y:33212,varname:node_5204,prsc:2,spu:0,spv:-0.5|UVIN-4790-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4790,x:30972,y:33212,varname:node_4790,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:6342,x:31321,y:33212,ptovrint:False,ptlb:node_7892,ptin:_node_7892,varname:node_7892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ebe4e0be02dd29a4c846ad67d4b69191,ntxv:0,isnm:False|UVIN-5204-UVOUT;n:type:ShaderForge.SFN_Panner,id:2373,x:31146,y:33410,varname:node_2373,prsc:2,spu:0,spv:-1|UVIN-8260-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8260,x:30972,y:33410,varname:node_8260,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:9641,x:31321,y:33410,ptovrint:False,ptlb:node_7892_copy,ptin:_node_7892_copy,varname:_node_7892_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6f8227814ef901a428409a587fe0dfea,ntxv:0,isnm:False|UVIN-2373-UVOUT;n:type:ShaderForge.SFN_Add,id:1068,x:31515,y:33212,varname:node_1068,prsc:2|A-6342-RGB,B-9641-RGB;n:type:ShaderForge.SFN_Tex2d,id:9067,x:31953,y:33195,ptovrint:False,ptlb:node_4552_copy,ptin:_node_4552_copy,varname:_node_4552_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b681d72a2c97bfa40bdedb9128e102b5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4512,x:31953,y:33392,ptovrint:False,ptlb:node_6839,ptin:_node_6839,varname:node_6839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:5170,x:32182,y:33195,varname:node_5170,prsc:2|A-9067-RGB,B-4512-RGB,C-1508-OUT;n:type:ShaderForge.SFN_Vector1,id:1508,x:31953,y:33535,varname:node_1508,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Tex2d,id:3527,x:31953,y:32586,ptovrint:False,ptlb:node_8210,ptin:_node_8210,varname:node_8210,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43ab4c086dbdcc2449475ae3240d707c,ntxv:0,isnm:False|UVIN-9670-UVOUT;n:type:ShaderForge.SFN_Add,id:4368,x:32319,y:32621,varname:node_4368,prsc:2|A-3527-RGB,B-3339-OUT;n:type:ShaderForge.SFN_Panner,id:9670,x:31785,y:32586,varname:node_9670,prsc:2,spu:0,spv:0.025|UVIN-1882-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1882,x:31611,y:32586,varname:node_1882,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:6155,x:31953,y:32778,ptovrint:False,ptlb:node_8210_copy,ptin:_node_8210_copy,varname:_node_8210_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43ab4c086dbdcc2449475ae3240d707c,ntxv:0,isnm:False|UVIN-6304-UVOUT;n:type:ShaderForge.SFN_Panner,id:6304,x:31785,y:32778,varname:node_6304,prsc:2,spu:0,spv:-0.1|UVIN-6022-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6022,x:31611,y:32778,varname:node_6022,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:496,x:31953,y:32938,varname:node_496,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Multiply,id:3339,x:32148,y:32778,varname:node_3339,prsc:2|A-6155-RGB,B-496-OUT;n:type:ShaderForge.SFN_Multiply,id:5982,x:32990,y:32815,varname:node_5982,prsc:2|A-7525-OUT,B-71-OUT;n:type:ShaderForge.SFN_Vector1,id:71,x:32769,y:32945,varname:node_71,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8508,x:31694,y:33212,varname:node_8508,prsc:2|A-1068-OUT,B-5685-RGB;n:type:ShaderForge.SFN_Color,id:5685,x:31515,y:33410,ptovrint:False,ptlb:node_6823,ptin:_node_6823,varname:node_6823,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3676471,c3:0.3676471,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3044,x:32260,y:33390,ptovrint:False,ptlb:node_4884,ptin:_node_4884,varname:node_4884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7790f7cd962528b4aa8ae9a48b61680f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2141,x:32521,y:33377,varname:node_2141,prsc:2|A-3044-RGB,B-1368-RGB;n:type:ShaderForge.SFN_Color,id:1368,x:32260,y:33576,ptovrint:False,ptlb:node_1203,ptin:_node_1203,varname:node_1203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;proporder:7551-6468-6342-9641-9067-4512-3527-6155-5685-3044-1368;pass:END;sub:END;*/

Shader "Shader Forge/Sh_boost_IEM" {
    Properties {
        _node_6172 ("node_6172", 2D) = "black" {}
        _node_4552 ("node_4552", 2D) = "white" {}
        _node_7892 ("node_7892", 2D) = "white" {}
        _node_7892_copy ("node_7892_copy", 2D) = "white" {}
        _node_4552_copy ("node_4552_copy", 2D) = "white" {}
        _node_6839 ("node_6839", Color) = (1,0,0,1)
        _node_8210 ("node_8210", 2D) = "white" {}
        _node_8210_copy ("node_8210_copy", 2D) = "white" {}
        _node_6823 ("node_6823", Color) = (1,0.3676471,0.3676471,1)
        _node_4884 ("node_4884", 2D) = "white" {}
        _node_1203 ("node_1203", Color) = (1,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_6172; uniform float4 _node_6172_ST;
            uniform sampler2D _node_4552; uniform float4 _node_4552_ST;
            uniform sampler2D _node_7892; uniform float4 _node_7892_ST;
            uniform sampler2D _node_7892_copy; uniform float4 _node_7892_copy_ST;
            uniform sampler2D _node_4552_copy; uniform float4 _node_4552_copy_ST;
            uniform float4 _node_6839;
            uniform sampler2D _node_8210; uniform float4 _node_8210_ST;
            uniform sampler2D _node_8210_copy; uniform float4 _node_8210_copy_ST;
            uniform float4 _node_6823;
            uniform sampler2D _node_4884; uniform float4 _node_4884_ST;
            uniform float4 _node_1203;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 _node_6172_var = tex2D(_node_6172,TRANSFORM_TEX(i.uv0, _node_6172));
                float4 node_4596 = _Time + _TimeEditor;
                float2 node_9670 = (i.uv0+node_4596.g*float2(0,0.025));
                float4 _node_8210_var = tex2D(_node_8210,TRANSFORM_TEX(node_9670, _node_8210));
                float2 node_6304 = (i.uv0+node_4596.g*float2(0,-0.1));
                float4 _node_8210_copy_var = tex2D(_node_8210_copy,TRANSFORM_TEX(node_6304, _node_8210_copy));
                float4 _node_4552_var = tex2D(_node_4552,TRANSFORM_TEX(i.uv0, _node_4552));
                float2 node_5204 = (i.uv0+node_4596.g*float2(0,-0.5));
                float4 _node_7892_var = tex2D(_node_7892,TRANSFORM_TEX(node_5204, _node_7892));
                float2 node_2373 = (i.uv0+node_4596.g*float2(0,-1));
                float4 _node_7892_copy_var = tex2D(_node_7892_copy,TRANSFORM_TEX(node_2373, _node_7892_copy));
                float4 _node_4552_copy_var = tex2D(_node_4552_copy,TRANSFORM_TEX(i.uv0, _node_4552_copy));
                float4 _node_4884_var = tex2D(_node_4884,TRANSFORM_TEX(i.uv0, _node_4884));
                float3 emissive = (((_node_6172_var.rgb*1.0*(_node_8210_var.rgb+(_node_8210_copy_var.rgb*0.25)))+(_node_4552_var.rgb*((_node_7892_var.rgb+_node_7892_copy_var.rgb)*_node_6823.rgb))+(_node_4552_copy_var.rgb*_node_6839.rgb*0.1)+(_node_4884_var.rgb*_node_1203.rgb))*0.5);
                float3 finalColor = emissive;
                return fixed4(finalColor,0.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
