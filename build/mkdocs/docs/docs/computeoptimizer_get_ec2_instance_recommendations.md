<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_ec2_instance_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns Amazon EC2 instance recommendations

### Description

Returns Amazon EC2 instance recommendations.

Compute Optimizer generates recommendations for Amazon Elastic Compute
Cloud (Amazon EC2) instances that meet a specific set of requirements.
For more information, see the [Supported resources and
requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_get_ec2_instance_recommendations(instanceArns,
      nextToken, maxResults, filters, accountIds, recommendationPreferences)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_instanceArns">instanceArns</code></td>
<td><p>The Amazon Resource Name (ARN) of the instances for which to
return recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of instance
recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of instance recommendations to return with a
single request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of instance recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_accountIds">accountIds</code></td>
<td><p>The ID of the Amazon Web Services account for which to return
instance recommendations.</p>
<p>If your account is the management account of an organization, use
this parameter to specify the member account for which you want to
return instance recommendations.</p>
<p>Only one account ID can be specified per request.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ec2_instance_recommendations_:_recommendationPreferences">recommendationPreferences</code></td>
<td><p>An object to specify the preferences for the Amazon EC2 instance
recommendations to return in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      instanceRecommendations = list(
        list(
          instanceArn = "string",
          accountId = "string",
          instanceName = "string",
          currentInstanceType = "string",
          finding = "Underprovisioned"|"Overprovisioned"|"Optimized"|"NotOptimized",
          findingReasonCodes = list(
            "CPUOverprovisioned"|"CPUUnderprovisioned"|"MemoryOverprovisioned"|"MemoryUnderprovisioned"|"EBSThroughputOverprovisioned"|"EBSThroughputUnderprovisioned"|"EBSIOPSOverprovisioned"|"EBSIOPSUnderprovisioned"|"NetworkBandwidthOverprovisioned"|"NetworkBandwidthUnderprovisioned"|"NetworkPPSOverprovisioned"|"NetworkPPSUnderprovisioned"|"DiskIOPSOverprovisioned"|"DiskIOPSUnderprovisioned"|"DiskThroughputOverprovisioned"|"DiskThroughputUnderprovisioned"
          ),
          utilizationMetrics = list(
            list(
              name = "Cpu"|"Memory"|"EBS_READ_OPS_PER_SECOND"|"EBS_WRITE_OPS_PER_SECOND"|"EBS_READ_BYTES_PER_SECOND"|"EBS_WRITE_BYTES_PER_SECOND"|"DISK_READ_OPS_PER_SECOND"|"DISK_WRITE_OPS_PER_SECOND"|"DISK_READ_BYTES_PER_SECOND"|"DISK_WRITE_BYTES_PER_SECOND"|"NETWORK_IN_BYTES_PER_SECOND"|"NETWORK_OUT_BYTES_PER_SECOND"|"NETWORK_PACKETS_IN_PER_SECOND"|"NETWORK_PACKETS_OUT_PER_SECOND",
              statistic = "Maximum"|"Average",
              value = 123.0
            )
          ),
          lookBackPeriodInDays = 123.0,
          recommendationOptions = list(
            list(
              instanceType = "string",
              projectedUtilizationMetrics = list(
                list(
                  name = "Cpu"|"Memory"|"EBS_READ_OPS_PER_SECOND"|"EBS_WRITE_OPS_PER_SECOND"|"EBS_READ_BYTES_PER_SECOND"|"EBS_WRITE_BYTES_PER_SECOND"|"DISK_READ_OPS_PER_SECOND"|"DISK_WRITE_OPS_PER_SECOND"|"DISK_READ_BYTES_PER_SECOND"|"DISK_WRITE_BYTES_PER_SECOND"|"NETWORK_IN_BYTES_PER_SECOND"|"NETWORK_OUT_BYTES_PER_SECOND"|"NETWORK_PACKETS_IN_PER_SECOND"|"NETWORK_PACKETS_OUT_PER_SECOND",
                  statistic = "Maximum"|"Average",
                  value = 123.0
                )
              ),
              platformDifferences = list(
                "Hypervisor"|"NetworkInterface"|"StorageInterface"|"InstanceStoreAvailability"|"VirtualizationType"|"Architecture"
              ),
              performanceRisk = 123.0,
              rank = 123,
              savingsOpportunity = list(
                savingsOpportunityPercentage = 123.0,
                estimatedMonthlySavings = list(
                  currency = "USD"|"CNY",
                  value = 123.0
                )
              ),
              migrationEffort = "VeryLow"|"Low"|"Medium"|"High"
            )
          ),
          recommendationSources = list(
            list(
              recommendationSourceArn = "string",
              recommendationSourceType = "Ec2Instance"|"AutoScalingGroup"|"EbsVolume"|"LambdaFunction"|"EcsService"
            )
          ),
          lastRefreshTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          currentPerformanceRisk = "VeryLow"|"Low"|"Medium"|"High",
          effectiveRecommendationPreferences = list(
            cpuVendorArchitectures = list(
              "AWS_ARM64"|"CURRENT"
            ),
            enhancedInfrastructureMetrics = "Active"|"Inactive",
            inferredWorkloadTypes = "Active"|"Inactive",
            externalMetricsPreference = list(
              source = "Datadog"|"Dynatrace"|"NewRelic"|"Instana"
            )
          ),
          inferredWorkloadTypes = list(
            "AmazonEmr"|"ApacheCassandra"|"ApacheHadoop"|"Memcached"|"Nginx"|"PostgreSql"|"Redis"|"Kafka"|"SQLServer"
          ),
          instanceState = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped",
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          externalMetricStatus = list(
            statusCode = "NO_EXTERNAL_METRIC_SET"|"INTEGRATION_SUCCESS"|"DATADOG_INTEGRATION_ERROR"|"DYNATRACE_INTEGRATION_ERROR"|"NEWRELIC_INTEGRATION_ERROR"|"INSTANA_INTEGRATION_ERROR"|"INSUFFICIENT_DATADOG_METRICS"|"INSUFFICIENT_DYNATRACE_METRICS"|"INSUFFICIENT_NEWRELIC_METRICS"|"INSUFFICIENT_INSTANA_METRICS",
            statusReason = "string"
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

    svc$get_ec2_instance_recommendations(
      instanceArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123,
      filters = list(
        list(
          name = "Finding"|"FindingReasonCodes"|"RecommendationSourceType"|"InferredWorkloadTypes",
          values = list(
            "string"
          )
        )
      ),
      accountIds = list(
        "string"
      ),
      recommendationPreferences = list(
        cpuVendorArchitectures = list(
          "AWS_ARM64"|"CURRENT"
        )
      )
    )
