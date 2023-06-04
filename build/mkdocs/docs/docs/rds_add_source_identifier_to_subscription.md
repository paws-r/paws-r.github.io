<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_add_source_identifier_to_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a source identifier to an existing RDS event notification subscription

### Description

Adds a source identifier to an existing RDS event notification
subscription.

### Usage

    rds_add_source_identifier_to_subscription(SubscriptionName,
      SourceIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_add_source_identifier_to_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>[required] The name of the RDS event notification subscription
you want to add a source identifier to.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_add_source_identifier_to_subscription_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>[required] The identifier of the event source to be added.</p>
<p>Constraints:</p>
<ul>
<li><p>If the source type is a DB instance, a
<code>DBInstanceIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB cluster, a
<code>DBClusterIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB parameter group, a
<code>DBParameterGroupName</code> value must be supplied.</p></li>
<li><p>If the source type is a DB security group, a
<code>DBSecurityGroupName</code> value must be supplied.</p></li>
<li><p>If the source type is a DB snapshot, a
<code>DBSnapshotIdentifier</code> value must be supplied.</p></li>
<li><p>If the source type is a DB cluster snapshot, a
<code>DBClusterSnapshotIdentifier</code> value must be
supplied.</p></li>
<li><p>If the source type is an RDS Proxy, a <code>DBProxyName</code>
value must be supplied.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventSubscription = list(
        CustomerAwsId = "string",
        CustSubscriptionId = "string",
        SnsTopicArn = "string",
        Status = "string",
        SubscriptionCreationTime = "string",
        SourceType = "string",
        SourceIdsList = list(
          "string"
        ),
        EventCategoriesList = list(
          "string"
        ),
        Enabled = TRUE|FALSE,
        EventSubscriptionArn = "string"
      )
    )

### Request syntax

    svc$add_source_identifier_to_subscription(
      SubscriptionName = "string",
      SourceIdentifier = "string"
    )
