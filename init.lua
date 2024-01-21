--[[

The MIT License (MIT)
Copyright (C) 2024 Flay Krunegan

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
    output = "confetti:confetti_rainbow",
    recipe = {
        {"", "dye:blue", "dye:yellow"},
        {"", "default:stick", "dye:red"},
        {"default:stick", "", ""},
    }
})

local confetti_colors = {
    "red", "blue", "green", "white", "yellow", "black", "violet", "pink", "orange", "cyan", "brown"
}

for _, color in ipairs(confetti_colors) do
    minetest.register_craft({
        output = "confetti:" .. color,
        recipe = {
            {"", "dye:" .. color, "dye:" .. color},
            {"", "default:stick", "dye:" .. color},
            {"default:stick", "", ""},
        }
    })

    minetest.register_craftitem("confetti:" .. color, {
        description = color:gsub("^%l", string.upper) .. " Confetti",
        inventory_image = "confetti_" .. color .. "_item.png",
        stack_max = 99,
        on_use = function(itemstack, user, pointed_thing)
            local pos = user:getpos()
            local dir = user:get_look_dir()
            local velocity = 8
            local particle_amount = 110
            local particle_size = 1.5

            for _ = 1, particle_amount do
                local random_vel = {
                    x = dir.x * velocity + math.random(-5, 5),
                    y = dir.y * velocity + math.random(-5, 5),
                    z = dir.z * velocity + math.random(-5, 5)
                }

                minetest.add_particle({
                    pos = {x = pos.x, y = pos.y + 1.5, z = pos.z},
                    velocity = random_vel,
                    acceleration = {x = 0, y = -10, z = 0},
                    expirationtime = 8,
                    size = particle_size,
                    collisiondetection = true,
                    collision_removal = true,
                    texture = "confetti_" .. color .. ".png",
                })
            end

            itemstack:take_item(1)
            return itemstack
        end,
    })
end

minetest.register_craftitem("confetti:confetti_rainbow", {
    description = "Confetti",
    inventory_image = "confetti_rainbow.png",
    stack_max = 99,
    on_use = function(itemstack, user, pointed_thing)
        local pos = user:getpos()
        local dir = user:get_look_dir()
        local velocity = 8
        local particle_amount = 10
        local particle_size = 1.5

        for _, color in ipairs(confetti_colors) do
            for _ = 1, particle_amount do
                local random_vel = {
                    x = dir.x * velocity + math.random(-5, 5),
                    y = dir.y * velocity + math.random(-5, 5),
                    z = dir.z * velocity + math.random(-5, 5)
                }

                minetest.add_particle({
                    pos = {x = pos.x, y = pos.y + 1.5, z = pos.z},
                    velocity = random_vel,
                    acceleration = {x = 0, y = -10, z = 0},
                    expirationtime = 8,
                    size = particle_size,
                    collisiondetection = true,
                    collision_removal = true,
                    texture = "confetti_" .. color .. ".png",
                })
            end
        end

        itemstack:take_item(1)
        return itemstack
    end,
})

print('[Confetti] loaded...')