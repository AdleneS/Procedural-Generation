using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoader : MonoBehaviour
{

    public static SceneLoader Current;

    public static SceneLoader GetCurrentSL()
    {
        return Current;
    }

    public void Start()
    {
        Current = this;
    }
    public void LoadLevel (string SCENETOGO)  
    {
        transform.GetChild(0).gameObject.SetActive(true);
        StartCoroutine(LoadAsynchronously(SCENETOGO));
    }

    IEnumerator LoadAsynchronously(string SCENETOGO)
    {
        AsyncOperation Operation = SceneManager.LoadSceneAsync(SCENETOGO);

        while (!Operation.isDone)
        {
            yield return null;
        }
    }
}
