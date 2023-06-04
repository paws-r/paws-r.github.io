<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_global_table_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates settings for a global table

### Description

Updates settings for a global table.

This operation only applies to [Version 2017.11.29
(Legacy)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V1.html)
of global tables. We recommend using [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
when creating new global tables, as it provides greater flexibility,
higher efficiency and consumes less write capacity than 2017.11.29
(Legacy). To determine which version you are using, see [Determining the
version](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html).
To update existing global tables from version 2017.11.29 (Legacy) to
version 2019.11.21 (Current), see [Updating global
tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html).

### Usage

    dynamodb_update_global_table_settings(GlobalTableName,
      GlobalTableBillingMode, GlobalTableProvisionedWriteCapacityUnits,
      GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
      GlobalTableGlobalSecondaryIndexSettingsUpdate, ReplicaSettingsUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_global_table_settings_:_GlobalTableName">GlobalTableName</code></td>
<td><p>[required] The name of the global table</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_global_table_settings_:_GlobalTableBillingMode">GlobalTableBillingMode</code></td>
<td><p>The billing mode of the global table. If
<code>GlobalTableBillingMode</code> is not specified, the global table
defaults to <code>PROVISIONED</code> capacity billing mode.</p>
<ul>
<li><p><code>PROVISIONED</code> - We recommend using
<code>PROVISIONED</code> for predictable workloads.
<code>PROVISIONED</code> sets the billing mode to <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned
Mode</a>.</p></li>
<li><p><code>PAY_PER_REQUEST</code> - We recommend using
<code>PAY_PER_REQUEST</code> for unpredictable workloads.
<code>PAY_PER_REQUEST</code> sets the billing mode to <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand
Mode</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_global_table_settings_:_GlobalTableProvisionedWriteCapacityUnits">GlobalTableProvisionedWriteCapacityUnits</code></td>
<td><p>The maximum number of writes consumed per second before DynamoDB
returns a <code>ThrottlingException.</code></p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_global_table_settings_:_GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate">GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate</code></td>
<td><p>Auto scaling settings for managing provisioned write capacity for
the global table.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_global_table_settings_:_GlobalTableGlobalSecondaryIndexSettingsUpdate">GlobalTableGlobalSecondaryIndexSettingsUpdate</code></td>
<td><p>Represents the settings of a global secondary index for a global
table that will be modified.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_global_table_settings_:_ReplicaSettingsUpdate">ReplicaSettingsUpdate</code></td>
<td><p>Represents the settings for a global table in a Region that will
be modified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalTableName = "string",
      ReplicaSettings = list(
        list(
          RegionName = "string",
          ReplicaStatus = "CREATING"|"CREATION_FAILED"|"UPDATING"|"DELETING"|"ACTIVE"|"REGION_DISABLED"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS",
          ReplicaBillingModeSummary = list(
            BillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
            LastUpdateToPayPerRequestDateTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          ReplicaProvisionedReadCapacityUnits = 123,
          ReplicaProvisionedReadCapacityAutoScalingSettings = list(
            MinimumUnits = 123,
            MaximumUnits = 123,
            AutoScalingDisabled = TRUE|FALSE,
            AutoScalingRoleArn = "string",
            ScalingPolicies = list(
              list(
                PolicyName = "string",
                TargetTrackingScalingPolicyConfiguration = list(
                  DisableScaleIn = TRUE|FALSE,
                  ScaleInCooldown = 123,
                  ScaleOutCooldown = 123,
                  TargetValue = 123.0
                )
              )
            )
          ),
          ReplicaProvisionedWriteCapacityUnits = 123,
          ReplicaProvisionedWriteCapacityAutoScalingSettings = list(
            MinimumUnits = 123,
            MaximumUnits = 123,
            AutoScalingDisabled = TRUE|FALSE,
            AutoScalingRoleArn = "string",
            ScalingPolicies = list(
              list(
                PolicyName = "string",
                TargetTrackingScalingPolicyConfiguration = list(
                  DisableScaleIn = TRUE|FALSE,
                  ScaleInCooldown = 123,
                  ScaleOutCooldown = 123,
                  TargetValue = 123.0
                )
              )
            )
          ),
          ReplicaGlobalSecondaryIndexSettings = list(
            list(
              IndexName = "string",
              IndexStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE",
              ProvisionedReadCapacityUnits = 123,
              ProvisionedReadCapacityAutoScalingSettings = list(
                MinimumUnits = 123,
                MaximumUnits = 123,
                AutoScalingDisabled = TRUE|FALSE,
                AutoScalingRoleArn = "string",
                ScalingPolicies = list(
                  list(
                    PolicyName = "string",
                    TargetTrackingScalingPolicyConfiguration = list(
                      DisableScaleIn = TRUE|FALSE,
                      ScaleInCooldown = 123,
                      ScaleOutCooldown = 123,
                      TargetValue = 123.0
                    )
                  )
                )
              ),
              ProvisionedWriteCapacityUnits = 123,
              ProvisionedWriteCapacityAutoScalingSettings = list(
                MinimumUnits = 123,
                MaximumUnits = 123,
                AutoScalingDisabled = TRUE|FALSE,
                AutoScalingRoleArn = "string",
                ScalingPolicies = list(
                  list(
                    PolicyName = "string",
                    TargetTrackingScalingPolicyConfiguration = list(
                      DisableScaleIn = TRUE|FALSE,
                      ScaleInCooldown = 123,
                      ScaleOutCooldown = 123,
                      TargetValue = 123.0
                    )
                  )
                )
              )
            )
          ),
          ReplicaTableClassSummary = list(
            TableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS",
            LastUpdateDateTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$update_global_table_settings(
      GlobalTableName = "string",
      GlobalTableBillingMode = "PROVISIONED"|"PAY_PER_REQUEST",
      GlobalTableProvisionedWriteCapacityUnits = 123,
      GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = list(
        MinimumUnits = 123,
        MaximumUnits = 123,
        AutoScalingDisabled = TRUE|FALSE,
        AutoScalingRoleArn = "string",
        ScalingPolicyUpdate = list(
          PolicyName = "string",
          TargetTrackingScalingPolicyConfiguration = list(
            DisableScaleIn = TRUE|FALSE,
            ScaleInCooldown = 123,
            ScaleOutCooldown = 123,
            TargetValue = 123.0
          )
        )
      ),
      GlobalTableGlobalSecondaryIndexSettingsUpdate = list(
        list(
          IndexName = "string",
          ProvisionedWriteCapacityUnits = 123,
          ProvisionedWriteCapacityAutoScalingSettingsUpdate = list(
            MinimumUnits = 123,
            MaximumUnits = 123,
            AutoScalingDisabled = TRUE|FALSE,
            AutoScalingRoleArn = "string",
            ScalingPolicyUpdate = list(
              PolicyName = "string",
              TargetTrackingScalingPolicyConfiguration = list(
                DisableScaleIn = TRUE|FALSE,
                ScaleInCooldown = 123,
                ScaleOutCooldown = 123,
                TargetValue = 123.0
              )
            )
          )
        )
      ),
      ReplicaSettingsUpdate = list(
        list(
          RegionName = "string",
          ReplicaProvisionedReadCapacityUnits = 123,
          ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate = list(
            MinimumUnits = 123,
            MaximumUnits = 123,
            AutoScalingDisabled = TRUE|FALSE,
            AutoScalingRoleArn = "string",
            ScalingPolicyUpdate = list(
              PolicyName = "string",
              TargetTrackingScalingPolicyConfiguration = list(
                DisableScaleIn = TRUE|FALSE,
                ScaleInCooldown = 123,
                ScaleOutCooldown = 123,
                TargetValue = 123.0
              )
            )
          ),
          ReplicaGlobalSecondaryIndexSettingsUpdate = list(
            list(
              IndexName = "string",
              ProvisionedReadCapacityUnits = 123,
              ProvisionedReadCapacityAutoScalingSettingsUpdate = list(
                MinimumUnits = 123,
                MaximumUnits = 123,
                AutoScalingDisabled = TRUE|FALSE,
                AutoScalingRoleArn = "string",
                ScalingPolicyUpdate = list(
                  PolicyName = "string",
                  TargetTrackingScalingPolicyConfiguration = list(
                    DisableScaleIn = TRUE|FALSE,
                    ScaleInCooldown = 123,
                    ScaleOutCooldown = 123,
                    TargetValue = 123.0
                  )
                )
              )
            )
          ),
          ReplicaTableClass = "STANDARD"|"STANDARD_INFREQUENT_ACCESS"
        )
      )
    )
