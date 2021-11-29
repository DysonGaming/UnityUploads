using UnityEngine;

public class PlayerSetup : MonoBehaviour
{
    // -- Important movement/position vars

    public Rigidbody PlayerRb;
    public Transform playerPos;
    public Vector3 offset;
    public float HorizontalValue = 0f;

    // -- Game Vars & Init Stats

    public bool playerAlive = true;
    public float PlayerSideSpeed = 15.0f;
    public int PlayerFowardSpeed = 1;

    int iNew = 1;
    int iCurrent = 1;

    bool move = false;
    bool IsGrounded = false;

    // Start is called before the first frame update
    void Start()
    {
        PlayerRb = GetComponent<Rigidbody>();
    }


    // Update is called once per frame
    void Update()
    {

        if (Input.GetAxis("Horizontal") != 0 ) {
            move = true;
            // Set Value of Horizontal movement
            HorizontalValue = Input.GetAxis("Horizontal");
            Debug.Log(HorizontalValue);
        } else {move = false;}

        if (move) {

            // Reason for Transform is initial movement, and Addforce is for smoothness when horizontal direction changes.
            PlayerRb.AddForce((new Vector3(HorizontalValue * Time.deltaTime, 0, 0) * PlayerSideSpeed), ForceMode.VelocityChange);
        }         

        // Make PlayerCam follow position of player (if player is alive)

        if (playerAlive) {
            playerPos.position = transform.position + offset;
        }


        /* I want:

        A system that gradually increases the foward movement speed.

        Loop that if the current level is lower than the new level will set the case variable(current level) to the new level. This will continue until level 5 where it will stop increasing


        */
        if (playerAlive && iCurrent <= 5) {

            iCurrent = iNew;

            switch (iCurrent) 
            {

                case 1:
                    // Activate Speed LVL 1
                    PlayerFowardSpeed = 10;

                    iNew = 2;
                    Debug.Log(PlayerFowardSpeed+" Is the new speed");
                    break;

                case 2:

                    if (Time.time > 10) {
                    // Activate Speed LVL 2
                    PlayerFowardSpeed = 20;

                    iNew = 3;
                    Debug.Log(PlayerFowardSpeed+" Is the new speed");
                    }
                    break;

                case 3:
                    if (Time.time > 20) {
                    // Activate Speed LVL 3
                    PlayerFowardSpeed = 30;

                    iNew = 4;
                    Debug.Log(PlayerFowardSpeed+" Is the new speed");                        
                    }                    

                    break;

                case 4:
                    if (Time.time > 30) {
                    // Activate Speed LVL 4
                    PlayerFowardSpeed = 40;

                    iNew = 5;
                    Debug.Log(PlayerFowardSpeed+" Is the new speed");                        
                    }                    

                    break;

                case 5:
                    if (Time.time > 40) {
                    // Activate Speed LVL 5
                    PlayerFowardSpeed = 50;

                    iNew = 6;
                    Debug.Log(PlayerFowardSpeed+" Is the new speed");                        
                    }                    

                    break;
                
            }

        }
        if(IsGrounded) {
            PlayerRb.AddForce(new Vector3( 0, 0, PlayerFowardSpeed * Time.deltaTime), ForceMode.VelocityChange);
        }
    
    }

    // Void is called when this object collides with ANY object
    void OnCollisionEnter (Collision collisionInfo)
    {
        if(collisionInfo.gameObject.name == "Level 1") {
            IsGrounded = true;
        }
    }
}
