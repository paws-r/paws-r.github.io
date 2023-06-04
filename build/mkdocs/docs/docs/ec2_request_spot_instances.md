<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_request_spot_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Spot Instance request

### Description

Creates a Spot Instance request.

For more information, see [Spot Instance
requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html)
in the *Amazon EC2 User Guide for Linux Instances*.

We strongly discourage using the RequestSpotInstances API because it is
a legacy API with no planned investment. For options for requesting Spot
Instances, see [Which is the best Spot request method to
use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use)
in the *Amazon EC2 User Guide for Linux Instances*.

### Usage

    ec2_request_spot_instances(AvailabilityZoneGroup, BlockDurationMinutes,
      ClientToken, DryRun, InstanceCount, LaunchGroup, LaunchSpecification,
      SpotPrice, Type, ValidFrom, ValidUntil, TagSpecifications,
      InstanceInterruptionBehavior)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_AvailabilityZoneGroup">AvailabilityZoneGroup</code></td>
<td><p>The user-specified name for a logical grouping of requests.</p>
<p>When you specify an Availability Zone group in a Spot Instance
request, all Spot Instances in the request are launched in the same
Availability Zone. Instance proximity is maintained with this parameter,
but the choice of Availability Zone is not. The group applies only to
requests for Spot Instances of the same instance type. Any additional
Spot Instance requests that are specified with the same Availability
Zone group name are launched in that same Availability Zone, as long as
at least one instance from the group is still active.</p>
<p>If there is no active instance running in the Availability Zone group
that you specify for a new Spot Instance request (all instances are
terminated, the request is expired, or the maximum price you specified
falls below current Spot price), then Amazon EC2 launches the instance
in any Availability Zone where the constraint can be met. Consequently,
the subsequent set of Spot Instances could be placed in a different zone
from the original request, even if you specified the same Availability
Zone group.</p>
<p>Default: Instances are launched in any available Availability
Zone.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_request_spot_instances_:_BlockDurationMinutes">BlockDurationMinutes</code></td>
<td><p>Deprecated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to Ensure Idempotency</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_request_spot_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_InstanceCount">InstanceCount</code></td>
<td><p>The maximum number of Spot Instances to launch.</p>
<p>Default: 1</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_request_spot_instances_:_LaunchGroup">LaunchGroup</code></td>
<td><p>The instance launch group. Launch groups are Spot Instances that
launch together and terminate together.</p>
<p>Default: Instances are launched and terminated individually</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_LaunchSpecification">LaunchSpecification</code></td>
<td><p>The launch specification.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_request_spot_instances_:_SpotPrice">SpotPrice</code></td>
<td><p>The maximum price per unit hour that you are willing to pay for a
Spot Instance. We do not recommend using this parameter because it can
lead to increased interruptions. If you do not specify this parameter,
you will pay the current Spot price.</p>
<p>If you specify a maximum price, your instances will be interrupted
more frequently than if you do not specify this parameter.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_request_spot_instances_:_Type">Type</code></td>
<td><p>The Spot Instance request type.</p>
<p>Default: <code>one-time</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_request_spot_instances_:_ValidFrom">ValidFrom</code></td>
<td><p>The start date of the request. If this is a one-time request, the
request becomes active at this date and time and remains active until
all instances launch, the request expires, or the request is canceled.
If the request is persistent, the request becomes active at this date
and time and remains active until it expires or is canceled.</p>
<p>The specified start date and time cannot be equal to the current date
and time. You must specify a start date and time that occurs after the
current date and time.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_ValidUntil">ValidUntil</code></td>
<td><p>The end date of the request, in UTC format
(<em>YYYY</em>-<em>MM</em>-<em>DD</em>T<em>HH</em>:<em>MM</em>:<em>SS</em>Z).</p>
<ul>
<li><p>For a persistent request, the request remains active until the
<code>ValidUntil</code> date and time is reached. Otherwise, the request
remains active until you cancel it.</p></li>
<li><p>For a one-time request, the request remains active until all
instances launch, the request is canceled, or the
<code>ValidUntil</code> date and time is reached. By default, the
request is valid for 7 days from the date the request was
created.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_request_spot_instances_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The key-value pair for tagging the Spot Instance request on
creation. The value for <code>ResourceType</code> must be
<code>spot-instances-request</code>, otherwise the Spot Instance request
fails. To tag the Spot Instance request after it has been created, see
<code>create_tags</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_request_spot_instances_:_InstanceInterruptionBehavior">InstanceInterruptionBehavior</code></td>
<td><p>The behavior when a Spot Instance is interrupted. The default is
<code>terminate</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SpotInstanceRequests = list(
        list(
          ActualBlockHourlyPrice = "string",
          AvailabilityZoneGroup = "string",
          BlockDurationMinutes = 123,
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Fault = list(
            Code = "string",
            Message = "string"
          ),
          InstanceId = "string",
          LaunchGroup = "string",
          LaunchSpecification = list(
            UserData = "string",
            SecurityGroups = list(
              list(
                GroupName = "string",
                GroupId = "string"
              )
            ),
            AddressingType = "string",
            BlockDeviceMappings = list(
              list(
                DeviceName = "string",
                VirtualName = "string",
                Ebs = list(
                  DeleteOnTermination = TRUE|FALSE,
                  Iops = 123,
                  SnapshotId = "string",
                  VolumeSize = 123,
                  VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
                  KmsKeyId = "string",
                  Throughput = 123,
                  OutpostArn = "string",
                  Encrypted = TRUE|FALSE
                ),
                NoDevice = "string"
              )
            ),
            EbsOptimized = TRUE|FALSE,
            IamInstanceProfile = list(
              Arn = "string",
              Name = "string"
            ),
            ImageId = "string",
            InstanceType = "a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6g.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gd.metal"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"c6i.large"|"c6i.xlarge"|"c6i.2xlarge"|"c6i.4xlarge"|"c6i.8xlarge"|"c6i.12xlarge"|"c6i.16xlarge"|"c6i.24xlarge"|"c6i.32xlarge"|"c6i.metal"|"cc1.4xlarge"|"cc2.8xlarge"|"cg1.4xlarge"|"cr1.8xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"dl1.24xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.xlarge"|"g4ad.2xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.12xlarge"|"g5.16xlarge"|"g5.24xlarge"|"g5.48xlarge"|"g5g.xlarge"|"g5g.2xlarge"|"g5g.4xlarge"|"g5g.8xlarge"|"g5g.16xlarge"|"g5g.metal"|"hi1.4xlarge"|"hpc6a.48xlarge"|"hs1.8xlarge"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"im4gn.large"|"im4gn.xlarge"|"im4gn.2xlarge"|"im4gn.4xlarge"|"im4gn.8xlarge"|"im4gn.16xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"is4gen.medium"|"is4gen.large"|"is4gen.xlarge"|"is4gen.2xlarge"|"is4gen.4xlarge"|"is4gen.8xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5dn.metal"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"m5n.metal"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"m6a.large"|"m6a.xlarge"|"m6a.2xlarge"|"m6a.4xlarge"|"m6a.8xlarge"|"m6a.12xlarge"|"m6a.16xlarge"|"m6a.24xlarge"|"m6a.32xlarge"|"m6a.48xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"m6i.large"|"m6i.xlarge"|"m6i.2xlarge"|"m6i.4xlarge"|"m6i.8xlarge"|"m6i.12xlarge"|"m6i.16xlarge"|"m6i.24xlarge"|"m6i.32xlarge"|"m6i.metal"|"mac1.metal"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5dn.metal"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"r5n.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6g.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"r6gd.metal"|"r6i.large"|"r6i.xlarge"|"r6i.2xlarge"|"r6i.4xlarge"|"r6i.8xlarge"|"r6i.12xlarge"|"r6i.16xlarge"|"r6i.24xlarge"|"r6i.32xlarge"|"r6i.metal"|"t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"u-6tb1.56xlarge"|"u-6tb1.112xlarge"|"u-9tb1.112xlarge"|"u-12tb1.112xlarge"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"vt1.3xlarge"|"vt1.6xlarge"|"vt1.24xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"x2iezn.2xlarge"|"x2iezn.4xlarge"|"x2iezn.6xlarge"|"x2iezn.8xlarge"|"x2iezn.12xlarge"|"x2iezn.metal"|"x2gd.medium"|"x2gd.large"|"x2gd.xlarge"|"x2gd.2xlarge"|"x2gd.4xlarge"|"x2gd.8xlarge"|"x2gd.12xlarge"|"x2gd.16xlarge"|"x2gd.metal"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"x2idn.16xlarge"|"x2idn.24xlarge"|"x2idn.32xlarge"|"x2iedn.xlarge"|"x2iedn.2xlarge"|"x2iedn.4xlarge"|"x2iedn.8xlarge"|"x2iedn.16xlarge"|"x2iedn.24xlarge"|"x2iedn.32xlarge"|"c6a.large"|"c6a.xlarge"|"c6a.2xlarge"|"c6a.4xlarge"|"c6a.8xlarge"|"c6a.12xlarge"|"c6a.16xlarge"|"c6a.24xlarge"|"c6a.32xlarge"|"c6a.48xlarge"|"c6a.metal"|"m6a.metal"|"i4i.large"|"i4i.xlarge"|"i4i.2xlarge"|"i4i.4xlarge"|"i4i.8xlarge"|"i4i.16xlarge"|"i4i.32xlarge"|"i4i.metal"|"x2idn.metal"|"x2iedn.metal"|"c7g.medium"|"c7g.large"|"c7g.xlarge"|"c7g.2xlarge"|"c7g.4xlarge"|"c7g.8xlarge"|"c7g.12xlarge"|"c7g.16xlarge"|"mac2.metal"|"c6id.large"|"c6id.xlarge"|"c6id.2xlarge"|"c6id.4xlarge"|"c6id.8xlarge"|"c6id.12xlarge"|"c6id.16xlarge"|"c6id.24xlarge"|"c6id.32xlarge"|"c6id.metal"|"m6id.large"|"m6id.xlarge"|"m6id.2xlarge"|"m6id.4xlarge"|"m6id.8xlarge"|"m6id.12xlarge"|"m6id.16xlarge"|"m6id.24xlarge"|"m6id.32xlarge"|"m6id.metal"|"r6id.large"|"r6id.xlarge"|"r6id.2xlarge"|"r6id.4xlarge"|"r6id.8xlarge"|"r6id.12xlarge"|"r6id.16xlarge"|"r6id.24xlarge"|"r6id.32xlarge"|"r6id.metal"|"r6a.large"|"r6a.xlarge"|"r6a.2xlarge"|"r6a.4xlarge"|"r6a.8xlarge"|"r6a.12xlarge"|"r6a.16xlarge"|"r6a.24xlarge"|"r6a.32xlarge"|"r6a.48xlarge"|"r6a.metal"|"p4de.24xlarge"|"u-3tb1.56xlarge"|"u-18tb1.112xlarge"|"u-24tb1.112xlarge"|"trn1.2xlarge"|"trn1.32xlarge"|"hpc6id.32xlarge"|"c6in.large"|"c6in.xlarge"|"c6in.2xlarge"|"c6in.4xlarge"|"c6in.8xlarge"|"c6in.12xlarge"|"c6in.16xlarge"|"c6in.24xlarge"|"c6in.32xlarge"|"m6in.large"|"m6in.xlarge"|"m6in.2xlarge"|"m6in.4xlarge"|"m6in.8xlarge"|"m6in.12xlarge"|"m6in.16xlarge"|"m6in.24xlarge"|"m6in.32xlarge"|"m6idn.large"|"m6idn.xlarge"|"m6idn.2xlarge"|"m6idn.4xlarge"|"m6idn.8xlarge"|"m6idn.12xlarge"|"m6idn.16xlarge"|"m6idn.24xlarge"|"m6idn.32xlarge"|"r6in.large"|"r6in.xlarge"|"r6in.2xlarge"|"r6in.4xlarge"|"r6in.8xlarge"|"r6in.12xlarge"|"r6in.16xlarge"|"r6in.24xlarge"|"r6in.32xlarge"|"r6idn.large"|"r6idn.xlarge"|"r6idn.2xlarge"|"r6idn.4xlarge"|"r6idn.8xlarge"|"r6idn.12xlarge"|"r6idn.16xlarge"|"r6idn.24xlarge"|"r6idn.32xlarge"|"c7g.metal"|"m7g.medium"|"m7g.large"|"m7g.xlarge"|"m7g.2xlarge"|"m7g.4xlarge"|"m7g.8xlarge"|"m7g.12xlarge"|"m7g.16xlarge"|"m7g.metal"|"r7g.medium"|"r7g.large"|"r7g.xlarge"|"r7g.2xlarge"|"r7g.4xlarge"|"r7g.8xlarge"|"r7g.12xlarge"|"r7g.16xlarge"|"r7g.metal"|"c6in.metal"|"m6in.metal"|"m6idn.metal"|"r6in.metal"|"r6idn.metal"|"inf2.xlarge"|"inf2.8xlarge"|"inf2.24xlarge"|"inf2.48xlarge"|"trn1n.32xlarge"|"i4g.large"|"i4g.xlarge"|"i4g.2xlarge"|"i4g.4xlarge"|"i4g.8xlarge"|"i4g.16xlarge",
            KernelId = "string",
            KeyName = "string",
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
                PrivateIpAddresses = list(
                  list(
                    Primary = TRUE|FALSE,
                    PrivateIpAddress = "string"
                  )
                ),
                SecondaryPrivateIpAddressCount = 123,
                SubnetId = "string",
                AssociateCarrierIpAddress = TRUE|FALSE,
                InterfaceType = "string",
                NetworkCardIndex = 123,
                Ipv4Prefixes = list(
                  list(
                    Ipv4Prefix = "string"
                  )
                ),
                Ipv4PrefixCount = 123,
                Ipv6Prefixes = list(
                  list(
                    Ipv6Prefix = "string"
                  )
                ),
                Ipv6PrefixCount = 123
              )
            ),
            Placement = list(
              AvailabilityZone = "string",
              GroupName = "string",
              Tenancy = "default"|"dedicated"|"host"
            ),
            RamdiskId = "string",
            SubnetId = "string",
            Monitoring = list(
              Enabled = TRUE|FALSE
            )
          ),
          LaunchedAvailabilityZone = "string",
          ProductDescription = "Linux/UNIX"|"Linux/UNIX (Amazon VPC)"|"Windows"|"Windows (Amazon VPC)",
          SpotInstanceRequestId = "string",
          SpotPrice = "string",
          State = "open"|"active"|"closed"|"cancelled"|"failed",
          Status = list(
            Code = "string",
            Message = "string",
            UpdateTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          Type = "one-time"|"persistent",
          ValidFrom = as.POSIXct(
            "2015-01-01"
          ),
          ValidUntil = as.POSIXct(
            "2015-01-01"
          ),
          InstanceInterruptionBehavior = "hibernate"|"stop"|"terminate"
        )
      )
    )

