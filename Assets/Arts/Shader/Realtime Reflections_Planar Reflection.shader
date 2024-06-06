Shader "Realtime Reflections/Planar Reflection" {
	Properties {
		_MainAlpha ("MainAlpha", Range(0, 1)) = 1
		_ReflectionAlpha ("ReflectionAlpha", Range(0, 1)) = 1
		_TintColor ("Tint Color (RGB)", Vector) = (1,1,1,1)
		_MainTex ("MainTex (RGBA)", 2D) = "" {}
		_ReflectionTex ("ReflectionTex", 2D) = "white" {}
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
}