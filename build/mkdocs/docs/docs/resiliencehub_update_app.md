<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_update_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an application

### Description

Updates an application.

### Usage

    resiliencehub_update_app(appArn, assessmentSchedule,
      clearResiliencyPolicyArn, description, policyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resiliencehub_update_app_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_app_:_assessmentSchedule">assessmentSchedule</code></td>
<td><p>Assessment execution schedule with 'Daily' or 'Disabled'
values.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_update_app_:_clearResiliencyPolicyArn">clearResiliencyPolicyArn</code></td>
<td><p>Specifies if the resiliency policy ARN should be
cleared.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_app_:_description">description</code></td>
<td><p>The optional description for an app.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_update_app_:_policyArn">policyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the resiliency policy. The
format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      app = list(
        appArn = "string",
        assessmentSchedule = "Disabled"|"Daily",
        complianceStatus = "PolicyBreached"|"PolicyMet"|"NotAssessed"|"ChangesDetected",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        lastAppComplianceEvaluationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastResiliencyScoreEvaluationTime = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        policyArn = "string",
        resiliencyScore = 123.0,
        status = "Active"|"Deleting",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$update_app(
      appArn = "string",
      assessmentSchedule = "Disabled"|"Daily",
      clearResiliencyPolicyArn = TRUE|FALSE,
      description = "string",
      policyArn = "string"
    )
