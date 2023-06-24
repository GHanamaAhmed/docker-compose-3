const express=require("express")
const app=express()

app.get("/",(req,res)=>res.set({
    "Content-Type":"text/html"
}).send("<h1>Hello</h1>"))

app.listen(5000,()=>{
    console.log("http://localhost:5000");
})