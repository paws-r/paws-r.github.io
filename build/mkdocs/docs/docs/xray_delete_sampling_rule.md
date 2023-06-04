<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_delete_sampling_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a sampling rule

### Description

Deletes a sampling rule.

### Usage

    xray_delete_sampling_rule(RuleName, RuleARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_delete_sampling_rule_:_RuleName">RuleName</code></td>
<td><p>The name of the sampling rule. Specify a rule by either name or
ARN, but not both.</p></td>
</tr>
<tr class="even">
<td><code id="xray_delete_sampling_rule_:_RuleARN">RuleARN</code></td>
<td><p>The ARN of the sampling rule. Specify a rule by either name or
ARN, but not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SamplingRuleRecord = list(
        SamplingRule = list(
          RuleName = "string",
          RuleARN = "string",
          ResourceARN = "string",
          Priority = 123,
          FixedRate = 123.0,
          ReservoirSize = 123,
          ServiceName = "string",
          ServiceType = "string",
          Host = "string",
          HTTPMethod = "string",
          URLPath = "string",
          Version = 123,
          Attributes = list(
            "string"
          )
        ),
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_sampling_rule(
      RuleName = "string",
      RuleARN = "string"
    )
