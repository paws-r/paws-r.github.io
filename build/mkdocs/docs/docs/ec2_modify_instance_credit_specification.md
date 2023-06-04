<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_instance_credit_specification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the credit option for CPU usage on a running or stopped burstable performance instance

### Description

Modifies the credit option for CPU usage on a running or stopped
burstable performance instance. The credit options are `standard` and
`unlimited`.

For more information, see [Burstable performance
instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_modify_instance_credit_specification(DryRun, ClientToken,
      InstanceCreditSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_instance_credit_specification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_instance_credit_specification_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_instance_credit_specification_:_InstanceCreditSpecifications">InstanceCreditSpecifications</code></td>
<td><p>[required] Information about the credit option for CPU
usage.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulInstanceCreditSpecifications = list(
        list(
          InstanceId = "string"
        )
      ),
      UnsuccessfulInstanceCreditSpecifications = list(
        list(
          InstanceId = "string",
          Error = list(
            Code = "InvalidInstanceID.Malformed"|"InvalidInstanceID.NotFound"|"IncorrectInstanceState"|"InstanceCreditSpecification.NotSupported",
            Message = "string"
          )
        )
      )
    )

### Request syntax

    svc$modify_instance_credit_specification(
      DryRun = TRUE|FALSE,
      ClientToken = "string",
      InstanceCreditSpecifications = list(
        list(
          InstanceId = "string",
          CpuCredits = "string"
        )
      )
    )
