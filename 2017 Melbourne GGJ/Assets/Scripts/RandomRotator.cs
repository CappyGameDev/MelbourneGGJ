using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomRotator : MonoBehaviour {

    private Rigidbody rb;

	// Use this for initialization
	void Start () {
        Rot();

    }

    void Rot()
    {
        rb = GetComponent<Rigidbody>();

        rb.AddForce(transform.forward, ForceMode.Impulse);

        rb.AddTorque(Random.Range(-500, 500), Random.Range(-500, 500), Random.Range(-500, 500) * 5, ForceMode.Impulse);
    }
}