### Request syntax

    svc$request_spot_instances(
      AvailabilityZoneGroup = "string",
      BlockDurationMinutes = 123,
      ClientToken = "string",
      DryRun = TRUE|FALSE,
      InstanceCount = 123,
      LaunchGroup = "string",
      LaunchSpecification = list(
        SecurityGroupIds = list(
          "string"
        ),
        SecurityGroups = list(
          "string"
        ),
        AddressingType = "string",
        BlockDeviceMappings = list(
          list(
            DeviceName = "string",
            VirtualName = "string",
            Ebs = list(
              DeleteOnTermination = TRUE|FALSE,
              Iops = 123,
              SnapshotId = "string",
              VolumeSize = 123,
              VolumeType = "standard"|"io1"|"io2"|"gp2"|"sc1"|"st1"|"gp3",
              KmsKeyId = "string",
              Throughput = 123,
              OutpostArn = "string",
              Encrypted = TRUE|FALSE
            ),
            NoDevice = "string"
          )
        ),
        EbsOptimized = TRUE|FALSE,
        IamInstanceProfile = list(
          Arn = "string",
          Name = "string"
        ),
        ImageId = "string",
        InstanceType = "a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6g.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gd.metal"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"c6i.large"|"c6i.xlarge"|"c6i.2xlarge"|"c6i.4xlarge"|"c6i.8xlarge"|"c6i.12xlarge"|"c6i.16xlarge"|"c6i.24xlarge"|"c6i.32xlarge"|"c6i.metal"|"cc1.4xlarge"|"cc2.8xlarge"|"cg1.4xlarge"|"cr1.8xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"dl1.24xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.xlarge"|"g4ad.2xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.12xlarge"|"g5.16xlarge"|"g5.24xlarge"|"g5.48xlarge"|"g5g.xlarge"|"g5g.2xlarge"|"g5g.4xlarge"|"g5g.8xlarge"|"g5g.16xlarge"|"g5g.metal"|"hi1.4xlarge"|"hpc6a.48xlarge"|"hs1.8xlarge"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"im4gn.large"|"im4gn.xlarge"|"im4gn.2xlarge"|"im4gn.4xlarge"|"im4gn.8xlarge"|"im4gn.16xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"is4gen.medium"|"is4gen.large"|"is4gen.xlarge"|"is4gen.2xlarge"|"is4gen.4xlarge"|"is4gen.8xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5dn.metal"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"m5n.metal"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"m6a.large"|"m6a.xlarge"|"m6a.2xlarge"|"m6a.4xlarge"|"m6a.8xlarge"|"m6a.12xlarge"|"m6a.16xlarge"|"m6a.24xlarge"|"m6a.32xlarge"|"m6a.48xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"m6i.large"|"m6i.xlarge"|"m6i.2xlarge"|"m6i.4xlarge"|"m6i.8xlarge"|"m6i.12xlarge"|"m6i.16xlarge"|"m6i.24xlarge"|"m6i.32xlarge"|"m6i.metal"|"mac1.metal"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5dn.metal"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"r5n.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6g.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"r6gd.metal"|"r6i.large"|"r6i.xlarge"|"r6i.2xlarge"|"r6i.4xlarge"|"r6i.8xlarge"|"r6i.12xlarge"|"r6i.16xlarge"|"r6i.24xlarge"|"r6i.32xlarge"|"r6i.metal"|"t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"u-6tb1.56xlarge"|"u-6tb1.112xlarge"|"u-9tb1.112xlarge"|"u-12tb1.112xlarge"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"vt1.3xlarge"|"vt1.6xlarge"|"vt1.24xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"x2iezn.2xlarge"|"x2iezn.4xlarge"|"x2iezn.6xlarge"|"x2iezn.8xlarge"|"x2iezn.12xlarge"|"x2iezn.metal"|"x2gd.medium"|"x2gd.large"|"x2gd.xlarge"|"x2gd.2xlarge"|"x2gd.4xlarge"|"x2gd.8xlarge"|"x2gd.12xlarge"|"x2gd.16xlarge"|"x2gd.metal"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"x2idn.16xlarge"|"x2idn.24xlarge"|"x2idn.32xlarge"|"x2iedn.xlarge"|"x2iedn.2xlarge"|"x2iedn.4xlarge"|"x2iedn.8xlarge"|"x2iedn.16xlarge"|"x2iedn.24xlarge"|"x2iedn.32xlarge"|"c6a.large"|"c6a.xlarge"|"c6a.2xlarge"|"c6a.4xlarge"|"c6a.8xlarge"|"c6a.12xlarge"|"c6a.16xlarge"|"c6a.24xlarge"|"c6a.32xlarge"|"c6a.48xlarge"|"c6a.metal"|"m6a.metal"|"i4i.large"|"i4i.xlarge"|"i4i.2xlarge"|"i4i.4xlarge"|"i4i.8xlarge"|"i4i.16xlarge"|"i4i.32xlarge"|"i4i.metal"|"x2idn.metal"|"x2iedn.metal"|"c7g.medium"|"c7g.large"|"c7g.xlarge"|"c7g.2xlarge"|"c7g.4xlarge"|"c7g.8xlarge"|"c7g.12xlarge"|"c7g.16xlarge"|"mac2.metal"|"c6id.large"|"c6id.xlarge"|"c6id.2xlarge"|"c6id.4xlarge"|"c6id.8xlarge"|"c6id.12xlarge"|"c6id.16xlarge"|"c6id.24xlarge"|"c6id.32xlarge"|"c6id.metal"|"m6id.large"|"m6id.xlarge"|"m6id.2xlarge"|"m6id.4xlarge"|"m6id.8xlarge"|"m6id.12xlarge"|"m6id.16xlarge"|"m6id.24xlarge"|"m6id.32xlarge"|"m6id.metal"|"r6id.large"|"r6id.xlarge"|"r6id.2xlarge"|"r6id.4xlarge"|"r6id.8xlarge"|"r6id.12xlarge"|"r6id.16xlarge"|"r6id.24xlarge"|"r6id.32xlarge"|"r6id.metal"|"r6a.large"|"r6a.xlarge"|"r6a.2xlarge"|"r6a.4xlarge"|"r6a.8xlarge"|"r6a.12xlarge"|"r6a.16xlarge"|"r6a.24xlarge"|"r6a.32xlarge"|"r6a.48xlarge"|"r6a.metal"|"p4de.24xlarge"|"u-3tb1.56xlarge"|"u-18tb1.112xlarge"|"u-24tb1.112xlarge"|"trn1.2xlarge"|"trn1.32xlarge"|"hpc6id.32xlarge"|"c6in.large"|"c6in.xlarge"|"c6in.2xlarge"|"c6in.4xlarge"|"c6in.8xlarge"|"c6in.12xlarge"|"c6in.16xlarge"|"c6in.24xlarge"|"c6in.32xlarge"|"m6in.large"|"m6in.xlarge"|"m6in.2xlarge"|"m6in.4xlarge"|"m6in.8xlarge"|"m6in.12xlarge"|"m6in.16xlarge"|"m6in.24xlarge"|"m6in.32xlarge"|"m6idn.large"|"m6idn.xlarge"|"m6idn.2xlarge"|"m6idn.4xlarge"|"m6idn.8xlarge"|"m6idn.12xlarge"|"m6idn.16xlarge"|"m6idn.24xlarge"|"m6idn.32xlarge"|"r6in.large"|"r6in.xlarge"|"r6in.2xlarge"|"r6in.4xlarge"|"r6in.8xlarge"|"r6in.12xlarge"|"r6in.16xlarge"|"r6in.24xlarge"|"r6in.32xlarge"|"r6idn.large"|"r6idn.xlarge"|"r6idn.2xlarge"|"r6idn.4xlarge"|"r6idn.8xlarge"|"r6idn.12xlarge"|"r6idn.16xlarge"|"r6idn.24xlarge"|"r6idn.32xlarge"|"c7g.metal"|"m7g.medium"|"m7g.large"|"m7g.xlarge"|"m7g.2xlarge"|"m7g.4xlarge"|"m7g.8xlarge"|"m7g.12xlarge"|"m7g.16xlarge"|"m7g.metal"|"r7g.medium"|"r7g.large"|"r7g.xlarge"|"r7g.2xlarge"|"r7g.4xlarge"|"r7g.8xlarge"|"r7g.12xlarge"|"r7g.16xlarge"|"r7g.metal"|"c6in.metal"|"m6in.metal"|"m6idn.metal"|"r6in.metal"|"r6idn.metal"|"inf2.xlarge"|"inf2.8xlarge"|"inf2.24xlarge"|"inf2.48xlarge"|"trn1n.32xlarge"|"i4g.large"|"i4g.xlarge"|"i4g.2xlarge"|"i4g.4xlarge"|"i4g.8xlarge"|"i4g.16xlarge",
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
            PrivateIpAddresses = list(
              list(
                Primary = TRUE|FALSE,
                PrivateIpAddress = "string"
              )
            ),
            SecondaryPrivateIpAddressCount = 123,
            SubnetId = "string",
            AssociateCarrierIpAddress = TRUE|FALSE,
            InterfaceType = "string",
            NetworkCardIndex = 123,
            Ipv4Prefixes = list(
              list(
                Ipv4Prefix = "string"
              )
            ),
            Ipv4PrefixCount = 123,
            Ipv6Prefixes = list(
              list(
                Ipv6Prefix = "string"
              )
            ),
            Ipv6PrefixCount = 123
          )
        ),
        Placement = list(
          AvailabilityZone = "string",
          GroupName = "string",
          Tenancy = "default"|"dedicated"|"host"
        ),
        RamdiskId = "string",
        SubnetId = "string",
        UserData = "string"
      ),
      SpotPrice = "string",
      Type = "one-time"|"persistent",
      ValidFrom = as.POSIXct(
        "2015-01-01"
      ),
      ValidUntil = as.POSIXct(
        "2015-01-01"
      ),
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      InstanceInterruptionBehavior = "hibernate"|"stop"|"terminate"
    )

