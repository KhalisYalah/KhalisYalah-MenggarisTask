<template v-if="index <= limit">

<v-col>
    <v-card max-width="300px" >
              <v-img
                :src="product.url"
                class="white--text align-end"
                gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                height="200px"
                contain
              >
               
                <v-card-title >{{product.name}}</v-card-title>
              </v-img>
        
                
              <v-card-actions>
                 
                <v-card-subtitle>RM {{product.price}}</v-card-subtitle>
                <v-spacer></v-spacer>
  
                 

             
         <v-btn
        tile
        color="error"
        target="_blank" :href="product.url"
      >
        <v-icon left>
          mdi-cart
        </v-icon>
        Shop in Shopee
      </v-btn>
  
            
              </v-card-actions>
            </v-card>
            </v-col>
</template>

<script>
export default {
  props:{ 
    
    product:{type:Object},
    limit:Number,
    default:()=>[]
   }

}
</script>

<style>

</style>