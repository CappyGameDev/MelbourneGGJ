using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{

    public class Connections
    {
        public string ConnectionOne;
        public string ConnectionTwo;

        public Connections(string Con1, string Con2)
        {
            ConnectionOne = Con1;
            ConnectionTwo = Con2;
        }
    }

    public class Connectors
    {
        public string ConnectionOne;
        public string ConnectionTwo;

        public Connectors(string Con1, string Con2)
        {
            ConnectionOne = Con1;
            ConnectionTwo = Con2;
        }

        public Connectors()
        {
            ConnectionOne = null;
            ConnectionTwo = null;
        }
    }

    public Connections[] ConnectionsRequired;
    public string[] connectionsrequired;
    public Connectors[] connectors;
    


    // Use this for initialization
    void Start()
    {
        ConnectionsRequired = new Connections[connectionsrequired.Length / 2];
        initializeArray();
        for (int i = 0; i < ConnectionsRequired.Length; i++)
        {
            Debug.Log(ConnectionsRequired[i].ConnectionOne + " " + ConnectionsRequired[i].ConnectionTwo);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void initializeArray()
    {
        for (int i = 0; i < connectionsrequired.Length; i += 2)
        {
            if (connectionsrequired[i + 1] != null)
            {
                if (i != 0)
                {
                    if(i / 2 <= ConnectionsRequired.Length)
                    ConnectionsRequired[i / 2] = new Connections(connectionsrequired[i], connectionsrequired[i + 1]);
                }
                else
                {
                    ConnectionsRequired[i] = new Connections(connectionsrequired[i], connectionsrequired[i + 1]);
                }
            }
        }
    }
}
