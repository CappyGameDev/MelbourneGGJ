using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineRenderManager : MonoBehaviour {

    public Transform[] PlugEnds = new Transform[2];
    public LineRenderer lr;

    void Awake()
    {
        lr = GetComponent<LineRenderer>();
    }

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        lr.SetPosition(0, PlugEnds[0].transform.position);
        lr.SetPosition(1, PlugEnds[1].transform.position);
    }
}
