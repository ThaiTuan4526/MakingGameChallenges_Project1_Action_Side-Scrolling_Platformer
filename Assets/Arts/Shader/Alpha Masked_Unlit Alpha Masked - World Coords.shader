Shader "Alpha Masked/Unlit Alpha Masked - World Coords" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		[Toggle] _ClampHoriz ("Clamp Alpha Horizontally", Float) = 0
		[Toggle] _ClampVert ("Clamp Alpha Vertically", Float) = 0
		[Toggle] _UseAlphaChannel ("Use Mask Alpha Channel (not RGB)", Float) = 0
		_MaskRotation ("Mask Rotation in Radians", Float) = 0
		_AlphaTex ("Alpha Mask", 2D) = "white" {}
		_ClampBorder ("Clamping Border", Float) = 0.01
		[KeywordEnum(X, Y, Z)] _Axis ("Alpha Mapping Axis", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Unlit/Texture"
}