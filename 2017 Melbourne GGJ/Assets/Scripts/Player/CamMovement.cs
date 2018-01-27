using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamMovement : MonoBehaviour {

    float xRotation;
    float yRotation;

    public float lookSens;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(Input.GetMouseButton(1))
        {
            xRotation -= Input.GetAxis("Mouse Y") * lookSens;
            yRotation += Input.GetAxis("Mouse X") * lookSens;


            Camera.main.transform.rotation = Quaternion.Euler(xRotation, yRotation, 0);
        }	
	}
}
