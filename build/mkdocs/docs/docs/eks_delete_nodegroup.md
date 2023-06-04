<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_delete_nodegroup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon EKS node group for a cluster

### Description

Deletes an Amazon EKS node group for a cluster.

### Usage

    eks_delete_nodegroup(clusterName, nodegroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_delete_nodegroup_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster that is associated
with your node group.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_delete_nodegroup_:_nodegroupName">nodegroupName</code></td>
<td><p>[required] The name of the node group to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nodegroup = list(
        nodegroupName = "string",
        nodegroupArn = "string",
        clusterName = "string",
        version = "string",
        releaseVersion = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        modifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED"|"DEGRADED",
        capacityType = "ON_DEMAND"|"SPOT",
        scalingConfig = list(
          minSize = 123,
          maxSize = 123,
          desiredSize = 123
        ),
        instanceTypes = list(
          "string"
        ),
        subnets = list(
          "string"
        ),
        remoteAccess = list(
          ec2SshKey = "string",
          sourceSecurityGroups = list(
            "string"
          )
        ),
        amiType = "AL2_x86_64"|"AL2_x86_64_GPU"|"AL2_ARM_64"|"CUSTOM"|"BOTTLEROCKET_ARM_64"|"BOTTLEROCKET_x86_64"|"BOTTLEROCKET_ARM_64_NVIDIA"|"BOTTLEROCKET_x86_64_NVIDIA"|"WINDOWS_CORE_2019_x86_64"|"WINDOWS_FULL_2019_x86_64"|"WINDOWS_CORE_2022_x86_64"|"WINDOWS_FULL_2022_x86_64",
        nodeRole = "string",
        labels = list(
          "string"
        ),
        taints = list(
          list(
            key = "string",
            value = "string",
            effect = "NO_SCHEDULE"|"NO_EXECUTE"|"PREFER_NO_SCHEDULE"
          )
        ),
        resources = list(
          autoScalingGroups = list(
            list(
              name = "string"
            )
          ),
          remoteAccessSecurityGroup = "string"
        ),
        diskSize = 123,
        health = list(
          issues = list(
            list(
              code = "AutoScalingGroupNotFound"|"AutoScalingGroupInvalidConfiguration"|"Ec2SecurityGroupNotFound"|"Ec2SecurityGroupDeletionFailure"|"Ec2LaunchTemplateNotFound"|"Ec2LaunchTemplateVersionMismatch"|"Ec2SubnetNotFound"|"Ec2SubnetInvalidConfiguration"|"IamInstanceProfileNotFound"|"IamLimitExceeded"|"IamNodeRoleNotFound"|"NodeCreationFailure"|"AsgInstanceLaunchFailures"|"InstanceLimitExceeded"|"InsufficientFreeAddresses"|"AccessDenied"|"InternalFailure"|"ClusterUnreachable"|"Ec2SubnetMissingIpv6Assignment",
              message = "string",
              resourceIds = list(
                "string"
              )
            )
          )
        ),
        updateConfig = list(
          maxUnavailable = 123,
          maxUnavailablePercentage = 123
        ),
        launchTemplate = list(
          name = "string",
          version = "string",
          id = "string"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$delete_nodegroup(
      clusterName = "string",
      nodegroupName = "string"
    )
