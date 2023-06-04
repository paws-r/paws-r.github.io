<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Resilience Hub application

### Description

Describes an Resilience Hub application.

### Usage

    resiliencehub_describe_app(appArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="resiliencehub_describe_app_:_appArn">appArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Resilience Hub
application. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>.
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

    svc$describe_app(
      appArn = "string"
    )
