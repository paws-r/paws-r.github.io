<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_evaluation_form</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an evaluation form in the specified Amazon Connect instance

### Description

Deletes an evaluation form in the specified Amazon Connect instance.

-   If the version property is provided, only the specified version of
    the evaluation form is deleted.

-   If no version is provided, then the full form (all versions) is
    deleted.

### Usage

    connect_delete_evaluation_form(InstanceId, EvaluationFormId,
      EvaluationFormVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_evaluation_form_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_evaluation_form_:_EvaluationFormId">EvaluationFormId</code></td>
<td><p>[required] The unique identifier for the evaluation
form.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_delete_evaluation_form_:_EvaluationFormVersion">EvaluationFormVersion</code></td>
<td><p>The unique identifier for the evaluation form.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_evaluation_form(
      InstanceId = "string",
      EvaluationFormId = "string",
      EvaluationFormVersion = 123
    )
