var AppRouter = Backbone.Router.extend({
	routes: {
		'': 'rootPath'
	}
});
var app_router = new AppRouter;
app_router.on('route:rootPath', function() {
	// alert('root path');
});

// Start Backbone history a necessary step for bookmarkable URL's
Backbone.history.start();