#!/bin/bash

###################################################################
# Script Name: mkscrip.bash
# Description: Script para crear scripts con descripción.
# Args: mkscrip.bash
#   -d "Script para crear scripts con descripción."
#   -u "-h (ayuda) -d (descripción) scriptname"
#   -a "Diego Mascheroni"
#   -e "diego.mascheroni@utec.edu.uy"
#   ~/miscrpit.bash
# Author: Diego Mascheroni
# Email: diego.mascheroni@utec.edu.uy
# Date: 08/09/2022
###################################################################

function help ()
{
    echo -e "Script para crear scripts con descripción. \n\
\n\
    Modo de uso:
 mkscrip.bash \n\
    -d \"Script para crear scripts con descripción.\" \n\
    -u \"-h (ayuda) -d (descripción) scriptname\" \n\
    -a \"Diego Mascheroni\" \n\
    -e \"diego.mascheroni@utec.edu.uy\" \n\
 ~/miscrpit.bash \n\
 \n\
 \t Author: Diego Mascheroni | email: diego.mascheroni@utec.edu.uy"
    return 0
}

description=''
usage=''
author=''
email=''
script_path=''

while [[ -n "$1" ]]; do
    case "$1" in
        -d | --description)
            shift
            description="$1"
    ;;
        -u | --usage)
            shift
            usage="$1"
    ;;
        -a | --author)
            shift
            author="$1"
    ;;
        -e | --email)
            shift
            email="$1"
    ;;
    -h | --help)
        help
        exit
    ;;
    *)
        if [[ -n "$2" || -z "$2" ]]; then # Si no hay argumento 2 este es el último argumento
            script_path=$1
        else
            echo "arg 1 -> $1"
            echo "arg 2 -> $2"
            help >&2    # Error 1 -> retorna todo a la salida a std error.
            exit 1
        fi
    ;;
    esac
    shift
done

if [[ -e "$script_path" ]]; then
    echo "Ya existe un archivo $script_path" >&2
    exit 2
fi

touch "$script_path" &> /dev/null
if [[ "$?" != "0" ]]; then
    echo "Ocurrion un error al intentar crear el archivo $script_path" >&2
    exit 3
fi

chmod u+x "$script_path" &> /dev/null
if [[ "$?" != "0" ]]; then
    echo "Ocurrion un error al intentar setear los permisos del archivo $script_path" >&2
    exit 4
fi

# Se obtiene el nomnbre del script
script_file_name=$(basename $script_path)

echo "\
#!/bin/bash

###################################################################
# Script Name: $script_file_name
# Description: $description
# Args: $usage
# Author: $author
# Email: $email
# Date: $(date +%d/%m/%Y)
###################################################################

function help ()
{
    echo \"$description\"
    echo \"modo de uso: $usage\"
    echo \"Author: $author | email: $email\"
    return 0
}

" > "$script_path"

if [[ "$?" != "0" ]]; then
    echo "Ocurrion un error al intentar setear los permisos del archivo $script_path" >&2
    exit 5
else
    echo "Se creo el archivo $script_path con éxito."
fi

