<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_pipeline_parameters_for_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of parameters for a pipeline execution

### Description

Gets a list of parameters for a pipeline execution.

### Usage

    sagemaker_list_pipeline_parameters_for_execution(PipelineExecutionArn,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_parameters_for_execution_:_PipelineExecutionArn">PipelineExecutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pipeline
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_pipeline_parameters_for_execution_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_pipeline_parameters_for_execution</code> request was
truncated, the response includes a <code>NextToken</code>. To retrieve
the next set of parameters, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_pipeline_parameters_for_execution_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of parameters to return in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PipelineParameters = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_pipeline_parameters_for_execution(
      PipelineExecutionArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
