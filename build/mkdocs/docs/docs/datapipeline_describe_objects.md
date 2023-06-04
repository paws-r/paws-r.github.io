<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_describe_objects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the object definitions for a set of objects associated with the pipeline

### Description

Gets the object definitions for a set of objects associated with the
pipeline. Object definitions are composed of a set of fields that define
the properties of the object.

### Usage

    datapipeline_describe_objects(pipelineId, objectIds,
      evaluateExpressions, marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_describe_objects_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline that contains the object
definitions.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_describe_objects_:_objectIds">objectIds</code></td>
<td><p>[required] The IDs of the pipeline objects that contain the
definitions to be described. You can pass as many as 25 identifiers in a
single call to <code>describe_objects</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_describe_objects_:_evaluateExpressions">evaluateExpressions</code></td>
<td><p>Indicates whether any expressions in the object should be
evaluated when the object descriptions are returned.</p></td>
</tr>
<tr class="even">
<td><code id="datapipeline_describe_objects_:_marker">marker</code></td>
<td><p>The starting point for the results to be returned. For the first
call, this value should be empty. As long as there are more results,
continue to call <code>describe_objects</code> with the marker value
from the previous call to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineObjects = list(
        list(
          id = "string",
          name = "string",
          fields = list(
            list(
              key = "string",
              stringValue = "string",
              refValue = "string"
            )
          )
        )
      ),
      marker = "string",
      hasMoreResults = TRUE|FALSE
    )

### Request syntax

    svc$describe_objects(
      pipelineId = "string",
      objectIds = list(
        "string"
      ),
      evaluateExpressions = TRUE|FALSE,
      marker = "string"
    )
