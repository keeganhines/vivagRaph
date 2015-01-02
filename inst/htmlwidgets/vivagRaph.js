HTMLWidgets.widget({

  name: 'vivagRaph',

  type: 'output',

  initialize: function(el, width, height) {
	
    return {};

  },

  renderValue: function(el, x, instance) {

  	var graph= Viva.Graph.graph();
  	
  	graph.addLink(1,2);
  	
  	var renderer = Viva.Graph.View.renderer(graph,{container:el});
  	
  	renderer.run();
    
    //try to handle Chrome "bug"
    // see issue https://github.com/anvaka/VivaGraphJS/issues/108
    // by explicitly setting svg height and width
    el.getElementsByTagName("svg")[0].style.width="100%"
    el.getElementsByTagName("svg")[0].style.height="100%"
  
    instance.renderer = renderer;

  },

  resize: function(el, width, height, instance) {
    //it seems resize is only called once and then no more for subsequent
    
    // not sure if this is desired since on resize
    // both zoom and center will be reset
    // so if someone zoomed in then their zoom will be reset
    // benefit though is the graph will not get lost
    /*
    if(instance.renderer){
      instance.renderer.reset();
    }
    */
    
  }

});
