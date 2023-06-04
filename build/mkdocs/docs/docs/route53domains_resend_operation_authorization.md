<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_resend_operation_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resend the form of authorization email for this operation

### Description

Resend the form of authorization email for this operation.

### Usage

    route53domains_resend_operation_authorization(OperationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_resend_operation_authorization_:_OperationId">OperationId</code></td>
<td><p>[required] Operation ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resend_operation_authorization(
      OperationId = "string"
    )
