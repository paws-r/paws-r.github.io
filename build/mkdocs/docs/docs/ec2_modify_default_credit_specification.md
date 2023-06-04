<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_default_credit_specification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the default credit option for CPU usage of burstable performance instances

### Description

Modifies the default credit option for CPU usage of burstable
performance instances. The default credit option is set at the account
level per Amazon Web Services Region, and is specified per instance
family. All new burstable performance instances in the account launch
using the default credit option.

`modify_default_credit_specification` is an asynchronous operation,
which works at an Amazon Web Services Region level and modifies the
credit option for each Availability Zone. All zones in a Region are
updated within five minutes. But if instances are launched during this
operation, they might not get the new credit option until the zone is
updated. To verify whether the update has occurred, you can call
`get_default_credit_specification` and check
`DefaultCreditSpecification` for updates.

For more information, see [Burstable performance
instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_modify_default_credit_specification(DryRun, InstanceFamily,
      CpuCredits)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_default_credit_specification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_default_credit_specification_:_InstanceFamily">InstanceFamily</code></td>
<td><p>[required] The instance family.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_default_credit_specification_:_CpuCredits">CpuCredits</code></td>
<td><p>[required] The credit option for CPU usage of the instance
family.</p>
<p>Valid Values: <code>standard</code> | <code>unlimited</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceFamilyCreditSpecification = list(
        InstanceFamily = "t2"|"t3"|"t3a"|"t4g",
        CpuCredits = "string"
      )
    )

### Request syntax

    svc$modify_default_credit_specification(
      DryRun = TRUE|FALSE,
      InstanceFamily = "t2"|"t3"|"t3a"|"t4g",
      CpuCredits = "string"
    )
