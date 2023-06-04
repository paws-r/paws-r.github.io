<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_submit_contact_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a contact evaluation in the specified Amazon Connect instance

### Description

Submits a contact evaluation in the specified Amazon Connect instance.
Answers included in the request are merged with existing answers for the
given evaluation. If no answers or notes are passed, the evaluation is
submitted with the existing answers and notes. You can delete an answer
or note by passing an empty object (`{}`) to the question identifier.

If a contact evaluation is already in submitted state, this operation
will trigger a resubmission.

### Usage

    connect_submit_contact_evaluation(InstanceId, EvaluationId, Answers,
      Notes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_submit_contact_evaluation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_submit_contact_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] A unique identifier for the contact
evaluation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_submit_contact_evaluation_:_Answers">Answers</code></td>
<td><p>A map of question identifiers to answer value.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_submit_contact_evaluation_:_Notes">Notes</code></td>
<td><p>A map of question identifiers to note value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationId = "string",
      EvaluationArn = "string"
    )

### Request syntax

    svc$submit_contact_evaluation(
      InstanceId = "string",
      EvaluationId = "string",
      Answers = list(
        list(
          Value = list(
            StringValue = "string",
            NumericValue = 123.0,
            NotApplicable = TRUE|FALSE
          )
        )
      ),
      Notes = list(
        list(
          Value = "string"
        )
      )
    )
