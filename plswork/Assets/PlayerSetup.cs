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

    // change this value to get desired smoothness
    public float SmoothTime = 0.01f;
    // This value will change at the runtime depending on target movement. Initialize with zero vector.
    private Vector3 velocity = Vector3.zero;

    // Start is called before the first frame update
    void Start()
    {
        PlayerRb = GetComponent<Rigidbody>();
        tick = 0;

    }

    // Update is called once per frame
    void FixedUpdate()
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
                PlayerFowardSpeed = 35f;
                break;

            case 2:
                PlayerFowardSpeed = 45f;
                break;

            case 3:
                PlayerFowardSpeed = 65f;
                break;

            case 4:
                PlayerFowardSpeed = 75f;
                break;

            case 5:
                PlayerFowardSpeed = 125f;
                break;

            case 6:
                PlayerFowardSpeed = 175f;
                break;

            case 7: // Super speed
                PlayerFowardSpeed = 250f;
                break;
        }


        // Move player foward(+script) and Make PlayerCam follow position of player (if player is alive)

        if (playerAlive) {
            // Player move 
            PlayerRb.AddForce(0, 0, PlayerFowardSpeed * Time.deltaTime, ForceMode.VelocityChange);
            
            // extra gravity
            if (IsGrounded == false)
            {
                transform.position = transform.position + new Vector3(0, -2 * Time.deltaTime, 0);
            }

            // update position
            Vector3 targetPosition = transform.position + offset;
            playerPos.position = Vector3.SmoothDamp(playerPos.position, targetPosition, ref velocity, SmoothTime);
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