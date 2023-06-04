<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_enable_domain_transfer_lock</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers

### Description

This operation sets the transfer lock on the domain (specifically the
`clientTransferProhibited` status) to prevent domain transfers.
Successful submission returns an operation ID that you can use to track
the progress and completion of the action. If the request is not
completed successfully, the domain registrant will be notified by email.

### Usage

    route53domains_enable_domain_transfer_lock(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_enable_domain_transfer_lock_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain that you want to set the
transfer lock for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string"
    )

### Request syntax

    svc$enable_domain_transfer_lock(
      DomainName = "string"
    )
