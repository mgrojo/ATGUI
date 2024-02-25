#!/bin/bash
# Author: Manuel Gomez
# Description: Helper for generating most of the binding.
#              Manual adjustments must be done afterwards.
# Platform: Ubuntu Linux 18.04 LTS
#           Ubuntu Linux 20.01 LTS (install gnat-7 for the generation)
# Dependencies: CTGUI development packages
# Usage: pass CTGUI prefix where the headers to generate from are located.

set -o nounset
set -o errexit

function PackageTofile
{
     tr '[:upper:]' '[:lower:]' | sed 's/\./-/g; s/$/.ads/'
}

CTGUI_PREFIX=$1
for file in ${CTGUI_PREFIX}/include/CTGUI/*.h ${CTGUI_PREFIX}/include/CTGUI/*/*.h

do
    case ${file} in
        *SDL*)
            # We translate only the SFML backend
            echo Warning: ${file} skipped
        ;;
        *)
            PARENT_DIRNAME=$(dirname $(dirname $file))
            case ${PARENT_DIRNAME} in
                */include)
                    GRANDPARENT_DIRNAME=${PARENT_DIRNAME}
                    ;;
                *)
                    GRANDPARENT_DIRNAME=$(dirname $PARENT_DIRNAME)
                    ;;
            esac
            PARENT=$(dirname $file | sed "s%${PARENT_DIRNAME}%TGUI%g; s%/%.%g;")
            JUST_PARENT=$(basename $(dirname $file))
            PACKAGE=$(echo $file | sed "s%${GRANDPARENT_DIRNAME}/%%g; s%[/\.-]%_%g;")
            FILE=$(echo $PARENT-$PACKAGE | PackageTofile)

            NEW_PACKAGE=$(basename $file .h)
            NEW_FILE=$(echo $PARENT.$NEW_PACKAGE | sed 's/CTGUI\.//g' | PackageTofile)

            gnatgcc -c -I${CTGUI_PREFIX}/include -fdump-ada-spec-slim -fada-spec-parent=$PARENT -C $file

            awk -f postprocess.awk $FILE > $NEW_FILE
            rm $FILE
            sed -i "s/${PARENT}\.CTGUI_\([A-Za-z][A-Za-z0-9]*\)_h/TGUI.\1/g;
        s/${PARENT}\.CTGUI_\([A-Za-z][A-Za-z0-9]*\)_\([A-Za-z][A-Za-z0-9]*\)_h/TGUI.\1.\2/g;
        s/TGUI_${JUST_PARENT}_\([A-Za-z][A-Za-z0-9_]*\)_h/\1/g;
        s/data : System\.Address/data : Standard.System.Address/g;
#        s/\([A-Za-z]\)\([A-Za-z0-9]*\) : System\.Address/\1\2 : TGUI\u\1\2_Ptr/g;
#        s/return System\.Address/return TGUI${NEW_PACKAGE}_Ptr/g;
        s%-- ${CTGUI_PREFIX}/%-- %g;
        s/TGUI\.Config\.//g;
        s/TGUI\.Types\.//g;
        s/CTGUI_Types_h\.//g;
        s/with TGUI.Types;//g;
        s%--///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////%----------------------------------------------------------------------------%;
        s%  -- include/CTGUI/.*%%;
        s/c_type : \(.*tguiCursorType\)/cursorType : \1/g;
        s/c_type : \(.*tguiShowEffectType\)/effectType : \1/g;
        s/\\\\/@/g  " $NEW_FILE

            gnatpp --vertical-enum-types --max-line-length=100 $NEW_FILE
#            emacs -batch $NEW_FILE \
#                  --eval '(load "~/.emacs")' \
#                  -f mark-whole-buffer \
#                  -f indent-for-tab-command \
#                  -f delete-trailing-whitespace \
#                  -f save-buffer \
#                  -f save-buffers-kill-emacs || \
#                echo "$0: warning: $FILE could not be formatted by Emacs" >&2
            echo $NEW_FILE
            
    esac

done
