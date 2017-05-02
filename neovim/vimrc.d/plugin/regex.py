import os

f = open('result.vim', 'w')
files = os.listdir('./')

for file_name in files:
    plugin_name = file_name.replace('.vim', '')
    f.write("if dein#tap('{0}')\n".format(plugin_name))
    f.write("\tcall s:load_file('plugin/{0}')\n".format(plugin_name))
    f.write("endif\n")

