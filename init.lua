--[[

The MIT License (MIT)
Copyright (C) 2023 Acronymmk

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the Software
without restriction, including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

]]

minetest.register_craft({
	output = "confetti:confetti",
	recipe = {
		{"", "dye:blue", "dye:yellow"},
		{"", "default:stick", "dye:red"},
		{"default:stick", "", ""},
	}
})

minetest.register_craftitem("confetti:confetti", {
	description = "Confetti",
	inventory_image = "confetti.png",
    stack_max = 99,
	on_use = function(itemstack, user, pointed_thing)
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local velocity = 8
		local particle_amount = 10
		local particle_size = 1.5

		
		for a=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
			local red = minetest.add_particle({
				pos = {x=pos.x, y=pos.y+1.5, z=pos.z},
				velocity = random_vel,
				acceleration = {x=0, y=-10, z=0},
				expirationtime = 8,
				size = particle_size,
				collisiondetection = true,
				collision_removal = true,
				texture = "confetti_red.png",
			})

		end

        for b=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local blue = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_blue.png",
            })


		end

        for c=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local green = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_green.png",
            })

		end

        for d=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local white = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_white.png",
            })

		end

        for e=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local yellow = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_yellow.png",
            })

		end

        for f=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local black = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_black.png",
            })

		end

        for g=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local purple = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_purple.png",
            })

		end

        for h=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local pink = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_pink.png",
            })


		end

        for i=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local orange = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_orange.png",
            })

		end

        for j=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local cyan = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_cyan.png",
            })

		end

        for k=1,particle_amount do
			local random_vel = {x=dir.x*velocity+math.random(-5,5), y=dir.y*velocity+math.random(-5,5), z=dir.z*velocity+math.random(-5,5)}
			
            local brown = minetest.add_particle({
                pos = {x=pos.x, y=pos.y+1.5, z=pos.z}, 
                velocity = random_vel, 
                acceleration = {x=0, y=-10, z=0},
                expirationtime = 8,
                size = particle_size,
                collisiondetection = true,
                collision_removal = true,
                texture = "confetti_brown.png",
            })

		end


        itemstack:take_item(1)
		return itemstack
	end,
})

print('[Confetti] loaded...')