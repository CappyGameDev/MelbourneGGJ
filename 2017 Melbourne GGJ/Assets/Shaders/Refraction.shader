// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-9043-OUT,alpha-7585-OUT,refract-3577-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32269,y:32611,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:9559,x:32392,y:32873,varname:node_9559,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:8183,x:31031,y:32794,varname:node_8183,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5366,x:31206,y:32794,varname:node_5366,prsc:2,spu:0.01,spv:0.01|UVIN-8183-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6173,x:31206,y:32632,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_6173,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0443e6ea5359df344a678e84850ed402,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3978,x:31406,y:32794,varname:node_3978,prsc:2,tex:0443e6ea5359df344a678e84850ed402,ntxv:0,isnm:False|UVIN-5366-UVOUT,TEX-6173-TEX;n:type:ShaderForge.SFN_Append,id:3655,x:31584,y:32794,varname:node_3655,prsc:2|A-3978-R,B-3978-G;n:type:ShaderForge.SFN_Multiply,id:3577,x:32411,y:32937,varname:node_3577,prsc:2|A-7845-OUT,B-4804-OUT,C-9981-OUT;n:type:ShaderForge.SFN_Slider,id:4804,x:32029,y:32983,ptovrint:False,ptlb:amount,ptin:_amount,varname:node_4804,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1282051,max:1;n:type:ShaderForge.SFN_Blend,id:7845,x:31827,y:32847,varname:node_7845,prsc:2,blmd:17,clmp:True|SRC-3655-OUT,DST-6989-OUT;n:type:ShaderForge.SFN_Append,id:6989,x:31584,y:32940,varname:node_6989,prsc:2|A-8530-R,B-8530-G;n:type:ShaderForge.SFN_Tex2d,id:8530,x:31406,y:32940,varname:node_8530,prsc:2,tex:0443e6ea5359df344a678e84850ed402,ntxv:0,isnm:False|UVIN-3899-UVOUT,TEX-6173-TEX;n:type:ShaderForge.SFN_Panner,id:3899,x:31206,y:32940,varname:node_3899,prsc:2,spu:0,spv:-0.01|UVIN-8183-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:2218,x:31896,y:33270,ptovrint:False,ptlb:depth amount,ptin:_depthamount,varname:node_2218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_DepthBlend,id:9981,x:32066,y:33140,varname:node_9981,prsc:2|DIST-2218-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9043,x:32489,y:32708,ptovrint:False,ptlb:depth debug,ptin:_depthdebug,varname:node_9043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1304-RGB,B-9981-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7585,x:32464,y:33113,ptovrint:False,ptlb:depth debug 2,ptin:_depthdebug2,varname:node_7585,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9559-OUT,B-5454-OUT;n:type:ShaderForge.SFN_Vector1,id:5454,x:32246,y:32789,varname:node_5454,prsc:2,v1:1;proporder:1304-6173-4804-2218-9043-7585;pass:END;sub:END;*/

Shader "Shader Forge/Refraction" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _texture ("texture", 2D) = "bump" {}
        _amount ("amount", Range(0, 1)) = 0.1282051
        _depthamount ("depth amount", Float ) = 0
        [MaterialToggle] _depthdebug ("depth debug", Float ) = 1
        [MaterialToggle] _depthdebug2 ("depth debug 2", Float ) = 0
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _amount;
            uniform float _depthamount;
            uniform fixed _depthdebug;
            uniform fixed _depthdebug2;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_2212 = _Time;
                float2 node_5366 = (i.uv0+node_2212.g*float2(0.01,0.01));
                float3 node_3978 = UnpackNormal(tex2D(_texture,TRANSFORM_TEX(node_5366, _texture)));
                float2 node_3899 = (i.uv0+node_2212.g*float2(0,-0.01));
                float3 node_8530 = UnpackNormal(tex2D(_texture,TRANSFORM_TEX(node_3899, _texture)));
                float node_9981 = saturate((sceneZ-partZ)/_depthamount);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (saturate(abs(float2(node_3978.r,node_3978.g)-float2(node_8530.r,node_8530.g)))*_amount*node_9981);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp( _Color.rgb, node_9981, _depthdebug );
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,lerp( 0.0, 1.0, _depthdebug2 )),1);
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform float _amount;
            uniform float _depthamount;
            uniform fixed _depthdebug;
            uniform fixed _depthdebug2;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float4 node_9011 = _Time;
                float2 node_5366 = (i.uv0+node_9011.g*float2(0.01,0.01));
                float3 node_3978 = UnpackNormal(tex2D(_texture,TRANSFORM_TEX(node_5366, _texture)));
                float2 node_3899 = (i.uv0+node_9011.g*float2(0,-0.01));
                float3 node_8530 = UnpackNormal(tex2D(_texture,TRANSFORM_TEX(node_3899, _texture)));
                float node_9981 = saturate((sceneZ-partZ)/_depthamount);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (saturate(abs(float2(node_3978.r,node_3978.g)-float2(node_8530.r,node_8530.g)))*_amount*node_9981);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp( _Color.rgb, node_9981, _depthdebug );
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * lerp( 0.0, 1.0, _depthdebug2 ),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
