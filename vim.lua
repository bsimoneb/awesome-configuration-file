---------------------------------------------------------------------------
--- VIM hotkeys for awful.hotkeys_widget
--
-- @author Yauheni Kirylau &lt;yawghen@gmail.com&gt;
-- @copyright 2014-2015 Yauheni Kirylau
-- @submodule awful.hotkeys_popup
---------------------------------------------------------------------------

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local vim_rule_any = {name={"Terminal.*","[Pp]ycharm.*"} }
for group_name, group_data in pairs({
    ["VIM: motion"] =             { color="#009F00", rule_any=vim_rule_any },
    ["VIM: command"] =            { color="#aFaF00", rule_any=vim_rule_any },
    ["VIM: command (insert)"] =   { color="#cF4F40", rule_any=vim_rule_any },
    ["VIM: operator"] =           { color="#aF6F00", rule_any=vim_rule_any },
    ["VIM: find"] =               { color="#65cF9F", rule_any=vim_rule_any },
    --["VIM: file operations"] =    { color="#659FdF", rule_any=vim_rule_any },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end


local vim_keys = {

    ["VIM: motion"] = {{
        modifiers = {},
        keys = {
            ['0']='start of the line',
            ['-']="prev line",
            w="next word",
            e="end word",
            b="prev word",
            ["$"]='end of the line',
            ["%"]='goto matching bracket',
            ["^"]='"start not blank of the line',
            ["+"]='next line',
            [':n']="move to line n",
            ['&gt;&gt;']='indent line',
            ['&lt;&lt;']='outdent line',
            gg="go to the top of file",
            G='EOF/goto line',
            H='move cursor to screen top',
            M='move cursor to screen middle',
            L='move cursor to screen bottom',
            B='prev WORD',
        }
    }, {
        modifiers = {"Ctrl"},
        keys = {
            u="half page up",
            d="half page down",
            b="page up",
            f="page down",
            o="prev mark",
        }
    }},

    ["VIM: operator"] = {{
        modifiers = {},
        keys = {
            J="join line below to the currenct one with one space in between",
            dw="delete(cut) word",
            ['d0']="delete till the start of the line",
            ['d&#36;']="delete till the end of the line",
            dgg="delete everything till the beginning of the file",
            dG="delete everything till the end of the file",
            D="delete to the end of the line",
            p="put text after cursor",
            y="yank the highlighted text",
            c="change",
            cc = "change (replace) entire line",
            ['c&#36;']="change till the end of the line",
            r=". replace char",
            u="undo",
            Y='yank line',
            U='undo line',
	    ['~']="toggle case",
            yw= "copy the characters from the cursor position to the start of the next word",
            ['y&#36;']="copy till the end of the line",
            [":%s/[pattern]/[replacement]/g"] = "replace all matchings",
            [":%s/[pattern]/[replacement]/gc"] = "replace all matchings but you need to confirm each one",

        }
    }},

    ["VIM: command"] = {{
        modifiers = {},
        keys = {
            [':hnew'] ="open a new window horizontally",
            [':vnew'] ="open a new window vertically",
            [":vsp [filename]"] ="open a new file and splits the screen vertically",
            [":e"] ="open a new file, specify name after e",
            [":saveas file"] ="save file as",
            [":bn"]="switch no next buffer",
        }
    },
    {
        modifiers = {"Ctrl"},
        keys = {
            ws="split window horizontally",
            wv="split window vertically",
            ww = "switch cursor between windows",
            r="redo",
            v="visual block selection by rows",
            V="visual block selection by columns",
        }
    }},

    ["VIM: command (insert)"] = {{
        modifiers = {},
        keys = {
            i="insert mode",
            o="open below",
            a="append",
            ea="append at the end of the word",
            s="subst char",
            R='replace mode',
            I='insert at beginning of the line',
            O='open above',
            A='append at EOL',
            S='subst line',
            C='change to EOL',
        }
    }},

    ["VIM: find"] = {{
        modifiers = {},
        keys = {
            ['/']=". find",
            ['?']='. reverse find',
            n="next search match",
            N='prev search match',
            ["*"]='find word under cursor',
            ["#"]='reverse find under cursor',
        }
    }},
}
hotkeys_popup.add_hotkeys(vim_keys)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
