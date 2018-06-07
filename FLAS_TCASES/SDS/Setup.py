from robot.libraries.BuiltIn import BuiltIn
import yaml
class Setup(object,**kwargs):
    def check(self):
        tcname=BuiltIn().get_variable_value("${TEST_NAME}")
        print tcname
        #data = kwargs
        #with open('data.yml', 'w') as outfile:
            #yaml.dump(data, outfile, default_flow_style=False)
