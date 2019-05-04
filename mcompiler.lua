VERSION = "1.0.0"

if GetOption("runc") == nil then
    AddOption("runc", true)
end

if GetOption("build") == nil then
    AddOption("build", true)
end

MakeCommand("runc", "mcompiler.runcCommand", 0)
MakeCommand("build", "mcompiler.buildCommand", 0)

-- example functions to run/compile golang
--function to run code
function runcCommand()
    CurView():Save(false)                 -- save current open file
    local ft = CurView().Buf:FileType()   -- get file extension  
    local file = CurView().Buf.Path       -- get file name
    local dir = DirectoryName(file)       -- get directory of file
    -- change this
    local runn = "go run ".. file         -- compiler/interprter params, change this for custom params 
    os.execute(runn)                      -- ejecute 
    --os.execute("tmux run-shell -t 2 '" .. runn .. "' " ) -- temux pane (pane 2) output use in t-ide
end

--function to compile code
function buildCommand()
    CurView():Save(false)                 -- save current open file
    local ft = CurView().Buf:FileType()   -- get file extension  
    local file = CurView().Buf.Path       -- get file name
    local dir = DirectoryName(file)       -- get directory of file
    -- change this
    local runn = "go build ".. file         -- compiler/interprter params, change this for custom params  
    os.execute(runn)                      -- ejecute 
    --os.execute("tmux run-shell -t 2 '" .. runn .. "' " ) -- temux pane (pane 2) output use in t-ide
end