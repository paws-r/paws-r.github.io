<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>computeoptimizer_get_lambda_function_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns Lambda function recommendations

### Description

Returns Lambda function recommendations.

Compute Optimizer generates recommendations for functions that meet a
specific set of requirements. For more information, see the [Supported
resources and
requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
in the *Compute Optimizer User Guide*.

### Usage

    computeoptimizer_get_lambda_function_recommendations(functionArns,
      accountIds, filters, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="computeoptimizer_get_lambda_function_recommendations_:_functionArns">functionArns</code></td>
<td><p>The Amazon Resource Name (ARN) of the functions for which to
return recommendations.</p>
<p>You can specify a qualified or unqualified ARN. If you specify an
unqualified ARN without a function version suffix, Compute Optimizer
will return recommendations for the latest (<code
style="white-space: pre;">⁠$LATEST⁠</code>) version of the function. If
you specify a qualified ARN with a version suffix, Compute Optimizer
will return recommendations for the specified function version. For more
information about using function versions, see <a
href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using">Using
versions</a> in the <em>Lambda Developer Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_lambda_function_recommendations_:_accountIds">accountIds</code></td>
<td><p>The ID of the Amazon Web Services account for which to return
function recommendations.</p>
<p>If your account is the management account of an organization, use
this parameter to specify the member account for which you want to
return function recommendations.</p>
<p>Only one account ID can be specified per request.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_lambda_function_recommendations_:_filters">filters</code></td>
<td><p>An array of objects to specify a filter that returns a more
specific list of function recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="computeoptimizer_get_lambda_function_recommendations_:_nextToken">nextToken</code></td>
<td><p>The token to advance to the next page of function
recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="computeoptimizer_get_lambda_function_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of function recommendations to return with a
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
      lambdaFunctionRecommendations = list(
        list(
          functionArn = "string",
          functionVersion = "string",
          accountId = "string",
          currentMemorySize = 123,
          numberOfInvocations = 123,
          utilizationMetrics = list(
            list(
              name = "Duration"|"Memory",
              statistic = "Maximum"|"Average",
              value = 123.0
            )
          ),
          lookbackPeriodInDays = 123.0,
          lastRefreshTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          finding = "Optimized"|"NotOptimized"|"Unavailable",
          findingReasonCodes = list(
            "MemoryOverprovisioned"|"MemoryUnderprovisioned"|"InsufficientData"|"Inconclusive"
          ),
          memorySizeRecommendationOptions = list(
            list(
              rank = 123,
              memorySize = 123,
              projectedUtilizationMetrics = list(
                list(
                  name = "Duration",
                  statistic = "LowerBound"|"UpperBound"|"Expected",
                  value = 123.0
                )
              ),
              savingsOpportunity = list(
                savingsOpportunityPercentage = 123.0,
                estimatedMonthlySavings = list(
                  currency = "USD"|"CNY",
                  value = 123.0
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
      )
    )

### Request syntax

    svc$get_lambda_function_recommendations(
      functionArns = list(
        "string"
      ),
      accountIds = list(
        "string"
      ),
      filters = list(
        list(
          name = "Finding"|"FindingReasonCode",
          values = list(
            "string"
          )
        )
      ),
      nextToken = "string",
      maxResults = 123
    )
