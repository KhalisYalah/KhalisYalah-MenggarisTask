<template>

 <v-container>
 <v-data-table
      :headers="headers"
      :items="products"
      :items-per-page="10"
      class="elevation-1"
      loading-text="Loading... Please wait"
 >
     <template v-slot:top>
        <v-toolbar
          flat >
          <v-spacer></v-spacer>
          <!----- create  forrm--->
          <v-dialog
            v-model="dialog"
            max-width="1000px"
              transition="dialog-bottom-transition"
          >
          <template v-slot:activator="{ on, attrs }">
          <v-btn
                color="primary"
                dark
                class="mb-2"
                v-bind="attrs"
                v-on="on"
              >
                New Product
              </v-btn>
            </template>
            
         <v-card>
              <v-card-title>
                <span class="text-h5">{{ formTitle }}</span>
              </v-card-title>
              <v-card-text>
                <v-text-field
                  v-model="prodNam"
                  label="Name"
                  required
                >    
                </v-text-field>
              <input type="file"  @change="onFileChange" />
              
              <div id="preview"><img v-if="url" :src="url" /></div>
              <v-select
                      v-model="catid"
                      :items="catitems"
                      item-text="name"
                      item-value="Id"
                      label="Product Catergory"
                      return-object
                      single-line
                    ></v-select>
              </v-card-text>
 
                      <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn
                  color="blue darken-1"
                  text
                  @click="close"
                >
                  Cancel
                </v-btn>
                <v-btn
                  color="blue darken-1"
                  text
                  @click="save"
                >
                  Save
                </v-btn>
              </v-card-actions>
               </v-card>
   
           
          </v-dialog>
          <v-dialog v-model="dialogDelete" max-width="500px" >
            <v-card>
              <v-card-title class="text-h5">Are you sure you want to delete this item?</v-card-title>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" text @click="closeDelete">Cancel</v-btn>
                <v-btn color="blue darken-1" text @click="deleteItemConfirm">OK</v-btn>
                <v-spacer></v-spacer>
              </v-card-actions>
            </v-card>
          </v-dialog>
        </v-toolbar>
      </template>
      <template v-slot:[`item.actions`]="{ item }">
        <v-icon
          small
          class="mr-2"
          @click="editItem(item)"
        >
          mdi-pencil
        </v-icon>
        <v-icon
          small
          @click="deleteItem(item)"
        >
          mdi-delete
        </v-icon>
      </template>
      <template v-slot:no-data>
        <v-btn
          color="primary"
          @click="initialize"
        >
          Reset
        </v-btn>
      </template>
    </v-data-table>
 </v-container>
 
</template>

<script>
 
export default {
    

    name: "Inventory",
    data() {
        return {
           dialog: false,
            dialogDelete: false,
          
            catitems: [
              { name: 'Figures', Id: '1' },
              { name: 'T-Shirts', Id: '2' },
              { name: 'Gunpla', Id: '3' },
                ],
            headers: [
              { text: 'Id', value: 'id' },
              {
                text: 'Product Name',
                align: 'start',
                sortable: false,
                value: 'name',
              },
              { text: 'Description', value: 'name' },
              { text: 'Price', value: 'catid' },
              { text: 'Category', value: 'catid' },
              { text: 'Actions', value: 'actions', sortable: false },
            ],
            products:[],
            categories:[],
            title: "DoujinPacker",
            editedIndex: -1,
              catid: "",
              prodNam: "",
              files: [],

         
        };
    },
   
    computed: {
    formTitle () {
      return this.editedIndex === -1 ? 'New Product' : 'Edit Product'
    },
  },

  watch: {
    dialog (val) {
      val || this.close()
    },
    dialogDelete (val) {
      val || this.closeDelete()
    },
  },

  created () {
    this.initialize()
  },

  methods: {
    async initialize () {
   

      this.products=await fetch('http://localhost:3000/api/products' ).then((res)=>res.json())
      this.categories=await fetch('http://localhost:3000/api/categories').then((res)=>res.json())
   
  
    },
     onFileChange(e) {
      const file = e.target.files[0];
      this.url = URL.createObjectURL(file);
      this.files=(e.target.files);
    },

    editItem (item) {
      this.editedIndex = this.products.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialog = true
    },

    deleteItem (item) {
      this.editedIndex = this.products.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialogDelete = true
    },

    async deleteItemConfirm () {
      await fetch( 'http://localhost:3000/api/products/'+this.editedItem.id, {
        method: 'DELETE'} ).then(response => {
    this.initialize()})

      this.closeDelete()
    },

     async close () {
        
      this.dialog = false
      
      this.$nextTick(() => {
    
          this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      })
    },

    closeDelete () {
      this.dialogDelete = false
      this.$nextTick(() => {

        this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      })
    },

     async save () {

      let formData = new FormData();

     formData.append('title', this.prodNam);
     formData.append('file', this.files[0]);
     formData.append('catId', this.catId);
     debugger
      if (this.editedIndex > -1) {
        //edit
         await fetch( 'http://localhost:3000/api/products/'+this.editedItem.id, {
        method: 'PATCH',
         body: formData} ).then(response => {
            this.initialize()
     })


  
      } else {
        //Save
      await fetch( 'http://localhost:3000/api/products', {
        method: 'POST',
         body: formData} ).then(response => {
          //alert(JSON.stringify(formData));
            this.initialize()
        })


      }
      this.close()
    },
  },
   
}
</script>

<style>
#preview {
  display: flex;
  justify-content: center;
  align-items: center;
}

#preview img {
  max-width: 200px;
  max-height: 200px;
}
</style>