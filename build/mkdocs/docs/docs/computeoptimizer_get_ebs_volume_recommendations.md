<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_ebs_volume_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations

### Description

Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

Compute Optimizer generates recommendations for Amazon EBS volumes that
meet a specific set of requirements. For more information, see the
[Supported resources and
requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_get_ebs_volume_recommendations(volumeArns, nextToken,
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
id="computeoptimizer_get_ebs_volume_recommendations_:_volumeArns">volumeArns</code></td>
<td><p>The Amazon Resource Name (ARN) of the volumes for which to return
recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ebs_volume_recommendations_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of volume
recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ebs_volume_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of volume recommendations to return with a
single request.</p>
<p>To retrieve the remaining results, make another request with the
returned <code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_ebs_volume_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of volume recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_ebs_volume_recommendations_:_accountIds">accountIds</code></td>
<td><p>The ID of the Amazon Web Services account for which to return
volume recommendations.</p>
<p>If your account is the management account of an organization, use
this parameter to specify the member account for which you want to
return volume recommendations.</p>
<p>Only one account ID can be specified per request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      volumeRecommendations = list(
        list(
          volumeArn = "string",
          accountId = "string",
          currentConfiguration = list(
            volumeType = "string",
            volumeSize = 123,
            volumeBaselineIOPS = 123,
            volumeBurstIOPS = 123,
            volumeBaselineThroughput = 123,
            volumeBurstThroughput = 123,
            rootVolume = TRUE|FALSE
          ),
          finding = "Optimized"|"NotOptimized",
          utilizationMetrics = list(
            list(
              name = "VolumeReadOpsPerSecond"|"VolumeWriteOpsPerSecond"|"VolumeReadBytesPerSecond"|"VolumeWriteBytesPerSecond",
              statistic = "Maximum"|"Average",
              value = 123.0
            )
          ),
          lookBackPeriodInDays = 123.0,
          volumeRecommendationOptions = list(
            list(
              configuration = list(
                volumeType = "string",
                volumeSize = 123,
                volumeBaselineIOPS = 123,
                volumeBurstIOPS = 123,
                volumeBaselineThroughput = 123,
                volumeBurstThroughput = 123,
                rootVolume = TRUE|FALSE
              ),
              performanceRisk = 123.0,
              rank = 123,
              savingsOpportunity = list(
                savingsOpportunityPercentage = 123.0,
                estimatedMonthlySavings = list(
                  currency = "USD"|"CNY",
                  value = 123.0
                )
              )
            )
          ),
          lastRefreshTimestamp = as.POSIXct(
            "2015-01-01"
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

    svc$get_ebs_volume_recommendations(
      volumeArns = list(
        "string"
      ),
      nextToken = "string",
      maxResults = 123,
      filters = list(
        list(
          name = "Finding",
          values = list(
            "string"
          )
        )
      ),
      accountIds = list(
        "string"
      )
    )
