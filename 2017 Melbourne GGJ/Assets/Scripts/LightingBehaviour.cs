using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightingBehaviour : MonoBehaviour
{
    [Tooltip("How long you want the light to flicker(in seconds)")]
    public float flashTimer;
    bool flashing = true;
    private Light flashLight;
    public Light switchLight;

    void Awake()
    {
        flashLight = GetComponent<Light>();
        if(switchLight != null)
        switchLight.GetComponent<Light>().enabled = false;
    }

    // Use this for initialization
    void Start()
    {
        StartCoroutine(flash());

        if (switchLight != null)
            switchLight.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        flashTimer -= Time.deltaTime;
        if(flashTimer <= 0)
        {
            flashing = false;
            flashLight.enabled = true;

            if (switchLight != null)
                switchLight.enabled = true;
        }
    }

    IEnumerator flash()
    {
        while (flashing)
        {
            yield return new WaitForSeconds(Random.Range(0.15f, 0.5f));
            flashLight.enabled = !flashLight.enabled;

        }
    }
}
