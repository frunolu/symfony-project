function myFunction(value) {
    const url = "http://localhost:8004/ajax/save_form.php"

    let form = new FormData();
    form.append('username', value);

    fetch(url, {
        method: 'post',
        body: form
    }).then((response) => {
        return response.json()
    }).then((res) => {
        if (res.status === 201) {
            console.log("Post successfully created!")
        }
    }).catch((error) => {
        console.log(error)
    })
}

function myFunctionOld(value) {
    const url = "http://localhost:8004/ajax/save_form.php"

    let xhr = new XMLHttpRequest()

    let form = new FormData();
    form.append('username', value);

    xhr.open('POST', url, true)
    xhr.send(form);

    xhr.onload = function () {
        if (xhr.status === 201) {
            console.log("Post successfully created!")
        }
    }
}
