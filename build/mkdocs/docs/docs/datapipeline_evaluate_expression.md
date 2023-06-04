<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>datapipeline_evaluate_expression</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Task runners call EvaluateExpression to evaluate a string in the context of the specified object

### Description

Task runners call `evaluate_expression` to evaluate a string in the
context of the specified object. For example, a task runner can evaluate
SQL queries stored in Amazon S3.

### Usage

    datapipeline_evaluate_expression(pipelineId, objectId, expression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="datapipeline_evaluate_expression_:_pipelineId">pipelineId</code></td>
<td><p>[required] The ID of the pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="datapipeline_evaluate_expression_:_objectId">objectId</code></td>
<td><p>[required] The ID of the object.</p></td>
</tr>
<tr class="odd">
<td><code
id="datapipeline_evaluate_expression_:_expression">expression</code></td>
<td><p>[required] The expression to evaluate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evaluatedExpression = "string"
    )

### Request syntax

    svc$evaluate_expression(
      pipelineId = "string",
      objectId = "string",
      expression = "string"
    )
