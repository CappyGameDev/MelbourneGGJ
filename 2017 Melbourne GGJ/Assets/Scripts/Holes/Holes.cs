using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Holes : MonoBehaviour
{

    public bool isActive;
    public bool tempLightOn;
    public string holeName;

    public Light l;

    void Awake()
    {
        l = GetComponent<Light>();
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if(!checkRays())
        { 
            tempLightOn = false;
        }

        if(tempLightOn)
        {
            l.enabled = true;
        }
        else
        {
            l.enabled = false;
        }
    }

    void OnCollisionEnter(Collision other)
    { 
        GameObject otherCol = other.gameObject;
        if (otherCol.tag == "Plug")
        {
            otherCol.transform.position = new Vector3(this.gameObject.transform.position.x, this.gameObject.transform.position.y, otherCol.transform.position.z);
            isActive = true;
        }
    }

    void OnCollisionExit(Collision other)
    {

        GameObject otherCol = other.gameObject;
        if (otherCol.tag == "Plug")
        {
            isActive = false;
        }
    }

    bool checkRays()
    {
        RaycastHit hit;
        Debug.DrawRay(transform.position, -transform.forward * 10, Color.red);
        if (Physics.Raycast(transform.position, -transform.forward * 10, out hit))
        {
            return true;
        }
        Debug.DrawRay(new Vector3(transform.position.x + 0.1f, transform.position.y, transform.position.z), -transform.forward * 10, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x + 0.1f, transform.position.y, transform.position.z), -transform.forward * 10, out hit))
        {
            return true;
        }
        Debug.DrawRay(new Vector3(transform.position.x - 0.1f, transform.position.y, transform.position.z), -transform.forward * 10, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x - 0.1f, transform.position.y, transform.position.z), -transform.forward * 10, out hit))
        {
            return true;
        }
        Debug.DrawRay(new Vector3(transform.position.x, transform.position.y + 0.1f, transform.position.z), -transform.forward * 10, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x, transform.position.y + 0.1f, transform.position.z), -transform.forward * 10, out hit))
        {
            return true;
        }
        Debug.DrawRay(new Vector3(transform.position.x, transform.position.y - 0.1f, transform.position.z), -transform.forward * 10, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x, transform.position.y - 0.1f, transform.position.z), -transform.forward * 10, out hit))
        {
            return true;
        }

        else return false;
    }
}
