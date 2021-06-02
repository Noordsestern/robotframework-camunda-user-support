from CamundaLibrary import CamundaLibrary

client = CamundaLibrary('http://localhost:8080')

client.deploy('model/pure_python_model.bpmn')

client.start_process('pure_python_process', variables={'favorite number' : 42})

process_variables = client.fetch_workload('pure python task')

assert process_variables.get('favorite number') == 42

client.complete()
