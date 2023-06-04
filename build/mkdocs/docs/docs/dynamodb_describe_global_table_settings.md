<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_global_table_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes Region-specific settings for a global table

### Description

Describes Region-specific settings for a global table.

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

    dynamodb_describe_global_table_settings(GlobalTableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_global_table_settings_:_GlobalTableName">GlobalTableName</code></td>
<td><p>[required] The name of the global table to describe.</p></td>
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

    svc$describe_global_table_settings(
      GlobalTableName = "string"
    )
