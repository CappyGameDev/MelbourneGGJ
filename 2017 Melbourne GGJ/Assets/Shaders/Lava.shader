// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33163,y:32736,varname:node_4013,prsc:2|diff-5206-OUT,emission-5972-OUT,alpha-4865-OUT,voffset-3332-OUT,tess-618-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7925,x:30755,y:32907,varname:node_7925,prsc:2;n:type:ShaderForge.SFN_Append,id:5180,x:31155,y:32826,varname:node_5180,prsc:2|A-7925-X,B-9024-OUT;n:type:ShaderForge.SFN_Time,id:8186,x:30556,y:33082,varname:node_8186,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3318,x:30755,y:33082,varname:node_3318,prsc:2|A-8186-T,B-4800-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4800,x:30556,y:33241,ptovrint:False,ptlb:Speed 3,ptin:_Speed3,varname:_Speed3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Add,id:9024,x:30941,y:33023,varname:node_9024,prsc:2|A-7925-Z,B-3318-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7251,x:30755,y:32478,varname:node_7251,prsc:2;n:type:ShaderForge.SFN_Append,id:3977,x:31155,y:32475,varname:node_3977,prsc:2|A-7251-X,B-9433-OUT;n:type:ShaderForge.SFN_Time,id:411,x:30556,y:32653,varname:node_411,prsc:2;n:type:ShaderForge.SFN_Multiply,id:651,x:30755,y:32653,varname:node_651,prsc:2|A-411-T,B-1530-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1530,x:30556,y:32812,ptovrint:False,ptlb:Speed 2,ptin:_Speed2,varname:_Speed2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Add,id:9433,x:30960,y:32584,varname:node_9433,prsc:2|A-7251-Z,B-651-OUT;n:type:ShaderForge.SFN_Multiply,id:5050,x:31329,y:32475,varname:node_5050,prsc:2|A-3977-OUT,B-9217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9217,x:31136,y:32715,ptovrint:False,ptlb:scale_copy,ptin:_scale_copy,varname:_scale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:2689,x:31330,y:32826,varname:node_2689,prsc:2|A-5180-OUT,B-9217-OUT;n:type:ShaderForge.SFN_Tex2d,id:6333,x:31543,y:32475,ptovrint:False,ptlb:noise 3,ptin:_noise3,varname:_noise3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:65e47415109e1d74592780e914cff300,ntxv:0,isnm:False|UVIN-5050-OUT;n:type:ShaderForge.SFN_Tex2d,id:9490,x:31547,y:32826,ptovrint:False,ptlb:noise 2,ptin:_noise2,varname:_noise2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:65e47415109e1d74592780e914cff300,ntxv:0,isnm:False|UVIN-2689-OUT;n:type:ShaderForge.SFN_Lerp,id:5206,x:32766,y:32775,varname:node_5206,prsc:2|A-5419-RGB,B-7459-RGB,T-8093-OUT;n:type:ShaderForge.SFN_Color,id:5419,x:32501,y:32522,ptovrint:False,ptlb:dark_copy,ptin:_dark_copy,varname:_dark_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05147058,c2:0.01597363,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:7459,x:32501,y:32691,ptovrint:False,ptlb:bright_copy,ptin:_bright_copy,varname:_bright_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5972,x:32766,y:32916,varname:node_5972,prsc:2|A-5235-OUT,B-7459-RGB,T-8093-OUT;n:type:ShaderForge.SFN_Vector1,id:5235,x:32574,y:32897,varname:node_5235,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1544,x:31547,y:33028,ptovrint:False,ptlb:water,ptin:_water,varname:node_1544,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:765d90cf5082c0f4d880ce04a1bf708d,ntxv:0,isnm:False|UVIN-2689-OUT;n:type:ShaderForge.SFN_Multiply,id:3332,x:31787,y:33030,varname:node_3332,prsc:2|A-1544-R,B-4951-OUT,C-7498-OUT;n:type:ShaderForge.SFN_Slider,id:4951,x:31390,y:33203,ptovrint:False,ptlb:amount,ptin:_amount,varname:node_4951,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_NormalVector,id:7498,x:31547,y:33275,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:4734,x:32020,y:32667,varname:node_4734,prsc:2|A-9920-OUT,B-4425-OUT,C-8202-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4425,x:31819,y:32850,ptovrint:False,ptlb:brightness,ptin:_brightness,varname:node_4425,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:8093,x:32189,y:32667,varname:node_8093,prsc:2|IN-4734-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6972,x:31707,y:33290,ptovrint:False,ptlb:depth,ptin:_depth,varname:node_6972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:4205,x:31879,y:33290,varname:node_4205,prsc:2|DIST-6972-OUT;n:type:ShaderForge.SFN_Vector1,id:4865,x:32865,y:33063,varname:node_4865,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:9419,x:32051,y:33290,varname:node_9419,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4205-OUT;n:type:ShaderForge.SFN_Clamp01,id:8202,x:32233,y:33290,varname:node_8202,prsc:2|IN-9419-OUT;n:type:ShaderForge.SFN_Multiply,id:4601,x:32416,y:33290,varname:node_4601,prsc:2|A-8202-OUT,B-1544-R;n:type:ShaderForge.SFN_ValueProperty,id:618,x:32868,y:33258,ptovrint:False,ptlb:tessellation,ptin:_tessellation,varname:node_618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Blend,id:9920,x:31819,y:32649,varname:node_9920,prsc:2,blmd:15,clmp:True|SRC-6333-G,DST-9490-G;proporder:4800-1530-9217-6333-9490-5419-7459-1544-4951-4425-6972-618;pass:END;sub:END;*/

