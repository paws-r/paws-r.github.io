<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_organization_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of insights associated with the account or OU Id

### Description

Returns a list of insights associated with the account or OU Id.

### Usage

    devopsguru_list_organization_insights(StatusFilter, MaxResults,
      AccountIds, OrganizationalUnitIds, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_organization_insights_:_StatusFilter">StatusFilter</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_organization_insights_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_organization_insights_:_AccountIds">AccountIds</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_organization_insights_:_OrganizationalUnitIds">OrganizationalUnitIds</code></td>
<td><p>The ID of the organizational unit.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_organization_insights_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveInsights = list(
        list(
          Id = "string",
          AccountId = "string",
          OrganizationalUnitId = "string",
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          )
        )
      ),
      ReactiveInsights = list(
        list(
          Id = "string",
          AccountId = "string",
          OrganizationalUnitId = "string",
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organization_insights(
      StatusFilter = list(
        Ongoing = list(
          Type = "REACTIVE"|"PROACTIVE"
        ),
        Closed = list(
          Type = "REACTIVE"|"PROACTIVE",
          EndTimeRange = list(
            FromTime = as.POSIXct(
              "2015-01-01"
            ),
            ToTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        Any = list(
          Type = "REACTIVE"|"PROACTIVE",
          StartTimeRange = list(
            FromTime = as.POSIXct(
              "2015-01-01"
            ),
            ToTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      MaxResults = 123,
      AccountIds = list(
        "string"
      ),
      OrganizationalUnitIds = list(
        "string"
      ),
      NextToken = "string"
    )
