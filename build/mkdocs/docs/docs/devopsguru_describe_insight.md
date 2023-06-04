<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_insight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about an insight that you specify using its ID

### Description

Returns details about an insight that you specify using its ID.

### Usage

    devopsguru_describe_insight(Id, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="devopsguru_describe_insight_:_Id">Id</code></td>
<td><p>[required] The ID of the insight.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_insight_:_AccountId">AccountId</code></td>
<td><p>The ID of the member account in the organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveInsight = list(
        Id = "string",
        Name = "string",
        Severity = "LOW"|"MEDIUM"|"HIGH",
        Status = "ONGOING"|"CLOSED",
        InsightTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        PredictionTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        ResourceCollection = list(
          CloudFormation = list(
            StackNames = list(
              "string"
            )
          ),
          Tags = list(
            list(
              AppBoundaryKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        ),
        SsmOpsItemId = "string",
        Description = "string"
      ),
      ReactiveInsight = list(
        Id = "string",
        Name = "string",
        Severity = "LOW"|"MEDIUM"|"HIGH",
        Status = "ONGOING"|"CLOSED",
        InsightTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        ResourceCollection = list(
          CloudFormation = list(
            StackNames = list(
              "string"
            )
          ),
          Tags = list(
            list(
              AppBoundaryKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        ),
        SsmOpsItemId = "string",
        Description = "string"
      )
    )

### Request syntax

    svc$describe_insight(
      Id = "string",
      AccountId = "string"
    )
