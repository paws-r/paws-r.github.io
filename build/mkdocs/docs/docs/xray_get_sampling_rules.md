<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_sampling_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all sampling rules

### Description

Retrieves all sampling rules.

### Usage

    xray_get_sampling_rules(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_sampling_rules_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SamplingRuleRecords = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_sampling_rules(
      NextToken = "string"
    )
