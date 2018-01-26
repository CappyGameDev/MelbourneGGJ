using UnityEngine;

public class Rotator : MonoBehaviour {

    public float speed = 1;
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(0, 10 * speed,0);
	}
}
