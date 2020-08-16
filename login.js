

$(document).ready(()=>{
    console.log("test script");

    getData = () => {

        // $.get('http://localhost:3000/getAllStates', (data)=>{
        //     console.log("the data is :")
        //     console.log(data);
        // })

        console.log("heloo terer")
        $.get('http://localhost:8012/trial_register_controller', (data)=> {
            console.log(data);

            

        })
    }
})



