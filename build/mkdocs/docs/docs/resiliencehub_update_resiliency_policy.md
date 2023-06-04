<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_update_resiliency_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a resiliency policy

### Description

Updates a resiliency policy.

### Usage

    resiliencehub_update_resiliency_policy(dataLocationConstraint, policy,
      policyArn, policyDescription, policyName, tier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_update_resiliency_policy_:_dataLocationConstraint">dataLocationConstraint</code></td>
<td><p>Specifies a high-level geographical location constraint for where
your resilience policy data can be stored.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_resiliency_policy_:_policy">policy</code></td>
<td><p>The type of resiliency policy to be created, including the
recovery time objective (RTO) and recovery point objective (RPO) in
seconds.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_update_resiliency_policy_:_policyArn">policyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resiliency
policy. The format for this ARN is:
arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>.
For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>AWS General Reference</em>
guide.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_resiliency_policy_:_policyDescription">policyDescription</code></td>
<td><p>The description for the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_update_resiliency_policy_:_policyName">policyName</code></td>
<td><p>The name of the policy</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_update_resiliency_policy_:_tier">tier</code></td>
<td><p>The tier for this resiliency policy, ranging from the highest
severity (<code>MissionCritical</code>) to lowest
(<code>NonCritical</code>).</p></td>
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

    svc$update_resiliency_policy(
      dataLocationConstraint = "AnyLocation"|"SameContinent"|"SameCountry",
      policy = list(
        list(
          rpoInSecs = 123,
          rtoInSecs = 123
        )
      ),
      policyArn = "string",
      policyDescription = "string",
      policyName = "string",
      tier = "MissionCritical"|"Critical"|"Important"|"CoreServices"|"NonCritical"
    )
