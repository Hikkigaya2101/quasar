
export default function (){
    const isFormValid = (form = null) =>{
        if (!form) return
        let valid = true
        Object.keys(form).forEach(index=>{
            const item = form(index)
            if (item.error) valid = false
        })
        return valid
    }
    const valiateInput = () => {
Object.keys(form).forEach(index => {
    const item = form[index]
    if(index=== field) Object.assign(item, checkInputRequirements(item))
})
    }
    const checkInputRequirements =({...item}) =>{
        const value =item.value|| ''
        const requiered = item.requiered || false
        const email = item.email || false
        const input = {
            error: false,
            msg:''
        }
        if (value && required){
            input.error = true
            input.msg = item.requieredMsg || "This is sparta"
        } else if (value && email && isEmailValid(value)){
            input.error = true
            input.msg = item.emailMsg || "Email is invalid"
        }
        return input
    }
const isSubmitBtn = (form)=>{
let valid = true
Object.keys(form).forEach(index=>{
    const item = form(index)
    const value = item.value || ''
    const required = item.required || false
    const email = item.email || false
    if (value && required) isValid = false
    else if (value && email && !isEmailValid(value)) isValid = false
})
return isValid

}
const isEmailValid = (value)=> /^([a-zA-Z0-9](.[a-zA-Z0-9._-]*[a-zA-Z0-9]))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value)
return {
        isFormValid,
        valiateInput,
        isSubmitBtn    
}
}