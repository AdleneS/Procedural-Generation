// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-5772-OUT,alpha-7796-OUT;n:type:ShaderForge.SFN_Vector1,id:7796,x:32975,y:33163,varname:node_7796,prsc:2,v1:0;n:type:ShaderForge.SFN_Panner,id:6531,x:32338,y:32777,varname:node_6531,prsc:2,spu:0,spv:0.15|UVIN-1466-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1466,x:32134,y:32777,varname:node_1466,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:7179,x:32635,y:32784,ptovrint:False,ptlb:3_copy,ptin:_3_copy,varname:_node_9053_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6531-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5772,x:32901,y:32618,varname:node_5772,prsc:2|A-7179-RGB,B-531-OUT;n:type:ShaderForge.SFN_Vector1,id:3099,x:32501,y:33271,varname:node_3099,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Tex2d,id:2285,x:32477,y:33017,ptovrint:False,ptlb:node_2285,ptin:_node_2285,varname:node_2285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:337e4ac9295fc5b4e9a1fef292d33955,ntxv:0,isnm:False|UVIN-6696-UVOUT;n:type:ShaderForge.SFN_Panner,id:6696,x:32259,y:33024,varname:node_6696,prsc:2,spu:0.01,spv:0|UVIN-7267-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7267,x:32055,y:33024,varname:node_7267,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4094,x:32779,y:33050,varname:node_4094,prsc:2|A-2285-RGB,B-3099-OUT;n:type:ShaderForge.SFN_Add,id:531,x:32997,y:32944,varname:node_531,prsc:2|A-4094-OUT,B-7028-RGB;n:type:ShaderForge.SFN_Color,id:7028,x:32779,y:33267,ptovrint:False,ptlb:node_7028,ptin:_node_7028,varname:node_7028,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1176471,c2:0.1176471,c3:0.1176471,c4:1;proporder:7179-2285-7028;pass:END;sub:END;*/

Shader "Shader Forge/Boost_IEM" {
    Properties {
        _3_copy ("3_copy", 2D) = "white" {}
        _node_2285 ("node_2285", 2D) = "white" {}
        _node_7028 ("node_7028", Color) = (0.1176471,0.1176471,0.1176471,1)
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
            uniform sampler2D _3_copy; uniform float4 _3_copy_ST;
            uniform sampler2D _node_2285; uniform float4 _node_2285_ST;
            uniform float4 _node_7028;
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
                float4 node_8048 = _Time + _TimeEditor;
                float2 node_6531 = (i.uv0+node_8048.g*float2(0,0.15));
                float4 _3_copy_var = tex2D(_3_copy,TRANSFORM_TEX(node_6531, _3_copy));
                float2 node_6696 = (i.uv0+node_8048.g*float2(0.01,0));
                float4 _node_2285_var = tex2D(_node_2285,TRANSFORM_TEX(node_6696, _node_2285));
                float3 emissive = (_3_copy_var.rgb*((_node_2285_var.rgb*0.7)+_node_7028.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,0.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
