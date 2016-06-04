var map = L.map("image-map", {
    minZoom: 1,
    maxZoom: 4,
    center: [0, 0],
    zoom: 1,
    crs: L.CRS.Simple
});


// calculate the edges of the image, in coordinate space
var southWest = map.unproject([0, h], map.getMaxZoom()-1);
var northEast = map.unproject([w, 0], map.getMaxZoom()-1);
var bounds = new L.LatLngBounds(southWest, northEast);

// add the image overlay, 
// so that it covers the entire map
L.imageOverlay(url, bounds).addTo(map);

// tell leaflet that the map is exactly as big as the image
map.setMaxBounds(bounds);
map.on("click", function(e) {
	alert(e.latlng);
});

var poi = L.icon({
	iconUrl: "img/pin.png",
	shadowUrl: "img/leaf-shadow.png",
	iconSize:     [56, 77], // size of the icon
	shadowSize:   [50, 64], // size of the shadow
	iconAnchor:   [28, 77], // point of the icon which will correspond to markers location
	shadowAnchor: [4, 62],  // the same for the shadow
	popupAnchor:  [0, -77] // point from which the popup should open relative to the iconAnchor
});

var esc = L.icon({
	iconUrl: "img/esc.png",
	shadowUrl: "img/leaf-shadow.png",
	iconSize:     [50, 50], // size of the icon
	shadowSize:   [50, 64], // size of the shadow
	iconAnchor:   [25, 25], // point of the icon which will correspond to markers location
	shadowAnchor: [4, 62],  // the same for the shadow
	popupAnchor:  [0, -25] // point from which the popup should open relative to the iconAnchor
});


var wc = L.icon({
	iconUrl: "img/wc.png",
	shadowUrl: "img/leaf-shadow.png",
	iconSize:     [50, 50], // size of the icon
	shadowSize:   [50, 64], // size of the shadow
	iconAnchor:   [25, 25], // point of the icon which will correspond to markers location
	shadowAnchor: [4, 62],  // the same for the shadow
	popupAnchor:  [0, -25] // point from which the popup should open relative to the iconAnchor
});

