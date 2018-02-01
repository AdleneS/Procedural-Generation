using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Menu : MonoBehaviour {

    public List<GameObject> m_allMenu;
    public string m_currentMenu = "StartMenu";

	void Start ()
    {
        foreach (Transform t in transform)
        {
            m_allMenu.Add(t.gameObject);
        }
    }

    void Update()
    {
        Back();
    }

    public void NumOfPlayers(int Num)
    {
        PlayerPrefs.SetInt("m_numPlayer", Num);
        //GameStatus.GetCurrentGS().m_numPlayer = Num;
    }


    public void ChangeMenu(string MenuToGo)
    {
        GameObject CurrentMenuTemp = m_allMenu.Find(obj => obj.name == m_currentMenu);
        CurrentMenuTemp.SetActive(false);

        GameObject StartMenuTemp = m_allMenu.Find(obj => obj.name == MenuToGo);

        m_currentMenu = MenuToGo;
        StartMenuTemp.SetActive(true);
    }

    public void Back()
    {
        if (Input.GetButtonDown("Remove"))
        {
            GameObject CurrentMenuTemp = m_allMenu.Find(obj => obj.name == m_currentMenu);

            if (m_allMenu.IndexOf(CurrentMenuTemp) > 3 )
            {
                ChangeMenu(m_allMenu[m_allMenu.IndexOf(CurrentMenuTemp) - 1].name);
            }
        }
    }
}
