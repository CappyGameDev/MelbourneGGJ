// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:2,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|alpha-2861-OUT,refract-2237-OUT;n:type:ShaderForge.SFN_Tex2d,id:9634,x:31666,y:33098,varname:node_9634,prsc:2,tex:4106c9974ff5a2440ab6aa312c4681da,ntxv:3,isnm:True|TEX-3898-TEX;n:type:ShaderForge.SFN_TexCoord,id:4285,x:31303,y:32744,varname:node_4285,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:3040,x:31481,y:32744,varname:node_3040,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4285-UVOUT;n:type:ShaderForge.SFN_Length,id:1347,x:31648,y:32744,varname:node_1347,prsc:2|IN-3040-OUT;n:type:ShaderForge.SFN_OneMinus,id:5009,x:31818,y:32744,varname:node_5009,prsc:2|IN-1347-OUT;n:type:ShaderForge.SFN_Append,id:1161,x:31868,y:33098,varname:node_1161,prsc:2|A-9634-R,B-9634-G;n:type:ShaderForge.SFN_RemapRange,id:4127,x:31984,y:32744,varname:node_4127,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5009-OUT;n:type:ShaderForge.SFN_Clamp01,id:2861,x:32326,y:32744,varname:node_2861,prsc:2|IN-9609-OUT;n:type:ShaderForge.SFN_Ceil,id:9609,x:32154,y:32744,varname:node_9609,prsc:2|IN-4127-OUT;n:type:ShaderForge.SFN_Multiply,id:2237,x:32086,y:33114,varname:node_2237,prsc:2|A-1161-OUT,B-1193-OUT,C-8022-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1193,x:31868,y:33239,ptovrint:False,ptlb:refraction amount,ptin:_refractionamount,varname:node_1193,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Ceil,id:8022,x:31868,y:32977,varname:node_8022,prsc:2|IN-5009-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3898,x:31211,y:32975,ptovrint:False,ptlb:normal map,ptin:_normalmap,varname:node_3898,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4106c9974ff5a2440ab6aa312c4681da,ntxv:3,isnm:True;proporder:1193-3898;pass:END;sub:END;*/

Shader "Shader Forge/BlackHole" {
    Properties {
        _refractionamount ("refraction amount", Float ) = 0.5
        _normalmap ("normal map", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _refractionamount;
            uniform sampler2D _normalmap; uniform float4 _normalmap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4x4 bbmv = UNITY_MATRIX_MV;
                bbmv._m00 = -1.0/length(unity_WorldToObject[0].xyz);
                bbmv._m10 = 0.0f;
                bbmv._m20 = 0.0f;
                bbmv._m01 = 0.0f;
                bbmv._m11 = -1.0/length(unity_WorldToObject[1].xyz);
                bbmv._m21 = 0.0f;
                bbmv._m02 = 0.0f;
                bbmv._m12 = 0.0f;
                bbmv._m22 = -1.0/length(unity_WorldToObject[2].xyz);
                o.pos = mul( UNITY_MATRIX_P, mul( bbmv, v.vertex ));
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 node_9634 = UnpackNormal(tex2D(_normalmap,TRANSFORM_TEX(i.uv0, _normalmap)));
                float node_5009 = (1.0 - length((i.uv0*2.0+-1.0)));
                float node_8022 = ceil(node_5009);
                float2 node_2237 = (float2(node_9634.r,node_9634.g)*_refractionamount*node_8022);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + node_2237;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(lerp(sceneColor.rgb, finalColor,saturate(ceil((node_5009*2.0+-1.0)))),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
