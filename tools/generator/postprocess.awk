/\\param / {
    for (i=1; i<10; i++) {
        if (arg[i] == "") {
            arg[i]=$3
            break
        }
    }
}


# Remove Headers comment
/ *-- Headers *$/ {
    gsub(" *-- Headers *$", "")
}

/TGUI.[A-Za-z0-9_]*.stddef_h/ {
    gsub("with TGUI.[A-Za-z0-9_]*.stddef_h;", "")
    gsub("TGUI.[A-Za-z0-9_]*.stddef_h.", "")
}

/^ * with Import => True,/ {
    if (entity !~ /contains|intersects/) {
        print "      ;"
        next
    }
}

/^ *Convention => C,/ {
    if (entity !~ /contains|intersects/) {
        next
    }
}
 
/^ *External_Name =>/ {
    for (i=1; i<10; i++) {
        arg[i]=""
    }
    if (entity !~ /contains|intersects/) {
        external_name=gensub(/;/, "", "g", $3)
        pragmas=pragmas "\n   pragma Import (C, " entity ", " external_name ");"
        next
    }
}

/^ *pragma Import/ {
    for (i=1; i<10; i++) {
        arg[i]=""
    }
    gsub("pragma Import \\(C, tgui[a-zA-Z0-9]*_", "pragma Import (C, ")
    pragmas=pragmas "\n" $0
    next
}

/^ *tgui[a-zA-Z0-9_]* : aliased/ {entity=$1}
/arg1 *: */ {
    if(arg[1] != "")
        gsub("arg1", arg[1]);
}
/arg2 *: */ {
    if(arg[2] != "")
        gsub("arg2", arg[2]);
}
/arg3 *: */ {
    if(arg[3] != "")
        gsub("arg3", arg[3]);
}
/arg4 *: */ {
    if(arg[4] != "")
        gsub("arg4", arg[4]);
}
/arg5 *: */ {
    if(arg[5] != "")
        gsub("arg5", arg[5]);
}
/arg6 *: */ {
    if(arg[6] != "")
        gsub("arg6", arg[6]);
}
/arg7 *: */ {
    if(arg[7] != "")
        gsub("arg7", arg[7]);
}
/arg8 *: */ {
    if(arg[8] != "")
        gsub("arg8", arg[8]);
}
/arg9 *: */ {
    if(arg[9] != "")
        gsub("arg9", arg[9]);
}

/^end / {
    print "private"
    print pragmas
    print "\n"
}
/^with Interfaces.C; use Interfaces.C;/ { next }
#/^with System;/ { next }
/^with TGUI.*.Config.*;/ { next }

/procedure tgui[a-zA-Z0-9]*_|function tgui[a-zA-Z0-9]*_/ {
    gsub("procedure tgui[a-zA-Z0-9]*_", "procedure ")
    gsub("function tgui[a-zA-Z0-9]*_", "function ")
    entity=$2
}

/  -- TGUI - Texus' Graphical User Interface/ { next }
/  -- Copyright \(C\) 20[0-9][0-9]-20[0-9][0-9] Bruno Van de Velde \(vdv_b@tgui.eu\)/ { next }
/  -- This software is provided 'as-is', without any express or implied warranty./ { next }
/  -- In no event will the authors be held liable for any damages arising from the use of this software./ { next }
/  -- Permission is granted to anyone to use this software for any purpose,/ { next }
/  -- including commercial applications, and to alter it and redistribute it freely,/ { next }
/  -- subject to the following restrictions:/ { next }
/  -- 1. The origin of this software must not be misrepresented;/ { next }
/  --    you must not claim that you wrote the original software./ { next }
/  --    If you use this software in a product, an acknowledgment/ { next }
/  --    in the product documentation would be appreciated but is not required./ { next }
/  -- 2. Altered source versions must be plainly marked as such,/ { next }
/  --    and must not be misrepresented as being the original software./ { next }
/  -- 3. This notice may not be removed or altered from any source distribution./ { next }

{

    gsub(" *pragma Ada_2012;", "------------------------------------------------------------\n-- Texus' Graphical User Interface\n-- Copyright (C) 2012-2024 Bruno Van de Velde (vdv_b@tgui.eu)\n-- Copyright (C) 2024 Manuel Gomez (mgrojo@gmail.com)\n-- This software is provided 'as-is', without any express or implied warranty.\n-- In no event will the authors be held liable for any damages arising from the use of this software.\n-- Permission is granted to anyone to use this software for any purpose,\n-- including commercial applications, and to alter it and redistribute it freely,\n-- subject to the following restrictions:\n-- 1. The origin of this software must not be misrepresented;\n--    you must not claim that you wrote the original software.\n--    If you use this software in a product, an acknowledgment\n--    in the product documentation would be appreciated but is not required.\n-- 2. Altered source versions must be plainly marked as such,\n--    and must not be misrepresented as being the original software.\n-- 3. This notice may not be removed or altered from any source distribution.\n------------------------------------------------------------\n")



    gsub("pragma Style_Checks \\(Off\\);", "")
    gsub("pragma Style_Checks \\(On\\);", "")
    gsub(/pragma Warnings .Off, "-gnatwu".;/, "")
    gsub(/pragma Warnings .On, "-gnatwu".;/, "")

    gsub(" *-- /usr/include/TGUI/.*", "")
    gsub("^limited with ", "with ")
    gsub("with Interfaces.C.Strings;", "")
    gsub(" size_t", " tguiSize_t")
    gsub(" char", " tguiChar")
    gsub(/ is int/, " is tguiInt")
    gsub(/: int/, ": tguiInt")
    gsub(/: aliased int/, ": aliased tguiInt")
    gsub(/return int/, "return tguiInt")
    gsub(" float", " tguiFloat")
    gsub(" unsigned_short", " tguiUint16")
    gsub(" unsigned", " tguiUint32")
    gsub("Interfaces\\.C\\.Strings\\.chars_ptr", "String")
    gsub("TGUI\\.Config\\.", "")
    gsub("string : String", "text : String")

    # Adjust some identifiers that are Ada keywords
    gsub(/c_function/, "callback")
    gsub(/c_constant/, "value")
    gsub(/c_delay/, "value")
    gsub(/c_select/, "selected")
    gsub(/c_delta/, "eventDelta")
    gsub(/c_type : aliased tguiEventType/, "eventType : aliased tguiEventType")
    gsub(/c_system : aliased tguiBool/, "system : aliased tguiBool")

    print

}
