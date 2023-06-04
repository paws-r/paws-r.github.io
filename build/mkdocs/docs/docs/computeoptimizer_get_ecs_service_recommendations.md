<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_ecs_service_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns Amazon ECS service recommendations

### Description

Returns Amazon ECS service recommendations.

Compute Optimizer generates recommendations for Amazon ECS services on
Fargate that meet a specific set of requirements. For more information,
see the [Supported resources and
requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_get_ecs_service_recommendations(serviceArns, nextToken,
      maxResults, filters, accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendations_:_serviceArns">serviceArns</code></td>
<td><p>The ARN that identifies the Amazon ECS service.</p>
<p>The following is the format of the ARN:</p>
<p><code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code></p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ecs_service_recommendations_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of Amazon ECS service
recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of Amazon ECS service recommendations to
return with a single request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ecs_service_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of Amazon ECS service recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ecs_service_recommendations_:_accountIds">accountIds</code></td>
<td><p>Return the Amazon ECS service recommendations to the specified
Amazon Web Services account IDs.</p>
<p>If your account is the management account or the delegated
administrator of an organization, use this parameter to return the
Amazon ECS service recommendations to specific member accounts.</p>
<p>You can only specify one account ID per request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      ecsServiceRecommendations = list(
        list(
          serviceArn = "string",
          accountId = "string",
          currentServiceConfiguration = list(
            memory = 123,
            cpu = 123,
            containerConfigurations = list(
              list(
                containerName = "string",
                memorySizeConfiguration = list(
                  memory = 123,
                  memoryReservation = 123
                ),
                cpu = 123
              )
            ),
            autoScalingConfiguration = "TargetTrackingScalingCpu"|"TargetTrackingScalingMemory",
            taskDefinitionArn = "string"
          ),
          utilizationMetrics = list(
            list(
              name = "Cpu"|"Memory",
              statistic = "Maximum"|"Average",
              value = 123.0
            )
          ),
          lookbackPeriodInDays = 123.0,
          launchType = "EC2"|"Fargate",
          lastRefreshTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          finding = "Optimized"|"Underprovisioned"|"Overprovisioned",
          findingReasonCodes = list(
            "MemoryOverprovisioned"|"MemoryUnderprovisioned"|"CPUOverprovisioned"|"CPUUnderprovisioned"
          ),
          serviceRecommendationOptions = list(
            list(
              memory = 123,
              cpu = 123,
              savingsOpportunity = list(
                savingsOpportunityPercentage = 123.0,
                estimatedMonthlySavings = list(
                  currency = "USD"|"CNY",
                  value = 123.0
                )
              ),
              projectedUtilizationMetrics = list(
                list(
                  name = "Cpu"|"Memory",
                  statistic = "Maximum"|"Average",
                  lowerBoundValue = 123.0,
                  upperBoundValue = 123.0
                )
              ),
              containerRecommendations = list(
                list(
                  containerName = "string",
                  memorySizeConfiguration = list(
                    memory = 123,
                    memoryReservation = 123
                  ),
                  cpu = 123
                )
              )
            )
          ),
          currentPerformanceRisk = "VeryLow"|"Low"|"Medium"|"High",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      errors = list(
        list(
          identifier = "string",
          code = "string",
          message = "string"
        )
      )
    )

### Request syntax

    svc$get_ecs_service_recommendations(
      serviceArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123,
      filters = list(
        list(
          name = "Finding"|"FindingReasonCode",
          values = list(
            "string"
          )
        )
      ),
      accountIds = list(
        "string"
      )
    )
