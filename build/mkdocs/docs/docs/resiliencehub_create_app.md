<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_create_app</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Resilience Hub application

### Description

Creates an Resilience Hub application. An Resilience Hub application is
a collection of Amazon Web Services resources structured to prevent and
recover Amazon Web Services application disruptions. To describe an
Resilience Hub application, you provide an application name, resources
from one or more CloudFormation stacks, Resource Groups, Terraform state
files, AppRegistry applications, and an appropriate resiliency policy.
For more information about the number of resources supported per
application, see [Service
Quotas](https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub).

After you create an Resilience Hub application, you publish it so that
you can run a resiliency assessment on it. You can then use
recommendations from the assessment to improve resiliency by running
another assessment, comparing results, and then iterating the process
until you achieve your goals for recovery time objective (RTO) and
recovery point objective (RPO).

### Usage

    resiliencehub_create_app(assessmentSchedule, clientToken, description,
      name, policyArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_create_app_:_assessmentSchedule">assessmentSchedule</code></td>
<td><p>Assessment execution schedule with 'Daily' or 'Disabled'
values.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_app_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_app_:_description">description</code></td>
<td><p>The optional description for an app.</p></td>
</tr>
<tr class="even">
<td><code id="resiliencehub_create_app_:_name">name</code></td>
<td><p>[required] The name for the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_app_:_policyArn">policyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the resiliency policy. The
format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code id="resiliencehub_create_app_:_tags">tags</code></td>
<td><p>The tags assigned to the resource. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key/value pair.</p></td>
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

    svc$create_app(
      assessmentSchedule = "Disabled"|"Daily",
      clientToken = "string",
      description = "string",
      name = "string",
      policyArn = "string",
      tags = list(
        "string"
      )
    )
