using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;


public class SelectionManager : MonoBehaviour {

    public int m_numOfPlayer;
    public int m_SelectionCar = 0;
    public int m_RotationSpeed = 20;
    public float m_decay = 0.5f;
    public List<GameObject> CarAvailable;
    public Vector3 m_position1;
    public Vector3 m_position2;

    private string m_ready = "Ready_P";
    private string m_horizontal = "Dpadhorizontal_P";

    public  bool m_isReady = false;
    private float m_resetDecay;
    private GameObject m_camera;
    private int Selection = 0;

    void Start ()
    {
        m_ready = m_ready + name.Substring(name.Length - 1);
        m_horizontal = m_horizontal + name.Substring(name.Length - 1);
        m_resetDecay = m_decay;
        m_camera = Camera.main.gameObject;
        m_position1 = m_camera.transform.position;
        m_numOfPlayer = GameStatus.GetCurrentGS().m_numPlayer;

        PlayerPrefs.SetInt("m_Ready", 0);

        CarAvailable = new List<GameObject>();

        foreach (Transform t in transform)
        {
            CarAvailable.Add(t.gameObject);
            t.gameObject.SetActive(false);

            CarAvailable[m_SelectionCar].SetActive(true);
        }

        if (gameObject.name == "Selection Manager1")
        {
            for (int i = 1; i < PlayerPrefs.GetInt("m_numPlayer"); i++)
            {
                GameObject temp_SelectionManager;
                temp_SelectionManager = Instantiate(this.gameObject, new Vector3 (transform.position.x+2.66f,transform.position.y,transform.position.z),transform.rotation);
                temp_SelectionManager.name = "SelectionManager" + (i+1);
            }
        }
    }

    void Update ()
    {
        if (Selection > CarAvailable.Count-1)
                Selection = 0;
        if (Selection < 0)
                Selection = CarAvailable.Count-1;

        NumOfSelection(PlayerPrefs.GetInt("m_numPlayer"));
        Select(Selection);
        InputMethod();
        Rotate();
        IsReady();
    }

    public void NumOfSelection(int nPlayer)
    {
        nPlayer = PlayerPrefs.GetInt("m_numPlayer");

        switch (nPlayer)
        {
            case 1:
                m_camera.transform.position = m_position1;
                break;
            case 2:
                m_camera.transform.position = m_position2;
                break;
            default:
                m_camera.transform.position = m_position1;
                break;
        }
    }

    public void Rotate()
    {
        transform.Rotate(new Vector3(0.0f, Time.deltaTime* m_RotationSpeed, 0.0f));
    }

    public void Select (int index)
    {
        if (index == m_SelectionCar)
            return;
        if (index < 0 || index >= CarAvailable.Count)
            return;

        CarAvailable[m_SelectionCar].SetActive(false);
        m_SelectionCar = index;
        CarAvailable[m_SelectionCar].SetActive(true);

    }

    public void InputMethod()
    {
        //Delay
        if (m_decay > 0)
              m_decay -= Time.deltaTime;

        //Left
        if (Input.GetAxis(m_horizontal) <= -1 && m_decay <= 0)
        {
            Selection--;
            m_decay = m_resetDecay;
        }

        //Right
        if (Input.GetAxis(m_horizontal) >= 1 && m_decay <= 0)
        {
            Selection++;
            m_decay = m_resetDecay;

        }

        if (Input.GetButtonDown(m_horizontal) && m_decay <= 0)
        {
            Selection--;
            m_decay = m_resetDecay;
        }

        //Right
        if (Input.GetButtonDown(m_horizontal) && m_decay <= 0)
        {
            Selection++;
            m_decay = m_resetDecay;

        }
    }

    public void IsReady()
    {

        if (Input.GetButtonDown(m_ready))
        {
            Debug.Log(Input.GetAxis(m_horizontal));

            if (!m_isReady)
            {
                PlayerPrefs.SetInt("m_Ready", PlayerPrefs.GetInt("m_Ready") + 1);
                m_isReady = true;

                if (PlayerPrefs.GetInt("m_Ready") == PlayerPrefs.GetInt("m_numPlayer"))
                {
                    SceneLoader.GetCurrentSL().LoadLevel("S_Game");

                }
            }
            else if (m_isReady)
            {
                PlayerPrefs.SetInt("m_Ready", PlayerPrefs.GetInt("m_Ready") - 1);
                m_isReady = false;
            }
        }
    }
}



