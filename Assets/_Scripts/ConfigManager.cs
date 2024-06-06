using System.IO;
//using Language;
using UnityEngine;

public class ConfigManager : MonoBehaviour
{
	public static ConfigManager Instance;
	
	private string path;
	
	private void Awake()
	{
		Instance = this;
	}
}
