<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_run_scheduled_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Launches the specified Scheduled Instances

### Description

Launches the specified Scheduled Instances.

Before you can launch a Scheduled Instance, you must purchase it and
obtain an identifier using `purchase_scheduled_instances`.

You must launch a Scheduled Instance during its scheduled time period.
You can't stop or reboot a Scheduled Instance, but you can terminate it
as needed. If you terminate a Scheduled Instance before the current
scheduled time period ends, you can launch it again after a few minutes.
For more information, see [Scheduled
Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_run_scheduled_instances(ClientToken, DryRun, InstanceCount,
      LaunchSpecification, ScheduledInstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_run_scheduled_instances_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that ensures the idempotency of
the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_run_scheduled_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_scheduled_instances_:_InstanceCount">InstanceCount</code></td>
<td><p>The number of instances.</p>
<p>Default: 1</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_run_scheduled_instances_:_LaunchSpecification">LaunchSpecification</code></td>
<td><p>[required] The launch specification. You must match the instance
type, Availability Zone, network, and platform of the schedule that you
purchased.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_run_scheduled_instances_:_ScheduledInstanceId">ScheduledInstanceId</code></td>
<td><p>[required] The Scheduled Instance ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceIdSet = list(
        "string"
      )
    )

### Request syntax

    svc$run_scheduled_instances(
      ClientToken = "string",
      DryRun = TRUE|FALSE,
      InstanceCount = 123,
      LaunchSpecification = list(
        BlockDeviceMappings = list(
          list(
            DeviceName = "string",
            Ebs = list(
              DeleteOnTermination = TRUE|FALSE,
              Encrypted = TRUE|FALSE,
              Iops = 123,
              SnapshotId = "string",
              VolumeSize = 123,
              VolumeType = "string"
            ),
            NoDevice = "string",
            VirtualName = "string"
          )
        ),
        EbsOptimized = TRUE|FALSE,
        IamInstanceProfile = list(
          Arn = "string",
          Name = "string"
        ),
        ImageId = "string",
        InstanceType = "string",
        KernelId = "string",
        KeyName = "string",
        Monitoring = list(
          Enabled = TRUE|FALSE
        ),
        NetworkInterfaces = list(
          list(
            AssociatePublicIpAddress = TRUE|FALSE,
            DeleteOnTermination = TRUE|FALSE,
            Description = "string",
            DeviceIndex = 123,
            Groups = list(
              "string"
            ),
            Ipv6AddressCount = 123,
            Ipv6Addresses = list(
              list(
                Ipv6Address = "string"
              )
            ),
            NetworkInterfaceId = "string",
            PrivateIpAddress = "string",
            PrivateIpAddressConfigs = list(
              list(
                Primary = TRUE|FALSE,
                PrivateIpAddress = "string"
              )
            ),
            SecondaryPrivateIpAddressCount = 123,
            SubnetId = "string"
          )
        ),
        Placement = list(
          AvailabilityZone = "string",
          GroupName = "string"
        ),
        RamdiskId = "string",
        SecurityGroupIds = list(
          "string"
        ),
        SubnetId = "string",
        UserData = "string"
      ),
      ScheduledInstanceId = "string"
    )

### Examples

    ## Not run: 
    # This example launches the specified Scheduled Instance in a VPC.
    svc$run_scheduled_instances(
      InstanceCount = 1L,
      LaunchSpecification = list(
        IamInstanceProfile = list(
          Name = "my-iam-role"
        ),
        ImageId = "ami-12345678",
        InstanceType = "c4.large",
        KeyName = "my-key-pair",
        NetworkInterfaces = list(
          list(
            AssociatePublicIpAddress = TRUE,
            DeviceIndex = 0L,
            Groups = list(
              "sg-12345678"
            ),
            SubnetId = "subnet-12345678"
          )
        )
      ),
      ScheduledInstanceId = "sci-1234-1234-1234-1234-123456789012"
    )

    # This example launches the specified Scheduled Instance in EC2-Classic.
    svc$run_scheduled_instances(
      InstanceCount = 1L,
      LaunchSpecification = list(
        IamInstanceProfile = list(
          Name = "my-iam-role"
        ),
        ImageId = "ami-12345678",
        InstanceType = "c4.large",
        KeyName = "my-key-pair",
        Placement = list(
          AvailabilityZone = "us-west-2b"
        ),
        SecurityGroupIds = list(
          "sg-12345678"
        )
      ),
      ScheduledInstanceId = "sci-1234-1234-1234-1234-123456789012"
    )

    ## End(Not run)
