<template>

  <v-container>
<h2>Contact US At</h2>
<v-row>
  <v-col>
    <div class="mapouter"><div class="gmap_canvas"><iframe width="350" height="350" id="gmap_canvas" src="https://maps.google.com/maps?q=kepayan&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.whatismyip-address.com"></a><br><style>.mapouter{position:relative;text-align:right;height:350px;width:350px;}</style><a href="https://www.embedgooglemap.net">custom google maps embed</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:350px;width:350px;}</style></div></div>
  </v-col>
  <v-col>
    <h4>Phone : 011221312</h4>
    <v-list>
 <v-list-item
  v-for="item in contacts"
:key="item.title"
:to="item.to"
link

  >
<v-icon >{{item.icon}}</v-icon>
<v-list-item-content>

   <v-list-item-title>{{item.title}}</v-list-item-title>

</v-list-item-content>
 
  </v-list-item>

</v-list></v-col>


</v-row>



  </v-container>


</template>


<script>
export default {
    name: "IndexPage",
    data() {
      return{

        contacts: [
         {
          icon: "mdi-facebook",
          title: "Facebook",
          to: "https://www.facebook.com/doujinpackers",
        },
         {
          icon: "mdi-instagram",
          title: "Instagram",
          to: "https://www.instagram.com/doujinpackers",
        },
         {
          icon: "mdi-twitter",
          title: "Twitter",
          to: "https://twitter.com",
        },
      ],
      }
        
    }
   
}
</script>

<style>

</style>