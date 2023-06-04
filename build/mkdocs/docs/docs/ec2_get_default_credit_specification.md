<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_default_credit_specification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the default credit option for CPU usage of a burstable performance instance family

### Description

Describes the default credit option for CPU usage of a burstable
performance instance family.

For more information, see [Burstable performance
instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_get_default_credit_specification(DryRun, InstanceFamily)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_default_credit_specification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_default_credit_specification_:_InstanceFamily">InstanceFamily</code></td>
<td><p>[required] The instance family.</p></td>
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

    svc$get_default_credit_specification(
      DryRun = TRUE|FALSE,
      InstanceFamily = "t2"|"t3"|"t3a"|"t4g"
    )
