using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlugMovement : MonoBehaviour
{

    public bool mouseMoving;
    public float distance = 10;
    public Vector3 defaultSpace;

    public string holeImIn;

    public Text somethingText;

    private GameObject canvas;
    public GameManager gm;

    float timer = 2.0f;

    void Awake()
    {
        if (GameObject.FindGameObjectWithTag("Manager") != null)
            gm = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        canvas = GameObject.FindGameObjectWithTag("Canvas");
    }

    // Use this for initialization
    void Start()
    {
        this.gameObject.tag = "Plug";
    }

    // Update is called once per frame
    void Update()
    {
        if (somethingText != null)
        {
            if (somethingText.gameObject.activeSelf == true)
            {
                timer -= Time.deltaTime;
                if (timer <= 0)
                {
                    somethingText.gameObject.SetActive(false);
                    timer = 2.0f;
                }
            }

        }
    }

    void OnMouseDrag()
    {
        Vector3 mousePosition = new Vector3(Input.mousePosition.x, Input.mousePosition.y, distance);
        Vector3 objPosition = Camera.main.ScreenToWorldPoint(mousePosition);

        RaycastHit hit;
        Debug.DrawRay(gameObject.transform.position, transform.forward * 10, Color.red);
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
            if (hit.collider.gameObject.tag == "Hole" && !hit.collider.gameObject.GetComponent<Holes>().isActive)
            {
                transform.position = new Vector3(hit.collider.gameObject.transform.position.x, hit.collider.gameObject.transform.position.y, hit.collider.gameObject.transform.position.z);

                if(gm != null)
                gm.tries++;
                holeImIn = hit.collider.gameObject.GetComponent<Holes>().holeName;
                hit.collider.gameObject.GetComponent<Holes>().isActive = true;
            }
            else
            {
                transform.localPosition = defaultSpace;
                if (somethingText != null)
                    somethingText.gameObject.SetActive(true);
                holeImIn = "Nothing";
            }
        }
        else
        {
            transform.localPosition = defaultSpace;
            if (somethingText != null)
                somethingText.gameObject.SetActive(true);
            holeImIn = "Nothing";
        }
    }
}
