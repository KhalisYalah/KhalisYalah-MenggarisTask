<template>

  <v-app>
  

    <v-app-bar color="#3f48cc" flat dark>
      <img class="minilogo" alt="Doujin Packer" src="~/assets/img/logo.png" />
     
      <v-toolbar-title style="padding-left:  6px; font-style:ariel;">Doujin Packer</v-toolbar-title>

   
      <v-spacer></v-spacer>
     
        <v-btn text href="/inventory">Inventory</v-btn>
         <v-btn text href="/contact">Contacts</v-btn>
        <v-btn icon>
          <v-icon>mdi-facebook</v-icon>
        </v-btn>

  
    </v-app-bar>

 <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>

    <!-- <v-main>
      <v-container>
        <v-row >
         <v-col>   <v-navigation-drawer
          permanent
          left
        >
          <v-list>
            <v-list-item class="px-2">
              <v-list-item-avatar>
                <v-img contain src="https://randomuser.me/api/portraits/women/85.jpg"></v-img>
              </v-list-item-avatar>
            </v-list-item>
  
            <v-list-item link>
              <v-list-item-content>
                <v-list-item-title class="text-h6">
                  Sandra Adams
                </v-list-item-title>
                <v-list-item-subtitle>sandra_a88@gmail.com</v-list-item-subtitle>
              </v-list-item-content>
            </v-list-item>
          </v-list>
  
          <v-divider></v-divider>
  
          <v-list
            nav
            dense
          >
            <v-list-item link>
              <v-list-item-icon>
                <v-icon>mdi-folder</v-icon>
              </v-list-item-icon>
              <v-list-item-title>My Files</v-list-item-title>
            </v-list-item>
            <v-list-item link>
              <v-list-item-icon>
                <v-icon>mdi-account-multiple</v-icon>
              </v-list-item-icon>
              <v-list-item-title>Shared with me</v-list-item-title>
            </v-list-item>
            <v-list-item link>
              <v-list-item-icon>
                <v-icon>mdi-star</v-icon>
              </v-list-item-icon>
              <v-list-item-title>Starred</v-list-item-title>
            </v-list-item>
          </v-list>
        </v-navigation-drawer></v-col> 
       <v-col>    
        <Nuxt />
        </v-col>
        </v-row>
   
      </v-container>
    </v-main> -->


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
    
      items: [
        {
          icon: "mdi-apps",
          title: "Welcome",
          to: "/",
        },
        {
          icon: "mdi-chart-bubble",
          title: "Inspire",
          to: "/inspire",
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
          to: "https://shopee.com.my/doujinpackers",
        },
         {
          icon: "mdi-twitter",
          title: "Twitter",
          to: "#",
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
