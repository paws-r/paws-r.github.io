<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_table_replica_auto_scaling</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes auto scaling settings across replicas of the global table at once

### Description

Describes auto scaling settings across replicas of the global table at
once.

This operation only applies to [Version 2019.11.21
(Current)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html)
of global tables.

### Usage

    dynamodb_describe_table_replica_auto_scaling(TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_table_replica_auto_scaling_:_TableName">TableName</code></td>
<td><p>[required] The name of the table.</p></td>
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

    svc$describe_table_replica_auto_scaling(
      TableName = "string"
    )
