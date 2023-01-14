function handleMethod(argsFromFlutter) {
    console.log("Json from flutter =>" + argsFromFlutter)
    let args = JSON.parse(argsFromFlutter);
    let method = args.method;
    console.log(method)

    switch (method) {
        case "testAction":
            sendMessageToSystem(args)
            break;
        case "otherAction":
            otherAction(args)
            break;
    }
}

function sendMessageToSystem(args) {
    console.log(args.arg3);
    window.alert(args.arg3)
    parent.postMessage(args, '*');
}

function otherAction(args) {
    window.alert(args.arg3)
    parent.postMessage(message, '*');
}