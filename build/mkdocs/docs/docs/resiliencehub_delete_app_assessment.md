<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_delete_app_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Resilience Hub application assessment

### Description

Deletes an Resilience Hub application assessment. This is a destructive
action that can't be undone.

### Usage

    resiliencehub_delete_app_assessment(assessmentArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_delete_app_assessment_:_assessmentArn">assessmentArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the assessment. The
format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_delete_app_assessment_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentArn = "string",
      assessmentStatus = "Pending"|"InProgress"|"Failed"|"Success"
    )

### Request syntax

    svc$delete_app_assessment(
      assessmentArn = "string",
      clientToken = "string"
    )
