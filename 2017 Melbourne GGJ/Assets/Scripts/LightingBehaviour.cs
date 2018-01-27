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

    public float minFlickerSpeed;
    public float maxFlickerSpeed;

    private bool routineStop;

    Coroutine ceilingFlicker;

    private bool on;

	// Use this for initialization
	void Start () {
        timer = 50;
        decayRate = 1;
        timer0 = 1;
        switchBoardLight.GetComponent<Light>().enabled = false;
        ceilingLight.GetComponent<Light>().enabled = false;
        minFlickerSpeed = 1;
        maxFlickerSpeed = 50;
        ceilingFlicker = StartCoroutine(Flashing());
    }
	
	// Update is called once per frame
	void Update () {

        if (routineStop == true)
        {
            StopCoroutine(ceilingFlicker);
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
            ceilingLight.GetComponent<Light>().enabled = true;
            yield return new WaitForSeconds(Random.Range(minFlickerSpeed, maxFlickerSpeed));
        }
        if (timer0 == 3)
        {
        
        }
	}
}
