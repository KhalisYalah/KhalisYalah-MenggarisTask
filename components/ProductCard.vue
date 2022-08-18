<template>

<v-col>
    <v-card max-width="300px" >
              <v-img
                :src="product.url"
                class="white--text align-end"
                gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                height="200px"
              >
                <v-card-title >{{product.name}}</v-card-title>
              </v-img>
  
              <v-card-actions>
                <v-spacer></v-spacer>
  
               <v-btn icon >
                  <v-icon>mdi-share-variant</v-icon>
                </v-btn>   
         <v-btn
        tile
        color="error"
        target="_blank" href="https://shopee.com.my/doujinpackers"
      >
        <v-icon left>
          mdi-cart
        </v-icon>
        Shop
      </v-btn>
  
            
              </v-card-actions>
            </v-card>
            </v-col>
</template>

<script>
export default {
  props:{ 
    
    product:{type:Object},
    default:()=>[]
   }

}
</script>

<style>

</style>