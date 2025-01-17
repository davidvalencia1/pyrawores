TECHNOLOGY {
    type = "technology",
    name = "casting-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/casting-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "casting-mk02",
    icon = "__pyraworesgraphics__/graphics/technology/casting-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"casting-mk01"},
    dependencies = {"casting-mk01"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = "technology",
    name = "casting-mk03",
    icon = "__pyraworesgraphics__/graphics/technology/casting-mk03.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"casting-mk02"},
    dependencies = {"casting-mk02"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 60
    }
}

TECHNOLOGY {
    type = "technology",
    name = "casting-mk04",
    icon = "__pyraworesgraphics__/graphics/technology/casting-mk04.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"casting-mk03"},
    dependencies = {"casting-mk03"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"military-science-pack",   1},
            {"production-science-pack", 1},
            {"utility-science-pack",    1}
        },
        time = 60
    }
}
