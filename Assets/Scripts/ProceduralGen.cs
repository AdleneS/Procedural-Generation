using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class ProceduralGen : MonoBehaviour
{
    public List<GameObject> m_parts;
    public GameObject m_finish;
    public int m_roadLength = 0;
    public float m_waitBeforeNextPart;

    private float m_rotationPart = 0;
    private GameObject _parentObject;
    private GameObject m_randomPart;
    private Quaternion _PartQuaternion;
    private Transform instantiatePos;
    private int m_random;
    private bool _Construction = false;


    void Start()
    {
        m_roadLength = Random.Range(5, 15);
        _parentObject = new GameObject("Parent Object");
        instantiatePos = GameObject.Find("Start/End1").transform;
        var loadedObjects = Resources.LoadAll("plateformes");
        m_parts = new List<GameObject>();

        foreach (var loadedObject in loadedObjects)
        {
            m_parts.Add(loadedObject as GameObject);
            if (loadedObject.name == "FINISH")
            {
                m_finish = loadedObject as GameObject;
                m_parts.Remove(loadedObject as GameObject);

            }
        }

        m_randomPart = m_parts[Random.Range(0, m_parts.Count)];

        m_rotationPart += m_randomPart.transform.GetChild(0).rotation.y;

        _PartQuaternion = new Quaternion (instantiatePos.localRotation.x, instantiatePos.localRotation.y, instantiatePos.localRotation.z, instantiatePos.localRotation.w);

        var inst_Temp = Instantiate(m_randomPart, instantiatePos.position, _PartQuaternion, _parentObject.transform);
        inst_Temp.name = "_Part0";


        StartCoroutine(ConstructRoad());
    }
    
    IEnumerator ConstructRoad ()
    {
        for (int i = 1; i < m_roadLength; i++)
        {
            yield return new WaitForSeconds(2f);

            m_randomPart = m_parts[Random.Range(0, m_parts.Count)];
            instantiatePos = GameObject.Find("Parent Object/_Part" + (i - 1)).transform.GetChild(0);
            m_rotationPart += instantiatePos.localEulerAngles.y;



            _PartQuaternion = Quaternion.Euler(0, m_rotationPart, 0);//new Quaternion(instantiatePos.localRotation.x, 0, instantiatePos.localRotation.z, instantiatePos.localRotation.w);

            if (i == m_roadLength - 1 && m_randomPart != null && instantiatePos != null && _PartQuaternion != null)
            {
                var inst_Temp = Instantiate(m_finish, instantiatePos.position, _PartQuaternion, _parentObject.transform);
                inst_Temp.name = "_Part" + i;
            }

            else if (m_randomPart != null && instantiatePos != null && _PartQuaternion != null)
            {
                var inst_Temp = Instantiate(m_randomPart, instantiatePos.position, _PartQuaternion, _parentObject.transform);
                inst_Temp.name = "_Part" + i;
            }

            if (i == m_roadLength)
            {
                _Construction = true;
            }
        }
    }
}
