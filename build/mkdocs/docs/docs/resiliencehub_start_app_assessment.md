<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_start_app_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new application assessment for an application

### Description

Creates a new application assessment for an application.

### Usage

    resiliencehub_start_app_assessment(appArn, appVersion, assessmentName,
      clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_start_app_assessment_:_appArn">appArn</code></td>
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
id="resiliencehub_start_app_assessment_:_appVersion">appVersion</code></td>
<td><p>[required] The version of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_start_app_assessment_:_assessmentName">assessmentName</code></td>
<td><p>[required] The name for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_start_app_assessment_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_start_app_assessment_:_tags">tags</code></td>
<td><p>The tags assigned to the resource. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key/value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessment = list(
        appArn = "string",
        appVersion = "string",
        assessmentArn = "string",
        assessmentName = "string",
        assessmentStatus = "Pending"|"InProgress"|"Failed"|"Success",
        compliance = list(
          list(
            achievableRpoInSecs = 123,
            achievableRtoInSecs = 123,
            complianceStatus = "PolicyBreached"|"PolicyMet",
            currentRpoInSecs = 123,
            currentRtoInSecs = 123,
            message = "string",
            rpoDescription = "string",
            rpoReferenceId = "string",
            rtoDescription = "string",
            rtoReferenceId = "string"
          )
        ),
        complianceStatus = "PolicyBreached"|"PolicyMet",
        cost = list(
          amount = 123.0,
          currency = "string",
          frequency = "Hourly"|"Daily"|"Monthly"|"Yearly"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        ),
        invoker = "User"|"System",
        message = "string",
        policy = list(
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          dataLocationConstraint = "AnyLocation"|"SameContinent"|"SameCountry",
          estimatedCostTier = "L1"|"L2"|"L3"|"L4",
          policy = list(
            list(
              rpoInSecs = 123,
              rtoInSecs = 123
            )
          ),
          policyArn = "string",
          policyDescription = "string",
          policyName = "string",
          tags = list(
            "string"
          ),
          tier = "MissionCritical"|"Critical"|"Important"|"CoreServices"|"NonCritical"
        ),
        resiliencyScore = list(
          disruptionScore = list(
            123.0
          ),
          score = 123.0
        ),
        resourceErrorsDetails = list(
          hasMoreErrors = TRUE|FALSE,
          resourceErrors = list(
            list(
              logicalResourceId = "string",
              physicalResourceId = "string",
              reason = "string"
            )
          )
        ),
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$start_app_assessment(
      appArn = "string",
      appVersion = "string",
      assessmentName = "string",
      clientToken = "string",
      tags = list(
        "string"
      )
    )
