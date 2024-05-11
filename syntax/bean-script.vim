if exists("b:current_syntax")
  finish
endif

" Operators
syn match beanScriptSign '-'
syn match beanScriptOperator ':'
syn match beanScriptPunctuation '\.'
syn match beanScriptPunctuation ','

" Brackets
syn match beanScriptBlock '[{}]'
syn match beanScriptGroup '[()]'

" Built-in functions
syn keyword beanScriptBuiltin fn let const del call export use body return pass include if else_if ifv repeat match contained
syn keyword beanScriptBuiltinNoArgs return else while body contained
syn keyword beanScriptHelper exists p print error sleep add sub mul div rand abs pow sqrt sin cos tan atan round floor ceil size split str num name type list map eq lt gt not and or ifv contained
syn keyword beanScriptHelperNoArgs args rand list map contained
syn match beanScriptAlias '+'
syn match beanScriptAlias '-'
syn match beanScriptAlias '*'
syn match beanScriptAlias '/'
syn match beanScriptAlias '^'
syn match beanScriptAlias '&'
syn match beanScriptAlias '|'
syn match beanScriptAlias '!'
syn keyword beanScriptDebug __debug
syn keyword beanScriptSelf self super

" Functions
syn match beanScriptVariable '\w\+' contains=beanScriptBuiltinNoArgs,beanScriptHelperNoArgs
syn match beanScriptProperty '\.\@<=\w\+'
syn match beanScriptFunction '\w\+(\@=' contains=beanScriptBuiltin,beanScriptHelper,beanScriptAlias
syn match beanScriptFunction '\.\@<=\w+(\@='

" Type literals
syn keyword beanScriptBoolean true false
syn keyword beanScriptNone none
syn region beanScriptString start='"' end='"'
syn region beanScriptName start='<' end='>'
syn match beanScriptNumber '\w\@1<!\d\+'
syn match beanScriptNumber '\w\@1<!\d\+.\d\+'

" Comments
syn match beanScriptComment '//.*$'
syn region beanScriptComment start='/\*' end='\*/'

" Highlighting
hi def link beanScriptBoolean       @boolean
hi def link beanScriptNone          @constant
hi def link beanScriptOperator      @operator
hi def link beanScriptFunction      @function
hi def link beanScriptProperty      @property
hi def link beanScriptBuiltin       @keyword
hi def link beanScriptBuiltinNoArgs beanScriptBuiltin
hi def link beanScriptHelper        @function.builtin
hi def link beanScriptHelperNoArgs  beanScriptHelper
hi def link beanScriptAlias         @operator
hi def link beanScriptDebug         @constant
hi def link beanScriptString        @string
hi def link beanScriptName          @tag
hi def link beanScriptNumber        @number
hi def link beanScriptSign          @operator
hi def link beanScriptPunctuation   @punctuation
hi def link beanScriptBlock         @punctuation.bracket
hi def link beanScriptGroup         @punctuation.parentheses
hi def link beanScriptSelf          @constant
hi def link beanScriptComment       @comment
