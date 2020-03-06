//import * as THREE from '/three.js-master/build/three.module.js';

var scene, camera, renderer;
function init(){
    scene = new THREE.Scene();
    camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

    renderer = new THREE.WebGLRenderer();
    renderer.setSize( window.innerWidth, window.innerHeight );
    document.body.appendChild( renderer.domElement );
}

var geometry, material, shape;
var shapes = new Array;
function makeShape(type){
    if(type=="sphere")
        geometry = new THREE.SphereGeometry();
    if(type=="cube")
        geometry = new THREE.CubeGeometry(3, 3, 3);
    material = new THREE.MeshBasicMaterial( { color: 0x00ffff, wireframe: true} );
    shape = new THREE.Mesh( geometry, material );
    shapes.push(shape);
    scene.add( shape );
    camera.position.z = 5;
}

function loadObj(path){
    let loader = new OBJLoader2();

    function callbackOnLoad ( object3d ) {
        scene.add( object3d );
}

// load a resource from provided URL synchronously
loader.load( path, callbackOnLoad, null, null, null );
}

function animate() {
    camera.position.z = 5;
    /*shapes[0].rotation.x += 0.001;
    shapes[1].rotation.y += 0.01;*/
    requestAnimationFrame( animate );
    renderer.render( scene, camera );
}