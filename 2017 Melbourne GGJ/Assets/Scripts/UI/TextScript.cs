using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextScript : MonoBehaviour
{

    public RectTransform rt;
    public GameManager gm;

    public GameManager.Connections connection;
    public UnityEngine.UI.Text text;

    void Awake()
    {
        rt = GetComponent<RectTransform>();
        gm = GameObject.FindGameObjectWithTag("Manager").GetComponent<GameManager>();
        text = GetComponent<UnityEngine.UI.Text>();
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(new Vector3(0, -2, 0));
        if(connection != null)
        text.text = connection.ConnectionOne + " " + connection.ConnectionTwo;


        if (rt.localPosition.y <= -275)
        {
            gm.streak = 0;
            Destroy(gameObject);
        }

        for (int i = 0; i < gm.inGameConnections.Length; i++)
        {
            if (gm.inGameConnections != null && connection != null)
            {
                if ((gm.inGameConnections[i].ConnectionOne == connection.ConnectionOne 
                    && gm.inGameConnections[i].ConnectionTwo == connection.ConnectionTwo) || gm.inGameConnections[i].ConnectionTwo == connection.ConnectionOne
                                                                                             && gm.inGameConnections[i].ConnectionOne == connection.ConnectionTwo)
                {
                    gm.streak += 1;
                    Destroy(gameObject);
                }

            }
        }


    }

    void OnBecameInvisible()
    {
        Destroy(gameObject);
    }
}
