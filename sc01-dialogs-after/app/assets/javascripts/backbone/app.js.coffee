@Dialogs = do (Backbone, Marionette) ->
	
	App = new Marionette.Application		
	
	App.addRegions
		headerRegion:	"#header-region"
		mainRegion: 	"#main-region"
		dialogRegion: Marionette.Region.Dialog.extend el: "#dialog-region"
	
	App.addInitializer ->
		App.module("HeaderApp").start()
		App.module("EventsApp").start()
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
	
	App