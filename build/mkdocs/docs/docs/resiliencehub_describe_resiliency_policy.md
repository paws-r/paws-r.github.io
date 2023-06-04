<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_describe_resiliency_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a specified resiliency policy for an Resilience Hub application

### Description

Describes a specified resiliency policy for an Resilience Hub
application. The returned policy object includes creation time, data
location constraints, the Amazon Resource Name (ARN) for the policy,
tags, tier, and more.

### Usage

    resiliencehub_describe_resiliency_policy(policyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_describe_resiliency_policy_:_policyArn">policyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resiliency
policy. The format for this ARN is:
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
      )
    )

### Request syntax

    svc$describe_resiliency_policy(
      policyArn = "string"
    )
