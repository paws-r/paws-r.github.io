<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_get_operation_detail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns the current status of an operation that is not completed

### Description

This operation returns the current status of an operation that is not
completed.

### Usage

    route53domains_get_operation_detail(OperationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_get_operation_detail_:_OperationId">OperationId</code></td>
<td><p>[required] The identifier for the operation for which you want to
get the status. Route 53 returned the identifier in the response to the
original request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OperationId = "string",
      Status = "SUBMITTED"|"IN_PROGRESS"|"ERROR"|"SUCCESSFUL"|"FAILED",
      Message = "string",
      DomainName = "string",
      Type = "REGISTER_DOMAIN"|"DELETE_DOMAIN"|"TRANSFER_IN_DOMAIN"|"UPDATE_DOMAIN_CONTACT"|"UPDATE_NAMESERVER"|"CHANGE_PRIVACY_PROTECTION"|"DOMAIN_LOCK"|"ENABLE_AUTORENEW"|"DISABLE_AUTORENEW"|"ADD_DNSSEC"|"REMOVE_DNSSEC"|"EXPIRE_DOMAIN"|"TRANSFER_OUT_DOMAIN"|"CHANGE_DOMAIN_OWNER"|"RENEW_DOMAIN"|"PUSH_DOMAIN"|"INTERNAL_TRANSFER_OUT_DOMAIN"|"INTERNAL_TRANSFER_IN_DOMAIN",
      SubmittedDate = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      StatusFlag = "PENDING_ACCEPTANCE"|"PENDING_CUSTOMER_ACTION"|"PENDING_AUTHORIZATION"|"PENDING_PAYMENT_VERIFICATION"|"PENDING_SUPPORT_CASE"
    )

### Request syntax

    svc$get_operation_detail(
      OperationId = "string"
    )
