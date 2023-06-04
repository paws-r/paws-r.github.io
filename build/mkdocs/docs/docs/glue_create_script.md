<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_script</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transforms a directed acyclic graph (DAG) into code

### Description

Transforms a directed acyclic graph (DAG) into code.

### Usage

    glue_create_script(DagNodes, DagEdges, Language)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_script_:_DagNodes">DagNodes</code></td>
<td><p>A list of the nodes in the DAG.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_script_:_DagEdges">DagEdges</code></td>
<td><p>A list of the edges in the DAG.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_script_:_Language">Language</code></td>
<td><p>The programming language of the resulting code from the
DAG.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PythonScript = "string",
      ScalaCode = "string"
    )

### Request syntax

    svc$create_script(
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
      ),
      Language = "PYTHON"|"SCALA"
    )
