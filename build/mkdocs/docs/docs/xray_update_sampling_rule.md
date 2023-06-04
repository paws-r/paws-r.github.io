<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_update_sampling_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a sampling rule's configuration

### Description

Modifies a sampling rule's configuration.

### Usage

    xray_update_sampling_rule(SamplingRuleUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_update_sampling_rule_:_SamplingRuleUpdate">SamplingRuleUpdate</code></td>
<td><p>[required] The rule and fields to change.</p></td>
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

    svc$update_sampling_rule(
      SamplingRuleUpdate = list(
        RuleName = "string",
        RuleARN = "string",
        ResourceARN = "string",
        Priority = 123,
        FixedRate = 123.0,
        ReservoirSize = 123,
        Host = "string",
        ServiceName = "string",
        ServiceType = "string",
        HTTPMethod = "string",
        URLPath = "string",
        Attributes = list(
          "string"
        )
      )
    )
