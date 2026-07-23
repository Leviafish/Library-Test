-- Leviathan UI — Themes (Reworked)
-- KEY DESIGN RULE:
--   Every theme only needs to define: Background, Accent, Dialog, Text, Placeholder, Button, Icon
--   Fallbacks.lua chains everything else (Toggle, Slider, Checkbox, NotificationDuration,
--   SectionBoxBorder, TabBackground, etc.) back to Button automatically.
--   Defining Toggle/Slider/etc. OVERRIDES the chain — only do it when intentionally different.
--
--   Gradient themes: define Background, Accent, Dialog, Button as WindUI:Gradient(...)
--   and the gradient propagates to every UI surface that uses those keys.

return function(WindUI, Creator)

	return {

		-- ════════════════════════════════════════════════════════
		--  CORE THEMES
		-- ════════════════════════════════════════════════════════

		Dark = {
			Name        = "Dark",
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
			PanelBackground = Color3.fromHex("#FFFFFF"),
			PanelBackgroundTransparency = 0.96,
			ElementBackground = Color3.fromHex("#26262a"),
			ElementBackgroundTransparency = 0,
			LabelBackground = Color3.fromHex("#000000"),
			LabelBackgroundTransparency = 0.85,
		},

		Light = {
			Name        = "Light",
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
			PanelBackground = Color3.fromHex("#e5e5ea"),
			PanelBackgroundTransparency = 0,
			LabelBackground = Color3.fromHex("#e5e5ea"),
			LabelBackgroundTransparency = 0,
			ElementBackground = Color3.fromHex("#ffffff"),
			ElementBackgroundTransparency = 0,
			TabBackground = Color3.fromHex("#ffffff"),
			TabBackgroundHover = Color3.fromHex("#f0f0f5"),
			TabBackgroundHoverTransparency = 0,
			TabBackgroundActive = Color3.fromHex("#e5e5ea"),
			TabBackgroundActiveTransparency = 0,
			DropdownBackground = Color3.fromHex("#ffffff"),
		},

		-- ════════════════════════════════════════════════════════
		--  LEVIATHAN — THE SIGNATURE THEME (ultra premium)
		-- ════════════════════════════════════════════════════════

		Leviathan = {
			Name        = "Leviathan",

			-- Multi-layer: Deep Navy → Ocean Blue → Ice Blue → White-Blue highlights
			Background  = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#010812"), Transparency = 0 },
				["30"]  = { Color = Color3.fromHex("#001428"), Transparency = 0 },
				["60"]  = { Color = Color3.fromHex("#002244"), Transparency = 0 },
				["85"]  = { Color = Color3.fromHex("#00336a"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#001c3d"), Transparency = 0 },
			}, { Rotation = 135 }),

			Accent      = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001833"), Transparency = 0 },
				["40"]  = { Color = Color3.fromHex("#003366"), Transparency = 0 },
				["70"]  = { Color = Color3.fromHex("#004d99"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#002b55"), Transparency = 0 },
			}, { Rotation = 90 }),

			Dialog      = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001020"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#001e3c"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00284f"), Transparency = 0 },
			}, { Rotation = 135 }),

			-- White-Blue to Ocean: the signature Leviathan accent
			Button      = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0055cc"), Transparency = 0 },
				["30"]  = { Color = Color3.fromHex("#0088ee"), Transparency = 0 },
				["60"]  = { Color = Color3.fromHex("#00aaff"), Transparency = 0 },
				["85"]  = { Color = Color3.fromHex("#55ccff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#aae0ff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Toggle      = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0077ee"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#00aaff"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#44ccff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Slider      = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0055cc"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#0088ee"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#00bbff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Checkbox    = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#0066dd"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#44ccff"), Transparency = 0 },
			}, { Rotation = 45 }),

			Text        = Color3.fromHex("#d6eeff"),
			Placeholder = Color3.fromHex("#3a6a99"),
			Icon        = Color3.fromHex("#66ccff"),

			ElementBackground             = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#000d20"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#001530"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,

			PanelBackground             = Color3.fromHex("#000a18"),
			PanelBackgroundTransparency = 0,
			LabelBackground             = Color3.fromHex("#000e22"),
			LabelBackgroundTransparency = 0,

			TabBackground                   = Color3.fromHex("#00060f"),
			TabBackgroundHover              = Color3.fromHex("#000d1c"),
			TabBackgroundHoverTransparency  = 0,
			TabBackgroundActive             = WindUI:Gradient({
				["0"]   = { Color = Color3.fromHex("#001433"), Transparency = 0 },
				["100"] = { Color = Color3.fromHex("#001c44"), Transparency = 0 },
			}, { Rotation = 90 }),
			TabBackgroundActiveTransparency = 0,
		},

		-- ════════════════════════════════════════════════════════
		--  RAINBOW — Exact Wind UI implementation (fixed)
		-- ════════════════════════════════════════════════════════

		Rainbow = {
			Name = "Rainbow",

			-- Exact Wind UI Rainbow — WindUI:Gradient call (not G helper)
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

		-- ════════════════════════════════════════════════════════
		--  GRADIENT THEMES — each with a distinct color identity
		-- ════════════════════════════════════════════════════════

		Cosmos = {
			Name        = "Cosmos",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#020008"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#050012"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#000006"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#6600ff"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#0055ff"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#cc00bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0a0014"),
			Text        = Color3.fromHex("#eeddff"),
			Placeholder = Color3.fromHex("#5544aa"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#5500ff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#7700dd"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#bb77ff"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#8844ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#bb55ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#5500ee"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#8844ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#8844ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#bb55ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#06000f"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0a0018"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#050010"),
			PanelBackgroundTransparency = 0,
		},

		Holographic = {
			Name        = "Holographic",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#080010"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#001210"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#10000a"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 },
				["25"]  = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["75"]  = { Color = Color3.fromHex("#00aaff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0e001a"),
			Text        = Color3.fromHex("#ffffff"),
			Placeholder = Color3.fromHex("#668899"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc00cc"), Transparency = 0 },
				["33"]  = { Color = Color3.fromHex("#0099cc"), Transparency = 0 },
				["66"]  = { Color = Color3.fromHex("#cc0099"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00aacc"), Transparency = 0 },
			}, { Rotation = 60 }),
			Icon        = Color3.fromHex("#ffffff"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00ffff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff00ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0c0015"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#001414"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#090012"),
			PanelBackgroundTransparency = 0,
		},

		Cyberpunk = {
			Name        = "Cyberpunk",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#050510"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0d0d1a"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff0099"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00eeee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0d0d1a"),
			Text        = Color3.fromHex("#f0f0ff"),
			Placeholder = Color3.fromHex("#8888bb"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc0088"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#8800cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff44cc"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00ffee"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00ffee"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0d0d22"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1a0a1a"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0a0a16"),
			PanelBackgroundTransparency = 0,
		},

		NeonCity = {
			Name        = "Neon City",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#080810"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#110811"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0044ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0c0c1a"),
			Text        = Color3.fromHex("#f5f0ff"),
			Placeholder = Color3.fromHex("#664488"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dd0099"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#7700dd"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0033cc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff44dd"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aa00ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff00aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00ffcc"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0d0d1a"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1a0a1a"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0a0a16"),
			PanelBackgroundTransparency = 0,
		},

		Sunset = {
			Name        = "Sunset",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#140606"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1c0800"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc3300"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#dd2266"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee0066"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#280e0e"),
			Text        = Color3.fromHex("#fff7ed"),
			Placeholder = Color3.fromHex("#c87050"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee4400"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#e82266"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff0055"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff8833"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff6600"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff2277"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee4400"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee0066"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff6600"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff2277"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#240e0a"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1c0a16"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#140606"),
			PanelBackgroundTransparency = 0,
		},

		Lava = {
			Name        = "Lava",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0d0000"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1c0400"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff2200"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff8800"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1a0700"),
			Text        = Color3.fromHex("#fff0e8"),
			Placeholder = Color3.fromHex("#994422"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc2200"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff5500"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff6622"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff4400"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff9900"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc3300"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff5500"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff4400"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff8800"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1a0900"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#100400"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0d0400"),
			PanelBackgroundTransparency = 0,
		},

		Amber = {
			Name        = "Amber",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1c1003"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#3f210d"), Transparency = 0 },
			}, { Rotation = 90 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#b45309"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#d97706"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#451a03"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#6b2e05"), Transparency = 0 },
			}, { Rotation = 90 }),
			Text        = Color3.fromHex("#fffbeb"),
			Placeholder = Color3.fromHex("#d1a326"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#d97706"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#f59e0b"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#f59e0b"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#d97706"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#f59e0b"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = Color3.fromHex("#d97706"),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#d97706"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#fbbf24"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#3A2E22"),
			ElementBackgroundTransparency = 0,
		},

		Ocean = {
			Name        = "Ocean",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#010d1a"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#041a2e"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0055aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00aacc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#020e1e"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#051c30"), Transparency = 0 },
			}, { Rotation = 90 }),
			Text        = Color3.fromHex("#e0f4ff"),
			Placeholder = Color3.fromHex("#4a9ab8"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0099bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#33b8d8"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0099bb"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00c8aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0099bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0e4d99"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0099bb"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#051526"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#081d30"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#010d1a"),
			PanelBackgroundTransparency = 0,
		},

		Forest = {
			Name        = "Forest",
			Background  = Color3.fromHex("#050e06"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1a6b2a"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#2db84d"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#081408"),
			Text        = Color3.fromHex("#d4f0d8"),
			Placeholder = Color3.fromHex("#3d7a45"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#155522"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#22aa44"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#44cc66"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#33bb55"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#44dd66"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1d8833"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#33aa44"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#33bb55"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#44dd66"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#081408"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#060f07"),
			PanelBackgroundTransparency = 0,
		},

		Grape = {
			Name        = "Grape",
			Background  = Color3.fromHex("#0d0014"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#6600aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aa44ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#14001f"),
			Text        = Color3.fromHex("#f0e0ff"),
			Placeholder = Color3.fromHex("#7744aa"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#550099"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#9933ee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#bb66ff"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#9944ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#bb66ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#7733cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#9944ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#9944ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#bb66ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#14001f"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0e0018"),
			PanelBackgroundTransparency = 0,
		},

		RoseGold = {
			Name        = "Rose Gold",
			Background  = Color3.fromHex("#12060a"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#b54860"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#cc7280"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#d4a0aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1e0c12"),
			Text        = Color3.fromHex("#fce8ec"),
			Placeholder = Color3.fromHex("#886070"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#a03350"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#cc6880"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#d49090"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc5566"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dd7788"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#bb4455"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#cc6677"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc5566"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dd7788"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#1c0c12"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#150810"),
			PanelBackgroundTransparency = 0,
		},

		Gold = {
			Name        = "Gold",
			Background  = Color3.fromHex("#0d0900"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc9900"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffdd33"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1a1100"),
			Text        = Color3.fromHex("#fff8e0"),
			Placeholder = Color3.fromHex("#886600"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc8800"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffcc00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ffcc33"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffdd44"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc8800"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffdd44"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#1a1200"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#110e00"),
			PanelBackgroundTransparency = 0,
		},

		Sunrise = {
			Name        = "Sunrise",
			Background  = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1a0400"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#280900"), Transparency = 0 },
			}, { Rotation = 135 }),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff6600"), Transparency = 0 },
				["50"]  = { Color = Color3.fromHex("#ff9900"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffcc00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#2a0d00"),
			Text        = Color3.fromHex("#fff3e0"),
			Placeholder = Color3.fromHex("#aa5522"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee5500"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff9933"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff7700"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffbb00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee6600"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff9900"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff7700"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffbb00"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1f0900"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#160800"), Transparency = 0 },
			}, { Rotation = 90 }),
			ElementBackgroundTransparency = 0,
		},

		Toxic = {
			Name        = "Toxic",
			Background  = Color3.fromHex("#040a00"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#44dd00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aaff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#071200"),
			Text        = Color3.fromHex("#eeffcc"),
			Placeholder = Color3.fromHex("#557722"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#33bb00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#88ee00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#88ff22"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#66ee00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aaff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#55cc00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#88ee00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#66ee00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aaff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#071000"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#050c00"),
			PanelBackgroundTransparency = 0,
		},

		Blood = {
			Name        = "Blood",
			Background  = Color3.fromHex("#070000"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#660000"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aa0000"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#0f0000"),
			Text        = Color3.fromHex("#ffdddd"),
			Placeholder = Color3.fromHex("#661111"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#550000"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#990000"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#dd2222"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc1111"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee2222"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#aa0000"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#cc1111"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc1111"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee2222"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#0e0000"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0a0000"),
			PanelBackgroundTransparency = 0,
		},

		Tron = {
			Name        = "Tron",
			Background  = Color3.fromHex("#000c0c"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#006688"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#001414"),
			Text        = Color3.fromHex("#ccffff"),
			Placeholder = Color3.fromHex("#336666"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#005577"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00aaaa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#00eeee"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00eeee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00aaaa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00cccc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00eeee"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#001111"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#000d0d"),
			PanelBackgroundTransparency = 0,
		},

		Electric = {
			Name        = "Electric",
			Background  = Color3.fromHex("#090900"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#bbbb00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#eeee00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#111100"),
			Text        = Color3.fromHex("#fffff0"),
			Placeholder = Color3.fromHex("#777700"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#aaaa00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dddd00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ffff44"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dddd00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#bbbb00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dddd00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dddd00"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffff00"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#111100"),
			ElementBackgroundTransparency = 0,
		},

		-- ════════════════════════════════════════════════════════
		--  FLAT / SOLID THEMES — distinct visual identities
		-- ════════════════════════════════════════════════════════

		Rose = {
			Name        = "Rose",
			Background  = Color3.fromHex("#1c0208"),
			Accent      = Color3.fromHex("#be185d"),
			Dialog      = Color3.fromHex("#4a0518"),
			Text        = Color3.fromHex("#fdf2f8"),
			Placeholder = Color3.fromHex("#cc6699"),
			Button      = Color3.fromHex("#e95f74"),
			Icon        = Color3.fromHex("#fb7185"),
			ElementBackground = Color3.fromHex("#341820"),
			ElementBackgroundTransparency = 0,
		},

		Red = {
			Name        = "Red",
			Background  = Color3.fromHex("#190404"),
			Accent      = Color3.fromHex("#9b1919"),
			Dialog      = Color3.fromHex("#420909"),
			Text        = Color3.fromHex("#fef2f2"),
			Placeholder = Color3.fromHex("#cc4444"),
			Button      = Color3.fromHex("#dc2626"),
			Icon        = Color3.fromHex("#f87171"),
			ElementBackground = Color3.fromHex("#2e1e1e"),
			ElementBackgroundTransparency = 0,
		},

		Indigo = {
			Name        = "Indigo",
			Background  = Color3.fromHex("#0c0828"),
			Accent      = Color3.fromHex("#3730a3"),
			Dialog      = Color3.fromHex("#1e1b4b"),
			Text        = Color3.fromHex("#eef2ff"),
			Placeholder = Color3.fromHex("#7078d9"),
			Button      = Color3.fromHex("#4f46e5"),
			Icon        = Color3.fromHex("#818cf8"),
			ElementBackground = Color3.fromHex("#282542"),
			ElementBackgroundTransparency = 0,
		},

		Violet = {
			Name        = "Violet",
			Background  = Color3.fromHex("#1c0838"),
			Accent      = Color3.fromHex("#6d28d9"),
			Dialog      = Color3.fromHex("#3c1361"),
			Text        = Color3.fromHex("#faf5ff"),
			Placeholder = Color3.fromHex("#9f7ee0"),
			Button      = Color3.fromHex("#7c3aed"),
			Icon        = Color3.fromHex("#a78bfa"),
			ElementBackground = Color3.fromHex("#321e4a"),
			ElementBackgroundTransparency = 0,
		},

		Sky = {
			Name        = "Sky",
			Background  = Color3.fromHex("#041820"),
			Accent      = Color3.fromHex("#0284c7"),
			Dialog      = Color3.fromHex("#093555"),
			Text        = Color3.fromHex("#e0f5ff"),
			Placeholder = Color3.fromHex("#5599bb"),
			Button      = Color3.fromHex("#0ea5e9"),
			Icon        = Color3.fromHex("#38bdf8"),
			Toggle      = Color3.fromHex("#00d9d9"),
			Slider      = Color3.fromHex("#0ea5e9"),
			Checkbox    = Color3.fromHex("#0ea5e9"),
			ElementBackground = Color3.fromHex("#132838"),
			ElementBackgroundTransparency = 0,
		},

		Emerald = {
			Name        = "Emerald",
			Background  = Color3.fromHex("#011210"),
			Accent      = Color3.fromHex("#047857"),
			Dialog      = Color3.fromHex("#022c22"),
			Text        = Color3.fromHex("#ecfdf5"),
			Placeholder = Color3.fromHex("#3fbf8f"),
			Button      = Color3.fromHex("#059669"),
			Icon        = Color3.fromHex("#34d399"),
			ElementBackground = Color3.fromHex("#1c2e28"),
			ElementBackgroundTransparency = 0,
		},

		Plant = {
			Name        = "Plant",
			Background  = Color3.fromHex("#08160c"),
			Accent      = Color3.fromHex("#166534"),
			Dialog      = Color3.fromHex("#052e16"),
			Text        = Color3.fromHex("#f0fdf4"),
			Placeholder = Color3.fromHex("#4fbf7a"),
			Button      = Color3.fromHex("#16a34a"),
			Icon        = Color3.fromHex("#4ade80"),
			ElementBackground = Color3.fromHex("#243028"),
			ElementBackgroundTransparency = 0,
		},

		Midnight = {
			Name        = "Midnight",
			Background  = Color3.fromHex("#08101e"),
			Accent      = Color3.fromHex("#1e3a8a"),
			Dialog      = Color3.fromHex("#0c1e42"),
			Text        = Color3.fromHex("#dbeafe"),
			Placeholder = Color3.fromHex("#2f74d1"),
			Button      = Color3.fromHex("#2563eb"),
			Icon        = Color3.fromHex("#60a5fa"),
			ElementBackground = Color3.fromHex("#202838"),
			ElementBackgroundTransparency = 0,
		},

		Blurple = {
			Name        = "Blurple",
			Background  = Color3.fromHex("#1e1f22"),
			Accent      = Color3.fromHex("#5865F2"),
			Dialog      = Color3.fromHex("#2b2d31"),
			Text        = Color3.fromHex("#FFFFFF"),
			Placeholder = Color3.fromHex("#949BA4"),
			Button      = Color3.fromHex("#5865F2"),
			Icon        = Color3.fromHex("#b5bac1"),
			Toggle      = Color3.fromHex("#23A55A"),
			Slider      = Color3.fromHex("#5865F2"),
			Checkbox    = Color3.fromHex("#5865F2"),
			ElementBackground = Color3.fromHex("#313338"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#2b2d31"),
			PanelBackgroundTransparency = 0,
			LabelBackground = Color3.fromHex("#313338"),
			LabelBackgroundTransparency = 0,
		},

		MonokaiPro = {
			Name        = "Monokai Pro",
			Background  = Color3.fromHex("#191622"),
			Accent      = Color3.fromHex("#fc9867"),
			Dialog      = Color3.fromHex("#1e1e1e"),
			Text        = Color3.fromHex("#fcfcfa"),
			Placeholder = Color3.fromHex("#afafaf"),
			Button      = Color3.fromHex("#ab9df2"),
			Icon        = Color3.fromHex("#a9dc76"),
			ElementBackground = Color3.fromHex("#323039"),
			ElementBackgroundTransparency = 0,
		},

		TokyoNight = {
			Name        = "Tokyo Night",
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
			ElementBackground = Color3.fromHex("#1f2335"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#24283b"),
			PanelBackgroundTransparency = 0,
		},

		Catppuccin = {
			Name        = "Catppuccin",
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
			ElementBackground = Color3.fromHex("#313244"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#313244"),
			PanelBackgroundTransparency = 0,
		},

		Dracula = {
			Name        = "Dracula",
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
			ElementBackground = Color3.fromHex("#44475a"),
			ElementBackgroundTransparency = 0,
		},

		Nord = {
			Name        = "Nord",
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
			ElementBackground = Color3.fromHex("#3b4252"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#3b4252"),
			PanelBackgroundTransparency = 0,
		},

		OneDark = {
			Name        = "One Dark",
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
			ElementBackground = Color3.fromHex("#2c313a"),
			ElementBackgroundTransparency = 0,
		},

		Solarized = {
			Name        = "Solarized",
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
			ElementBackground = Color3.fromHex("#073642"),
			ElementBackgroundTransparency = 0,
		},

		Obsidian = {
			Name        = "Obsidian",
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
			ElementBackground = Color3.fromHex("#161618"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0e0e10"),
			PanelBackgroundTransparency = 0,
		},

		Vampire = {
			Name        = "Vampire",
			Background  = Color3.fromHex("#0f0000"),
			Accent      = Color3.fromHex("#6b0000"),
			Dialog      = Color3.fromHex("#280000"),
			Text        = Color3.fromHex("#f8e8e8"),
			Placeholder = Color3.fromHex("#994444"),
			Button      = Color3.fromHex("#8b0000"),
			Icon        = Color3.fromHex("#cc2222"),
			ElementBackground = Color3.fromHex("#200000"),
			ElementBackgroundTransparency = 0,
		},

		Matrix = {
			Name        = "Matrix",
			Background  = Color3.fromHex("#000800"),
			Accent      = Color3.fromHex("#003300"),
			Dialog      = Color3.fromHex("#001100"),
			Text        = Color3.fromHex("#00FF41"),
			Placeholder = Color3.fromHex("#007722"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#003300"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00aa33"), Transparency = 0 },
			}, { Rotation = 90 }),
			Icon        = Color3.fromHex("#00CC33"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00aa33"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00FF41"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#006622"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00CC33"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00aa33"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00FF41"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#001A00"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#000800"),
			PanelBackgroundTransparency = 0,
		},

		Titanium = {
			Name        = "Titanium",
			Background  = Color3.fromHex("#101214"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#7a7a8a"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ccccdd"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1c1e22"),
			Text        = Color3.fromHex("#e8eaf0"),
			Placeholder = Color3.fromHex("#6a6c78"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#505062"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#9999aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#aaaacc"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#8899cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aabbdd"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#7788aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#99aacc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#8899cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#aabbdd"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#1a1c22"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#161820"),
			PanelBackgroundTransparency = 0,
		},

		Frost = {
			Name        = "Frost",
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
			ElementBackground = Color3.fromHex("#ffffff"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#ffffff"),
			PanelBackgroundTransparency = 0,
			LabelBackground = Color3.fromHex("#f2f2f7"),
			LabelBackgroundTransparency = 0,
			TabBackground = Color3.fromHex("#ffffff"),
			TabBackgroundHover = Color3.fromHex("#f2f2f7"),
			TabBackgroundHoverTransparency = 0,
			TabBackgroundActive = Color3.fromHex("#e5e5ea"),
			TabBackgroundActiveTransparency = 0,
		},

		Mint = {
			Name        = "Mint",
			Background  = Color3.fromHex("#eefaf5"),
			Accent      = Color3.fromHex("#00c896"),
			Dialog      = Color3.fromHex("#d8f0e8"),
			Text        = Color3.fromHex("#0d2b22"),
			Placeholder = Color3.fromHex("#5a9e88"),
			Button      = Color3.fromHex("#00a87c"),
			Icon        = Color3.fromHex("#009970"),
			Toggle      = Color3.fromHex("#00c896"),
			Slider      = Color3.fromHex("#00a87c"),
			Checkbox    = Color3.fromHex("#00a87c"),
			ElementBackground = Color3.fromHex("#ddf2ea"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#eef9f4"),
			PanelBackgroundTransparency = 0,
		},

		Sakura = {
			Name        = "Sakura",
			Background  = Color3.fromHex("#fff5f8"),
			Accent      = Color3.fromHex("#ff6b9d"),
			Dialog      = Color3.fromHex("#ffe0eb"),
			Text        = Color3.fromHex("#3d1025"),
			Placeholder = Color3.fromHex("#cc7799"),
			Button      = Color3.fromHex("#e05580"),
			Icon        = Color3.fromHex("#cc4466"),
			Toggle      = Color3.fromHex("#ff6b9d"),
			Slider      = Color3.fromHex("#e05580"),
			Checkbox    = Color3.fromHex("#e05580"),
			ElementBackground = Color3.fromHex("#ffe0eb"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#fff0f4"),
			PanelBackgroundTransparency = 0,
		},

		Pastel = {
			Name        = "Pastel",
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
			ElementBackground = Color3.fromHex("#ede7f6"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#ede7f6"),
			PanelBackgroundTransparency = 0,
		},

		Lavender = {
			Name        = "Lavender",
			Background  = Color3.fromHex("#f2edff"),
			Accent      = Color3.fromHex("#7c5cbf"),
			Dialog      = Color3.fromHex("#e8deff"),
			Text        = Color3.fromHex("#22103a"),
			Placeholder = Color3.fromHex("#8866aa"),
			Button      = Color3.fromHex("#6a44aa"),
			Icon        = Color3.fromHex("#5533aa"),
			Toggle      = Color3.fromHex("#7755cc"),
			Slider      = Color3.fromHex("#6644bb"),
			Checkbox    = Color3.fromHex("#7755cc"),
			ElementBackground = Color3.fromHex("#ddd0ff"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#ece5ff"),
			PanelBackgroundTransparency = 0,
		},

		Parchment = {
			Name        = "Parchment",
			Background  = Color3.fromHex("#f2ede4"),
			Accent      = Color3.fromHex("#8b6914"),
			Dialog      = Color3.fromHex("#e8e0cc"),
			Text        = Color3.fromHex("#2a1f0a"),
			Placeholder = Color3.fromHex("#8a7055"),
			Button      = Color3.fromHex("#7a5c11"),
			Icon        = Color3.fromHex("#6b4f0e"),
			ElementBackground = Color3.fromHex("#ddd5bc"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#e8e2d0"),
			PanelBackgroundTransparency = 0,
		},

		Seafoam = {
			Name        = "Seafoam",
			Background  = Color3.fromHex("#e8f8f2"),
			Accent      = Color3.fromHex("#2a9d8f"),
			Dialog      = Color3.fromHex("#d0eee8"),
			Text        = Color3.fromHex("#0a2822"),
			Placeholder = Color3.fromHex("#558877"),
			Button      = Color3.fromHex("#219a8c"),
			Icon        = Color3.fromHex("#1b8a7e"),
			Toggle      = Color3.fromHex("#2a9d8f"),
			Slider      = Color3.fromHex("#219a8c"),
			Checkbox    = Color3.fromHex("#2a9d8f"),
			ElementBackground = Color3.fromHex("#c0e4da"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#d8f0e8"),
			PanelBackgroundTransparency = 0,
		},

		Monochrome = {
			Name        = "Monochrome",
			Background  = Color3.fromHex("#000000"),
			Accent      = Color3.fromHex("#1a1a1a"),
			Dialog      = Color3.fromHex("#111111"),
			Text        = Color3.fromHex("#ffffff"),
			Placeholder = Color3.fromHex("#555555"),
			Button      = Color3.fromHex("#222222"),
			Icon        = Color3.fromHex("#aaaaaa"),
			Toggle      = Color3.fromHex("#ffffff"),
			Slider      = Color3.fromHex("#888888"),
			Checkbox    = Color3.fromHex("#aaaaaa"),
			ElementBackground = Color3.fromHex("#141414"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0d0d0d"),
			PanelBackgroundTransparency = 0,
		},

		Abyss = {
			Name        = "Abyss",
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
			ElementBackground = Color3.fromHex("#0e0e0e"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#080808"),
			PanelBackgroundTransparency = 0,
		},

		Ink = {
			Name        = "Ink",
			Background  = Color3.fromHex("#040810"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0e1c44"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#1a3366"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#06091a"),
			Text        = Color3.fromHex("#c0d0ee"),
			Placeholder = Color3.fromHex("#445577"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0a1c44"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#183366"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#5577bb"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#2244aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#4466cc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1a3488"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#2a4499"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#2244aa"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#4466cc"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#070a18"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#050810"),
			PanelBackgroundTransparency = 0,
		},

		Slate = {
			Name        = "Slate",
			Background  = Color3.fromHex("#0d1528"),
			Accent      = Color3.fromHex("#2e3f55"),
			Dialog      = Color3.fromHex("#1a2638"),
			Text        = Color3.fromHex("#e8eef8"),
			Placeholder = Color3.fromHex("#7a8eaa"),
			Button      = Color3.fromHex("#38a8f8"),
			Icon        = Color3.fromHex("#88b8d8"),
			Toggle      = Color3.fromHex("#38bdf8"),
			Slider      = Color3.fromHex("#38a8f8"),
			Checkbox    = Color3.fromHex("#38a8f8"),
			ElementBackground = Color3.fromHex("#1a2638"),
			ElementBackgroundTransparency = 0,
		},

		Steel = {
			Name        = "Steel",
			Background  = Color3.fromHex("#0a1018"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1e4488"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#3a6aaa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#121a24"),
			Text        = Color3.fromHex("#ccd8ee"),
			Placeholder = Color3.fromHex("#4a6070"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#1a4488"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#2a5eaa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#4488cc"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#3377cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#5599dd"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#2266bb"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#4488cc"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#3377cc"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#5599dd"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#121c28"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0e141e"),
			PanelBackgroundTransparency = 0,
		},

		Arctic = {
			Name        = "Arctic",
			Background  = Color3.fromHex("#e0f0ff"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0066bb"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0099ee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#ccddff"),
			Text        = Color3.fromHex("#082040"),
			Placeholder = Color3.fromHex("#4477aa"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0055bb"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0088ee"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#0055aa"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0099ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00bbff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0077dd"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#0099ff"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#0099ff"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00bbff"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#c8ddff"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#d8eaff"),
			PanelBackgroundTransparency = 0,
		},

		Jade = {
			Name        = "Jade",
			Background  = Color3.fromHex("#030c09"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#005533"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#009966"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#05110e"),
			Text        = Color3.fromHex("#ccf5e8"),
			Placeholder = Color3.fromHex("#287755"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#004422"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#008855"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#00cc88"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00aa66"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cc88"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#009955"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00bb77"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#00aa66"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#00cc88"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#050e0a"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#040c08"),
			PanelBackgroundTransparency = 0,
		},

		Sand = {
			Name        = "Sand",
			Background  = Color3.fromHex("#181008"),
			Accent      = Color3.fromHex("#8a6030"),
			Dialog      = Color3.fromHex("#42301c"),
			Text        = Color3.fromHex("#fdf6e3"),
			Placeholder = Color3.fromHex("#a88060"),
			Button      = Color3.fromHex("#b8844a"),
			Icon        = Color3.fromHex("#cc9966"),
			ElementBackground = Color3.fromHex("#281c0c"),
			ElementBackgroundTransparency = 0,
		},

		Bubblegum = {
			Name        = "Bubblegum",
			Background  = Color3.fromHex("#fff0f8"),
			Accent      = Color3.fromHex("#ff66cc"),
			Dialog      = Color3.fromHex("#ffe0f5"),
			Text        = Color3.fromHex("#440022"),
			Placeholder = Color3.fromHex("#cc66aa"),
			Button      = Color3.fromHex("#ee44bb"),
			Icon        = Color3.fromHex("#dd33aa"),
			Toggle      = Color3.fromHex("#ff55cc"),
			Slider      = Color3.fromHex("#ee44bb"),
			Checkbox    = Color3.fromHex("#ff66cc"),
			ElementBackground = Color3.fromHex("#ffd5ee"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#ffe8f5"),
			PanelBackgroundTransparency = 0,
		},

		NightSakura = {
			Name        = "Night Sakura",
			Background  = Color3.fromHex("#0b0008"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#880044"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#cc3377"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#14000e"),
			Text        = Color3.fromHex("#ffe0f0"),
			Placeholder = Color3.fromHex("#7a3358"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#770033"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#bb2266"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff5599"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee3377"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff5599"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc2266"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee3377"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ee3377"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff5599"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#12000e"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0c000a"),
			PanelBackgroundTransparency = 0,
		},

		Flamingo = {
			Name        = "Flamingo",
			Background  = Color3.fromHex("#130007"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc0066"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff44aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#1e000e"),
			Text        = Color3.fromHex("#ffe0f0"),
			Placeholder = Color3.fromHex("#883366"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#bb0055"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ee3388"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ff55aa"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff2277"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff55aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dd1166"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff3388"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#ff2277"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ff55aa"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#1c000e"),
			ElementBackgroundTransparency = 0,
		},

		CottonCandy = {
			Name        = "Cotton Candy",
			Background  = Color3.fromHex("#180a2c"),
			Accent      = Color3.fromHex("#ec4899"),
			Dialog      = Color3.fromHex("#2a1838"),
			Text        = Color3.fromHex("#fdf2f8"),
			Placeholder = Color3.fromHex("#8a5fd3"),
			Button      = Color3.fromHex("#d946ef"),
			Icon        = Color3.fromHex("#06b6d4"),
			Slider      = Color3.fromHex("#d946ef"),
			ElementBackground = Color3.fromHex("#2c2040"),
			ElementBackgroundTransparency = 0,
		},

		Retro = {
			Name        = "Retro",
			Background  = Color3.fromHex("#090700"),
			Accent      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#aa6600"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Dialog      = Color3.fromHex("#120f00"),
			Text        = Color3.fromHex("#ffcc66"),
			Placeholder = Color3.fromHex("#886622"),
			Button      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#995500"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dd8800"), Transparency = 0 },
			}, { Rotation = 45 }),
			Icon        = Color3.fromHex("#ffaa33"),
			Toggle      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dd8800"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 45 }),
			Slider      = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#cc7700"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#dd8800"), Transparency = 0 },
			}, { Rotation = 45 }),
			Checkbox    = WindUI:Gradient({
				["0"]  = { Color = Color3.fromHex("#dd9900"), Transparency = 0 },
				["100"]  = { Color = Color3.fromHex("#ffaa00"), Transparency = 0 },
			}, { Rotation = 45 }),
			ElementBackground = Color3.fromHex("#100e00"),
			ElementBackgroundTransparency = 0,
			PanelBackground = Color3.fromHex("#0c0a00"),
			PanelBackgroundTransparency = 0,
		},

	}
end
