<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_recommendation_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the optimization findings for an account

### Description

Returns the optimization findings for an account.

It returns the number of:

-   Amazon EC2 instances in an account that are `Underprovisioned`,
    `Overprovisioned`, or `Optimized`.

-   Auto Scaling groups in an account that are `NotOptimized`, or
    `Optimized`.

-   Amazon EBS volumes in an account that are `NotOptimized`, or
    `Optimized`.

-   Lambda functions in an account that are `NotOptimized`, or
    `Optimized`.

-   Amazon ECS services in an account that are `Underprovisioned`,
    `Overprovisioned`, or `Optimized`.

### Usage

    computeoptimizer_get_recommendation_summaries(accountIds, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_recommendation_summaries_:_accountIds">accountIds</code></td>
<td><p>The ID of the Amazon Web Services account for which to return
recommendation summaries.</p>
<p>If your account is the management account of an organization, use
this parameter to specify the member account for which you want to
return recommendation summaries.</p>
<p>Only one account ID can be specified per request.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_recommendation_summaries_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of recommendation
summaries.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_recommendation_summaries_:_maxResults">maxResults</code></td>
<td><p>The maximum number of recommendation summaries to return with a
single request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      recommendationSummaries = list(
        list(
          summaries = list(
            list(
              name = "Underprovisioned"|"Overprovisioned"|"Optimized"|"NotOptimized",
              value = 123.0,
              reasonCodeSummaries = list(
                list(
                  name = "MemoryOverprovisioned"|"MemoryUnderprovisioned",
                  value = 123.0
                )
              )
            )
          ),
          recommendationResourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"EcsService",
          accountId = "string",
          savingsOpportunity = list(
            savingsOpportunityPercentage = 123.0,
            estimatedMonthlySavings = list(
              currency = "USD"|"CNY",
              value = 123.0
            )
          ),
          currentPerformanceRiskRatings = list(
            high = 123,
            medium = 123,
            low = 123,
            veryLow = 123
          ),
          inferredWorkloadSavings = list(
            list(
              inferredWorkloadTypes = list(
                "AmazonEmr"|"ApacheCassandra"|"ApacheHadoop"|"Memcached"|"Nginx"|"PostgreSql"|"Redis"|"Kafka"|"SQLServer"
              ),
              estimatedMonthlySavings = list(
                currency = "USD"|"CNY",
                value = 123.0
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$get_recommendation_summaries(
      accountIds = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
