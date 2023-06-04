<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_stop_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an Amazon EBS-backed instance

### Description

Stops an Amazon EBS-backed instance. For more information, see [Stop and
start your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the *Amazon EC2 User Guide*.

You can use the Stop action to hibernate an instance if the instance is
[enabled for
hibernation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#enabling-hibernation)
and it meets the [hibernation
prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites).
For more information, see [Hibernate your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html)
in the *Amazon EC2 User Guide*.

We don't charge usage for a stopped instance, or data transfer fees;
however, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage.
Every time you start your instance, Amazon EC2 charges a one-minute
minimum for instance usage, and thereafter charges per second for
instance usage.

You can't stop or hibernate instance store-backed instances. You can't
use the Stop action to hibernate Spot Instances, but you can specify
that Amazon EC2 should hibernate Spot Instances when they are
interrupted. For more information, see [Hibernating interrupted Spot
Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances)
in the *Amazon EC2 User Guide*.

When you stop or hibernate an instance, we shut it down. You can restart
your instance at any time. Before stopping or hibernating an instance,
make sure it is in a state from which it can be restarted. Stopping an
instance does not preserve data stored in RAM, but hibernating an
instance does preserve data stored in RAM. If an instance cannot
hibernate successfully, a normal shutdown occurs.

Stopping and hibernating an instance is different to rebooting or
terminating it. For example, when you stop or hibernate an instance, the
root device and any other devices attached to the instance persist. When
you terminate an instance, the root device and any other devices
attached during the instance launch are automatically deleted. For more
information about the differences between rebooting, stopping,
hibernating, and terminating instances, see [Instance
lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the *Amazon EC2 User Guide*.

When you stop an instance, we attempt to shut it down forcibly after a
short while. If your instance appears stuck in the stopping state after
a period of time, there may be an issue with the underlying host
computer. For more information, see [Troubleshoot stopping your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_stop_instances(InstanceIds, Hibernate, DryRun, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_stop_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The IDs of the instances.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_stop_instances_:_Hibernate">Hibernate</code></td>
<td><p>Hibernates the instance if the instance was enabled for
hibernation at launch. If the instance cannot hibernate successfully, a
normal shutdown occurs. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html">Hibernate
your instance</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code id="ec2_stop_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_stop_instances_:_Force">Force</code></td>
<td><p>Forces the instances to stop. The instances do not have an
opportunity to flush file system caches or file system metadata. If you
use this option, you must perform file system check and repair
procedures. This option is not recommended for Windows instances.</p>
<p>Default: <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StoppingInstances = list(
        list(
          CurrentState = list(
            Code = 123,
            Name = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped"
          ),
          InstanceId = "string",
          PreviousState = list(
            Code = 123,
            Name = "pending"|"running"|"shutting-down"|"terminated"|"stopping"|"stopped"
          )
        )
      )
    )

### Request syntax

    svc$stop_instances(
      InstanceIds = list(
        "string"
      ),
      Hibernate = TRUE|FALSE,
      DryRun = TRUE|FALSE,
      Force = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example stops the specified EC2 instance.
    svc$stop_instances(
      InstanceIds = list(
        "i-1234567890abcdef0"
      )
    )

    ## End(Not run)
