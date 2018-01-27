// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32950,y:32659,varname:node_4013,prsc:2|diff-5908-OUT,voffset-4585-OUT;n:type:ShaderForge.SFN_TexCoord,id:2790,x:31756,y:32963,varname:node_2790,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:759,x:32025,y:33123,varname:node_759,prsc:2|IN-2790-V,IMIN-9755-OUT,IMAX-9860-OUT,OMIN-3475-OUT,OMAX-3159-OUT;n:type:ShaderForge.SFN_Vector1,id:9755,x:31756,y:33105,varname:node_9755,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9860,x:31756,y:33154,varname:node_9860,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3475,x:31599,y:33231,ptovrint:False,ptlb:omin,ptin:_omin,varname:node_3475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:-0.1;n:type:ShaderForge.SFN_Slider,id:3159,x:31599,y:33320,ptovrint:False,ptlb:omax,ptin:_omax,varname:node_3159,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Multiply,id:3638,x:32201,y:32920,varname:node_3638,prsc:2|A-8846-OUT,B-9317-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9317,x:31981,y:33050,ptovrint:False,ptlb:wiggle count,ptin:_wigglecount,varname:node_9317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:15;n:type:ShaderForge.SFN_Sin,id:7302,x:32369,y:32920,varname:node_7302,prsc:2|IN-3638-OUT;n:type:ShaderForge.SFN_RemapRange,id:9159,x:32561,y:32942,varname:node_9159,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7302-OUT;n:type:ShaderForge.SFN_Multiply,id:4585,x:32762,y:33018,varname:node_4585,prsc:2|A-9159-OUT,B-8311-OUT,C-6595-OUT;n:type:ShaderForge.SFN_Vector3,id:8311,x:32559,y:33134,varname:node_8311,prsc:2,v1:0.2,v2:0,v3:0;n:type:ShaderForge.SFN_Add,id:8846,x:31975,y:32904,varname:node_8846,prsc:2|A-9292-OUT,B-2790-V;n:type:ShaderForge.SFN_Time,id:9646,x:31569,y:32799,varname:node_9646,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9292,x:31776,y:32809,varname:node_9292,prsc:2|A-3096-OUT,B-9646-T;n:type:ShaderForge.SFN_ValueProperty,id:3096,x:31569,y:32738,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_3096,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:6595,x:32201,y:33123,varname:node_6595,prsc:2|IN-759-OUT;n:type:ShaderForge.SFN_Tex2d,id:889,x:32325,y:32672,ptovrint:False,ptlb:texture,ptin:_texture,varname:node_889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:da079ce1bc9fcb04caa926a13b365ec6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5908,x:32719,y:32617,varname:node_5908,prsc:2|A-2895-RGB,B-889-RGB;n:type:ShaderForge.SFN_VertexColor,id:2895,x:32325,y:32518,varname:node_2895,prsc:2;proporder:3475-3159-9317-3096-889;pass:END;sub:END;*/

Shader "Shader Forge/Fish" {
    Properties {
        _omin ("omin", Range(0, -0.1)) = 0
        _omax ("omax", Range(0, 2)) = 2
        _wigglecount ("wiggle count", Float ) = 15
        _speed ("speed", Float ) = 1
        _texture ("texture", 2D) = "white" {}
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
            uniform float _omin;
            uniform float _omax;
            uniform float _wigglecount;
            uniform float _speed;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_9646 = _Time;
                float node_3638 = (((_speed*node_9646.g)+o.uv0.g)*_wigglecount);
                float node_9755 = 0.0;
                v.vertex.xyz += ((sin(node_3638)*2.0+-1.0)*float3(0.2,0,0)*(1.0 - (_omin + ( (o.uv0.g - node_9755) * (_omax - _omin) ) / (1.0 - node_9755))));
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
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                float3 diffuseColor = (i.vertexColor.rgb*_texture_var.rgb);
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
            uniform float _omin;
            uniform float _omax;
            uniform float _wigglecount;
            uniform float _speed;
            uniform sampler2D _texture; uniform float4 _texture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_9646 = _Time;
                float node_3638 = (((_speed*node_9646.g)+o.uv0.g)*_wigglecount);
                float node_9755 = 0.0;
                v.vertex.xyz += ((sin(node_3638)*2.0+-1.0)*float3(0.2,0,0)*(1.0 - (_omin + ( (o.uv0.g - node_9755) * (_omax - _omin) ) / (1.0 - node_9755))));
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
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                float3 diffuseColor = (i.vertexColor.rgb*_texture_var.rgb);
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
            Cull Back
            
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
            uniform float _omin;
            uniform float _omax;
            uniform float _wigglecount;
            uniform float _speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_9646 = _Time;
                float node_3638 = (((_speed*node_9646.g)+o.uv0.g)*_wigglecount);
                float node_9755 = 0.0;
                v.vertex.xyz += ((sin(node_3638)*2.0+-1.0)*float3(0.2,0,0)*(1.0 - (_omin + ( (o.uv0.g - node_9755) * (_omax - _omin) ) / (1.0 - node_9755))));
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
