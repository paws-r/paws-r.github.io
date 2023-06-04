<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on

### Description

Provides cluster-level details including status, hardware and software
configuration, VPC settings, and so on.

### Usage

    emr_describe_cluster(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_describe_cluster_:_ClusterId">ClusterId</code></td>
<td><p>[required] The identifier of the cluster to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        Id = "string",
        Name = "string",
        Status = list(
          State = "STARTING"|"BOOTSTRAPPING"|"RUNNING"|"WAITING"|"TERMINATING"|"TERMINATED"|"TERMINATED_WITH_ERRORS",
          StateChangeReason = list(
            Code = "INTERNAL_ERROR"|"VALIDATION_ERROR"|"INSTANCE_FAILURE"|"INSTANCE_FLEET_TIMEOUT"|"BOOTSTRAP_FAILURE"|"USER_REQUEST"|"STEP_FAILURE"|"ALL_STEPS_COMPLETED",
            Message = "string"
          ),
          Timeline = list(
            CreationDateTime = as.POSIXct(
              "2015-01-01"
            ),
            ReadyDateTime = as.POSIXct(
              "2015-01-01"
            ),
            EndDateTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          ErrorDetails = list(
            list(
              ErrorCode = "string",
              ErrorData = list(
                list(
                  "string"
                )
              ),
              ErrorMessage = "string"
            )
          )
        ),
        Ec2InstanceAttributes = list(
          Ec2KeyName = "string",
          Ec2SubnetId = "string",
          RequestedEc2SubnetIds = list(
            "string"
          ),
          Ec2AvailabilityZone = "string",
          RequestedEc2AvailabilityZones = list(
            "string"
          ),
          IamInstanceProfile = "string",
          EmrManagedMasterSecurityGroup = "string",
          EmrManagedSlaveSecurityGroup = "string",
          ServiceAccessSecurityGroup = "string",
          AdditionalMasterSecurityGroups = list(
            "string"
          ),
          AdditionalSlaveSecurityGroups = list(
            "string"
          )
        ),
        InstanceCollectionType = "INSTANCE_FLEET"|"INSTANCE_GROUP",
        LogUri = "string",
        LogEncryptionKmsKeyId = "string",
        RequestedAmiVersion = "string",
        RunningAmiVersion = "string",
        ReleaseLabel = "string",
        AutoTerminate = TRUE|FALSE,
        TerminationProtected = TRUE|FALSE,
        VisibleToAllUsers = TRUE|FALSE,
        Applications = list(
          list(
            Name = "string",
            Version = "string",
            Args = list(
              "string"
            ),
            AdditionalInfo = list(
              "string"
            )
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        ServiceRole = "string",
        NormalizedInstanceHours = 123,
        MasterPublicDnsName = "string",
        Configurations = list(
          list(
            Classification = "string",
            Configurations = list(),
            Properties = list(
              "string"
            )
          )
        ),
        SecurityConfiguration = "string",
        AutoScalingRole = "string",
        ScaleDownBehavior = "TERMINATE_AT_INSTANCE_HOUR"|"TERMINATE_AT_TASK_COMPLETION",
        CustomAmiId = "string",
        EbsRootVolumeSize = 123,
        RepoUpgradeOnBoot = "SECURITY"|"NONE",
        KerberosAttributes = list(
          Realm = "string",
          KdcAdminPassword = "string",
          CrossRealmTrustPrincipalPassword = "string",
          ADDomainJoinUser = "string",
          ADDomainJoinPassword = "string"
        ),
        ClusterArn = "string",
        OutpostArn = "string",
        StepConcurrencyLevel = 123,
        PlacementGroups = list(
          list(
            InstanceRole = "MASTER"|"CORE"|"TASK",
            PlacementStrategy = "SPREAD"|"PARTITION"|"CLUSTER"|"NONE"
          )
        ),
        OSReleaseLabel = "string"
      )
    )

### Request syntax

    svc$describe_cluster(
      ClusterId = "string"
    )
