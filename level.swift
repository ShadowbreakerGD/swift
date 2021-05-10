/// A level of the Brick Breaker game.
public class Level: GameLevel {
    
    // The variables for the level.
    public var paddle : Paddle
    public var balls : [Ball] = []
    public var ballImage : Image = #imageLiteral(resourceName: "Ball_1@2x.png")
    public var paddleImage : Image = #imageLiteral(resourceName: "Paddle_6@2x.png")
    public var difficulty : Double = 3
    public var brickCount : Int = 0
    // Completion handler.
    
    
    var layout: Layout
    // Add lives.

    
    /// Creates a level and sets its initial values.
    public init(using layout: Layout = Layout.plain()) {
        scene.hasCollisionBorder = true
        scene.backgroundImage = #imageLiteral(resourceName: "Background_1.png")
        paddle = Paddle(image: paddleImage)
        self.layout = layout
    }
    
    /// Adds all of the game elements and runs the level.
    public func run() {
        // Add a paddle.
        addPaddle()
        
        // Add a ball and give it a velocity.
        let ball = addBall()
        ball.setVelocity(x: 500, y: 500)
        
        
        // Add a brick layout.
        addBricks(layout: layout, brickMaker: createBrick(color:))
        
        
        // Add walls and a foul line.
        addWalls()

        
        // Add accessibility information.
        addAccessibility()
    }
    
    /// Creates a brick using a color.
    public func createBrick(color: Color) -> Brick {
        let brick = Brick(tint: color)
        
        // Brick customizations.
        
        
        
        return brick
    }
    
    
    /// Called any time a brick breaks. Checks if the level is complete. 
    public func checkForLevelCompletion() {
        
        
        
    }
    
    /// Called after you win the level.
    public func winLevel() {
        let reward = Label(text: "🥳", color: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), size: 225, name: "reward")
        scene.place(reward, at: Point(x: 0, y: 0))
        clearLevel()
        
       
    }
    
    /// Called when the ball hits the foul line.
    func hitFoulLine(sprite: Sprite) {
        
       
        
        
    }
    
    
    /// Called when you lose the level.
    public func loseLevel() {
        let failure = Label(text: "😭", color: #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), size: 200)
        scene.place(failure, at: Point(x: 0, y: 0))
        clearLevel()
        
        
        
    }
    
    /// Adds a foul line to remove balls when hit.
   func addFoulLine() {
        let foulLine = Wall(image: #imageLiteral(resourceName: "FoulTile@2x.png"), orientation: .horizontal)
        foulLine.scale = 1
        scene.place(foulLine, at: Point(x: 0, y: -500))
        
        foulLine.setOnCollisionHandler { collision in
            
            if collision.spriteB.name == "ball" {
                self.hitFoulLine(sprite: collision.spriteB)
            }
        }
    }
    
    /// Adds a paddle and sets its values.
    func addPaddle() {
        paddle = Paddle(image: paddleImage)
        paddle.bounciness = 1.05 + (0.02 * difficulty)
        scene.place(paddle, at: Point(x: 0, y: -300))
        paddle.enableHorizontalTracking(in: scene)
        scene.place(paddle.collisionSoundSource, at: paddle.position)
    }
    
    /// Creates a ball and adds it to the balls array.
    public func addBall(at point: Point = Point.zero) -> Ball {
        let ball = Ball(image: ballImage)
        scene.place(ball, at: point)
        balls.append(ball)
        
        monitorBall()
        
        return ball
    }
}
