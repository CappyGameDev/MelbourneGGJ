using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Holes : MonoBehaviour
{

    public bool isActive;
    public bool tempLightOn;
    public string holeName;

    public Light l;
    public float RayOffset;
    public float RayMaxDist;

    void Awake()
    {
        l = GetComponent<Light>();
    }

    // Use this for initialization
    void Start()
    {
        this.gameObject.tag = "Hole";
    }

    // Update is called once per frame
    void Update()
    {
        if (!checkRays())
        {
            tempLightOn = false;
        }

        if (tempLightOn)
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
            otherCol.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y, otherCol.transform.position.z);
            //isActive = true;
        }
    }

    void OnTriggerEnter(Collider col)
    {
        GameObject otherCol = col.gameObject;
        if (otherCol.tag == "Plug")
        {
            otherCol.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y, otherCol.transform.position.z);
            //isActive = true;
        }
    }

    void OnTriggerExit(Collider col)
    {
        GameObject otherCol = col.gameObject;
        if (otherCol.tag == "Plug")
        {
            isActive = false;
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
        Debug.DrawRay(transform.position, transform.right * RayMaxDist, Color.red);
        if (Physics.Raycast(transform.position, transform.right * RayMaxDist, out hit))
        {
            if (hit.collider.gameObject.tag == "Plug")
                return true;
            else return false;
        }
        Debug.DrawRay(new Vector3(transform.position.x + RayOffset, transform.position.y, transform.position.z), transform.right * RayMaxDist, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x + RayOffset, transform.position.y, transform.position.z), transform.right * RayMaxDist, out hit))
        {
            if (hit.collider.gameObject.tag == "Plug")
                return true;
            else return false;
        }
        Debug.DrawRay(new Vector3(transform.position.x - RayOffset, transform.position.y, transform.position.z), transform.right * RayMaxDist, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x - RayOffset, transform.position.y, transform.position.z), transform.right * RayMaxDist, out hit))
        {
            if (hit.collider.gameObject.tag == "Plug")
                return true;
            else return false;
        }
        Debug.DrawRay(new Vector3(transform.position.x, transform.position.y + RayOffset, transform.position.z), transform.right * RayMaxDist, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x, transform.position.y + RayOffset, transform.position.z), transform.right * RayMaxDist, out hit))
        {
            if (hit.collider.gameObject.tag == "Plug")
                return true;
            else return false;
        }
        Debug.DrawRay(new Vector3(transform.position.x, transform.position.y - RayOffset, transform.position.z), transform.right * RayMaxDist, Color.red);
        if (Physics.Raycast(new Vector3(transform.position.x, transform.position.y - RayOffset, transform.position.z), transform.right * RayMaxDist, out hit))
        {
            if (hit.collider.gameObject.tag == "Plug")
                return true;
            else return false;
        }

        else return false;
    }
}
