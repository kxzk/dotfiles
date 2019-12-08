require("iron").core.set_config {
    repl_open_cmd = 'rightbelow 10 split',
    preferred = {
        python = "bpython"
    }
}
