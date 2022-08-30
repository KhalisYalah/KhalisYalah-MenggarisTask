<template>

  <v-app>
  

    <v-app-bar color="#3f48cc" flat dark>
      <img class="minilogo" alt="Doujin Packer" src="~/assets/img/logo.png" />
     
      <v-toolbar-title style="padding-left:  6px; font-style:ariel;">Doujin Packer</v-toolbar-title>

   
      <v-spacer></v-spacer>
     <v-btn text href="/">Home</v-btn>
        <v-btn text href="/inventory">Inventory</v-btn>
         <v-btn text href="/contact">Contacts</v-btn>
        <v-btn icon @click.stop="drawer=!drawer">
          <v-icon>mdi-menu</v-icon>
        </v-btn>

  
    </v-app-bar>
  <v-navigation-drawer
  v-model="drawer"
  absolute
  temporary
  right
  >
<v-list>
  <v-list-item
  v-for="item in items"
:key="item.title"
:to="item.to"
link

  >
<v-icon >{{item.icon}}</v-icon>
<v-list-item-content>

   <v-list-item-title>{{item.title}}</v-list-item-title>

</v-list-item-content>
 
  </v-list-item>

</v-list>
    
  </v-navigation-drawer>
 <v-main>
  
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>

    

    <v-footer dark padless>
      <v-card class="flex" flat tile color="#3f48cc">
        <v-card-title>
          <v-spacer></v-spacer>
          <small>
            <em>Contact Us On</em>
          </small>
          <v-btn v-for="icon in icons" :key="icon.icon" class="mx-2" dark icon :href="icon.to" target="_blank">
            <v-icon size="24px">
              {{ icon.icon }}
            </v-icon>
          </v-btn>
        </v-card-title>


      </v-card>
    </v-footer>

  </v-app>
</template>

<script>

export default {
  name: "DefaultLayout",
  data() {
    return {
    drawer: false,
      items: [
        {
          icon: "mdi-home",
          title: "Home",
          to: "/",
        },
        {
          icon: "mdi-package-variant-closed-check",
          title: "Inventory",
          to: "/inventory",
        },
        {
          icon: "mdi-phone",
          title: "Contacts",
          to: "/contact",
        },
      ],
      icons: [
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
      title: "DoujinPackers",
    };
  }
  
}
</script>

<style scoped>
.minilogo {
  height: 45px;
  width: 45px;
  border-radius: 50%;
  border-width: 2pt;
  border-color:white;
  border-style:solid;
}
</style>
