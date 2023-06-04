<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_search_organization_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of insights in your organization

### Description

Returns a list of insights in your organization. You can specify which
insights are returned by their start time, one or more statuses
(`ONGOING`, `CLOSED`, and `CLOSED`), one or more severities (`LOW`,
`MEDIUM`, and `HIGH`), and type (`REACTIVE` or `PROACTIVE`).

Use the `Filters` parameter to specify status and severity search
parameters. Use the `Type` parameter to specify `REACTIVE` or
`PROACTIVE` in your search.

### Usage

    devopsguru_search_organization_insights(AccountIds, StartTimeRange,
      Filters, MaxResults, NextToken, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_search_organization_insights_:_AccountIds">AccountIds</code></td>
<td><p>[required] The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_search_organization_insights_:_StartTimeRange">StartTimeRange</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_search_organization_insights_:_Filters">Filters</code></td>
<td><p>A <code>SearchOrganizationInsightsFilters</code> object that is
used to set the severity and status filters on your insight
search.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_search_organization_insights_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_search_organization_insights_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_search_organization_insights_:_Type">Type</code></td>
<td><p>[required] The type of insights you are searching for
(<code>REACTIVE</code> or <code>PROACTIVE</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveInsights = list(
        list(
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          ),
          AssociatedResourceArns = list(
            "string"
          )
        )
      ),
      ReactiveInsights = list(
        list(
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          ),
          AssociatedResourceArns = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search_organization_insights(
      AccountIds = list(
        "string"
      ),
      StartTimeRange = list(
        FromTime = as.POSIXct(
          "2015-01-01"
        ),
        ToTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      Filters = list(
        Severities = list(
          "LOW"|"MEDIUM"|"HIGH"
        ),
        Statuses = list(
          "ONGOING"|"CLOSED"
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
      ),
      MaxResults = 123,
      NextToken = "string",
      Type = "REACTIVE"|"PROACTIVE"
    )
