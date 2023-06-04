<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the specified attribute of the specified instance

### Description

Modifies the specified attribute of the specified instance. You can
specify only one attribute at a time.

**Note:** Using this action to change the security groups associated
with an elastic network interface (ENI) attached to an instance can
result in an error if the instance has more than one ENI. To change the
security groups associated with an ENI attached to an instance that has
multiple ENIs, we recommend that you use the
`modify_network_interface_attribute` action.

To modify some attributes, the instance must be stopped. For more
information, see [Modify a stopped
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_modify_instance_attribute(SourceDestCheck, Attribute,
      BlockDeviceMappings, DisableApiTermination, DryRun, EbsOptimized,
      EnaSupport, Groups, InstanceId, InstanceInitiatedShutdownBehavior,
      InstanceType, Kernel, Ramdisk, SriovNetSupport, UserData, Value,
      DisableApiStop)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_SourceDestCheck">SourceDestCheck</code></td>
<td><p>Enable or disable source/destination checks, which ensure that
the instance is either the source or the destination of any traffic that
it receives. If the value is <code>true</code>, source/destination
checks are enabled; otherwise, they are disabled. The default value is
<code>true</code>. You must disable source/destination checks if the
instance runs services such as network address translation, routing, or
firewalls.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_attribute_:_Attribute">Attribute</code></td>
<td><p>The name of the attribute to modify.</p>
<p>You can modify the following attributes only:
<code>disableApiTermination</code> | <code>instanceType</code> |
<code>kernel</code> | <code>ramdisk</code> |
<code>instanceInitiatedShutdownBehavior</code> |
<code>blockDeviceMapping</code> | <code>userData</code> |
<code>sourceDestCheck</code> | <code>groupSet</code> |
<code>ebsOptimized</code> | <code>sriovNetSupport</code> |
<code>enaSupport</code> | <code>nvmeSupport</code> |
<code>disableApiStop</code> | <code>enclaveOptions</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_BlockDeviceMappings">BlockDeviceMappings</code></td>
<td><p>Modifies the <code>DeleteOnTermination</code> attribute for
volumes that are currently attached. The volume must be owned by the
caller. If no value is specified for <code>DeleteOnTermination</code>,
the default is <code>true</code> and the volume is deleted when the
instance is terminated.</p>
<p>To add instance store volumes to an Amazon EBS-backed instance, you
must add them when you launch the instance. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM">Update
the block device mapping when launching an instance</a> in the
<em>Amazon EC2 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_attribute_:_DisableApiTermination">DisableApiTermination</code></td>
<td><p>If the value is <code>true</code>, you can't terminate the
instance using the Amazon EC2 console, CLI, or API; otherwise, you can.
You cannot use this parameter for Spot Instances.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_instance_attribute_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_attribute_:_EbsOptimized">EbsOptimized</code></td>
<td><p>Specifies whether the instance is optimized for Amazon EBS I/O.
This optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal EBS I/O performance.
This optimization isn't available with all instance types. Additional
usage charges apply when using an EBS Optimized instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_EnaSupport">EnaSupport</code></td>
<td><p>Set to <code>true</code> to enable enhanced networking with ENA
for the instance.</p>
<p>This option is supported only for HVM instances. Specifying this
option with a PV instance can make it unreachable.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_instance_attribute_:_Groups">Groups</code></td>
<td><p>Replaces the security groups of the instance with the specified
security groups. You must specify the ID of at least one security group,
even if it's just the default security group for the VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_attribute_:_InstanceInitiatedShutdownBehavior">InstanceInitiatedShutdownBehavior</code></td>
<td><p>Specifies whether an instance stops or terminates when you
initiate shutdown from the instance (using the operating system command
for system shutdown).</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_InstanceType">InstanceType</code></td>
<td><p>Changes the instance type to the specified value. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance
types</a> in the <em>Amazon EC2 User Guide</em>. If the instance type is
not valid, the error returned is
<code>InvalidInstanceAttributeValue</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_instance_attribute_:_Kernel">Kernel</code></td>
<td><p>Changes the instance's kernel to the specified value. We
recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">PV-GRUB</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_Ramdisk">Ramdisk</code></td>
<td><p>Changes the instance's RAM disk to the specified value. We
recommend that you use PV-GRUB instead of kernels and RAM disks. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html">PV-GRUB</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_attribute_:_SriovNetSupport">SriovNetSupport</code></td>
<td><p>Set to <code>simple</code> to enable enhanced networking with the
Intel 82599 Virtual Function interface for the instance.</p>
<p>There is no way to disable enhanced networking with the Intel 82599
Virtual Function interface at this time.</p>
<p>This option is supported only for HVM instances. Specifying this
option with a PV instance can make it unreachable.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_UserData">UserData</code></td>
<td><p>Changes the instance's user data to the specified value. If you
are using an Amazon Web Services SDK or command line tool,
base64-encoding is performed for you, and you can load the text from a
file. Otherwise, you must provide base64-encoded text.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_instance_attribute_:_Value">Value</code></td>
<td><p>A new value for the attribute. Use only with the
<code>kernel</code>, <code>ramdisk</code>, <code>userData</code>,
<code>disableApiTermination</code>, or
<code>instanceInitiatedShutdownBehavior</code> attribute.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_attribute_:_DisableApiStop">DisableApiStop</code></td>
<td><p>Indicates whether an instance is enabled for stop protection. For
more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection">Stop
Protection</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_instance_attribute(
      SourceDestCheck = list(
        Value = TRUE|FALSE
      ),
      Attribute = "instanceType"|"kernel"|"ramdisk"|"userData"|"disableApiTermination"|"instanceInitiatedShutdownBehavior"|"rootDeviceName"|"blockDeviceMapping"|"productCodes"|"sourceDestCheck"|"groupSet"|"ebsOptimized"|"sriovNetSupport"|"enaSupport"|"enclaveOptions"|"disableApiStop",
      BlockDeviceMappings = list(
        list(
          DeviceName = "string",
          Ebs = list(
            DeleteOnTermination = TRUE|FALSE,
            VolumeId = "string"
          ),
          NoDevice = "string",
          VirtualName = "string"
        )
      ),
      DisableApiTermination = list(
        Value = TRUE|FALSE
      ),
      DryRun = TRUE|FALSE,
      EbsOptimized = list(
        Value = TRUE|FALSE
      ),
      EnaSupport = list(
        Value = TRUE|FALSE
      ),
      Groups = list(
        "string"
      ),
      InstanceId = "string",
      InstanceInitiatedShutdownBehavior = list(
        Value = "string"
      ),
      InstanceType = list(
        Value = "string"
      ),
      Kernel = list(
        Value = "string"
      ),
      Ramdisk = list(
        Value = "string"
      ),
      SriovNetSupport = list(
        Value = "string"
      ),
      UserData = list(
        Value = raw
      ),
      Value = "string",
      DisableApiStop = list(
        Value = TRUE|FALSE
      )
    )

### Examples

    ## Not run: 
    # This example modifies the instance type of the specified stopped
    # instance.
    svc$modify_instance_attribute(
      InstanceId = "i-1234567890abcdef0",
      InstanceType = list(
        Value = "m5.large"
      )
    )

    # This example enables enhanced networking for the specified stopped
    # instance.
    svc$modify_instance_attribute(
      EnaSupport = list(
        Value = TRUE
      ),
      InstanceId = "i-1234567890abcdef0"
    )

    ## End(Not run)
