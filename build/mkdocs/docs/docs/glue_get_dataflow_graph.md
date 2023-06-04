<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_dataflow_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transforms a Python script into a directed acyclic graph (DAG)

### Description

Transforms a Python script into a directed acyclic graph (DAG).

### Usage

    glue_get_dataflow_graph(PythonScript)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_dataflow_graph_:_PythonScript">PythonScript</code></td>
<td><p>The Python script to transform.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DagNodes = list(
        list(
          Id = "string",
          NodeType = "string",
          Args = list(
            list(
              Name = "string",
              Value = "string",
              Param = TRUE|FALSE
            )
          ),
          LineNumber = 123
        )
      ),
      DagEdges = list(
        list(
          Source = "string",
          Target = "string",
          TargetParameter = "string"
        )
      )
    )

### Request syntax

    svc$get_dataflow_graph(
      PythonScript = "string"
    )
