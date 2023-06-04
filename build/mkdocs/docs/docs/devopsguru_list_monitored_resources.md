<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_monitored_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of all log groups that are being monitored and tagged by DevOps Guru

### Description

Returns the list of all log groups that are being monitored and tagged
by DevOps Guru.

### Usage

    devopsguru_list_monitored_resources(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_monitored_resources_:_Filters">Filters</code></td>
<td><p>Filters to determine which monitored resources you want to
retrieve. You can filter by resource type or resource permission
status.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_monitored_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_monitored_resources_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoredResourceIdentifiers = list(
        list(
          MonitoredResourceName = "string",
          Type = "string",
          ResourcePermission = "FULL_PERMISSION"|"MISSING_PERMISSION",
          LastUpdated = as.POSIXct(
            "2015-01-01"
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitored_resources(
      Filters = list(
        ResourcePermission = "FULL_PERMISSION"|"MISSING_PERMISSION",
        ResourceTypeFilters = list(
          "LOG_GROUPS"|"CLOUDFRONT_DISTRIBUTION"|"DYNAMODB_TABLE"|"EC2_NAT_GATEWAY"|"ECS_CLUSTER"|"ECS_SERVICE"|"EKS_CLUSTER"|"ELASTIC_BEANSTALK_ENVIRONMENT"|"ELASTIC_LOAD_BALANCER_LOAD_BALANCER"|"ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER"|"ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP"|"ELASTICACHE_CACHE_CLUSTER"|"ELASTICSEARCH_DOMAIN"|"KINESIS_STREAM"|"LAMBDA_FUNCTION"|"OPEN_SEARCH_SERVICE_DOMAIN"|"RDS_DB_INSTANCE"|"RDS_DB_CLUSTER"|"REDSHIFT_CLUSTER"|"ROUTE53_HOSTED_ZONE"|"ROUTE53_HEALTH_CHECK"|"S3_BUCKET"|"SAGEMAKER_ENDPOINT"|"SNS_TOPIC"|"SQS_QUEUE"|"STEP_FUNCTIONS_ACTIVITY"|"STEP_FUNCTIONS_STATE_MACHINE"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
