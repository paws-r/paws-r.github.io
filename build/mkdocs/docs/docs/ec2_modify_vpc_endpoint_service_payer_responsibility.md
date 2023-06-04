<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_endpoint_service_payer_responsibility</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the payer responsibility for your VPC endpoint service

### Description

Modifies the payer responsibility for your VPC endpoint service.

### Usage

    ec2_modify_vpc_endpoint_service_payer_responsibility(DryRun, ServiceId,
      PayerResponsibility)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_payer_responsibility_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_service_payer_responsibility_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_service_payer_responsibility_:_PayerResponsibility">PayerResponsibility</code></td>
<td><p>[required] The entity that is responsible for the endpoint costs.
The default is the endpoint owner. If you set the payer responsibility
to the service owner, you cannot set it back to the endpoint
owner.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_endpoint_service_payer_responsibility(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      PayerResponsibility = "ServiceOwner"
    )
