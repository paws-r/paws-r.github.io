<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_get_cost_estimation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources

### Description

Returns an estimate of the monthly cost for DevOps Guru to analyze your
Amazon Web Services resources. For more information, see [Estimate your
Amazon DevOps Guru
costs](https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html)
and [Amazon DevOps Guru
pricing](https://aws.amazon.com/devops-guru/pricing/).

### Usage

    devopsguru_get_cost_estimation(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_get_cost_estimation_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      Status = "ONGOING"|"COMPLETED",
      Costs = list(
        list(
          Type = "string",
          State = "ACTIVE"|"INACTIVE",
          Count = 123,
          UnitCost = 123.0,
          Cost = 123.0
        )
      ),
      TimeRange = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      TotalCost = 123.0,
      NextToken = "string"
    )

### Request syntax

    svc$get_cost_estimation(
      NextToken = "string"
    )
