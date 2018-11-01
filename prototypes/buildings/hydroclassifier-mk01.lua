RECIPE {
    type = "recipe",
    name = "hydroclassifier-mk01",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"steel-plate", 20},
        {"iron-plate", 15},
        {"classifier", 1},
        {"electronic-circuit", 20},
    },
    results = {
        {"hydroclassifier-mk01", 1}
    }
}:add_unlock("machines-mk01")

ITEM {
    type = "item",
    name = "hydroclassifier-mk01",
    icon = "__pyrawores__/graphics/icons/hydroclassifier-mk01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-rawores-buildings",
    order = "b",
    place_result = "hydroclassifier-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hydroclassifier-mk01",
    icon = "__pyrawores__/graphics/icons/hydroclassifier-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "hydroclassifier-mk01"},
    fast_replaceable_group = "hydroclassifier-mk01",
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hydroclassifier"},
    crafting_speed = 0.2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.02
    },
    energy_usage = "500kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pyrawores__/graphics/entity/hydroclassifier-mk01/h1.png",
                --priority = "high",
                width = 96,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 2,
                shift = util.by_pixel(-63, -2)
            },
            {
                filename = "__pyrawores__/graphics/entity/hydroclassifier-mk01/h2.png",
                --priority = "high",
                width = 96,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 2,
                shift = util.by_pixel(31, -2)
            },
            {
                filename = "__pyrawores__/graphics/entity/hydroclassifier-mk01/h3.png",
                --priority = "high",
                width = 32,
                height = 227,
                line_length = 21,
                frame_count = 150,
                animation_speed = 2,
                shift = util.by_pixel(95, -2)
            },
            {
                filename = "__pyrawores__/graphics/entity/hydroclassifier-mk01/shadow.png",
                --priority = "high",
                width = 96,
                height = 222,
                line_length = 21,
                frame_count = 150,
                animation_speed = 2,
                draw_as_shadow = true,
                shift = util.by_pixel(79, -2)
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-0.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, 4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 1.0},
        idle_sound = {filename = "__pyrawores__/sounds/flotation-cell.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}