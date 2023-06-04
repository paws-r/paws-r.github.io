<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_terminate_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shuts down the specified instances

### Description

Shuts down the specified instances. This operation is idempotent; if you
terminate an instance more than once, each call succeeds.

If you specify multiple instances and the request fails (for example,
because of a single incorrect instance ID), none of the instances are
terminated.

If you terminate multiple instances across multiple Availability Zones,
and one or more of the specified instances are enabled for termination
protection, the request fails with the following results:

-   The specified instances that are in the same Availability Zone as
    the protected instance are not terminated.

-   The specified instances that are in different Availability Zones,
    where no other specified instances are protected, are successfully
    terminated.

For example, say you have the following instances:

-   Instance A: `⁠us-east-1a⁠`; Not protected

-   Instance B: `⁠us-east-1a⁠`; Not protected

-   Instance C: `⁠us-east-1b⁠`; Protected

-   Instance D: `⁠us-east-1b⁠`; not protected

If you attempt to terminate all of these instances in the same request,
the request reports failure with the following results:

-   Instance A and Instance B are successfully terminated because none
    of the specified instances in `⁠us-east-1a⁠` are enabled for
    termination protection.

-   Instance C and Instance D fail to terminate because at least one of
    the specified instances in `⁠us-east-1b⁠` (Instance C) is enabled for
    termination protection.

Terminated instances remain visible after termination (for approximately
one hour).

By default, Amazon EC2 deletes all EBS volumes that were attached when
the instance launched. Volumes attached after instance launch continue
running.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop it or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the instance
persist. When you terminate an instance, any attached EBS volumes with
the `DeleteOnTermination` block device mapping parameter set to `true`
are automatically deleted. For more information about the differences
between stopping and terminating instances, see [Instance
lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html)
in the *Amazon EC2 User Guide*.

For more information about troubleshooting, see [Troubleshooting
terminating your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_terminate_instances(InstanceIds, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_terminate_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The IDs of the instances.</p>
<p>Constraints: Up to 1000 instance IDs. We recommend breaking up this
request into smaller batches.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_terminate_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TerminatingInstances = list(
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

    svc$terminate_instances(
      InstanceIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example terminates the specified EC2 instance.
    svc$terminate_instances(
      InstanceIds = list(
        "i-1234567890abcdef0"
      )
    )

    ## End(Not run)
