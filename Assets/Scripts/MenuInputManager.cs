using System.Collections.Generic;
using UnityEngine;

public class MenuInputManager : MonoBehaviour {

    public List<GameObject> m_readyBtn;

	// Use this for initialization
	void Start ()
    {
        m_readyBtn = new List<GameObject>();

        foreach (Transform t in transform)
        {
            m_readyBtn.Add(t.gameObject);
            t.gameObject.SetActive(false);
        }

        for (int i = 0; i < PlayerPrefs.GetInt("m_numPlayer"); i++)
        {
            m_readyBtn[i].SetActive(true);
        }
    }
}
