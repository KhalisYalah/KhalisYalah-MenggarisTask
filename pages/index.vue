<template>
<v-container>
 
     <v-row >
        <v-col md-2>
          <v-card
      class="pa-12"
      color="white darken-2"
      flat
      borde="none"
    >


          <v-card>
            <Hero />
        <v-card-title class="Headlines">
          Welcome To Our Shop
        </v-card-title>
        <v-card-actions>
          <v-spacer />
          <v-btn color="primary" nuxt to="/product"> Browse </v-btn>
        </v-card-actions>
      </v-card>
    </v-card>
        </v-col>

     </v-row>
    
  <header>Anime Figures</header>
  
    <v-row justify="center">
      
     <ProductCard 
     v-for ="product in figures"
     :key="product.id"
     :product="product"
     /> 
  </v-row>
    
    <v-row justify="center">
     <ProductCard 
     v-for ="product in shirts"
     :key="product.id"
     :product="product"
     /> 
  </v-row>
  
  <v-row justify="center">
     <ProductCard 
     v-for ="product in gunpla"
     :key="product.id"
     :product="product"
     /> 
  </v-row>
  
</v-container>
</template>

<script>


export default {
    
    async fetch(){

      this.shirts=await fetch('http://localhost:3000/api/productsbycat/2' ).then((res)=>res.json())
      this.gunpla=await fetch('http://localhost:3000/api/productsbycat/3').then((res)=>res.json())
      this.figures=await fetch('http://localhost:3000/api/productsbycat/1').then((res)=>res.json())
    },

    name: "IndexPage",
    data() {
        return {
            shirts:[],
            gunpla:[],
            figures:[],
            clipped: false,
            drawer: false,
            fixed: false,
            items: [
                {
                    icon: "mdi-apps",
                    title: "Home",
                    to: "/",
                },
                {
                    icon: "mdi-chart-bubble",
                    title: "Product",
                    to: "/inspire",
                },
            ],
            miniVariant: false,
            right: true,
            rightDrawer: false,
            title: "DoujinPacker",
        };
    },
   
}
</script>
