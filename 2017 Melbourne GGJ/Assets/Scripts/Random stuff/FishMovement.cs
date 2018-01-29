using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FishMovement : MonoBehaviour {

    public float speed;
    public float rotationAmount;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        transform.Translate(transform.forward * speed * Time.deltaTime);
        transform.Rotate(new Vector3(0, rotationAmount, 0));
    }
}
