using UnityEngine;

public class PlayerSetup : MonoBehaviour
{
    // -- Important movement/position vars

    public Rigidbody PlayerRb;
    public Transform playerPos;
    public Vector3 offset;

    float HorizontalValue = 0f;
    float PlayerSideSpeed = 45f;
    float PlayerFowardSpeed = 40f;

    // -- Game Vars & Init Stats

    bool playerAlive = true;

    bool move = false;
    public bool IsGrounded = false;
    int tick = 0;
    float OldTime;

    // Start is called before the first frame update
    void Start()
    {
        PlayerRb = GetComponent<Rigidbody>();
        tick = 0;
    }


    // Update is called once per frame
    void Update()
    {

        if (Input.GetAxis("Horizontal") != 0 ) {
            move = true;
            // Set Value of Horizontal movement
            HorizontalValue = Input.GetAxis("Horizontal") * PlayerSideSpeed;
        } else {move = false;}

        if (move && playerAlive) {

            PlayerRb.AddForce(HorizontalValue * Time.deltaTime, 0, 0, ForceMode.VelocityChange);

        }         


        // acceleration Script

        if (Time.time > OldTime)
        {
            if (tick != 7) 
            {
                tick = tick + 1;
                OldTime = Time.time + 10; // +10 = the time that is waited between speed increase
            } 
        
        }

        switch(tick)
        {
            case 1:
                PlayerFowardSpeed = 40f;
                break;

            case 2:
                PlayerFowardSpeed = 60f;
                break;

            case 3:
                PlayerFowardSpeed = 80f;
                break;

            case 4:
                PlayerFowardSpeed = 100f;
                break;

            case 5:
                PlayerFowardSpeed = 120f;
                break;

            case 6:
                PlayerFowardSpeed = 140f;
                break;

            case 7: // Super speed
                PlayerFowardSpeed = 180f;
                break;
        }


        // Move player foward(+script) and Make PlayerCam follow position of player (if player is alive)

        if (playerAlive) {
            // Player move 
            PlayerRb.AddForce(0, 0, PlayerFowardSpeed * Time.deltaTime, ForceMode.VelocityChange);

            // Attach Cam
            playerPos.position = transform.position + offset;
            
            // extra gravity
            if (IsGrounded == false)
            {
                transform.position = transform.position + new Vector3(0, -2 * Time.deltaTime, 0);
            }

        }

    
    }

    void OnCollisionEnter(Collision collisionInfo)
    {

        if (collisionInfo.gameObject.name == "Obstacle")
        {
            Debug.Log("DEAD");
            playerAlive = false;
        }

        if (collisionInfo.gameObject.name == "Board")
        {
            IsGrounded = true;
        }
    }

    void OnCollisionExit(Collision collisionEndInfo)
    {
        if (collisionEndInfo.gameObject.name == "Board")
        {
            IsGrounded = false;
        }
    }
}
