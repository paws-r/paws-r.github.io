<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a description of a set of instances

### Description

Requests a description of a set of instances.

This call accepts only one resource-identifying parameter.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_instances(StackId, LayerId, InstanceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_describe_instances_:_StackId">StackId</code></td>
<td><p>A stack ID. If you use this parameter,
<code>describe_instances</code> returns descriptions of the instances
associated with the specified stack.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_describe_instances_:_LayerId">LayerId</code></td>
<td><p>A layer ID. If you use this parameter,
<code>describe_instances</code> returns descriptions of the instances
associated with the specified layer.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_describe_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>An array of instance IDs to be described. If you use this
parameter, <code>describe_instances</code> returns a description of the
specified instances. Otherwise, it returns a description of every
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Instances = list(
        list(
          AgentVersion = "string",
          AmiId = "string",
          Architecture = "x86_64"|"i386",
          Arn = "string",
          AutoScalingType = "load"|"timer",
          AvailabilityZone = "string",
          BlockDeviceMappings = list(
            list(
              DeviceName = "string",
              NoDevice = "string",
              VirtualName = "string",
              Ebs = list(
                SnapshotId = "string",
                Iops = 123,
                VolumeSize = 123,
                VolumeType = "gp2"|"io1"|"standard",
                DeleteOnTermination = TRUE|FALSE
              )
            )
          ),
          CreatedAt = "string",
          EbsOptimized = TRUE|FALSE,
          Ec2InstanceId = "string",
          EcsClusterArn = "string",
          EcsContainerInstanceArn = "string",
          ElasticIp = "string",
          Hostname = "string",
          InfrastructureClass = "string",
          InstallUpdatesOnBoot = TRUE|FALSE,
          InstanceId = "string",
          InstanceProfileArn = "string",
          InstanceType = "string",
          LastServiceErrorId = "string",
          LayerIds = list(
            "string"
          ),
          Os = "string",
          Platform = "string",
          PrivateDns = "string",
          PrivateIp = "string",
          PublicDns = "string",
          PublicIp = "string",
          RegisteredBy = "string",
          ReportedAgentVersion = "string",
          ReportedOs = list(
            Family = "string",
            Name = "string",
            Version = "string"
          ),
          RootDeviceType = "ebs"|"instance-store",
          RootDeviceVolumeId = "string",
          SecurityGroupIds = list(
            "string"
          ),
          SshHostDsaKeyFingerprint = "string",
          SshHostRsaKeyFingerprint = "string",
          SshKeyName = "string",
          StackId = "string",
          Status = "string",
          SubnetId = "string",
          Tenancy = "string",
          VirtualizationType = "paravirtual"|"hvm"
        )
      )
    )

### Request syntax

    svc$describe_instances(
      StackId = "string",
      LayerId = "string",
      InstanceIds = list(
        "string"
      )
    )
