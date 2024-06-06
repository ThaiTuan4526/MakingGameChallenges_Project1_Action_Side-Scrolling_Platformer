Shader "Custom/Heat Effect" {
	Properties {
		_BumpAmt ("Distortion", Range(0, 128)) = 10
		_BumpMap ("Normalmap", 2D) = "bump" {}
		_SpeedX ("Speed X", Float) = 1
		_SpeedY ("Speed Y", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
}