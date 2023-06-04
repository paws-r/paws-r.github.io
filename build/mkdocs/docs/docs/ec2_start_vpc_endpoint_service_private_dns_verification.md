<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_start_vpc_endpoint_service_private_dns_verification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates the verification process to prove that the service provider owns the private DNS name domain for the endpoint service

### Description

Initiates the verification process to prove that the service provider
owns the private DNS name domain for the endpoint service.

The service provider must successfully perform the verification before
the consumer can use the name to access the service.

Before the service provider runs this command, they must add a record to
the DNS server.

### Usage

    ec2_start_vpc_endpoint_service_private_dns_verification(DryRun,
      ServiceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_start_vpc_endpoint_service_private_dns_verification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_start_vpc_endpoint_service_private_dns_verification_:_ServiceId">ServiceId</code></td>
<td><p>[required] The ID of the endpoint service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$start_vpc_endpoint_service_private_dns_verification(
      DryRun = TRUE|FALSE,
      ServiceId = "string"
    )
