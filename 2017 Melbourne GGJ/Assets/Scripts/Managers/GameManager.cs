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

        public override bool Equals(object obj)
        {
            if (obj is Connections)
            {
                return Equals((Connections)obj);
            }
            else
                return base.Equals(obj);
        }

        public bool Equals(Connections o)
        {
            if (o == null)
            {
                return false;
            }
            if (ConnectionOne == o.ConnectionOne && ConnectionTwo == o.ConnectionTwo)
            {
                return true;
            }
            else return false;
        }

        public static bool operator ==(Connections one, Connections two)
        {
            if (Object.ReferenceEquals(one, two))
            {
                return true;
            }
            //if(one == null || two == null)
            //{
            //    return false;
            //}
            return false;
        }

        public static bool operator !=(Connections one, Connections two)
        {
            if (Object.ReferenceEquals(one, two))
            {
                return false;
            }
            if (one == null || two == null)
            {
                return true;
            }

            return !((one.ConnectionOne == two.ConnectionOne) && (one.ConnectionTwo == two.ConnectionTwo));
        }

        public override int GetHashCode()
        {
            int hash = 17;
            // Suitable nullity checks etc, of course :)
            hash = hash * 23 + ConnectionOne.GetHashCode();
            hash = hash * 23 + ConnectionTwo.GetHashCode();
            return hash;
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

    public Light mainLight;

    public Connections[] ConnectionsRequired;
    public string[] connectionsrequired;
    public Connectors[] connectors;

    public Connections[] inGameConnections = new Connections[1];

    // Use this for initialization
    void Start()
    {
        mainLight.intensity = 0.0f;
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
        if (mainLight.intensity != 1)
        {
            LightFade();

        }
        for (int i = 0; i < inGameConnections.Length; i++)
        {
            inGameConnections[i] = new Connections(GameObject.FindGameObjectsWithTag("Plug")[0].GetComponent<PlugMovement>().holeImIn, GameObject.FindGameObjectsWithTag("Plug")[1].GetComponent<PlugMovement>().holeImIn);
        }

        Debug.Log(inGameConnections[0].ConnectionOne + " " + inGameConnections[0].ConnectionTwo);

        for (int i = 0; i < ConnectionsRequired.Length; i++)
        {
            for (int j = 0; j < inGameConnections.Length; j++)
            {
                if (inGameConnections[j].ConnectionOne == ConnectionsRequired[i].ConnectionOne && inGameConnections[j].ConnectionTwo == ConnectionsRequired[i].ConnectionTwo)
                {
                    ConnectionsRequired[i].ConnectionOne = "null";
                    ConnectionsRequired[i].ConnectionTwo = "null";
                    Debug.Log("Matched: " + ConnectionsRequired[i].ConnectionOne + " and " + ConnectionsRequired[i].ConnectionTwo);
                }
            }
        }


    }

    private void initializeArray()
    {
        for (int i = 0; i < connectionsrequired.Length; i += 2)
        {
            if (connectionsrequired[i + 1] != null)
            {
                if (i != 0)
                {
                    if (i / 2 <= ConnectionsRequired.Length)
                        ConnectionsRequired[i / 2] = new Connections(connectionsrequired[i], connectionsrequired[i + 1]);
                }
                else
                {
                    ConnectionsRequired[i] = new Connections(connectionsrequired[i], connectionsrequired[i + 1]);
                }
            }
        }
    }


    float t = 0.0f;
    private void LightFade()
    {
        mainLight.intensity = Mathf.Lerp(mainLight.intensity, 1, t);
        t += 0.05f * Time.deltaTime;
    }
}
