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
		Object.DontDestroyOnLoad(base.gameObject);
		path = Path.Combine(Application.dataPath, "Config.ini");
		try
		{
			string contents = File.ReadAllText(path);
			File.WriteAllText(path, contents);
		}
			catch
			{
				path = Path.Combine(Application.persistentDataPath, "AppConfig.ini");
			}
	}
	
	private void Start()
	{
		
	}
}
