using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlugLineRendererManager : MonoBehaviour {

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
        lr.SetPosition(0, transform.position);

        RaycastHit hit;
        if(Physics.Raycast(transform.position, transform.forward * 10, out hit))
        {
            Debug.Log("setposition");
            Vector3 newPos = new Vector3(transform.position.x, transform.position.y, hit.collider.transform.position.z);
            lr.SetPosition(1, newPos);
        }
	}
}
