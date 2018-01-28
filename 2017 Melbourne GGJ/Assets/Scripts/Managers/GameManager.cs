using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

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

    public Connections[] inGameConnections = new Connections[2];

    public float streak = 0;
    public Text streakText;

    public Canvas mainCanvas;

    public GameObject ConnectionsText;

    public float tries = 0;


    [Header("Toaster")]
    public GameObject Toaster;
    public GameObject Toast;
    private Vector3 ToastStartPos;
    public bool toastUp = false;
    public float ToastYOffset;

    public GameObject Canvas;

    [Header("light")]
    public float FadeSpeed;

    [Header("Plug Things")]
    public string[] Combos = new string[10];
    public Connections[] specialFeatures = new Connections[5];
    public string[] SceneLoad = new string[2];

    [Header("Animations")]
    public GameObject[] Animations;

    void Awake()
    {
        Canvas = GameObject.FindGameObjectWithTag("Canvas");
        Toast = GameObject.FindGameObjectWithTag("Toast");
        Toaster = GameObject.FindGameObjectWithTag("Toaster");
    }

    // Use this for initialization
    void Start()
    {
        mainLight.intensity = 0.0f;
        ConnectionsRequired = new Connections[connectionsrequired.Length / 2];
        initializeArray();
        initializeCombosArray();
        tries = 0;
        ToastStartPos = Toast.transform.position;

        //StartCoroutine(spawnText());
    }

    // Update is called once per frame
    void Update()
    {
        //streakText.text = "Streak: " + streak;

        //animations player

        for (int i = 0; i < inGameConnections.Length; i++)
        {
            if (inGameConnections[i] != null)
            {
                for (int j = 0; j < specialFeatures.Length; j++)
                {
                    if (specialFeatures[j] != null)
                    {
                        if (specialFeatures[j].ConnectionOne != "" && specialFeatures[j].ConnectionTwo != "")
                        {
                            if (inGameConnections[i].Equals(specialFeatures[j]))
                            {
                                Debug.Log("Matched anim");
                                for (int k = 0; k < Animations.Length; k++)
                                {
                                    if (!Animations[k].activeSelf)
                                    {
                                        Animations[k].SetActive(true);
                                        specialFeatures[j].ConnectionOne = "";
                                        specialFeatures[j].ConnectionTwo = "";
                                        break;
                                    }

                                }
                            }

                        }

                    }
                }
            }
        }


        //end animations player


        //try counter



        if (tries == 4)
        {
            toastUp = true;
        }

        if (toastUp == true)
        {
            Toast.transform.position = new Vector3(Toast.transform.position.x, ToastStartPos.y + 0.25f, Toast.transform.position.z);
        }

        Debug.Log(tries);
        //try counter
        switch (SceneManager.GetActiveScene().name)
        {
            case "Start":
                Connections SceneChange = new Connections(SceneLoad[0], SceneLoad[1]);
                for (int i = 0; i < inGameConnections.Length; i++)
                {
                    if (inGameConnections[i] != null)
                    {
                        if ((inGameConnections[i].ConnectionOne == SceneChange.ConnectionOne && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionTwo)
                            || (inGameConnections[i].ConnectionOne == SceneChange.ConnectionTwo && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionOne))
                        {
                            SceneManager.LoadSceneAsync("(1) Charlie");
                        }

                    }
                }
                break;
            case "(1) Charlie":
                SceneChange = new Connections(SceneLoad[0], SceneLoad[1]);
                for (int i = 0; i < inGameConnections.Length; i++)
                {
                    if (inGameConnections[i] != null)
                    {
                        if ((inGameConnections[i].ConnectionOne == SceneChange.ConnectionOne && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionTwo)
                            || (inGameConnections[i].ConnectionOne == SceneChange.ConnectionTwo && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionOne))
                        {
                            SceneManager.LoadSceneAsync("(2) Jess");
                        }

                    }
                }
                break;
            case "(2) Jess":
                SceneChange = new Connections(SceneLoad[0], SceneLoad[1]);
                for (int i = 0; i < inGameConnections.Length; i++)
                {
                    if (inGameConnections[i] != null)
                    {
                        if ((inGameConnections[i].ConnectionOne == SceneChange.ConnectionOne && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionTwo)
                            || (inGameConnections[i].ConnectionOne == SceneChange.ConnectionTwo && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionOne))
                        {
                            SceneManager.LoadSceneAsync("(3) John");
                        }

                    }
                }
                break;
            case "(3) John":
                SceneChange = new Connections(SceneLoad[0], SceneLoad[1]);
                for (int i = 0; i < inGameConnections.Length; i++)
                {
                    if (inGameConnections[i] != null)
                    {
                        if ((inGameConnections[i].ConnectionOne == SceneChange.ConnectionOne && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionTwo)
                            || (inGameConnections[i].ConnectionOne == SceneChange.ConnectionTwo && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionOne))
                        {
                            SceneManager.LoadSceneAsync("(4) Bruno");
                        }

                    }
                }
                break;
            case "(4) Bruno":
                SceneChange = new Connections(SceneLoad[0], SceneLoad[1]);
                for (int i = 0; i < inGameConnections.Length; i++)
                {
                    if (inGameConnections[i] != null)
                    {
                        if ((inGameConnections[i].ConnectionOne == SceneChange.ConnectionOne && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionTwo)
                            || (inGameConnections[i].ConnectionOne == SceneChange.ConnectionTwo && inGameConnections[i].ConnectionTwo == SceneChange.ConnectionOne))
                        {
                            SceneManager.LoadSceneAsync("Start");
                        }

                    }
                }
                break;
        }



        if (mainLight != null)
        {
            if (mainLight.intensity != 1)
            {
                LightFade();

            }

        }

        //need to fix this to have more than 1 plug set working 
        for (int i = 0; i < inGameConnections.Length; i++)
        {
            //get from children?
            if (GameObject.FindGameObjectsWithTag("Plug").Length > 1)
                inGameConnections[i] = new Connections(GameObject.FindGameObjectsWithTag("Plug")[0].GetComponent<PlugMovement>().holeImIn, GameObject.FindGameObjectsWithTag("Plug")[1].GetComponent<PlugMovement>().holeImIn);
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

    private void initializeCombosArray()
    {
        for (int i = 0; i < Combos.Length; i += 2)
        {
            if (Combos[i + 1] != null)
            {
                if (i != 0)
                {
                    if (i / 2 <= specialFeatures.Length)
                        specialFeatures[i / 2] = new Connections(Combos[i], Combos[i + 1]);
                }
                else
                {
                    specialFeatures[i] = new Connections(Combos[i], Combos[i + 1]);
                }
            }
        }
    }


    float t = 0.0f;
    private void LightFade()
    {
        mainLight.intensity = Mathf.Lerp(mainLight.intensity, 1, t);
        t += FadeSpeed * Time.deltaTime;
    }

    IEnumerator spawnText()
    {
        for (int i = 0; i < ConnectionsRequired.Length; i++)
        {
            GameObject newText = (GameObject)Instantiate(ConnectionsText, mainCanvas.transform);
            newText.GetComponent<TextScript>().connection = ConnectionsRequired[i];
            yield return new WaitForSeconds(5);
        }
    }
}
