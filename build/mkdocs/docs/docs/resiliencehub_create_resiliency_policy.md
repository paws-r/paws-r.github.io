<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resiliencehub_create_resiliency_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a resiliency policy for an application

### Description

Creates a resiliency policy for an application.

### Usage

    resiliencehub_create_resiliency_policy(clientToken,
      dataLocationConstraint, policy, policyDescription, policyName, tags,
      tier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resiliencehub_create_resiliency_policy_:_clientToken">clientToken</code></td>
<td><p>Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not reuse
the same client token for other API requests.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_resiliency_policy_:_dataLocationConstraint">dataLocationConstraint</code></td>
<td><p>Specifies a high-level geographical location constraint for where
your resilience policy data can be stored.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_resiliency_policy_:_policy">policy</code></td>
<td><p>[required] The type of resiliency policy to be created, including
the recovery time objective (RTO) and recovery point objective (RPO) in
seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_resiliency_policy_:_policyDescription">policyDescription</code></td>
<td><p>The description for the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_resiliency_policy_:_policyName">policyName</code></td>
<td><p>[required] The name of the policy</p></td>
</tr>
<tr class="even">
<td><code
id="resiliencehub_create_resiliency_policy_:_tags">tags</code></td>
<td><p>The tags assigned to the resource. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key/value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="resiliencehub_create_resiliency_policy_:_tier">tier</code></td>
<td><p>[required] The tier for this resiliency policy, ranging from the
highest severity (<code>MissionCritical</code>) to lowest
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

    svc$create_resiliency_policy(
      clientToken = "string",
      dataLocationConstraint = "AnyLocation"|"SameContinent"|"SameCountry",
      policy = list(
        list(
          rpoInSecs = 123,
          rtoInSecs = 123
        )
      ),
      policyDescription = "string",
      policyName = "string",
      tags = list(
        "string"
      ),
      tier = "MissionCritical"|"Critical"|"Important"|"CoreServices"|"NonCritical"
    )
