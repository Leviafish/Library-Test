-- Leviathan UI — Fallbacks
-- Synced with Wind UI fallback chain.
-- Only override here when Leviathan intentionally differs from Wind.

return function(Creator)
	return {
		Primary  = "Button",
		White    = Color3.new(1, 1, 1),
		Black    = Color3.new(0, 0, 0),
		SubText  = "Text",

		Dialog   = "Accent",

		Background                = "Accent",
		BackgroundTransparency    = 0,
		Hover                     = "Text",

		WindowBackground          = "Background",
		WindowShadow              = "Black",

		PanelBackground           = "White",
		PanelBackgroundTransparency = 0.95,
		LabelBackground           = "White",
		LabelBackgroundTransparency = 0.95,

		WindowTopbarTitle         = "Text",
		WindowTopbarAuthor        = "Text",
		WindowTopbarIcon          = "Icon",
		WindowTopbarButtonIcon    = "Icon",
		WindowSearchBarBackground = "Dialog",

		-- Tabs: same as Wind — TabBackground → Hover → Text (white, high transparency)
		TabBackground                   = "Hover",
		TabBackgroundHover              = "Hover",
		TabBackgroundHoverTransparency  = 0.97,
		TabBackgroundActive             = "Hover",
		TabBackgroundActiveTransparency = 0.93,
		TabText                         = "Text",
		TabTextTransparency             = 0.30,
		TabTextTransparencyActive       = 0,
		TabTitle                        = "Text",
		TabIcon                         = "Icon",
		TabIconTransparency             = 0.40,
		TabIconTransparencyActive       = 0.10,
		TabBorderTransparency           = 1,
		TabBorderTransparencyActive     = 0.75,
		TabBorder                       = "White",

		-- Elements: same as Wind
		ElementBackground             = "Text",
		ElementBackgroundTransparency = 0.93,
		ElementTitle                  = "Text",
		ElementDesc                   = "Text",
		ElementIcon                   = "Icon",

		PopupBackground             = "Background",
		PopupBackgroundTransparency = "BackgroundTransparency",
		PopupTitle                  = "Text",
		PopupContent                = "Text",
		PopupIcon                   = "Icon",

		DialogBackground             = "Dialog",
		DialogBackgroundTransparency = "BackgroundTransparency",
		DialogTitle                  = "Text",
		DialogContent                = "Text",
		DialogIcon                   = "Icon",

		-- Toggle / Checkbox / Slider → Button (theme accent)
		Toggle    = "Button",
		ToggleBar = "White",

		Checkbox               = "Button",
		CheckboxIcon           = "White",
		CheckboxBorder         = "White",
		CheckboxBorderTransparency = 0.75,

		SliderIcon     = "Icon",
		Slider         = "Button",
		SliderThumb    = "White",
		SliderIconFrom = "SliderIcon",
		SliderIconTo   = "SliderIcon",

		ProgressBar                  = "Button",
		ProgressBarTrack             = "Text",
		ProgressBarTrackTransparency = 0.90,
		ProgressBarText              = "Text",

		Tooltip              = Color3.fromHex("#4C4C4C"),
		TooltipText          = "White",
		TooltipBackground    = "Background",
		TooltipSecondary     = "Button",
		TooltipSecondaryText = "White",

		SectionIcon                      = "Icon",
		TabSectionIcon                   = "Icon",
		SectionExpandIcon                = "Icon",
		SectionExpandIconTransparency    = 0.40,
		SectionBox                       = "Text",
		SectionBoxTransparency           = 0.95,
		SectionBoxBackground             = "Text",
		SectionBoxBackgroundTransparency = 0.97,
		SectionBoxBorder                 = "White",
		SectionBoxBorderTransparency     = 0.75,

		SearchBarBorder              = "White",
		SearchBarBorderTransparency  = 0.75,

		-- Notifications — Wind default (duration = White, almost invisible bar)
		Notification                     = "Background",
		Notification2                    = "White",
		Notification2Transparency        = 0.92,
		NotificationTitle                = "Text",
		NotificationTitleTransparency    = 0,
		NotificationContent              = "Text",
		NotificationContentTransparency  = 0.40,
		NotificationDuration             = "White",
		NotificationDurationTransparency = 0.95,
		NotificationBorder               = "White",
		NotificationBorderTransparency   = 0.75,

		DropdownTabBorder     = "White",
		DropdownTabBackground = "ElementBackground",
		DropdownBackground    = "Background",

		ViewportBackground             = "ElementBackground",
		ViewportBackgroundTransparency = "ElementBackgroundTransparency",
	}
end
