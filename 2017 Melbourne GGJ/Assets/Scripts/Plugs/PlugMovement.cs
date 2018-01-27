using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlugMovement : MonoBehaviour
{

    public bool mouseMoving;
    public float distance = 10;
    public Vector3 defaultSpace;

    public string holeImIn;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnMouseDrag()
    {
        Vector3 mousePosition = new Vector3(Input.mousePosition.x, Input.mousePosition.y, distance);
        Vector3 objPosition = Camera.main.ScreenToWorldPoint(mousePosition);

        RaycastHit hit;
        if (Physics.Raycast(gameObject.transform.position, transform.forward * 10, out hit))
        {
            if (hit.collider.gameObject.tag == "Hole")
            {
                hit.collider.gameObject.GetComponent<Holes>().tempLightOn = true;
            }
        }

        transform.position = objPosition;
    }

    void OnMouseUp()
    {
        RaycastHit hit;
        if (Physics.Raycast(gameObject.transform.position, transform.forward * 10, out hit))
        {
            if (hit.collider.gameObject.tag == "Hole")
            {
                transform.position = new Vector3(transform.position.x, transform.position.y, 0.25f);
                holeImIn = hit.collider.gameObject.GetComponent<Holes>().holeName;
            }
            else
            {
                transform.localPosition = defaultSpace;
                holeImIn = "Nothing";
            }
        }
    }
}
