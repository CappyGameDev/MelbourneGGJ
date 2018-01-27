using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DontDestroy : MonoBehaviour {

    public bool FoundTato;
    
    void Awake()
    {
        if(FoundTato)
        GameObject.FindGameObjectWithTag("Potato").SetActive(true);
    }

	// Use this for initialization
	void Start ()
    {
        DontDestroyOnLoad(gameObject);
	}


	
	// Update is called once per frame
	void Update ()
    {
		
	}
}
