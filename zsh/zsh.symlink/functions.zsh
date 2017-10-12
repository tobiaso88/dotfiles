function add_to_path () {
    export PATH="$1:$PATH"
}

function site () {
    cd ~/Sites/$1
}

function nxt () {
    site nxt/$1
}

function b52 () {
    site 52/$1
}

