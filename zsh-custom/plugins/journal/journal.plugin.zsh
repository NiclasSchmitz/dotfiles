function open_journal {
    local file_name=$1
    if [ -z "$file_name" ]; then
        echo "Error: Argument \"file_name\" is missing"
        return 1
    fi
    local file_path=$HOME/Documents/journal/$file_name.md
    if [ ! -f $file_path ]; then
        # Add the file_name as heading
        local content="# $file_name\n\n\n"
        printf "$content" > $file_path
    fi
    # Position the cursor on the last line
    vim + $file_path
}

function open_journal_yesterday {
    local os=$(uname -s)
    local date_yesterday
    if [[ $os == "Darwin" ]] 
    then
        date_yesterday=$(date -v -1d '+%Y-%m-%d')
    else
        date_yesterday=$(date -d yesterday +%Y-%m-%d)
    fi
    open_journal $date_yesterday
}

function open_journal_today {
    local os=$(uname -s)
    local date_today
    if [[ $os == "Darwin" ]]
    then
        date_today=$(date '+%Y-%m-%d')
    else
        date_today=$(date -d today +%Y-%m-%d)
    fi
    open_journal $date_today
}

function open_journal_tomorrow {
    local os=$(uname -s)
    local date_tomorrow
    if [[ $os == "Darwin" ]]
    then
        date_tomorrow=$(date -v +1d '+%Y-%m-%d')
    else
        date_tomorrow=$(date -d tomorrow +%Y-%m-%d)
    fi
    open_journal $date_tomorrow
}
