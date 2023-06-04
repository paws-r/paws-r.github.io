<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified instances or all instances

### Description

Describes the specified instances or all instances.

If you specify instance IDs, the output includes information for only
the specified instances. If you specify filters, the output includes
information for only those instances that meet the filter criteria. If
you do not specify instance IDs or filters, the output includes
information for all instances, which can affect performance. We
recommend that you use pagination to ensure that the operation returns
quickly and successfully.

If you specify an instance ID that is not valid, an error is returned.
If you specify an instance that you do not own, it is not included in
the output.

Recently terminated instances might appear in the returned results. This
interval is usually less than one hour.

If you describe instances in the rare case where an Availability Zone is
experiencing a service disruption and you specify instance IDs that are
in the affected zone, or do not specify any instance IDs at all, the
call fails. If you describe instances and specify only instance IDs that
are in an unaffected zone, the call works normally.

### Usage

    ec2_describe_instances(Filters, InstanceIds, DryRun, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_instances_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>affinity</code> - The affinity setting for an instance
running on a Dedicated Host (<code>default</code> |
<code>host</code>).</p></li>
<li><p><code>architecture</code> - The instance architecture
(<code>i386</code> | <code>x86_64</code> | <code>arm64</code>).</p></li>
<li><p><code>availability-zone</code> - The Availability Zone of the
instance.</p></li>
<li><p><code>block-device-mapping.attach-time</code> - The attach time
for an EBS volume mapped to the instance, for example, <code
style="white-space: pre;">⁠2010-09-15T17:15:20.000Z⁠</code>.</p></li>
<li><p><code>block-device-mapping.delete-on-termination</code> - A
Boolean that indicates whether the EBS volume is deleted on instance
termination.</p></li>
<li><p><code>block-device-mapping.device-name</code> - The device name
specified in the block device mapping (for example, <code
style="white-space: pre;">⁠/dev/sdh⁠</code> or
<code>xvdh</code>).</p></li>
<li><p><code>block-device-mapping.status</code> - The status for the EBS
volume (<code>attaching</code> | <code>attached</code> |
<code>detaching</code> | <code>detached</code>).</p></li>
<li><p><code>block-device-mapping.volume-id</code> - The volume ID of
the EBS volume.</p></li>
<li><p><code>capacity-reservation-id</code> - The ID of the Capacity
Reservation into which the instance was launched.</p></li>
<li><p><code>client-token</code> - The idempotency token you provided
when you launched the instance.</p></li>
<li><p><code>dns-name</code> - The public DNS name of the
instance.</p></li>
<li><p><code>hibernation-options.configured</code> - A Boolean that
indicates whether the instance is enabled for hibernation. A value of
<code>true</code> means that the instance is enabled for
hibernation.</p></li>
<li><p><code>host-id</code> - The ID of the Dedicated Host on which the
instance is running, if applicable.</p></li>
<li><p><code>hypervisor</code> - The hypervisor type of the instance
(<code>ovm</code> | <code>xen</code>). The value <code>xen</code> is
used for both Xen and Nitro hypervisors.</p></li>
<li><p><code>iam-instance-profile.arn</code> - The instance profile
associated with the instance. Specified as an ARN.</p></li>
<li><p><code>image-id</code> - The ID of the image used to launch the
instance.</p></li>
<li><p><code>instance-id</code> - The ID of the instance.</p></li>
<li><p><code>instance-lifecycle</code> - Indicates whether this is a
Spot Instance or a Scheduled Instance (<code>spot</code> |
<code>scheduled</code>).</p></li>
<li><p><code>instance-state-code</code> - The state of the instance, as
a 16-bit unsigned integer. The high byte is used for internal purposes
and should be ignored. The low byte is set based on the state
represented. The valid values are: 0 (pending), 16 (running), 32
(shutting-down), 48 (terminated), 64 (stopping), and 80
(stopped).</p></li>
<li><p><code>instance-state-name</code> - The state of the instance
(<code>pending</code> | <code>running</code> |
<code>shutting-down</code> | <code>terminated</code> |
<code>stopping</code> | <code>stopped</code>).</p></li>
<li><p><code>instance-type</code> - The type of instance (for example,
<code>t2.micro</code>).</p></li>
<li><p><code>instance.group-id</code> - The ID of the security group for
the instance.</p></li>
<li><p><code>instance.group-name</code> - The name of the security group
for the instance.</p></li>
<li><p><code>ip-address</code> - The public IPv4 address of the
instance.</p></li>
<li><p><code>kernel-id</code> - The kernel ID.</p></li>
<li><p><code>key-name</code> - The name of the key pair used when the
instance was launched.</p></li>
<li><p><code>launch-index</code> - When launching multiple instances,
this is the index for the instance in the launch group (for example, 0,
1, 2, and so on).</p></li>
<li><p><code>launch-time</code> - The time when the instance was
launched, in the ISO 8601 format in the UTC time zone
(YYYY-MM-DDThh:mm:ss.sssZ), for example, <code
style="white-space: pre;">⁠2021-09-29T11:04:43.305Z⁠</code>. You can use a
wildcard (<code>*</code>), for example, <code
style="white-space: pre;">⁠2021-09-29T*⁠</code>, which matches an entire
day.</p></li>
<li><p><code>metadata-options.http-tokens</code> - The metadata request
authorization state (<code>optional</code> |
<code>required</code>)</p></li>
<li><p><code>metadata-options.http-put-response-hop-limit</code> - The
HTTP metadata request put response hop limit (integer, possible values
<code>1</code> to <code>64</code>)</p></li>
<li><p><code>metadata-options.http-endpoint</code> - The status of
access to the HTTP metadata endpoint on your instance
(<code>enabled</code> | <code>disabled</code>)</p></li>
<li><p><code>metadata-options.instance-metadata-tags</code> - The status
of access to instance tags from the instance metadata
(<code>enabled</code> | <code>disabled</code>)</p></li>
<li><p><code>monitoring-state</code> - Indicates whether detailed
monitoring is enabled (<code>disabled</code> |
<code>enabled</code>).</p></li>
<li><p><code>network-interface.addresses.private-ip-address</code> - The
private IPv4 address associated with the network interface.</p></li>
<li><p><code>network-interface.addresses.primary</code> - Specifies
whether the IPv4 address of the network interface is the primary private
IPv4 address.</p></li>
<li><p><code>network-interface.addresses.association.public-ip</code> -
The ID of the association of an Elastic IP address (IPv4) with a network
interface.</p></li>
<li><p><code>network-interface.addresses.association.ip-owner-id</code>
- The owner ID of the private IPv4 address associated with the network
interface.</p></li>
<li><p><code>network-interface.association.public-ip</code> - The
address of the Elastic IP address (IPv4) bound to the network
interface.</p></li>
<li><p><code>network-interface.association.ip-owner-id</code> - The
owner of the Elastic IP address (IPv4) associated with the network
interface.</p></li>
<li><p><code>network-interface.association.allocation-id</code> - The
allocation ID returned when you allocated the Elastic IP address (IPv4)
for your network interface.</p></li>
<li><p><code>network-interface.association.association-id</code> - The
association ID returned when the network interface was associated with
an IPv4 address.</p></li>
<li><p><code>network-interface.attachment.attachment-id</code> - The ID
of the interface attachment.</p></li>
<li><p><code>network-interface.attachment.instance-id</code> - The ID of
the instance to which the network interface is attached.</p></li>
<li><p><code>network-interface.attachment.instance-owner-id</code> - The
owner ID of the instance to which the network interface is
attached.</p></li>
<li><p><code>network-interface.attachment.device-index</code> - The
device index to which the network interface is attached.</p></li>
<li><p><code>network-interface.attachment.status</code> - The status of
the attachment (<code>attaching</code> | <code>attached</code> |
<code>detaching</code> | <code>detached</code>).</p></li>
<li><p><code>network-interface.attachment.attach-time</code> - The time
that the network interface was attached to an instance.</p></li>
<li><p><code>network-interface.attachment.delete-on-termination</code> -
Specifies whether the attachment is deleted when an instance is
terminated.</p></li>
<li><p><code>network-interface.availability-zone</code> - The
Availability Zone for the network interface.</p></li>
<li><p><code>network-interface.description</code> - The description of
the network interface.</p></li>
<li><p><code>network-interface.group-id</code> - The ID of a security
group associated with the network interface.</p></li>
<li><p><code>network-interface.group-name</code> - The name of a
security group associated with the network interface.</p></li>
<li><p><code>network-interface.ipv6-addresses.ipv6-address</code> - The
IPv6 address associated with the network interface.</p></li>
<li><p><code>network-interface.mac-address</code> - The MAC address of
the network interface.</p></li>
<li><p><code>network-interface.network-interface-id</code> - The ID of
the network interface.</p></li>
<li><p><code>network-interface.owner-id</code> - The ID of the owner of
the network interface.</p></li>
<li><p><code>network-interface.private-dns-name</code> - The private DNS
name of the network interface.</p></li>
<li><p><code>network-interface.requester-id</code> - The requester ID
for the network interface.</p></li>
<li><p><code>network-interface.requester-managed</code> - Indicates
whether the network interface is being managed by Amazon Web
Services.</p></li>
<li><p><code>network-interface.status</code> - The status of the network
interface (<code>available</code>) | <code
style="white-space: pre;">⁠in-use⁠</code>).</p></li>
<li><p><code>network-interface.source-dest-check</code> - Whether the
network interface performs source/destination checking. A value of
<code>true</code> means that checking is enabled, and <code>false</code>
means that checking is disabled. The value must be <code>false</code>
for the network interface to perform network address translation (NAT)
in your VPC.</p></li>
<li><p><code>network-interface.subnet-id</code> - The ID of the subnet
for the network interface.</p></li>
<li><p><code>network-interface.vpc-id</code> - The ID of the VPC for the
network interface.</p></li>
<li><p><code>outpost-arn</code> - The Amazon Resource Name (ARN) of the
Outpost.</p></li>
<li><p><code>owner-id</code> - The Amazon Web Services account ID of the
instance owner.</p></li>
<li><p><code>placement-group-name</code> - The name of the placement
group for the instance.</p></li>
<li><p><code>placement-partition-number</code> - The partition in which
the instance is located.</p></li>
<li><p><code>platform</code> - The platform. To list only Windows
instances, use <code>windows</code>.</p></li>
<li><p><code>private-dns-name</code> - The private IPv4 DNS name of the
instance.</p></li>
<li><p><code>private-ip-address</code> - The private IPv4 address of the
instance.</p></li>
<li><p><code>product-code</code> - The product code associated with the
AMI used to launch the instance.</p></li>
<li><p><code>product-code.type</code> - The type of product code
(<code>devpay</code> | <code>marketplace</code>).</p></li>
<li><p><code>ramdisk-id</code> - The RAM disk ID.</p></li>
<li><p><code>reason</code> - The reason for the current state of the
instance (for example, shows "User Initiated [date]" when you stop or
terminate the instance). Similar to the state-reason-code
filter.</p></li>
<li><p><code>requester-id</code> - The ID of the entity that launched
the instance on your behalf (for example, Amazon Web Services Management
Console, Auto Scaling, and so on).</p></li>
<li><p><code>reservation-id</code> - The ID of the instance's
reservation. A reservation ID is created any time you launch an
instance. A reservation ID has a one-to-one relationship with an
instance launch request, but can be associated with more than one
instance if you launch multiple instances using the same launch request.
For example, if you launch one instance, you get one reservation ID. If
you launch ten instances using the same launch request, you also get one
reservation ID.</p></li>
<li><p><code>root-device-name</code> - The device name of the root
device volume (for example, <code
style="white-space: pre;">⁠/dev/sda1⁠</code>).</p></li>
<li><p><code>root-device-type</code> - The type of the root device
volume (<code>ebs</code> | <code>instance-store</code>).</p></li>
<li><p><code>source-dest-check</code> - Indicates whether the instance
performs source/destination checking. A value of <code>true</code> means
that checking is enabled, and <code>false</code> means that checking is
disabled. The value must be <code>false</code> for the instance to
perform network address translation (NAT) in your VPC.</p></li>
<li><p><code>spot-instance-request-id</code> - The ID of the Spot
Instance request.</p></li>
<li><p><code>state-reason-code</code> - The reason code for the state
change.</p></li>
<li><p><code>state-reason-message</code> - A message that describes the
state change.</p></li>
<li><p><code>subnet-id</code> - The ID of the subnet for the
instance.</p></li>
<li><p><code style="white-space: pre;">⁠tag:&lt;key&gt;⁠</code> - The
key/value combination of a tag assigned to the resource. Use the tag key
in the filter name and the tag value as the filter value. For example,
to find all resources that have a tag with the key <code>Owner</code>
and the value <code>TeamA</code>, specify <code>tag:Owner</code> for the
filter name and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources that have a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>tenancy</code> - The tenancy of an instance
(<code>dedicated</code> | <code>default</code> |
<code>host</code>).</p></li>
<li><p><code>virtualization-type</code> - The virtualization type of the
instance (<code>paravirtual</code> | <code>hvm</code>).</p></li>
<li><p><code>vpc-id</code> - The ID of the VPC that the instance is
running in.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>The instance IDs.</p>
<p>Default: Describes all your instances.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_instances_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. To get
the next page of items, make another request with the token returned in
the output. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination">Pagination</a>.</p>
<p>You cannot specify this parameter and the instance IDs parameter in
the same request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_instances_:_NextToken">NextToken</code></td>
<td><p>The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Reservations = list(
        list(
          Groups = list(
            list(
              GroupName = "string",
              GroupId = "string"
            )
          ),
          Instances = list(
            list(
              AmiLaunchIndex = 123,
              ImageId = "string",
              InstanceId = "string",
              InstanceType = "a1.medium"|"a1.large"|"a1.xlarge"|"a1.2xlarge"|"a1.4xlarge"|"a1.metal"|"c1.medium"|"c1.xlarge"|"c3.large"|"c3.xlarge"|"c3.2xlarge"|"c3.4xlarge"|"c3.8xlarge"|"c4.large"|"c4.xlarge"|"c4.2xlarge"|"c4.4xlarge"|"c4.8xlarge"|"c5.large"|"c5.xlarge"|"c5.2xlarge"|"c5.4xlarge"|"c5.9xlarge"|"c5.12xlarge"|"c5.18xlarge"|"c5.24xlarge"|"c5.metal"|"c5a.large"|"c5a.xlarge"|"c5a.2xlarge"|"c5a.4xlarge"|"c5a.8xlarge"|"c5a.12xlarge"|"c5a.16xlarge"|"c5a.24xlarge"|"c5ad.large"|"c5ad.xlarge"|"c5ad.2xlarge"|"c5ad.4xlarge"|"c5ad.8xlarge"|"c5ad.12xlarge"|"c5ad.16xlarge"|"c5ad.24xlarge"|"c5d.large"|"c5d.xlarge"|"c5d.2xlarge"|"c5d.4xlarge"|"c5d.9xlarge"|"c5d.12xlarge"|"c5d.18xlarge"|"c5d.24xlarge"|"c5d.metal"|"c5n.large"|"c5n.xlarge"|"c5n.2xlarge"|"c5n.4xlarge"|"c5n.9xlarge"|"c5n.18xlarge"|"c5n.metal"|"c6g.medium"|"c6g.large"|"c6g.xlarge"|"c6g.2xlarge"|"c6g.4xlarge"|"c6g.8xlarge"|"c6g.12xlarge"|"c6g.16xlarge"|"c6g.metal"|"c6gd.medium"|"c6gd.large"|"c6gd.xlarge"|"c6gd.2xlarge"|"c6gd.4xlarge"|"c6gd.8xlarge"|"c6gd.12xlarge"|"c6gd.16xlarge"|"c6gd.metal"|"c6gn.medium"|"c6gn.large"|"c6gn.xlarge"|"c6gn.2xlarge"|"c6gn.4xlarge"|"c6gn.8xlarge"|"c6gn.12xlarge"|"c6gn.16xlarge"|"c6i.large"|"c6i.xlarge"|"c6i.2xlarge"|"c6i.4xlarge"|"c6i.8xlarge"|"c6i.12xlarge"|"c6i.16xlarge"|"c6i.24xlarge"|"c6i.32xlarge"|"c6i.metal"|"cc1.4xlarge"|"cc2.8xlarge"|"cg1.4xlarge"|"cr1.8xlarge"|"d2.xlarge"|"d2.2xlarge"|"d2.4xlarge"|"d2.8xlarge"|"d3.xlarge"|"d3.2xlarge"|"d3.4xlarge"|"d3.8xlarge"|"d3en.xlarge"|"d3en.2xlarge"|"d3en.4xlarge"|"d3en.6xlarge"|"d3en.8xlarge"|"d3en.12xlarge"|"dl1.24xlarge"|"f1.2xlarge"|"f1.4xlarge"|"f1.16xlarge"|"g2.2xlarge"|"g2.8xlarge"|"g3.4xlarge"|"g3.8xlarge"|"g3.16xlarge"|"g3s.xlarge"|"g4ad.xlarge"|"g4ad.2xlarge"|"g4ad.4xlarge"|"g4ad.8xlarge"|"g4ad.16xlarge"|"g4dn.xlarge"|"g4dn.2xlarge"|"g4dn.4xlarge"|"g4dn.8xlarge"|"g4dn.12xlarge"|"g4dn.16xlarge"|"g4dn.metal"|"g5.xlarge"|"g5.2xlarge"|"g5.4xlarge"|"g5.8xlarge"|"g5.12xlarge"|"g5.16xlarge"|"g5.24xlarge"|"g5.48xlarge"|"g5g.xlarge"|"g5g.2xlarge"|"g5g.4xlarge"|"g5g.8xlarge"|"g5g.16xlarge"|"g5g.metal"|"hi1.4xlarge"|"hpc6a.48xlarge"|"hs1.8xlarge"|"h1.2xlarge"|"h1.4xlarge"|"h1.8xlarge"|"h1.16xlarge"|"i2.xlarge"|"i2.2xlarge"|"i2.4xlarge"|"i2.8xlarge"|"i3.large"|"i3.xlarge"|"i3.2xlarge"|"i3.4xlarge"|"i3.8xlarge"|"i3.16xlarge"|"i3.metal"|"i3en.large"|"i3en.xlarge"|"i3en.2xlarge"|"i3en.3xlarge"|"i3en.6xlarge"|"i3en.12xlarge"|"i3en.24xlarge"|"i3en.metal"|"im4gn.large"|"im4gn.xlarge"|"im4gn.2xlarge"|"im4gn.4xlarge"|"im4gn.8xlarge"|"im4gn.16xlarge"|"inf1.xlarge"|"inf1.2xlarge"|"inf1.6xlarge"|"inf1.24xlarge"|"is4gen.medium"|"is4gen.large"|"is4gen.xlarge"|"is4gen.2xlarge"|"is4gen.4xlarge"|"is4gen.8xlarge"|"m1.small"|"m1.medium"|"m1.large"|"m1.xlarge"|"m2.xlarge"|"m2.2xlarge"|"m2.4xlarge"|"m3.medium"|"m3.large"|"m3.xlarge"|"m3.2xlarge"|"m4.large"|"m4.xlarge"|"m4.2xlarge"|"m4.4xlarge"|"m4.10xlarge"|"m4.16xlarge"|"m5.large"|"m5.xlarge"|"m5.2xlarge"|"m5.4xlarge"|"m5.8xlarge"|"m5.12xlarge"|"m5.16xlarge"|"m5.24xlarge"|"m5.metal"|"m5a.large"|"m5a.xlarge"|"m5a.2xlarge"|"m5a.4xlarge"|"m5a.8xlarge"|"m5a.12xlarge"|"m5a.16xlarge"|"m5a.24xlarge"|"m5ad.large"|"m5ad.xlarge"|"m5ad.2xlarge"|"m5ad.4xlarge"|"m5ad.8xlarge"|"m5ad.12xlarge"|"m5ad.16xlarge"|"m5ad.24xlarge"|"m5d.large"|"m5d.xlarge"|"m5d.2xlarge"|"m5d.4xlarge"|"m5d.8xlarge"|"m5d.12xlarge"|"m5d.16xlarge"|"m5d.24xlarge"|"m5d.metal"|"m5dn.large"|"m5dn.xlarge"|"m5dn.2xlarge"|"m5dn.4xlarge"|"m5dn.8xlarge"|"m5dn.12xlarge"|"m5dn.16xlarge"|"m5dn.24xlarge"|"m5dn.metal"|"m5n.large"|"m5n.xlarge"|"m5n.2xlarge"|"m5n.4xlarge"|"m5n.8xlarge"|"m5n.12xlarge"|"m5n.16xlarge"|"m5n.24xlarge"|"m5n.metal"|"m5zn.large"|"m5zn.xlarge"|"m5zn.2xlarge"|"m5zn.3xlarge"|"m5zn.6xlarge"|"m5zn.12xlarge"|"m5zn.metal"|"m6a.large"|"m6a.xlarge"|"m6a.2xlarge"|"m6a.4xlarge"|"m6a.8xlarge"|"m6a.12xlarge"|"m6a.16xlarge"|"m6a.24xlarge"|"m6a.32xlarge"|"m6a.48xlarge"|"m6g.metal"|"m6g.medium"|"m6g.large"|"m6g.xlarge"|"m6g.2xlarge"|"m6g.4xlarge"|"m6g.8xlarge"|"m6g.12xlarge"|"m6g.16xlarge"|"m6gd.metal"|"m6gd.medium"|"m6gd.large"|"m6gd.xlarge"|"m6gd.2xlarge"|"m6gd.4xlarge"|"m6gd.8xlarge"|"m6gd.12xlarge"|"m6gd.16xlarge"|"m6i.large"|"m6i.xlarge"|"m6i.2xlarge"|"m6i.4xlarge"|"m6i.8xlarge"|"m6i.12xlarge"|"m6i.16xlarge"|"m6i.24xlarge"|"m6i.32xlarge"|"m6i.metal"|"mac1.metal"|"p2.xlarge"|"p2.8xlarge"|"p2.16xlarge"|"p3.2xlarge"|"p3.8xlarge"|"p3.16xlarge"|"p3dn.24xlarge"|"p4d.24xlarge"|"r3.large"|"r3.xlarge"|"r3.2xlarge"|"r3.4xlarge"|"r3.8xlarge"|"r4.large"|"r4.xlarge"|"r4.2xlarge"|"r4.4xlarge"|"r4.8xlarge"|"r4.16xlarge"|"r5.large"|"r5.xlarge"|"r5.2xlarge"|"r5.4xlarge"|"r5.8xlarge"|"r5.12xlarge"|"r5.16xlarge"|"r5.24xlarge"|"r5.metal"|"r5a.large"|"r5a.xlarge"|"r5a.2xlarge"|"r5a.4xlarge"|"r5a.8xlarge"|"r5a.12xlarge"|"r5a.16xlarge"|"r5a.24xlarge"|"r5ad.large"|"r5ad.xlarge"|"r5ad.2xlarge"|"r5ad.4xlarge"|"r5ad.8xlarge"|"r5ad.12xlarge"|"r5ad.16xlarge"|"r5ad.24xlarge"|"r5b.large"|"r5b.xlarge"|"r5b.2xlarge"|"r5b.4xlarge"|"r5b.8xlarge"|"r5b.12xlarge"|"r5b.16xlarge"|"r5b.24xlarge"|"r5b.metal"|"r5d.large"|"r5d.xlarge"|"r5d.2xlarge"|"r5d.4xlarge"|"r5d.8xlarge"|"r5d.12xlarge"|"r5d.16xlarge"|"r5d.24xlarge"|"r5d.metal"|"r5dn.large"|"r5dn.xlarge"|"r5dn.2xlarge"|"r5dn.4xlarge"|"r5dn.8xlarge"|"r5dn.12xlarge"|"r5dn.16xlarge"|"r5dn.24xlarge"|"r5dn.metal"|"r5n.large"|"r5n.xlarge"|"r5n.2xlarge"|"r5n.4xlarge"|"r5n.8xlarge"|"r5n.12xlarge"|"r5n.16xlarge"|"r5n.24xlarge"|"r5n.metal"|"r6g.medium"|"r6g.large"|"r6g.xlarge"|"r6g.2xlarge"|"r6g.4xlarge"|"r6g.8xlarge"|"r6g.12xlarge"|"r6g.16xlarge"|"r6g.metal"|"r6gd.medium"|"r6gd.large"|"r6gd.xlarge"|"r6gd.2xlarge"|"r6gd.4xlarge"|"r6gd.8xlarge"|"r6gd.12xlarge"|"r6gd.16xlarge"|"r6gd.metal"|"r6i.large"|"r6i.xlarge"|"r6i.2xlarge"|"r6i.4xlarge"|"r6i.8xlarge"|"r6i.12xlarge"|"r6i.16xlarge"|"r6i.24xlarge"|"r6i.32xlarge"|"r6i.metal"|"t1.micro"|"t2.nano"|"t2.micro"|"t2.small"|"t2.medium"|"t2.large"|"t2.xlarge"|"t2.2xlarge"|"t3.nano"|"t3.micro"|"t3.small"|"t3.medium"|"t3.large"|"t3.xlarge"|"t3.2xlarge"|"t3a.nano"|"t3a.micro"|"t3a.small"|"t3a.medium"|"t3a.large"|"t3a.xlarge"|"t3a.2xlarge"|"t4g.nano"|"t4g.micro"|"t4g.small"|"t4g.medium"|"t4g.large"|"t4g.xlarge"|"t4g.2xlarge"|"u-6tb1.56xlarge"|"u-6tb1.112xlarge"|"u-9tb1.112xlarge"|"u-12tb1.112xlarge"|"u-6tb1.metal"|"u-9tb1.metal"|"u-12tb1.metal"|"u-18tb1.metal"|"u-24tb1.metal"|"vt1.3xlarge"|"vt1.6xlarge"|"vt1.24xlarge"|"x1.16xlarge"|"x1.32xlarge"|"x1e.xlarge"|"x1e.2xlarge"|"x1e.4xlarge"|"x1e.8xlarge"|"x1e.16xlarge"|"x1e.32xlarge"|"x2iezn.2xlarge"|"x2iezn.4xlarge"|"x2iezn.6xlarge"|"x2iezn.8xlarge"|"x2iezn.12xlarge"|"x2iezn.metal"|"x2gd.medium"|"x2gd.large"|"x2gd.xlarge"|"x2gd.2xlarge"|"x2gd.4xlarge"|"x2gd.8xlarge"|"x2gd.12xlarge"|"x2gd.16xlarge"|"x2gd.metal"|"z1d.large"|"z1d.xlarge"|"z1d.2xlarge"|"z1d.3xlarge"|"z1d.6xlarge"|"z1d.12xlarge"|"z1d.metal"|"x2idn.16xlarge"|"x2idn.24xlarge"|"x2idn.32xlarge"|"x2iedn.xlarge"|"x2iedn.2xlarge"|"x2iedn.4xlarge"|"x2iedn.8xlarge"|"x2iedn.16xlarge"|"x2iedn.24xlarge"|"x2iedn.32xlarge"|"c6a.large"|"c6a.xlarge"|"c6a.2xlarge"|"c6a.4xlarge"|"c6a.8xlarge"|"c6a.12xlarge"|"c6a.16xlarge"|"c6a.24xlarge"|"c6a.32xlarge"|"c6a.48xlarge"|"c6a.metal"|"m6a.metal"|"i4i.large"|"i4i.xlarge"|"i4i.2xlarge"|"i4i.4xlarge"|"i4i.8xlarge"|"i4i.16xlarge"|"i4i.32xlarge"|"i4i.metal"|"x2idn.metal"|"x2iedn.metal"|"c7g.medium"|"c7g.large"|"c7g.xlarge"|"c7g.2xlarge"|"c7g.4xlarge"|"c7g.8xlarge"|"c7g.12xlarge"|"c7g.16xlarge"|"mac2.metal"|"c6id.large"|"c6id.xlarge"|"c6id.2xlarge"|"c6id.4xlarge"|"c6id.8xlarge"|"c6id.12xlarge"|"c6id.16xlarge"|"c6id.24xlarge"|"c6id.32xlarge"|"c6id.metal"|"m6id.large"|"m6id.xlarge"|"m6id.2xlarge"|"m6id.4xlarge"|"m6id.8xlarge"|"m6id.12xlarge"|"m6id.16xlarge"|"m6id.24xlarge"|"m6id.32xlarge"|"m6id.metal"|"r6id.large"|"r6id.xlarge"|"r6id.2xlarge"|"r6id.4xlarge"|"r6id.8xlarge"|"r6id.12xlarge"|"r6id.16xlarge"|"r6id.24xlarge"|"r6id.32xlarge"|"r6id.metal"|"r6a.large"|"r6a.xlarge"|"r6a.2xlarge"|"r6a.4xlarge"|"r6a.8xlarge"|"r6a.12xlarge"|"r6a.16xlarge"|"r6a.24xlarge"|"r6a.32xlarge"|"r6a.48xlarge"|"r6a.metal"|"p4de.24xlarge"|"u-3tb1.56xlarge"|"u-18tb1.112xlarge"|"u-24tb1.112xlarge"|"trn1.2xlarge"|"trn1.32xlarge"|"hpc6id.32xlarge"|"c6in.large"|"c6in.xlarge"|"c6in.2xlarge"|"c6in.4xlarge"|"c6in.8xlarge"|"c6in.12xlarge"|"c6in.16xlarge"|"c6in.24xlarge"|"c6in.32xlarge"|"m6in.large"|"m6in.xlarge"|"m6in.2xlarge"|"m6in.4xlarge"|"m6in.8xlarge"|"m6in.12xlarge"|"m6in.16xlarge"|"m6in.24xlarge"|"m6in.32xlarge"|"m6idn.large"|"m6idn.xlarge"|"m6idn.2xlarge"|"m6idn.4xlarge"|"m6idn.8xlarge"|"m6idn.12xlarge"|"m6idn.16xlarge"|"m6idn.24xlarge"|"m6idn.32xlarge"|"r6in.large"|"r6in.xlarge"|"r6in.2xlarge"|"r6in.4xlarge"|"r6in.8xlarge"|"r6in.12xlarge"|"r6in.16xlarge"|"r6in.24xlarge"|"r6in.32xlarge"|"r6idn.large"|"r6idn.xlarge"|"r6idn.2xlarge"|"r6idn.4xlarge"|"r6idn.8xlarge"|"r6idn.12xlarge"|"r6idn.16xlarge"|"r6idn.24xlarge"|"r6idn.32xlarge"|"c7g.metal"|"m7g.medium"|"m7g.large"|"m7g.xlarge"|"m7g.2xlarge"|"m7g.4xlarge"|"m7g.8xlarge"|"m7g.12xlarge"|"m7g.16xlarge"|"m7g.metal"|"r7g.medium"|"r7g.large"|"r7g.xlarge"|"r7g.2xlarge"|"r7g.4xlarge"|"r7g.8xlarge"|"r7g.12xlarge"|"r7g.16xlarge"|"r7g.metal"|"c6in.metal"|"m6in.metal"|"m6idn.metal"|"r6in.metal"|"r6idn.metal"|"inf2.xlarge"|"inf2.8xlarge"|"inf2.24xlarge"|"inf2.48xlarge"|"trn1n.32xlarge"|"i4g.large"|"i4g.xlarge"|"i4g.2xlarge"|"i4g.4xlarge"|"i4g.8xlarge"|"i4g.16xlarge",
              KernelId = "string",
              KeyName = "string",
              LaunchTime = as.POSIXct(
                "2015-01-01"
              ),
              Monitoring = list(
                State = "disabled"|"disabling"|"enabled"|"pending"
              ),
              Placement = list(
                AvailabilityZone = "string",
                Affinity = "string",
                GroupName = "string",
                PartitionNumber = 123,
                HostId = "string",
                Tenancy = "default"|"dedicated"|"host",
                SpreadDomain = "string",
                HostResourceGroupArn = "string",
                GroupId = "string"
              ),
              Platform = "Windows",
              PrivateDnsName = "string",
              PrivateIpAddress = "string",
              ProductCodes = list(
                list(
                  ProductCodeId = "string",
                  ProductCodeType = "devpay"|"marketplace"
                )
              ),
              PublicDnsName = "string",
              PublicIpAddress = "string",
              RamdiskId = "string",
              State = list(
                Code = 123,
                Name = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped"
              ),
              StateTransitionReason = "string",
              SubnetId = "string",
              VpcId = "string",
              Architecture = "i386"|"x86_64"|"arm64"|"x86_64_mac"|"arm64_mac",
              BlockDeviceMappings = list(
                list(
                  DeviceName = "string",
                  Ebs = list(
                    AttachTime = as.POSIXct(
                      "2015-01-01"
                    ),
                    DeleteOnTermination = TRUE|FALSE,
                    Status = "attaching"|"attached"|"detaching"|"detached",
                    VolumeId = "string"
                  )
                )
              ),
              ClientToken = "string",
              EbsOptimized = TRUE|FALSE,
              EnaSupport = TRUE|FALSE,
              Hypervisor = "ovm"|"xen",
              IamInstanceProfile = list(
                Arn = "string",
                Id = "string"
              ),
              InstanceLifecycle = "spot"|"scheduled",
              ElasticGpuAssociations = list(
                list(
                  ElasticGpuId = "string",
                  ElasticGpuAssociationId = "string",
                  ElasticGpuAssociationState = "string",
                  ElasticGpuAssociationTime = "string"
                )
              ),
              ElasticInferenceAcceleratorAssociations = list(
                list(
                  ElasticInferenceAcceleratorArn = "string",
                  ElasticInferenceAcceleratorAssociationId = "string",
                  ElasticInferenceAcceleratorAssociationState = "string",
                  ElasticInferenceAcceleratorAssociationTime = as.POSIXct(
                    "2015-01-01"
                  )
                )
              ),
              NetworkInterfaces = list(
                list(
                  Association = list(
                    CarrierIp = "string",
                    CustomerOwnedIp = "string",
                    IpOwnerId = "string",
                    PublicDnsName = "string",
                    PublicIp = "string"
                  ),
                  Attachment = list(
                    AttachTime = as.POSIXct(
                      "2015-01-01"
                    ),
                    AttachmentId = "string",
                    DeleteOnTermination = TRUE|FALSE,
                    DeviceIndex = 123,
                    Status = "attaching"|"attached"|"detaching"|"detached",
                    NetworkCardIndex = 123
                  ),
                  Description = "string",
                  Groups = list(
                    list(
                      GroupName = "string",
                      GroupId = "string"
                    )
                  ),
                  Ipv6Addresses = list(
                    list(
                      Ipv6Address = "string"
                    )
                  ),
                  MacAddress = "string",
                  NetworkInterfaceId = "string",
                  OwnerId = "string",
                  PrivateDnsName = "string",
                  PrivateIpAddress = "string",
                  PrivateIpAddresses = list(
                    list(
                      Association = list(
                        CarrierIp = "string",
                        CustomerOwnedIp = "string",
                        IpOwnerId = "string",
                        PublicDnsName = "string",
                        PublicIp = "string"
                      ),
                      Primary = TRUE|FALSE,
                      PrivateDnsName = "string",
                      PrivateIpAddress = "string"
                    )
                  ),
                  SourceDestCheck = TRUE|FALSE,
                  Status = "available"|"associated"|"attaching"|"in-use"|"detaching",
                  SubnetId = "string",
                  VpcId = "string",
                  InterfaceType = "string",
                  Ipv4Prefixes = list(
                    list(
                      Ipv4Prefix = "string"
                    )
                  ),
                  Ipv6Prefixes = list(
                    list(
                      Ipv6Prefix = "string"
                    )
                  )
                )
              ),
              OutpostArn = "string",
              RootDeviceName = "string",
              RootDeviceType = "ebs"|"instance-store",
              SecurityGroups = list(
                list(
                  GroupName = "string",
                  GroupId = "string"
                )
              ),
              SourceDestCheck = TRUE|FALSE,
              SpotInstanceRequestId = "string",
              SriovNetSupport = "string",
              StateReason = list(
                Code = "string",
                Message = "string"
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              VirtualizationType = "hvm"|"paravirtual",
              CpuOptions = list(
                CoreCount = 123,
                ThreadsPerCore = 123,
                AmdSevSnp = "enabled"|"disabled"
              ),
              CapacityReservationId = "string",
              CapacityReservationSpecification = list(
                CapacityReservationPreference = "open"|"none",
                CapacityReservationTarget = list(
                  CapacityReservationId = "string",
                  CapacityReservationResourceGroupArn = "string"
                )
              ),
              HibernationOptions = list(
                Configured = TRUE|FALSE
              ),
              Licenses = list(
                list(
                  LicenseConfigurationArn = "string"
                )
              ),
              MetadataOptions = list(
                State = "pending"|"applied",
                HttpTokens = "optional"|"required",
                HttpPutResponseHopLimit = 123,
                HttpEndpoint = "disabled"|"enabled",
                HttpProtocolIpv6 = "disabled"|"enabled",
                InstanceMetadataTags = "disabled"|"enabled"
              ),
              EnclaveOptions = list(
                Enabled = TRUE|FALSE
              ),
              BootMode = "legacy-bios"|"uefi"|"uefi-preferred",
              PlatformDetails = "string",
              UsageOperation = "string",
              UsageOperationUpdateTime = as.POSIXct(
                "2015-01-01"
              ),
              PrivateDnsNameOptions = list(
                HostnameType = "ip-name"|"resource-name",
                EnableResourceNameDnsARecord = TRUE|FALSE,
                EnableResourceNameDnsAAAARecord = TRUE|FALSE
              ),
              Ipv6Address = "string",
              TpmSupport = "string",
              MaintenanceOptions = list(
                AutoRecovery = "disabled"|"default"
              ),
              CurrentInstanceBootMode = "legacy-bios"|"uefi"
            )
          ),
          OwnerId = "string",
          RequesterId = "string",
          ReservationId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_instances(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      InstanceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the specified instance.
    svc$describe_instances(
      InstanceIds = list(
        "i-1234567890abcdef0"
      )
    )

    # This example describes the instances with the t2.micro instance type.
    svc$describe_instances(
      Filters = list(
        list(
          Name = "instance-type",
          Values = list(
            "t2.micro"
          )
        )
      )
    )

    # This example describes the instances with the Purpose=test tag.
    svc$describe_instances(
      Filters = list(
        list(
          Name = "tag:Purpose",
          Values = list(
            "test"
          )
        )
      )
    )

    ## End(Not run)
