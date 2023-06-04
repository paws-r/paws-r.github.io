<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_contact_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an empty evaluation in the specified Amazon Connect instance, using the given evaluation form for the particular contact

### Description

Starts an empty evaluation in the specified Amazon Connect instance,
using the given evaluation form for the particular contact. The
evaluation form version used for the contact evaluation corresponds to
the currently activated version. If no version is activated for the
evaluation form, the contact evaluation cannot be started.

Evaluations created through the public API do not contain answer values
suggested from automation.

### Usage

    connect_start_contact_evaluation(InstanceId, ContactId,
      EvaluationFormId, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_contact_evaluation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_evaluation_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact in this instance of
Amazon Connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_contact_evaluation_:_EvaluationFormId">EvaluationFormId</code></td>
<td><p>[required] The unique identifier for the evaluation
form.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_contact_evaluation_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
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

    svc$start_contact_evaluation(
      InstanceId = "string",
      ContactId = "string",
      EvaluationFormId = "string",
      ClientToken = "string"
    )
