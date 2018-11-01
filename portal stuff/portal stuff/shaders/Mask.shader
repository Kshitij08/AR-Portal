Shader "Custom/Mask" {
 
   SubShader {
   //In the Tags section we define different properties for the subshader.
      Tags
      {
         //The main geometry render in the Geometry Pass. By Changing the Geometry pass to -1 we make sure it renders first.
         "Queue" = "Geometry - 1"
      }
         //The ZWrite On value turns on the render to Z-buffer. It's needed for proper sorting of the rendered passes.
         ZWrite On
 
         //We don’t want to render the color pass; ColorMask 0 will do the trick.
         ColorMask 0
 
         Pass {}
   }
}