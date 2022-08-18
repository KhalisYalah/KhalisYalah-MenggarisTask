<template>
<vue-card-stack :cards="cards" :stack-width="560" :card-width="280">
  <template v-slot:card="{ card }">
    <div
      style="width: 100%; height: 100%;"
      :style="{ background: card.background }"
    ></div>
  </template>

  <template v-slot:nav="{ activeCardIndex, onNext, onPrevious }">
    <nav class="nav">
      <div class="counter">{{activeCardIndex + 1}}/{{cards.length}}</div>
      <button v-on:click="onPrevious" class="button">
        <span class="chevron left"></span>
      </button>
      <button v-on:click="onNext" class="button">
        <span class="chevron right"></span>
      </button>
    </nav>
  </template>
</vue-card-stack>
</template>

<script>
import VueCardStack from "vue-card-stack";
export default {
components: {
    VueCardStack,
  },
  async fetch(){
    

      this.prods=await fetch('http://localhost:3000/api/products' ).then((res)=>res.json())
     
    },
  

  data() {
    
    return {
        
      cards: [
        { background: "#00659d" },
        { background: "#00abbc" },
        { background: "#e2c58a" },
        { background: "#fc8890" },
        { background: "#b35d7f" },
      ],
      prods:[]
    };
  },
};
</script>

<style>

</style>