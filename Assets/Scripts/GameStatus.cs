using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameStatus : MonoBehaviour {

    static GameStatus Current;
    public int m_numPlayer = 1;

    public static GameStatus GetCurrentGS()
    {
        return Current;
    }
	// Use this for initialization
	void Start ()
    {
        if(Current != null)
        {
            Destroy(gameObject);
            return;
        }

        Current = this;
        GameObject.DontDestroyOnLoad(gameObject);
	}
}