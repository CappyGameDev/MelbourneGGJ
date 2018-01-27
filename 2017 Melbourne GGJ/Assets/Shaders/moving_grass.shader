// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-9396-RGB,clip-9396-A,voffset-5919-OUT;n:type:ShaderForge.SFN_Tex2d,id:9396,x:32163,y:32581,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_9396,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bb24f6adccf6a274aacffaa3c3655780,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:6200,x:31176,y:32634,varname:node_6200,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4692,x:31774,y:32573,varname:node_4692,prsc:2|A-8195-OUT,B-2105-OUT;n:type:ShaderForge.SFN_Append,id:2105,x:31532,y:32674,varname:node_2105,prsc:2|A-6200-X,B-6161-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8195,x:31464,y:32531,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_8195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.001;n:type:ShaderForge.SFN_Tex2d,id:7152,x:32148,y:32811,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_7152,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4692-OUT;n:type:ShaderForge.SFN_Vector1,id:6121,x:31994,y:33060,varname:node_6121,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8260,x:31994,y:32998,ptovrint:False,ptlb:sway amount,ptin:_swayamount,varname:node_8260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_NormalVector,id:257,x:32178,y:33147,prsc:2,pt:False;n:type:ShaderForge.SFN_Time,id:7587,x:30919,y:32809,varname:node_7587,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6594,x:31106,y:32904,varname:node_6594,prsc:2|A-7587-T,B-3641-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3641,x:30919,y:32982,ptovrint:False,ptlb:vv,ptin:_vv,varname:node_3641,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:6161,x:31358,y:32774,varname:node_6161,prsc:2|A-6200-Z,B-6594-OUT;n:type:ShaderForge.SFN_Append,id:5039,x:32178,y:32998,varname:node_5039,prsc:2|A-8260-OUT,B-6121-OUT,C-8260-OUT;n:type:ShaderForge.SFN_Multiply,id:5919,x:32441,y:32984,varname:node_5919,prsc:2|A-7152-R,B-5039-OUT,C-257-OUT;proporder:9396-8195-7152-8260-3641;pass:END;sub:END;*/

Shader "Shader Forge/moving_grass" {
    Properties {
        _texture ("texture", 2D) = "white" {}
        _scale ("scale", Float ) = 0.001
        _cloud ("cloud", 2D) = "white" {}
        _swayamount ("sway amount", Float ) = 0
        _vv ("vv", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _scale;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _swayamount;
            uniform float _vv;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7587 = _Time;
                float2 node_4692 = (_scale*float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7587.g*_vv))));
                float4 _cloud_var = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_4692, _cloud),0.0,0));
                float node_6121 = 0.0;
                v.vertex.xyz += (_cloud_var.r*float3(_swayamount,node_6121,_swayamount)*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                clip(_texture_var.a - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _texture_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _scale;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _swayamount;
            uniform float _vv;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7587 = _Time;
                float2 node_4692 = (_scale*float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7587.g*_vv))));
                float4 _cloud_var = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_4692, _cloud),0.0,0));
                float node_6121 = 0.0;
                v.vertex.xyz += (_cloud_var.r*float3(_swayamount,node_6121,_swayamount)*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                clip(_texture_var.a - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _texture_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _scale;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _swayamount;
            uniform float _vv;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7587 = _Time;
                float2 node_4692 = (_scale*float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7587.g*_vv))));
                float4 _cloud_var = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_4692, _cloud),0.0,0));
                float node_6121 = 0.0;
                v.vertex.xyz += (_cloud_var.r*float3(_swayamount,node_6121,_swayamount)*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                clip(_texture_var.a - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