Shader "Shader Forge/Lava" {
    Properties {
        _Speed3 ("Speed 3", Float ) = 0.1
        _Speed2 ("Speed 2", Float ) = 0.1
        _scale_copy ("scale_copy", Float ) = 0.1
        _noise3 ("noise 3", 2D) = "white" {}
        _noise2 ("noise 2", 2D) = "white" {}
        _dark_copy ("dark_copy", Color) = (0.05147058,0.01597363,0,1)
        _bright_copy ("bright_copy", Color) = (1,0,0,1)
        _water ("water", 2D) = "white" {}
        _amount ("amount", Range(0, 1)) = 0
        _brightness ("brightness", Float ) = 0
        _depth ("depth", Float ) = 1
        _tessellation ("tessellation", Float ) = 3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
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
            uniform float _Speed3;
            uniform float _Speed2;
            uniform float _scale_copy;
            uniform sampler2D _noise3; uniform float4 _noise3_ST;
            uniform sampler2D _noise2; uniform float4 _noise2_ST;
            uniform float4 _dark_copy;
            uniform float4 _bright_copy;
            uniform sampler2D _water; uniform float4 _water_ST;
            uniform float _amount;
            uniform float _brightness;
            uniform float _depth;
            uniform float _tessellation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8186 = _Time;
                float2 node_2689 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_8186.g*_Speed3)))*_scale_copy);
                float4 _water_var = tex2Dlod(_water,float4(TRANSFORM_TEX(node_2689, _water),0.0,0));
                v.vertex.xyz += (_water_var.r*_amount*v.normal);
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
                    return _tessellation;
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
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
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
                float4 node_411 = _Time;
                float2 node_5050 = (float2(i.posWorld.r,(i.posWorld.b+(node_411.g*_Speed2)))*_scale_copy);
                float4 _noise3_var = tex2D(_noise3,TRANSFORM_TEX(node_5050, _noise3));
                float4 node_8186 = _Time;
                float2 node_2689 = (float2(i.posWorld.r,(i.posWorld.b+(node_8186.g*_Speed3)))*_scale_copy);
                float4 _noise2_var = tex2D(_noise2,TRANSFORM_TEX(node_2689, _noise2));
                float node_8202 = saturate((saturate((sceneZ-partZ)/_depth)*2.0+-1.0));
                float node_8093 = saturate((saturate(( _noise3_var.g > 0.5 ? max(_noise2_var.g,2.0*(_noise3_var.g-0.5)) : min(_noise2_var.g,2.0*_noise3_var.g) ))*_brightness*node_8202));
                float3 diffuseColor = lerp(_dark_copy.rgb,_bright_copy.rgb,node_8093);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_5235 = 0.0;
                float3 emissive = lerp(float3(node_5235,node_5235,node_5235),_bright_copy.rgb,node_8093);
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            ZWrite Off
            
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
            uniform float _Speed3;
            uniform float _Speed2;
            uniform float _scale_copy;
            uniform sampler2D _noise3; uniform float4 _noise3_ST;
            uniform sampler2D _noise2; uniform float4 _noise2_ST;
            uniform float4 _dark_copy;
            uniform float4 _bright_copy;
            uniform sampler2D _water; uniform float4 _water_ST;
            uniform float _amount;
            uniform float _brightness;
            uniform float _depth;
            uniform float _tessellation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8186 = _Time;
                float2 node_2689 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_8186.g*_Speed3)))*_scale_copy);
                float4 _water_var = tex2Dlod(_water,float4(TRANSFORM_TEX(node_2689, _water),0.0,0));
                v.vertex.xyz += (_water_var.r*_amount*v.normal);
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
                    return _tessellation;
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
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_411 = _Time;
                float2 node_5050 = (float2(i.posWorld.r,(i.posWorld.b+(node_411.g*_Speed2)))*_scale_copy);
                float4 _noise3_var = tex2D(_noise3,TRANSFORM_TEX(node_5050, _noise3));
                float4 node_8186 = _Time;
                float2 node_2689 = (float2(i.posWorld.r,(i.posWorld.b+(node_8186.g*_Speed3)))*_scale_copy);
                float4 _noise2_var = tex2D(_noise2,TRANSFORM_TEX(node_2689, _noise2));
                float node_8202 = saturate((saturate((sceneZ-partZ)/_depth)*2.0+-1.0));
                float node_8093 = saturate((saturate(( _noise3_var.g > 0.5 ? max(_noise2_var.g,2.0*(_noise3_var.g-0.5)) : min(_noise2_var.g,2.0*_noise3_var.g) ))*_brightness*node_8202));
                float3 diffuseColor = lerp(_dark_copy.rgb,_bright_copy.rgb,node_8093);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform float _Speed3;
            uniform float _scale_copy;
            uniform sampler2D _water; uniform float4 _water_ST;
            uniform float _amount;
            uniform float _tessellation;
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
                float4 node_8186 = _Time;
                float2 node_2689 = (float2(mul(unity_ObjectToWorld, v.vertex).r,(mul(unity_ObjectToWorld, v.vertex).b+(node_8186.g*_Speed3)))*_scale_copy);
                float4 _water_var = tex2Dlod(_water,float4(TRANSFORM_TEX(node_2689, _water),0.0,0));
                v.vertex.xyz += (_water_var.r*_amount*v.normal);
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
                    return _tessellation;
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
