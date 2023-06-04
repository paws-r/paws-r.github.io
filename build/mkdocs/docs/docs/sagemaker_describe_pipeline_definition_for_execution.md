<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_pipeline_definition_for_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the details of an execution's pipeline definition

### Description

Describes the details of an execution's pipeline definition.

### Usage

    sagemaker_describe_pipeline_definition_for_execution(
      PipelineExecutionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_pipeline_definition_for_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineDefinition = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_pipeline_definition_for_execution(
      PipelineExecutionArn = "string"
    )
