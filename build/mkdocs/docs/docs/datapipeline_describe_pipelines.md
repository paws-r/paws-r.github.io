<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_describe_pipelines</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metadata about one or more pipelines

### Description

Retrieves metadata about one or more pipelines. The information
retrieved includes the name of the pipeline, the pipeline identifier,
its current state, and the user account that owns the pipeline. Using
account credentials, you can retrieve metadata about pipelines that you
or your IAM users have created. If you are using an IAM user account,
you can retrieve metadata about only those pipelines for which you have
read permissions.

To retrieve the full pipeline definition instead of metadata about the
pipeline, call `get_pipeline_definition`.

### Usage

    datapipeline_describe_pipelines(pipelineIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_describe_pipelines_:_pipelineIds">pipelineIds</code></td>
<td><p>[required] The IDs of the pipelines to describe. You can pass as
many as 25 identifiers in a single call. To obtain pipeline IDs, call
<code>list_pipelines</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pipelineDescriptionList = list(
        list(
          pipelineId = "string",
          name = "string",
          fields = list(
            list(
              key = "string",
              stringValue = "string",
              refValue = "string"
            )
          ),
          description = "string",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_pipelines(
      pipelineIds = list(
        "string"
      )
    )
