<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates details about a contact evaluation in the specified Amazon Connect instance

### Description

Updates details about a contact evaluation in the specified Amazon
Connect instance. A contact evaluation must be in draft state. Answers
included in the request are merged with existing answers for the given
evaluation. An answer or note can be deleted by passing an empty object
(`{}`) to the question identifier.

### Usage

    connect_update_contact_evaluation(InstanceId, EvaluationId, Answers,
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
id="connect_update_contact_evaluation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] A unique identifier for the contact
evaluation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_evaluation_:_Answers">Answers</code></td>
<td><p>A map of question identifiers to answer value.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_evaluation_:_Notes">Notes</code></td>
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

    svc$update_contact_evaluation(
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
