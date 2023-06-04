<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_activate_evaluation_form</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates an evaluation form in the specified Amazon Connect instance

### Description

Activates an evaluation form in the specified Amazon Connect instance.
After the evaluation form is activated, it is available to start new
evaluations based on the form.

### Usage

    connect_activate_evaluation_form(InstanceId, EvaluationFormId,
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
id="connect_activate_evaluation_form_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_activate_evaluation_form_:_EvaluationFormId">EvaluationFormId</code></td>
<td><p>[required] The unique identifier for the evaluation
form.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_activate_evaluation_form_:_EvaluationFormVersion">EvaluationFormVersion</code></td>
<td><p>[required] The version of the evaluation form to activate. If the
version property is not provided, the latest version of the evaluation
form is activated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationFormId = "string",
      EvaluationFormArn = "string",
      EvaluationFormVersion = 123
    )

### Request syntax

    svc$activate_evaluation_form(
      InstanceId = "string",
      EvaluationFormId = "string",
      EvaluationFormVersion = 123
    )
