<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_update_anomaly_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing cost anomaly monitor subscription

### Description

Updates an existing cost anomaly monitor subscription.

### Usage

    costexplorer_update_anomaly_subscription(SubscriptionArn, Threshold,
      Frequency, MonitorArnList, Subscribers, SubscriptionName,
      ThresholdExpression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_update_anomaly_subscription_:_SubscriptionArn">SubscriptionArn</code></td>
<td><p>[required] A cost anomaly subscription Amazon Resource Name
(ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_anomaly_subscription_:_Threshold">Threshold</code></td>
<td><p>(deprecated)</p>
<p>The update to the threshold value for receiving notifications.</p>
<p>This field has been deprecated. To update a threshold, use
ThresholdExpression. Continued use of Threshold will be treated as
shorthand syntax for a ThresholdExpression.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_update_anomaly_subscription_:_Frequency">Frequency</code></td>
<td><p>The update to the frequency value that subscribers receive
notifications.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_anomaly_subscription_:_MonitorArnList">MonitorArnList</code></td>
<td><p>A list of cost anomaly monitor ARNs.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_update_anomaly_subscription_:_Subscribers">Subscribers</code></td>
<td><p>The update to the subscriber list.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_anomaly_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>The new name of the subscription.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_update_anomaly_subscription_:_ThresholdExpression">ThresholdExpression</code></td>
<td><p>The update to the <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>
object used to specify the anomalies that you want to generate alerts
for. This supports dimensions and nested expressions. The supported
dimensions are <code>ANOMALY_TOTAL_IMPACT_ABSOLUTE</code> and
<code>ANOMALY_TOTAL_IMPACT_PERCENTAGE</code>. The supported nested
expression types are <code>AND</code> and <code>OR</code>. The match
option <code>GREATER_THAN_OR_EQUAL</code> is required. Values must be
numbers between 0 and 10,000,000,000.</p>
<p>The following are examples of valid ThresholdExpressions:</p>
<ul>
<li><p>Absolute threshold: <code
style="white-space: pre;">⁠{ "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }⁠</code></p></li>
<li><p>Percentage threshold: <code
style="white-space: pre;">⁠{ "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }⁠</code></p></li>
<li><p><code>AND</code> two thresholds together: <code
style="white-space: pre;">⁠{ "And": [ { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }⁠</code></p></li>
<li><p><code>OR</code> two thresholds together: <code
style="white-space: pre;">⁠{ "Or": [ { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }⁠</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubscriptionArn = "string"
    )

### Request syntax

    svc$update_anomaly_subscription(
      SubscriptionArn = "string",
      Threshold = 123.0,
      Frequency = "DAILY"|"IMMEDIATE"|"WEEKLY",
      MonitorArnList = list(
        "string"
      ),
      Subscribers = list(
        list(
          Address = "string",
          Type = "EMAIL"|"SNS",
          Status = "CONFIRMED"|"DECLINED"
        )
      ),
      SubscriptionName = "string",
      ThresholdExpression = list(
        Or = list(
          list()
        ),
        And = list(
          list()
        ),
        Not = list(),
        Dimensions = list(
          Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        Tags = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        ),
        CostCategories = list(
          Key = "string",
          Values = list(
            "string"
          ),
          MatchOptions = list(
            "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
          )
        )
      )
    )
