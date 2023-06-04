<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_create_mount_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a mount target for a file system

### Description

Creates a mount target for a file system. You can then mount the file
system on EC2 instances by using the mount target.

You can create one mount target in each Availability Zone in your VPC.
All EC2 instances in a VPC within a given Availability Zone share a
single mount target for a given file system. If you have multiple
subnets in an Availability Zone, you create a mount target in one of the
subnets. EC2 instances do not need to be in the same subnet as the mount
target in order to access their file system.

You can create only one mount target for an EFS file system using One
Zone storage classes. You must create that mount target in the same
Availability Zone in which the file system is located. Use the
`AvailabilityZoneName` and `AvailabiltyZoneId` properties in the
`describe_file_systems` response object to get this information. Use the
`subnetId` associated with the file system's Availability Zone when
creating the mount target.

For more information, see [Amazon EFS: How it
Works](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

To create a mount target for a file system, the file system's lifecycle
state must be `available`. For more information, see
`describe_file_systems`.

In the request, provide the following:

-   The file system ID for which you are creating the mount target.

-   A subnet ID, which determines the following:

    -   The VPC in which Amazon EFS creates the mount target

    -   The Availability Zone in which Amazon EFS creates the mount
        target

    -   The IP address range from which Amazon EFS selects the IP
        address of the mount target (if you don't specify an IP address
        in the request)

After creating the mount target, Amazon EFS returns a response that
includes, a `MountTargetId` and an `IpAddress`. You use this IP address
when mounting the file system in an EC2 instance. You can also use the
mount target's DNS name when mounting the file system. The EC2 instance
on which you mount the file system by using the mount target can resolve
the mount target's DNS name to its IP address. For more information, see
[How it Works: Implementation
Overview](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

Note that you can create mount targets for a file system in only one
VPC, and there can be only one mount target per Availability Zone. That
is, if the file system already has one or more mount targets created for
it, the subnet specified in the request to add another mount target must
meet the following requirements:

-   Must belong to the same VPC as the subnets of the existing mount
    targets

-   Must not be in the same Availability Zone as any of the subnets of
    the existing mount targets

If the request satisfies the requirements, Amazon EFS does the
following:

-   Creates a new mount target in the specified subnet.

-   Also creates a new network interface in the subnet as follows:

    -   If the request provides an `IpAddress`, Amazon EFS assigns that
        IP address to the network interface. Otherwise, Amazon EFS
        assigns a free address in the subnet (in the same way that the
        Amazon EC2 `CreateNetworkInterface` call does when a request
        does not specify a primary private IP address).

    -   If the request provides `SecurityGroups`, this network interface
        is associated with those security groups. Otherwise, it belongs
        to the default security group for the subnet's VPC.

    -   Assigns the description
        `⁠Mount target fsmt-id for file system fs-id ⁠` where `fsmt-id` is
        the mount target ID, and `fs-id` is the `FileSystemId`.

    -   Sets the `requesterManaged` property of the network interface to
        `true`, and the `requesterId` value to `EFS`.

    Each Amazon EFS mount target has one corresponding requester-managed
    EC2 network interface. After the network interface is created,
    Amazon EFS sets the `NetworkInterfaceId` field in the mount target's
    description to the network interface ID, and the `IpAddress` field
    to its address. If network interface creation fails, the entire
    `create_mount_target` operation fails.

The `create_mount_target` call returns only after creating the network
interface, but while the mount target state is still `creating`, you can
check the mount target creation status by calling the
`describe_mount_targets` operation, which among other things returns the
mount target state.

We recommend that you create a mount target in each of the Availability
Zones. There are cost considerations for using a file system in an
Availability Zone through a mount target created in another Availability
Zone. For more information, see [Amazon
EFS](https://aws.amazon.com/efs/). In addition, by always using a mount
target local to the instance's Availability Zone, you eliminate a
partial failure scenario. If the Availability Zone in which your mount
target is created goes down, then you can't access your file system
through that mount target.

This operation requires permissions for the following action on the file
system:

-   `elasticfilesystem:CreateMountTarget`

This operation also requires permissions for the following Amazon EC2
actions:

-   `ec2:DescribeSubnets`

-   `ec2:DescribeNetworkInterfaces`

-   `ec2:CreateNetworkInterface`

### Usage

    efs_create_mount_target(FileSystemId, SubnetId, IpAddress,
      SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_create_mount_target_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system for which to create the
mount target.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_mount_target_:_SubnetId">SubnetId</code></td>
<td><p>[required] The ID of the subnet to add the mount target in. For
file systems that use One Zone storage classes, use the subnet that is
associated with the file system's Availability Zone.</p></td>
</tr>
<tr class="odd">
<td><code id="efs_create_mount_target_:_IpAddress">IpAddress</code></td>
<td><p>Valid IPv4 address within the address range of the specified
subnet.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_create_mount_target_:_SecurityGroups">SecurityGroups</code></td>
<td><p>Up to five VPC security group IDs, of the form
<code>sg-xxxxxxxx</code>. These must be for the same VPC as subnet
specified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OwnerId = "string",
      MountTargetId = "string",
      FileSystemId = "string",
      SubnetId = "string",
      LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error",
      IpAddress = "string",
      NetworkInterfaceId = "string",
      AvailabilityZoneId = "string",
      AvailabilityZoneName = "string",
      VpcId = "string"
    )

### Request syntax

    svc$create_mount_target(
      FileSystemId = "string",
      SubnetId = "string",
      IpAddress = "string",
      SecurityGroups = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This operation creates a new mount target for an EFS file system.
    svc$create_mount_target(
      FileSystemId = "fs-01234567",
      SubnetId = "subnet-1234abcd"
    )

    ## End(Not run)
