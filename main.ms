import "soda"

spr = new Sprite
spr.image = file.loadImage("assets/person.png")
spr.scale = 6
spr.x = 480; spr.y = 300

display(4).sprites.push spr
while true
    inp = key.axis("Horizontal")
    spr.x += inp * 5

    if inp != 0 then
        spr.scale = [inp * 6, 6]
    end if

    yield
end while
