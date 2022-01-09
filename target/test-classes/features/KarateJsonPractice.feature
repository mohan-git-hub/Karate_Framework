Feature: Practice JSON File

Scenario: Daily Covid Cases

* def jsonObject = 
	"""
	[
	{
		"City":"Chennai",
		"Cases":"125",
		"Severity":"High"
	},
	{
		"City":"Chennai",
		"Cases":"125",
		"Severity":"High"
	}
	]
	"""
	
	* print jsonObject
	* print jsonObject[0].City
	
Scenario: Another Complex Json practice

* def APIObject = 
	"""
	{"menu": {
    "header": "SVG Viewer",
    "items": [
        {"id": "Open"},
        {"id": "OpenNew", "label": "Open New"},
        null,
        {"id": "ZoomIn", "label": "Zoom In"},
        {"id": "ZoomOut", "label": "Zoom Out"},
        {"id": "OriginalView", "label": "Original View"},
        null,
        {"id": "Quality"},
        {"id": "Pause"},
        {"id": "Mute"},
        null,
        {"id": "Find", "label": "Find..."},
        {"id": "FindAgain", "label": "Find Again"},
        {"id": "Copy"},
        {"id": "CopyAgain", "label": "Copy Again"},
        {"id": "CopySVG", "label": "Copy SVG"},
        {"id": "ViewSVG", "label": "View SVG"},
        {"id": "ViewSource", "label": "View Source"},
        {"id": "SaveAs", "label": "Save As"},
        null,
        {"id": "Help"},
        {"id": "About", "label": "About Adobe CVG Viewer..."}
    ]
}}
	"""
	* print APIObject.menu.header
	* print APIObject.menu.items[5].id