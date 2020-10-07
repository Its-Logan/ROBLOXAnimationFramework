# ROBLOXAnimationFramework
Advanced Animation Framework for ROBLOX

I made this a while back when I was working on a FPS system. I've had it for a while and there isn't really anything to be added to it, so I thought might as well to release it to the public.

## THIS IS ONLY FOR ROBLOX STUDIO!

## How to install
Method 1
  1. First of all create a **Module Script** anywhere in your place.
  2. Copy all of the code from the latest release, and paste it into the module script.
  3. Use the "**require()**" function to require the module script.
  4. Have fun with it.

Method 2
  1. Go to "**Releases**" on the github page, and download the latest file.
  2. Right click *workspace* or any other Parent, and click open from file.
  3. Select the downloaded Release and click "**Open**"
  4. Use the "**require()**" function to require the module script.
  5. Have fun with it.
  
## How to use
`* = Required`
> :Play(AnimationController, Animation, Object, Override) Plays a new animation
>
>   AnimationController (*)  Instance, Classname is *AnimationController* or *Humanoid*
>   Animation (*) Instance, Classname is *Animation*\n
>   Object (*) Instance, The object of which the animation you want to be played is, This will be stored in a table for future functions.
>   Override bool, This will override the current playing animation.
>
>  :Stop(Object, WaitForAnimationToFinish) Stops a animation from an object.
>
>   Object (*) Instance, the object of which the animation is playing under, this was stored from the :Play() function
>   WaitForAnimationToFinish bool, This will wait to until the current animation is done playing to stop it

