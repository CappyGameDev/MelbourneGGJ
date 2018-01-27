// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32880,y:32703,varname:node_4013,prsc:2|diff-3773-OUT,spec-4403-OUT,gloss-2408-OUT,normal-8459-OUT,alpha-2322-OUT,voffset-8041-OUT,tess-2369-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32407,y:32375,ptovrint:False,ptlb:foam,ptin:_foam,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7076,x:31501,y:32763,varname:node_7076,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8155-OUT,TEX-4580-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:8483,x:30726,y:32766,varname:node_8483,prsc:2;n:type:ShaderForge.SFN_Append,id:8461,x:31126,y:32763,varname:node_8461,prsc:2|A-8483-X,B-590-OUT;n:type:ShaderForge.SFN_Multiply,id:8155,x:31316,y:32763,varname:node_8155,prsc:2|A-8461-OUT,B-4774-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4774,x:31126,y:32916,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_4774,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_Time,id:7397,x:30527,y:32941,varname:node_7397,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5426,x:30726,y:32941,varname:node_5426,prsc:2|A-7397-T,B-1247-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1247,x:30527,y:33100,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1247,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_Add,id:590,x:30931,y:32872,varname:node_590,prsc:2|A-8483-Z,B-5426-OUT;n:type:ShaderForge.SFN_Multiply,id:8041,x:32184,y:32950,varname:node_8041,prsc:2|A-5881-OUT,B-159-OUT,C-4565-OUT;n:type:ShaderForge.SFN_ValueProperty,id:159,x:31892,y:33092,ptovrint:False,ptlb:Height Amount,ptin:_HeightAmount,varname:node_159,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:2369,x:32352,y:33178,ptovrint:False,ptlb:Tessellation Amount,ptin:_TessellationAmount,varname:node_2369,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_NormalVector,id:4565,x:31846,y:33155,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:8346,x:31501,y:32574,varname:node_8346,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-542-OUT,TEX-4580-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:2384,x:30717,y:32335,varname:node_2384,prsc:2;n:type:ShaderForge.SFN_Append,id:2191,x:31117,y:32332,varname:node_2191,prsc:2|A-2384-X,B-4788-OUT;n:type:ShaderForge.SFN_Multiply,id:542,x:31307,y:32332,varname:node_542,prsc:2|A-2191-OUT,B-4774-OUT;n:type:ShaderForge.SFN_Time,id:4741,x:30518,y:32510,varname:node_4741,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6564,x:30717,y:32510,varname:node_6564,prsc:2|A-4741-T,B-5409-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5409,x:30518,y:32669,ptovrint:False,ptlb:Speed_copy,ptin:_Speed_copy,varname:_Speed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:4788,x:30922,y:32441,varname:node_4788,prsc:2|A-2384-Z,B-6564-OUT,C-6761-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4580,x:31288,y:32529,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_4580,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:5881,x:31783,y:32742,varname:node_5881,prsc:2,blmd:1,clmp:True|SRC-8346-R,DST-7076-R;n:type:ShaderForge.SFN_Vector2,id:6761,x:30717,y:32653,varname:node_6761,prsc:2,v1:0.3,v2:0.3;n:type:ShaderForge.SFN_Vector1,id:2322,x:32494,y:33046,varname:node_2322,prsc:2,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:3562,x:32023,y:32571,varname:node_3562,prsc:2|DIST-209-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2801,x:31646,y:32414,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_2801,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:6813,x:32225,y:32556,varname:node_6813,prsc:2|IN-3562-OUT;n:type:ShaderForge.SFN_Blend,id:7987,x:32422,y:32539,varname:node_7987,prsc:2,blmd:1,clmp:True|SRC-6813-OUT,DST-4071-OUT;n:type:ShaderForge.SFN_RemapRange,id:4071,x:32225,y:32368,varname:node_4071,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-7076-R;n:type:ShaderForge.SFN_Lerp,id:3773,x:32702,y:32683,varname:node_3773,prsc:2|A-8212-RGB,B-1304-RGB,T-7987-OUT;n:type:ShaderForge.SFN_Color,id:8212,x:32462,y:32130,ptovrint:False,ptlb:water,ptin:_water,varname:node_8212,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8850,x:31415,y:33308,varname:node_8850,prsc:2,tex:0443e6ea5359df344a678e84850ed402,ntxv:3,isnm:True|UVIN-542-OUT,TEX-8549-TEX;n:type:ShaderForge.SFN_Multiply,id:209,x:31858,y:32554,varname:node_209,prsc:2|A-2801-OUT,B-5383-OUT,C-8346-R;n:type:ShaderForge.SFN_RemapRange,id:5383,x:31691,y:32574,varname:node_5383,prsc:2,frmn:0,frmx:1,tomn:0.1,tomx:1|IN-7076-R;n:type:ShaderForge.SFN_Tex2dAsset,id:8549,x:31312,y:33011,ptovrint:False,ptlb:normal,ptin:_normal,varname:node_8549,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0443e6ea5359df344a678e84850ed402,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6825,x:31415,y:33440,varname:node_6825,prsc:2,tex:0443e6ea5359df344a678e84850ed402,ntxv:0,isnm:False|UVIN-8155-OUT,TEX-8549-TEX;n:type:ShaderForge.SFN_Blend,id:8459,x:31817,y:33371,varname:node_8459,prsc:2,blmd:5,clmp:True|SRC-6825-RGB,DST-8850-RGB;n:type:ShaderForge.SFN_Vector1,id:4403,x:32288,y:32758,varname:node_4403,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Vector1,id:6397,x:32524,y:32957,varname:node_6397,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:2408,x:32524,y:32777,varname:node_2408,prsc:2,blmd:10,clmp:True|SRC-4403-OUT,DST-3562-OUT;proporder:1304-4774-1247-159-2369-5409-4580-2801-8212-8549;pass:END;sub:END;*/

