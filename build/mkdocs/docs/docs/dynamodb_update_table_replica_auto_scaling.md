<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_table_replica_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates auto scaling settings on your global tables at once

### Description

Updates auto scaling settings on your global tables at once.

This operation only applies to [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
of global tables.

### Usage

    dynamodb_update_table_replica_auto_scaling(GlobalSecondaryIndexUpdates,
      TableName, ProvisionedWriteCapacityAutoScalingUpdate, ReplicaUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_table_replica_auto_scaling_:_GlobalSecondaryIndexUpdates">GlobalSecondaryIndexUpdates</code></td>
<td><p>Represents the auto scaling settings of the global secondary
indexes of the replica to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_replica_auto_scaling_:_TableName">TableName</code></td>
<td><p>[required] The name of the global table to be updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_table_replica_auto_scaling_:_ProvisionedWriteCapacityAutoScalingUpdate">ProvisionedWriteCapacityAutoScalingUpdate</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_table_replica_auto_scaling_:_ReplicaUpdates">ReplicaUpdates</code></td>
<td><p>Represents the auto scaling settings of replicas of the table
that will be modified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableAutoScalingDescription = list(
        TableName = "string",
        TableStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS"|"ARCHIVING"|"ARCHIVED",
        Replicas = list(
          list(
            RegionName = "string",
            GlobalSecondaryIndexes = list(
              list(
                IndexName = "string",
                IndexStatus = "CREATING"|"UPDATING"|"DELETING"|"ACTIVE",
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
            ReplicaStatus = "CREATING"|"CREATION_FAILED"|"UPDATING"|"DELETING"|"ACTIVE"|"REGION_DISABLED"|"INACCESSIBLE_ENCRYPTION_CREDENTIALS"
          )
        )
      )
    )

### Request syntax

    svc$update_table_replica_auto_scaling(
      GlobalSecondaryIndexUpdates = list(
        list(
          IndexName = "string",
          ProvisionedWriteCapacityAutoScalingUpdate = list(
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
      TableName = "string",
      ProvisionedWriteCapacityAutoScalingUpdate = list(
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
      ReplicaUpdates = list(
        list(
          RegionName = "string",
          ReplicaGlobalSecondaryIndexUpdates = list(
            list(
              IndexName = "string",
              ProvisionedReadCapacityAutoScalingUpdate = list(
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
          ReplicaProvisionedReadCapacityAutoScalingUpdate = list(
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
      )
    )
