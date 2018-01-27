// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-7337-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32069,y:32766,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_NormalVector,id:5975,x:31582,y:33078,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:2368,x:31745,y:33078,varname:node_2368,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5975-OUT;n:type:ShaderForge.SFN_Lerp,id:7337,x:32405,y:32777,varname:node_7337,prsc:2|A-107-RGB,B-1304-RGB,T-1589-OUT;n:type:ShaderForge.SFN_Color,id:107,x:32069,y:32592,ptovrint:False,ptlb:node_107,ptin:_node_107,varname:node_107,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_RemapRange,id:6383,x:31920,y:33078,varname:node_6383,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:1|IN-2368-OUT;n:type:ShaderForge.SFN_Clamp01,id:1589,x:32282,y:33071,varname:node_1589,prsc:2|IN-5709-OUT;n:type:ShaderForge.SFN_Multiply,id:5709,x:32116,y:33095,varname:node_5709,prsc:2|A-6383-OUT,B-1501-OUT,C-9033-OUT;n:type:ShaderForge.SFN_Vector1,id:1501,x:31920,y:33229,varname:node_1501,prsc:2,v1:3;n:type:ShaderForge.SFN_Tex2d,id:577,x:31748,y:33295,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_577,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2474-OUT;n:type:ShaderForge.SFN_RemapRange,id:9033,x:31920,y:33295,varname:node_9033,prsc:2,frmn:0,frmx:1,tomn:0.1,tomx:1|IN-577-R;n:type:ShaderForge.SFN_FragmentPosition,id:5375,x:31026,y:33305,varname:node_5375,prsc:2;n:type:ShaderForge.SFN_Append,id:316,x:31262,y:33294,varname:node_316,prsc:2|A-5375-X,B-5375-Z;n:type:ShaderForge.SFN_Multiply,id:2474,x:31465,y:33294,varname:node_2474,prsc:2|A-316-OUT,B-9805-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9805,x:31262,y:33445,ptovrint:False,ptlb:snow scale,ptin:_snowscale,varname:node_9805,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:1304-107-577-9805;pass:END;sub:END;*/

Shader "Shader Forge/SnowObject" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_107 ("node_107", Color) = (1,0,0,1)
        _cloud ("cloud", 2D) = "white" {}
        _snowscale ("snow scale", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
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
            uniform float4 _Color;
            uniform float4 _node_107;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _snowscale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
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
                float2 node_2474 = (float2(i.posWorld.r,i.posWorld.b)*_snowscale);
                float4 _cloud_var = tex2D(_cloud,TRANSFORM_TEX(node_2474, _cloud));
                float3 diffuseColor = lerp(_node_107.rgb,_Color.rgb,saturate(((i.normalDir.g*1.5+-0.5)*3.0*(_cloud_var.r*0.9+0.1))));
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
            uniform float4 _Color;
            uniform float4 _node_107;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _snowscale;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_2474 = (float2(i.posWorld.r,i.posWorld.b)*_snowscale);
                float4 _cloud_var = tex2D(_cloud,TRANSFORM_TEX(node_2474, _cloud));
                float3 diffuseColor = lerp(_node_107.rgb,_Color.rgb,saturate(((i.normalDir.g*1.5+-0.5)*3.0*(_cloud_var.r*0.9+0.1))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
