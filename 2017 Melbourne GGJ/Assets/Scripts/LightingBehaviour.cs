using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightingBehaviour : MonoBehaviour {

    [Header("StartRoomLights")]
    public GameObject switchBoardLight;
    public GameObject ceilingLight;

    private float timer0;

    private float timer;
    private float decayRate;

    private float minFlickerSpeed;
    private float maxFlickerSpeed;

    private float routineStop;

	// Use this for initialization
	void Start () {
        timer = 50;
        decayRate = 1;
        timer0 = 1;
        switchBoardLight.GetComponent<Light>().enabled = false;
        ceilingLight.GetComponent<Light>().enabled = false;
        minFlickerSpeed = 1;
        maxFlickerSpeed = 10;
    }
	
	// Update is called once per frame
	void Update () {

        if (routineStop == 3)
        {
            StopCoroutine("Flashing");
            timer0 = 3;

        }

        if (timer0 == 1)
        {
            timer -= decayRate;
            if (timer <= 0)
            {
                timer = 0;
                timer0 = 2;
            }
        }
        if (timer0 == 2)
        {
            StartCoroutine(Flashing());
        }
        if (timer0 == 3)
        {

        }
	}
    IEnumerator Flashing ()
    {
        while (true)
        {
            yield return new WaitForSeconds(Random.Range(minFlickerSpeed, maxFlickerSpeed));
            ceilingLight.GetComponent<Light>().enabled = !ceilingLight.GetComponent<Light>().enabled;
            routineStop += 1;
            Debug.Log("Value = " + routineStop);
        }
    }
}
