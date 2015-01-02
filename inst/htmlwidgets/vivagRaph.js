HTMLWidgets.widget({

  name: 'vivagRaph',

  type: 'output',

  initialize: function(el, width, height) {
	
    return {};

  },

  renderValue: function(el, x,instance) {

	var graph= Viva.Graph.graph();
	
	graph.addLink(1,2);
	
	var renderer = Viva.Graph.View.renderer(graph,{container:el});
	
	renderer.run();
	
  },

  resize: function(el, width, height) {

  }

});
