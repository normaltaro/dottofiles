require('code_runner').setup({
    mode = "toggleterm",
    focus = true,
    startinsert = true,
    -- put here the commands by filetype
    filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        c = "cd $dir && gcc $fileName -g -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
    },
})
