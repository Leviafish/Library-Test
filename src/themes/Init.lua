return function(WindUI, Creator)
	return {

		-- ════════════════════════════════════════════════════════════════
		--  CORE
		-- ════════════════════════════════════════════════════════════════

		Dark = {
			Name = "Dark",
			Background  = Color3.fromHex("#0e0e10"),
			Accent      = Color3.fromHex("#1c1c1f"),
			Dialog      = Color3.fromHex("#1a1a1d"),
			Text        = Color3.fromHex("#f2f2f7"),
			Placeholder = Color3.fromHex("#8e8e93"),
			Button      = Color3.fromHex("#48484d"),
			Icon        = Color3.fromHex("#98989f"),
			Toggle      = Color3.fromHex("#30D158"),
			Slider      = Color3.fromHex("#0A84FF"),
			Checkbox    = Color3.fromHex("#0A84FF"),
			PanelBackground             = Color3.fromHex("#FFFFFF"),
			PanelBackgroundTransparency = 0.96,
			ElementBackground             = Color3.fromHex("#26262a"),
			ElementBackgroundTransparency = 0,
			LabelBackground             = Color3.fromHex("#000000"),
			LabelBackgroundTransparency = 0.85,
		},

		Light = {
			Name = "Light",
			Background  = Color3.fromHex("#f5f5f7"),
			Accent      = Color3.fromHex("#e8e8ed"),
			Dialog      = Color3.fromHex("#ededf0"),
			Text        = Color3.fromHex("#1c1c1e"),
			Placeholder = Color3.fromHex("#6c6c70"),
			Button      = Color3.fromHex("#1c1c1e"),
			Icon        = Color3.fromHex("#48484a"),
			Toggle      = Color3.fromHex("#30D158"),
			Slider      = Color3.fromHex("#0A84FF"),
			Checkbox    = Color3.fromHex("#0A84FF"),
			PanelBackground             = Color3.fromHex("#e5e5ea"),
			PanelBackgroundTransparency = 0,
			LabelBackground             = Color3.fromHex("#e5e5ea"),
			LabelBackgroundTransparency = 0,
			ElementBackground             = Color3.fromHex("#ffffff"),
			ElementBackgroundTransparency = 0,
			TabBackground                   = Color3.fromHex("#ffffff"),
			TabBackgroundHover              = Color3.fromHex("#f0f0f5"),
			TabBackgroundHoverTransparency  = 0,
			TabBackgroundActive             = Color3.fromHex("#e5e5ea"),
			TabBackgroundActiveTransparency = 0,
			DropdownBackground = Color3.fromHex("#ffffff"),
		},

		-- ════════════════════════════════════════════════════════════════
		--  LEVIATHAN — SUPER UPGRADED (6-colour full-spectrum mixing)
		-- ════════════════════════════════════════════════════════════════

		Leviathan = {
			Name = "Leviathan",

			-- 6-colour spectrum: Dark Blue → Blue → Deep Ocean → Ocean →
			--                    White-Blue → Near-White, rotation 135°
			-- Every key uses the full palette at different rotations
			-- so elements contrast and mix visually across the whole UI.

			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001a55"), Transparency = 0 }, -- Dark Blue
				["17"]  = { Color = Color3.fromHex("#0033aa"), Transparency = 0 }, -- Blue
				["34"]  = { Color = Color3.fromHex("#0066cc"), Transparency = 0 }, -- Deep Ocean
				["51"]  = { Color = Color3.fromHex("#0099dd"), Transparency = 0 }, -- Ocean
				["68"]  = { Color = Color3.fromHex("#aaddff"), Transparency = 0 }, -- White-Blue
				["84"]  = { Color = Color3.fromHex("#ddf4ff"), Transparency = 0 }, -- Near White
				["100"] = { Color = Color3.fromHex("#003388"), Transparency = 0 }, -- Deep Blue
			}, { Rotation = 135 }),

			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#000d33"), Transparency = 0 }, -- Dark Blue
				["20"]  = { Color = Color3.fromHex("#0044cc"), Transparency = 0 }, -- Blue
				["40"]  = { Color = Color3.fromHex("#0088dd"), Transparency = 0 }, -- Ocean
				["60"]  = { Color = Color3.fromHex("#00bbff"), Transparency = 0 }, -- Cyan
				["80"]  = { Color = Color3.fromHex("#88ddff"), Transparency = 0 }, -- White-Blue
				["100"] = { Color = Color3.fromHex("#002266"), Transparency = 0 }, -- Deep Blue
			}, { Rotation = 45 }),

			Dialog = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001133"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#003399"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0077cc"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#55aaee"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#bbddff"), Transparency = 0 },
			}, { Rotation = 90 }),

			-- Button: dark→ocean→white-blue — full 6-stop like Rainbow's Button
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001a55"), Transparency = 0 }, -- Dark Blue
				["20"]  = { Color = Color3.fromHex("#0044cc"), Transparency = 0 }, -- Blue
				["40"]  = { Color = Color3.fromHex("#0088ee"), Transparency = 0 }, -- Ocean
				["60"]  = { Color = Color3.fromHex("#00bbff"), Transparency = 0 }, -- Cyan
				["80"]  = { Color = Color3.fromHex("#88ddff"), Transparency = 0 }, -- White-Blue
				["100"] = { Color = Color3.fromHex("#ddf4ff"), Transparency = 0 }, -- Near White
			}, { Rotation = 60 }),

			Toggle = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0033aa"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#0077ee"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#00ccff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#aaeeff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Slider = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001a55"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0077dd"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00ddff"), Transparency = 0 },
			}, { Rotation = 0 }),

			Checkbox = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0044cc"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00eeff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Text        = Color3.fromHex("#e8f6ff"),
			Placeholder = Color3.fromHex("#55aadd"),
			Icon        = Color3.fromHex("#ffffff"),

			-- Panels fully transparent → Background gradient bleeds through entire UI
			-- Cards get a subtle dark tint so content stays readable
			ElementBackground             = Color3.fromHex("#000d22"),
			ElementBackgroundTransparency = 0.35,

			PanelBackgroundTransparency = 1,
		},

		-- ════════════════════════════════════════════════════════════════
		--  RAINBOW — Wind UI source verbatim
		-- ════════════════════════════════════════════════════════════════

		Rainbow = {
			Name = "Rainbow",

			-- Panel fully transparent → rainbow Window Background shows through entire UI
			PanelBackgroundTransparency = 1,
			ElementBackgroundTransparency = 1,

			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#00ff41"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#0080ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#8000ff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Dialog = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff0080"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#8000ff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0080ff"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#00ff80"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff8000"), Transparency = 0 },
			}, { Rotation = 135 }),

			Text        = Color3.fromHex("#ffffff"),
			Placeholder = Color3.fromHex("#00ff80"),

			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff0040"), Transparency = 0 },
				["20"]  = { Color = Color3.fromHex("#ff4000"), Transparency = 0 },
				["40"]  = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
				["60"]  = { Color = Color3.fromHex("#00ff40"), Transparency = 0 },
				["80"]  = { Color = Color3.fromHex("#0040ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#4000ff"), Transparency = 0 },
			}, { Rotation = 90 }),

			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff0080"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#ff8000"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#80ff00"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
			}, { Rotation = 60 }),

			Icon = Color3.fromHex("#ffffff"),
		},

		-- ════════════════════════════════════════════════════════════════
		--  GRADIENT THEMES (full structure like Holographic)
		-- ════════════════════════════════════════════════════════════════

		Holographic = {
			Name = "Holographic",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#080010"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#001210"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#10000a"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#00aaff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0e001a"),
			Text        = Color3.fromHex("#ffffff"),
			Placeholder = Color3.fromHex("#668899"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc00cc"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#0099cc"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#cc0099"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00aacc"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ffffff"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#0c0015"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#001414"), Transparency = 0 } }, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#090012"),
			PanelBackgroundTransparency = 0,
		},

		Cosmos = {
			Name = "Cosmos",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#020008"), Transparency = 0 },
				["40"]  = { Color = Color3.fromHex("#0d0033"), Transparency = 0 },
				["70"]  = { Color = Color3.fromHex("#220066"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#440099"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#6600ff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc00bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0a0014"),
			Text        = Color3.fromHex("#eeddff"),
			Placeholder = Color3.fromHex("#7755bb"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#5500ff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#8800dd"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#bb00ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#cc88ff"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#8844ff"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc55ff"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#5500ee"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aa44ff"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#8844ff"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc55ff"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#0a0018"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#060010"),
			PanelBackgroundTransparency = 0,
		},

		Cyberpunk = {
			Name = "Cyberpunk",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#050510"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0d0d1a"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#1a0a1a"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff0099"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00eeee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0d0d1a"),
			Text        = Color3.fromHex("#f0f0ff"),
			Placeholder = Color3.fromHex("#8888bb"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc0088"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#8800cc"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ff44cc"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffee"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00cccc"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffee"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#0d0d22"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0a0a16"),
			PanelBackgroundTransparency = 0,
		},

		NeonCity = {
			Name = "Neon City",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#080810"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#110811"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#08100a"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00ff88"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0c0c1a"),
			Text        = Color3.fromHex("#f5f0ff"),
			Placeholder = Color3.fromHex("#886699"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#dd0099"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#7700dd"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00cc66"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ff44dd"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#0d0d1a"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0a0a16"),
			PanelBackgroundTransparency = 0,
		},

		Sunset = {
			Name = "Sunset",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#1a0505"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#cc2200"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#ff6600"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc3300"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ee6600"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#280e0e"),
			Text        = Color3.fromHex("#fff7ed"),
			Placeholder = Color3.fromHex("#cc7055"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ee4400"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#e82266"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff9900"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ff8833"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff6600"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff2277"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ee4400"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ee9900"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff5500"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#200a08"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#140606"),
			PanelBackgroundTransparency = 0,
		},

		Lava = {
			Name = "Lava",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0d0000"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#660000"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc2200"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = Color3.fromHex("#990000"),
			Dialog      = Color3.fromHex("#1a0700"),
			Text        = Color3.fromHex("#fff0e8"),
			Placeholder = Color3.fromHex("#994422"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc2200"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff5500"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#ff6622"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff4400"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff9900"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc3300"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff5500"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff4400"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff8800"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#1a0900"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0d0400"),
			PanelBackgroundTransparency = 0,
		},

		Toxic = {
			Name = "Toxic",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#010800"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0a2200"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#004400"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#44dd00"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#aaff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#071200"),
			Text        = Color3.fromHex("#eeffcc"),
			Placeholder = Color3.fromHex("#557722"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#33bb00"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#88ee00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#88ff22"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#66ee00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aaff00"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#55cc00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#88ee00"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#66ee00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aaff00"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#071000"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#040a00"),
			PanelBackgroundTransparency = 0,
		},

		Blood = {
			Name = "Blood",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#070000"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#330000"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#660000"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = Color3.fromHex("#660000"),
			Dialog      = Color3.fromHex("#0f0000"),
			Text        = Color3.fromHex("#ffdddd"),
			Placeholder = Color3.fromHex("#661111"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#550000"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc0000"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#dd2222"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc1111"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ee3333"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#aa0000"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc1111"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc1111"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ee3333"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#0e0000"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0a0000"),
			PanelBackgroundTransparency = 0,
		},

		Ocean = {
			Name = "Ocean",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#010d1a"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#003366"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#006699"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0055aa"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00aacc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#020e1e"),
			Text        = Color3.fromHex("#e0f4ff"),
			Placeholder = Color3.fromHex("#4a9ab8"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#0099bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#33b8d8"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#0099bb"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00c8aa"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#0099bb"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#0099bb"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#051526"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#010d1a"),
			PanelBackgroundTransparency = 0,
		},

		Forest = {
			Name = "Forest",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#020a03"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0a2e0c"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#0d4410"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#1a6b2a"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#2db84d"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#081408"),
			Text        = Color3.fromHex("#d4f0d8"),
			Placeholder = Color3.fromHex("#3d7a45"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#155522"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#22aa44"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#44cc66"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#33bb55"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#44dd66"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#1d8833"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#33aa44"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#33bb55"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#44dd66"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#081408"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#050e06"),
			PanelBackgroundTransparency = 0,
		},

		Matrix = {
			Name = "Matrix",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#000800"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#001500"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#002200"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent      = Color3.fromHex("#003300"),
			Dialog      = Color3.fromHex("#001100"),
			Text        = Color3.fromHex("#00FF41"),
			Placeholder = Color3.fromHex("#007722"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#003300"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00aa33"), Transparency = 0 },
			}, { Rotation = 90 }),
			Icon     = Color3.fromHex("#00CC33"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00aa33"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00FF41"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#006622"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00CC33"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00aa33"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00FF41"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#001A00"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#000800"),
			PanelBackgroundTransparency = 0,
		},

		Aurora = {
			Name = "Aurora",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#000d1a"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#001a33"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#003322"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#004433"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#001122"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#00ff88"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#0088ff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#8800ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#001122"),
			Text        = Color3.fromHex("#ccffee"),
			Placeholder = Color3.fromHex("#338877"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#00cc66"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#00aaff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#6600ff"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ffffff"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffaa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#0088ff"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00cc88"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#0066ff"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#0044ff"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#000e18"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#000a12"),
			PanelBackgroundTransparency = 0,
		},

		Flame = {
			Name = "Flame",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0a0000"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#550000"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa2200"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#dd5500"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff8800"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#ff2200"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff8800"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1a0500"),
			Text        = Color3.fromHex("#fff0e0"),
			Placeholder = Color3.fromHex("#aa5522"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc2200"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#ee5500"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ff9900"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#ffaa44"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff4400"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc3300"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff7700"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ff4400"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff9900"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#1a0800"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0d0400"),
			PanelBackgroundTransparency = 0,
		},

		Viper = {
			Name = "Viper",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#000a00"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#003300"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#006600"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#33aa00"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#00aa00"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#88ff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#001500"),
			Text        = Color3.fromHex("#eeffcc"),
			Placeholder = Color3.fromHex("#448833"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#005500"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#55cc00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#88ff44"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#44dd00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aaff00"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#33aa00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#88dd00"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#44cc00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aaff00"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#050e00"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#030900"),
			PanelBackgroundTransparency = 0,
		},

		Tron = {
			Name = "Tron",
			Background  = Color3.fromHex("#000c0c"),
			Accent      = Color3.fromHex("#003344"),
			Dialog      = Color3.fromHex("#001414"),
			Text        = Color3.fromHex("#ccffff"),
			Placeholder = Color3.fromHex("#336666"),
			Button = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#005577"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00aaaa"), Transparency = 0 } }, { Rotation = 45 }),
			Icon     = Color3.fromHex("#00eeee"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00cccc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00aaaa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00cccc"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#00cccc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#00ffff"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#001111"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#000d0d"),
			PanelBackgroundTransparency = 0,
		},

		GoldenHour = {
			Name = "Golden Hour",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0d0700"), Transparency = 0 },
				["40"]  = { Color = Color3.fromHex("#664400"), Transparency = 0 },
				["70"]  = { Color = Color3.fromHex("#cc8800"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ffcc44"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc9900"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ffdd33"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1a1100"),
			Text        = Color3.fromHex("#fff8e0"),
			Placeholder = Color3.fromHex("#886600"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#cc8800"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#ffcc00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#ffdd44"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ffdd44"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc8800"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ffdd44"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#1a1200"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#110e00"),
			PanelBackgroundTransparency = 0,
		},

		Grape = {
			Name = "Grape",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0d0014"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#2a0055"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#550088"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#6600aa"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#aa44ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#14001f"),
			Text        = Color3.fromHex("#f0e0ff"),
			Placeholder = Color3.fromHex("#7744aa"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#550099"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#9933ee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#cc88ff"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#9944ff"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc66ff"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#7733cc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#9944ff"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#9944ff"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc66ff"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#14001f"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0e0018"),
			PanelBackgroundTransparency = 0,
		},

		RoseGold = {
			Name = "Rose Gold",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#120606"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#441020"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#883344"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#b54860"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#d4a0aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1e0c12"),
			Text        = Color3.fromHex("#fce8ec"),
			Placeholder = Color3.fromHex("#886070"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#a03350"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc6880"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#d49090"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc5566"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#dd7788"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#bb4455"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#cc6677"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc5566"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#dd7788"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#1c0c12"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#150810"),
			PanelBackgroundTransparency = 0,
		},

		NightSakura = {
			Name = "Night Sakura",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0b0008"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#330020"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#660044"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#880044"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc3377"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#14000e"),
			Text        = Color3.fromHex("#ffe0f0"),
			Placeholder = Color3.fromHex("#7a3358"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#770033"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#cc2266"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#ff5599"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ee3377"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff5599"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#cc2266"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ee3377"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#ee3377"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#ff5599"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#12000e"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0c000a"),
			PanelBackgroundTransparency = 0,
		},

		CottonCandy = {
			Name = "Cotton Candy",
			Background = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#180a2c"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#2a1040"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#3d1a55"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = Color3.fromHex("#ec4899"),
			Dialog      = Color3.fromHex("#2a1838"),
			Text        = Color3.fromHex("#fdf2f8"),
			Placeholder = Color3.fromHex("#8a5fd3"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#d946ef"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#06b6d4"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon     = Color3.fromHex("#f0abfc"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#e879f9"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#22d3ee"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#d946ef"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#06b6d4"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#e879f9"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#22d3ee"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#2c2040"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#1e1530"),
			PanelBackgroundTransparency = 0,
		},

		-- ════════════════════════════════════════════════════════════════
		--  DEVELOPER / EDITOR THEMES (flat, minimal)
		-- ════════════════════════════════════════════════════════════════

		TokyoNight = {
			Name = "Tokyo Night",
			Background  = Color3.fromHex("#0d0e17"),
			Accent      = Color3.fromHex("#1a1b2e"),
			Dialog      = Color3.fromHex("#16161e"),
			Text        = Color3.fromHex("#c0caf5"),
			Placeholder = Color3.fromHex("#565f89"),
			Button      = Color3.fromHex("#7aa2f7"),
			Icon        = Color3.fromHex("#bb9af7"),
			Toggle      = Color3.fromHex("#9ece6a"),
			Slider      = Color3.fromHex("#7aa2f7"),
			Checkbox    = Color3.fromHex("#7aa2f7"),
			ElementBackground             = Color3.fromHex("#1f2335"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#24283b"),
			PanelBackgroundTransparency = 0,
		},

		Catppuccin = {
			Name = "Catppuccin",
			Background  = Color3.fromHex("#11111b"),
			Accent      = Color3.fromHex("#313244"),
			Dialog      = Color3.fromHex("#1e1e2e"),
			Text        = Color3.fromHex("#cdd6f4"),
			Placeholder = Color3.fromHex("#6c7086"),
			Button      = Color3.fromHex("#cba6f7"),
			Icon        = Color3.fromHex("#89b4fa"),
			Toggle      = Color3.fromHex("#a6e3a1"),
			Slider      = Color3.fromHex("#cba6f7"),
			Checkbox    = Color3.fromHex("#cba6f7"),
			ElementBackground             = Color3.fromHex("#313244"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#181825"),
			PanelBackgroundTransparency = 0,
		},

		Dracula = {
			Name = "Dracula",
			Background  = Color3.fromHex("#1a1b26"),
			Accent      = Color3.fromHex("#44475a"),
			Dialog      = Color3.fromHex("#282a36"),
			Text        = Color3.fromHex("#f8f8f2"),
			Placeholder = Color3.fromHex("#6272a4"),
			Button      = Color3.fromHex("#bd93f9"),
			Icon        = Color3.fromHex("#ff79c6"),
			Toggle      = Color3.fromHex("#50fa7b"),
			Slider      = Color3.fromHex("#bd93f9"),
			Checkbox    = Color3.fromHex("#bd93f9"),
			ElementBackground             = Color3.fromHex("#44475a"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#282a36"),
			PanelBackgroundTransparency = 0,
		},

		Nord = {
			Name = "Nord",
			Background  = Color3.fromHex("#232a36"),
			Accent      = Color3.fromHex("#3b4252"),
			Dialog      = Color3.fromHex("#2e3440"),
			Text        = Color3.fromHex("#eceff4"),
			Placeholder = Color3.fromHex("#7a8499"),
			Button      = Color3.fromHex("#5e81ac"),
			Icon        = Color3.fromHex("#88c0d0"),
			Toggle      = Color3.fromHex("#a3be8c"),
			Slider      = Color3.fromHex("#5e81ac"),
			Checkbox    = Color3.fromHex("#81a1c1"),
			ElementBackground             = Color3.fromHex("#3b4252"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#2e3440"),
			PanelBackgroundTransparency = 0,
		},

		OneDark = {
			Name = "One Dark",
			Background  = Color3.fromHex("#181a1f"),
			Accent      = Color3.fromHex("#21252b"),
			Dialog      = Color3.fromHex("#1d2026"),
			Text        = Color3.fromHex("#abb2bf"),
			Placeholder = Color3.fromHex("#5c6370"),
			Button      = Color3.fromHex("#61afef"),
			Icon        = Color3.fromHex("#c678dd"),
			Toggle      = Color3.fromHex("#98c379"),
			Slider      = Color3.fromHex("#61afef"),
			Checkbox    = Color3.fromHex("#61afef"),
			ElementBackground             = Color3.fromHex("#2c313a"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#21252b"),
			PanelBackgroundTransparency = 0,
		},

		MonokaiPro = {
			Name = "Monokai Pro",
			Background  = Color3.fromHex("#191622"),
			Accent      = Color3.fromHex("#2d2a3e"),
			Dialog      = Color3.fromHex("#1e1e1e"),
			Text        = Color3.fromHex("#fcfcfa"),
			Placeholder = Color3.fromHex("#afafaf"),
			Button      = Color3.fromHex("#ab9df2"),
			Icon        = Color3.fromHex("#a9dc76"),
			Toggle      = Color3.fromHex("#a9dc76"),
			Slider      = Color3.fromHex("#fc9867"),
			Checkbox    = Color3.fromHex("#ab9df2"),
			ElementBackground             = Color3.fromHex("#323039"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#221f2e"),
			PanelBackgroundTransparency = 0,
		},

		Solarized = {
			Name = "Solarized",
			Background  = Color3.fromHex("#001a22"),
			Accent      = Color3.fromHex("#073642"),
			Dialog      = Color3.fromHex("#002b36"),
			Text        = Color3.fromHex("#fdf6e3"),
			Placeholder = Color3.fromHex("#657b83"),
			Button      = Color3.fromHex("#268bd2"),
			Icon        = Color3.fromHex("#2aa198"),
			Toggle      = Color3.fromHex("#859900"),
			Slider      = Color3.fromHex("#268bd2"),
			Checkbox    = Color3.fromHex("#268bd2"),
			ElementBackground             = Color3.fromHex("#073642"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#002b36"),
			PanelBackgroundTransparency = 0,
		},

		Blurple = {
			Name = "Blurple",
			Background  = Color3.fromHex("#1e1f22"),
			Accent      = Color3.fromHex("#2b2d31"),
			Dialog      = Color3.fromHex("#2b2d31"),
			Text        = Color3.fromHex("#FFFFFF"),
			Placeholder = Color3.fromHex("#949BA4"),
			Button      = Color3.fromHex("#5865F2"),
			Icon        = Color3.fromHex("#b5bac1"),
			Toggle      = Color3.fromHex("#23A55A"),
			Slider      = Color3.fromHex("#5865F2"),
			Checkbox    = Color3.fromHex("#5865F2"),
			ElementBackground             = Color3.fromHex("#313338"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#2b2d31"),
			PanelBackgroundTransparency = 0,
		},

		-- ════════════════════════════════════════════════════════════════
		--  LIGHT / PASTEL THEMES
		-- ════════════════════════════════════════════════════════════════

		Frost = {
			Name = "Frost",
			Background  = Color3.fromHex("#f0f0f5"),
			Accent      = Color3.fromHex("#e4e4ec"),
			Dialog      = Color3.fromHex("#e0e0ea"),
			Text        = Color3.fromHex("#1c1c1e"),
			Placeholder = Color3.fromHex("#8e8e93"),
			Button      = Color3.fromHex("#007AFF"),
			Icon        = Color3.fromHex("#636366"),
			Toggle      = Color3.fromHex("#34C759"),
			Slider      = Color3.fromHex("#007AFF"),
			Checkbox    = Color3.fromHex("#007AFF"),
			ElementBackground             = Color3.fromHex("#ffffff"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#e5e5ea"),
			PanelBackgroundTransparency = 0,
			TabBackground                   = Color3.fromHex("#ffffff"),
			TabBackgroundHover              = Color3.fromHex("#f2f2f7"),
			TabBackgroundHoverTransparency  = 0,
			TabBackgroundActive             = Color3.fromHex("#e5e5ea"),
			TabBackgroundActiveTransparency = 0,
		},

		Sakura = {
			Name = "Sakura",
			Background  = Color3.fromHex("#fff5f8"),
			Accent      = Color3.fromHex("#ffd6e7"),
			Dialog      = Color3.fromHex("#ffe0eb"),
			Text        = Color3.fromHex("#3d1025"),
			Placeholder = Color3.fromHex("#cc7799"),
			Button      = Color3.fromHex("#e05580"),
			Icon        = Color3.fromHex("#cc4466"),
			Toggle      = Color3.fromHex("#ff6b9d"),
			Slider      = Color3.fromHex("#e05580"),
			Checkbox    = Color3.fromHex("#e05580"),
			ElementBackground             = Color3.fromHex("#ffe0eb"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#fff0f4"),
			PanelBackgroundTransparency = 0,
		},

		Lavender = {
			Name = "Lavender",
			Background  = Color3.fromHex("#f2edff"),
			Accent      = Color3.fromHex("#d9ccff"),
			Dialog      = Color3.fromHex("#e8deff"),
			Text        = Color3.fromHex("#22103a"),
			Placeholder = Color3.fromHex("#8866aa"),
			Button      = Color3.fromHex("#6a44aa"),
			Icon        = Color3.fromHex("#5533aa"),
			Toggle      = Color3.fromHex("#7755cc"),
			Slider      = Color3.fromHex("#6644bb"),
			Checkbox    = Color3.fromHex("#7755cc"),
			ElementBackground             = Color3.fromHex("#ddd0ff"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#ece5ff"),
			PanelBackgroundTransparency = 0,
		},

		Mint = {
			Name = "Mint",
			Background  = Color3.fromHex("#eefaf5"),
			Accent      = Color3.fromHex("#b8eed8"),
			Dialog      = Color3.fromHex("#d8f0e8"),
			Text        = Color3.fromHex("#0d2b22"),
			Placeholder = Color3.fromHex("#5a9e88"),
			Button      = Color3.fromHex("#00a87c"),
			Icon        = Color3.fromHex("#009970"),
			Toggle      = Color3.fromHex("#00c896"),
			Slider      = Color3.fromHex("#00a87c"),
			Checkbox    = Color3.fromHex("#00a87c"),
			ElementBackground             = Color3.fromHex("#ddf2ea"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#e8f9f4"),
			PanelBackgroundTransparency = 0,
		},

		Pastel = {
			Name = "Pastel",
			Background  = Color3.fromHex("#f5eeff"),
			Accent      = Color3.fromHex("#c9b8e8"),
			Dialog      = Color3.fromHex("#e8daf5"),
			Text        = Color3.fromHex("#3d2b5e"),
			Placeholder = Color3.fromHex("#9980bb"),
			Button      = Color3.fromHex("#b39ddb"),
			Icon        = Color3.fromHex("#9575cd"),
			Toggle      = Color3.fromHex("#81c784"),
			Slider      = Color3.fromHex("#b39ddb"),
			Checkbox    = Color3.fromHex("#b39ddb"),
			ElementBackground             = Color3.fromHex("#ede7f6"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#ede7f6"),
			PanelBackgroundTransparency = 0,
		},

		Bubblegum = {
			Name = "Bubblegum",
			Background  = Color3.fromHex("#fff0f8"),
			Accent      = Color3.fromHex("#ffccee"),
			Dialog      = Color3.fromHex("#ffe0f5"),
			Text        = Color3.fromHex("#440022"),
			Placeholder = Color3.fromHex("#cc66aa"),
			Button      = Color3.fromHex("#ee44bb"),
			Icon        = Color3.fromHex("#dd33aa"),
			Toggle      = Color3.fromHex("#ff55cc"),
			Slider      = Color3.fromHex("#ee44bb"),
			Checkbox    = Color3.fromHex("#ff66cc"),
			ElementBackground             = Color3.fromHex("#ffd5ee"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#ffe8f5"),
			PanelBackgroundTransparency = 0,
		},

		Seafoam = {
			Name = "Seafoam",
			Background  = Color3.fromHex("#e8f8f2"),
			Accent      = Color3.fromHex("#b0e8d8"),
			Dialog      = Color3.fromHex("#d0eee8"),
			Text        = Color3.fromHex("#0a2822"),
			Placeholder = Color3.fromHex("#558877"),
			Button      = Color3.fromHex("#219a8c"),
			Icon        = Color3.fromHex("#1b8a7e"),
			Toggle      = Color3.fromHex("#2a9d8f"),
			Slider      = Color3.fromHex("#219a8c"),
			Checkbox    = Color3.fromHex("#2a9d8f"),
			ElementBackground             = Color3.fromHex("#c0e4da"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#d8f0e8"),
			PanelBackgroundTransparency = 0,
		},

		-- ════════════════════════════════════════════════════════════════
		--  DARK MINIMAL THEMES
		-- ════════════════════════════════════════════════════════════════

		Obsidian = {
			Name = "Obsidian",
			Background  = Color3.fromHex("#0a0a0c"),
			Accent      = Color3.fromHex("#28282c"),
			Dialog      = Color3.fromHex("#121214"),
			Text        = Color3.fromHex("#d8d8e0"),
			Placeholder = Color3.fromHex("#505058"),
			Button      = Color3.fromHex("#26262c"),
			Icon        = Color3.fromHex("#8888a0"),
			Toggle      = Color3.fromHex("#5577ff"),
			Slider      = Color3.fromHex("#4466ee"),
			Checkbox    = Color3.fromHex("#4466ee"),
			ElementBackground             = Color3.fromHex("#161618"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0e0e10"),
			PanelBackgroundTransparency = 0,
		},

		Midnight = {
			Name = "Midnight",
			Background  = Color3.fromHex("#08101e"),
			Accent      = Color3.fromHex("#1e3a8a"),
			Dialog      = Color3.fromHex("#0c1e42"),
			Text        = Color3.fromHex("#dbeafe"),
			Placeholder = Color3.fromHex("#2f74d1"),
			Button      = Color3.fromHex("#2563eb"),
			Icon        = Color3.fromHex("#60a5fa"),
			Toggle      = Color3.fromHex("#34d399"),
			Slider      = Color3.fromHex("#2563eb"),
			Checkbox    = Color3.fromHex("#2563eb"),
			ElementBackground             = Color3.fromHex("#202838"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#121828"),
			PanelBackgroundTransparency = 0,
		},

		Abyss = {
			Name = "Abyss",
			Background  = Color3.fromHex("#000000"),
			Accent      = Color3.fromHex("#050505"),
			Dialog      = Color3.fromHex("#080808"),
			Text        = Color3.fromHex("#e8e8e8"),
			Placeholder = Color3.fromHex("#444444"),
			Button      = Color3.fromHex("#111111"),
			Icon        = Color3.fromHex("#666666"),
			Toggle      = Color3.fromHex("#337755"),
			Slider      = Color3.fromHex("#334466"),
			Checkbox    = Color3.fromHex("#334466"),
			ElementBackground             = Color3.fromHex("#0e0e0e"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#080808"),
			PanelBackgroundTransparency = 0,
		},

		Vampire = {
			Name = "Vampire",
			Background  = Color3.fromHex("#0f0000"),
			Accent      = Color3.fromHex("#3a0000"),
			Dialog      = Color3.fromHex("#280000"),
			Text        = Color3.fromHex("#f8e8e8"),
			Placeholder = Color3.fromHex("#994444"),
			Button      = Color3.fromHex("#8b0000"),
			Icon        = Color3.fromHex("#cc2222"),
			Toggle      = Color3.fromHex("#cc1111"),
			Slider      = Color3.fromHex("#aa0000"),
			Checkbox    = Color3.fromHex("#cc1111"),
			ElementBackground             = Color3.fromHex("#200000"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#160000"),
			PanelBackgroundTransparency = 0,
		},

		Slate = {
			Name = "Slate",
			Background  = Color3.fromHex("#0d1528"),
			Accent      = Color3.fromHex("#1e2f45"),
			Dialog      = Color3.fromHex("#1a2638"),
			Text        = Color3.fromHex("#e8eef8"),
			Placeholder = Color3.fromHex("#7a8eaa"),
			Button      = Color3.fromHex("#38a8f8"),
			Icon        = Color3.fromHex("#88b8d8"),
			Toggle      = Color3.fromHex("#38bdf8"),
			Slider      = Color3.fromHex("#38a8f8"),
			Checkbox    = Color3.fromHex("#38a8f8"),
			ElementBackground             = Color3.fromHex("#1a2638"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0f1b2e"),
			PanelBackgroundTransparency = 0,
		},

		Titanium = {
			Name = "Titanium",
			Background  = Color3.fromHex("#101214"),
			Accent      = Color3.fromHex("#2a2a30"),
			Dialog      = Color3.fromHex("#1c1e22"),
			Text        = Color3.fromHex("#e8eaf0"),
			Placeholder = Color3.fromHex("#6a6c78"),
			Button = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#505062"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#9999aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon     = Color3.fromHex("#aaaacc"),
			Toggle   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#8899cc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aabbdd"), Transparency = 0 } }, { Rotation = 45 }),
			Slider   = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#7788aa"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#99aacc"), Transparency = 0 } }, { Rotation = 45 }),
			Checkbox = WindUI:Gradient({ ["0"] = { Color = Color3.fromHex("#8899cc"), Transparency = 0 }, ["100"] = { Color = Color3.fromHex("#aabbdd"), Transparency = 0 } }, { Rotation = 45 }),
			ElementBackground             = Color3.fromHex("#1a1c22"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#141618"),
			PanelBackgroundTransparency = 0,
		},

		Monochrome = {
			Name = "Monochrome",
			Background  = Color3.fromHex("#000000"),
			Accent      = Color3.fromHex("#111111"),
			Dialog      = Color3.fromHex("#0d0d0d"),
			Text        = Color3.fromHex("#ffffff"),
			Placeholder = Color3.fromHex("#555555"),
			Button      = Color3.fromHex("#333333"),
			Icon        = Color3.fromHex("#aaaaaa"),
			Toggle      = Color3.fromHex("#ffffff"),
			Slider      = Color3.fromHex("#888888"),
			Checkbox    = Color3.fromHex("#aaaaaa"),
			ElementBackground             = Color3.fromHex("#141414"),
			ElementBackgroundTransparency = 0,
			PanelBackground             = Color3.fromHex("#0d0d0d"),
			PanelBackgroundTransparency = 0,
		},

	}
end