### Examples

    ## Not run: 
    # This example creates a one-time Spot Instance request for five instances
    # in the specified Availability Zone. If your account supports EC2-VPC
    # only, Amazon EC2 launches the instances in the default subnet of the
    # specified Availability Zone. If your account supports EC2-Classic,
    # Amazon EC2 launches the instances in EC2-Classic in the specified
    # Availability Zone.
    svc$request_spot_instances(
      InstanceCount = 5L,
      LaunchSpecification = list(
        IamInstanceProfile = list(
          Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
        ),
        ImageId = "ami-1a2b3c4d",
        InstanceType = "m3.medium",
        KeyName = "my-key-pair",
        Placement = list(
          AvailabilityZone = "us-west-2a"
        ),
        SecurityGroupIds = list(
          "sg-1a2b3c4d"
        )
      ),
      SpotPrice = "0.03",
      Type = "one-time"
    )

    # This example command creates a one-time Spot Instance request for five
    # instances in the specified subnet. Amazon EC2 launches the instances in
    # the specified subnet. If the VPC is a nondefault VPC, the instances do
    # not receive a public IP address by default.
    svc$request_spot_instances(
      InstanceCount = 5L,
      LaunchSpecification = list(
        IamInstanceProfile = list(
          Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
        ),
        ImageId = "ami-1a2b3c4d",
        InstanceType = "m3.medium",
        SecurityGroupIds = list(
          "sg-1a2b3c4d"
        ),
        SubnetId = "subnet-1a2b3c4d"
      ),
      SpotPrice = "0.050",
      Type = "one-time"
    )

    ## End(Not run)
