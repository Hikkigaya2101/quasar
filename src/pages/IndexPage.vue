<template>
  <q-page class="flex flex-center">
   <div class ="col-12 col-md-4 col-lg-4 q-pa-xl">
    <div class ='text-center'>
    <q-img 
    class = "logo"
    src = "~/src/assets/log.png"/>
</div>
    <div class="text-h4 text-bold q-mt-lg">View Moto</div>
    <div class="text-grey-7">Please login</div>

   <div class = 'column'>
    <q-input
    outlined
    label="Enter email *"
    v-model="form.email.value"
    :error="form.email.error"
    :error-message="form.email.msg">
<template v-slot:prepend>
<q-icon name = 'email'></q-icon>
</template>
</q-input>
<q-input
    class = 'q-mt-sm'
     label="Enter password*"
outlined
@update:model-value="validateInputValue('email')"
      v-model="form.password.valuse"
      :error="form.email.error"
    :error-message="form.password.msg">
    <template v-slot:prepend>
      <q-icon name="lock"></q-icon>
    </template>
    <template v-slot:append>
      <q-icon name="visibility_off"></q-icon>
    </template>
    </q-input>
   </div>
   <div class = "column qt-mt-sm">
<q-btn
color="indigo"
@click = "submitLogin">
Login
</q-btn>
   </div>
   </div>
  </q-page>
</template>

<script setup>
import {ref} from "vue"
import Hooks from '~/src/hooks'
const {isFormValid, validateInput} = Hooks()
const form = ref({
  email:{
    value:'',
    email:true,
    required:true
  },
  password:{
    value:'',
    required:true
  }
})
const validateInputValue = (field='')=>{
  validateInput(form.value)
}
const submitLogin = ()=>{}
</script>


<style scoped>
.logo{
  width: 70%;
}
</style>