Shader "Shader Forge/River" {
    Properties {
        _foam ("foam", Color) = (1,1,1,1)
        _Scale ("Scale", Float ) = 0.2
        _Speed ("Speed", Float ) = 1.5
        _HeightAmount ("Height Amount", Float ) = 0.5
        _TessellationAmount ("Tessellation Amount", Float ) = 5
        _Speed_copy ("Speed_copy", Float ) = 1
        _cloud ("cloud", 2D) = "white" {}
        _Depth ("Depth", Float ) = 1
        _water ("water", Color) = (0.5,0.5,0.5,1)
        _normal ("normal", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _foam;
            uniform float _Scale;
            uniform float _Speed;
            uniform float _HeightAmount;
            uniform float _TessellationAmount;
            uniform float _Speed_copy;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _Depth;
            uniform float4 _water;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4741 = _Time;
                float3 node_542 = (float3(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_4741.g*_Speed_copy)+float2(0.3,0.3)))*_Scale);
                float4 node_8346 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_542, _cloud),0.0,0));
                float4 node_7397 = _Time;
                float2 node_8155 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7397.g*_Speed)))*_Scale);
                float4 node_7076 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_8155, _cloud),0.0,0));
                v.vertex.xyz += (saturate((node_8346.r*node_7076.r))*_HeightAmount*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationAmount;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7397 = _Time;
                float2 node_8155 = (float2(i.posWorld.r,(i.posWorld.b+(node_7397.g*_Speed)))*_Scale);
                float3 node_6825 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_8155, _normal)));
                float4 node_4741 = _Time;
                float3 node_542 = (float3(i.posWorld.r,(i.posWorld.b+(node_4741.g*_Speed_copy)+float2(0.3,0.3)))*_Scale);
                float3 node_8850 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_542, _normal)));
                float3 normalLocal = saturate(max(node_6825.rgb,node_8850.rgb));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_4403 = 0.8;
                float4 node_7076 = tex2D(_cloud,TRANSFORM_TEX(node_8155, _cloud));
                float4 node_8346 = tex2D(_cloud,TRANSFORM_TEX(node_542, _cloud));
                float node_3562 = saturate((sceneZ-partZ)/(_Depth*(node_7076.r*0.9+0.1)*node_8346.r));
                float gloss = saturate(( node_3562 > 0.5 ? (1.0-(1.0-2.0*(node_3562-0.5))*(1.0-node_4403)) : (2.0*node_3562*node_4403) ));
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_4403,node_4403,node_4403);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = lerp(_water.rgb,_foam.rgb,saturate(((1.0 - node_3562)*(node_7076.r*2.0+0.0))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1.0);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _foam;
            uniform float _Scale;
            uniform float _Speed;
            uniform float _HeightAmount;
            uniform float _TessellationAmount;
            uniform float _Speed_copy;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _Depth;
            uniform float4 _water;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4741 = _Time;
                float3 node_542 = (float3(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_4741.g*_Speed_copy)+float2(0.3,0.3)))*_Scale);
                float4 node_8346 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_542, _cloud),0.0,0));
                float4 node_7397 = _Time;
                float2 node_8155 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7397.g*_Speed)))*_Scale);
                float4 node_7076 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_8155, _cloud),0.0,0));
                v.vertex.xyz += (saturate((node_8346.r*node_7076.r))*_HeightAmount*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationAmount;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7397 = _Time;
                float2 node_8155 = (float2(i.posWorld.r,(i.posWorld.b+(node_7397.g*_Speed)))*_Scale);
                float3 node_6825 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_8155, _normal)));
                float4 node_4741 = _Time;
                float3 node_542 = (float3(i.posWorld.r,(i.posWorld.b+(node_4741.g*_Speed_copy)+float2(0.3,0.3)))*_Scale);
                float3 node_8850 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_542, _normal)));
                float3 normalLocal = saturate(max(node_6825.rgb,node_8850.rgb));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_4403 = 0.8;
                float4 node_7076 = tex2D(_cloud,TRANSFORM_TEX(node_8155, _cloud));
                float4 node_8346 = tex2D(_cloud,TRANSFORM_TEX(node_542, _cloud));
                float node_3562 = saturate((sceneZ-partZ)/(_Depth*(node_7076.r*0.9+0.1)*node_8346.r));
                float gloss = saturate(( node_3562 > 0.5 ? (1.0-(1.0-2.0*(node_3562-0.5))*(1.0-node_4403)) : (2.0*node_3562*node_4403) ));
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(node_4403,node_4403,node_4403);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = lerp(_water.rgb,_foam.rgb,saturate(((1.0 - node_3562)*(node_7076.r*2.0+0.0))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1.0,0);
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
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float _Scale;
            uniform float _Speed;
            uniform float _HeightAmount;
            uniform float _TessellationAmount;
            uniform float _Speed_copy;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4741 = _Time;
                float3 node_542 = (float3(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_4741.g*_Speed_copy)+float2(0.3,0.3)))*_Scale);
                float4 node_8346 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_542, _cloud),0.0,0));
                float4 node_7397 = _Time;
                float2 node_8155 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_7397.g*_Speed)))*_Scale);
                float4 node_7076 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_8155, _cloud),0.0,0));
                v.vertex.xyz += (saturate((node_8346.r*node_7076.r))*_HeightAmount*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return _TessellationAmount;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
