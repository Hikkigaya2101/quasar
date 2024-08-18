<template>
  <div class = left_menu>
  <div class="q-pa-md q-gutter-sm">
    <q-tree
      :nodes="customize"
      node-key="label"
      default-expand-all
    >
      <template v-slot:default-header="prop">
        <div class="row items-center">
          <q-icon :name="prop.node.icon || 'share'" color="orange" size="28px" class="q-mr-sm" />
          <div class="text-weight-bold text-primary">{{ prop.node.label }}</div>
        </div>
      </template>

      <template v-slot:default-body="prop">
        <div v-if="prop.node.story">
          <span class="text-weight-bold">This node has a story</span>: {{ prop.node.story }}
        </div>
        <span v-else class="text-weight-light text-black"></span>
      </template>
    </q-tree>
  </div>
</div>
<div class="right_menu">
  <div class="q-pa-md" style="max-width: 450px">
    <q-list bordered>

      <q-item clickable v-ripple>
        <q-item-section avatar>
          <q-avatar>
            <img src="https://cdn.quasar.dev/img/boy-avatar.png">
          </q-avatar>
        </q-item-section>
        <div class ="custom_text" style="display: flex;flex-direction: column;">
          <span>Должность:инженер</span>
          <span>Дата:21.06.2019</span>
          <span>Дата рождения:15.02.2004</span>
        </div>
      </q-item>>

      <q-item clickable v-ripple>
        <q-item-section avatar>
          <q-avatar>
            <img src="https://cdn.quasar.dev/img/boy-avatar.png">
          </q-avatar>
        </q-item-section>
        <div class ="custom_text" style="display: flex;flex-direction: column;">
          <span>Должность:инженер</span>
          <span>Дата:21.06.2019</span>
          <span>Дата рождения:15.02.2004</span>
        </div>
      </q-item>
      <q-btn style='background: #062563; color: white' label='Fuchsia' />
 
      
    </q-list>
  </div>
</div>
</template>

<script>

export default {
  
  setup () {
    return {
      customize: [
        {
          label: 'Satisfied customers',
          header: 'root',
          children: [
            {
              label: 'Good food',
              icon: 'restaurant_menu',
              header: 'generic',
              children: [
                {
                  label: 'Quality ingredients',
                  header: 'generic',
                  body: 'story'
            
                },
                {
                  label: 'Good recipe',
                  body: 'story'
                
                }
              ]
            },
            {
              label: 'Good service',
              header: 'generic',
              body: 'toggle',
              caption: 'Why are we as consumers so captivated by stories of great customer service? Perhaps it is because...',
              enabled: false,
              children: [
                { label: 'Prompt attention' },
                { label: 'Professional waiter' }
              ]
            },
            {
              label: 'Pleasant surroundings',
              children: [
                { label: 'Happy atmosphere' },
                { label: 'Good table presentation', header: 'generic' },
                { label: 'Pleasing decor' }
              ]
            }
          ]
        }
      ]
    }
  }
}
</script>

<style scoped>

.left_menu{

border-right-color: black;
width: 600px;

position: fixed;
}
.left_menu:hover{
left:0;

}
.right_menu{
	padding: 5vh 50px;
	background: rgba(20, 20, 20, 0.5);
	height: 100vh;
	border-left: 7px solid #fcfffc;
	position: fixed;
	transition: 0.4s ease;
	right: -10px;
  width: 400px;

}
.right_menu:hover{
	right: 0;
	transition: 0.5s ease;
}



</style>
