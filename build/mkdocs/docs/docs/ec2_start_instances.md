<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_start_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an Amazon EBS-backed instance that you've previously stopped

### Description

Starts an Amazon EBS-backed instance that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for instance usage.
However, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage. You
can restart your instance at any time. Every time you start your
instance, Amazon EC2 charges a one-minute minimum for instance usage,
and thereafter charges per second for instance usage.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

If you attempt to start a T3 instance with `host` tenancy and the
`unlimted` CPU credit option, the request fails. The `unlimited` CPU
credit option is not supported on Dedicated Hosts. Before you start the
instance, either change its CPU credit option to `standard`, or change
its tenancy to `default` or `dedicated`.

For more information, see [Stop and start your
instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_start_instances(InstanceIds, AdditionalInfo, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_start_instances_:_InstanceIds">InstanceIds</code></td>
<td><p>[required] The IDs of the instances.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_instances_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_start_instances_:_DryRun">DryRun</code></td>
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
      StartingInstances = list(
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

    svc$start_instances(
      InstanceIds = list(
        "string"
      ),
      AdditionalInfo = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example starts the specified EC2 instance.
    svc$start_instances(
      InstanceIds = list(
        "i-1234567890abcdef0"
      )
    )

    ## End(Not run)
