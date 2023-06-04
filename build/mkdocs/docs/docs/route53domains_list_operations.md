<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53domains_list_operations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all of the operations that return an operation ID and that have ever been performed on domains that were registered by the current account

### Description

Returns information about all of the operations that return an operation
ID and that have ever been performed on domains that were registered by
the current account.

This command runs only in the us-east-1 Region.

### Usage

    route53domains_list_operations(SubmittedSince, Marker, MaxItems, Status,
      Type, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53domains_list_operations_:_SubmittedSince">SubmittedSince</code></td>
<td><p>An optional parameter that lets you get information about all the
operations that you submitted after a specified date and time. Specify
the date and time in Unix time format and Coordinated Universal time
(UTC).</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_list_operations_:_Marker">Marker</code></td>
<td><p>For an initial request for a list of operations, omit this
element. If the number of operations that are not yet complete is
greater than the value that you specified for <code>MaxItems</code>, you
can use <code>Marker</code> to return additional operations. Get the
value of <code>NextPageMarker</code> from the previous response, and
submit another request that includes the value of
<code>NextPageMarker</code> in the <code>Marker</code> element.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_list_operations_:_MaxItems">MaxItems</code></td>
<td><p>Number of domains to be returned.</p>
<p>Default: 20</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_list_operations_:_Status">Status</code></td>
<td><p>The status of the operations.</p></td>
</tr>
<tr class="odd">
<td><code id="route53domains_list_operations_:_Type">Type</code></td>
<td><p>An arrays of the domains operation types.</p></td>
</tr>
<tr class="even">
<td><code
id="route53domains_list_operations_:_SortBy">SortBy</code></td>
<td><p>The sort type for returned values.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53domains_list_operations_:_SortOrder">SortOrder</code></td>
<td><p>The sort order ofr returned values, either ascending or
descending.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Operations = list(
        list(
          OperationId = "string",
          Status = "SUBMITTED"|"IN_PROGRESS"|"ERROR"|"SUCCESSFUL"|"FAILED",
          Type = "REGISTER_DOMAIN"|"DELETE_DOMAIN"|"TRANSFER_IN_DOMAIN"|"UPDATE_DOMAIN_CONTACT"|"UPDATE_NAMESERVER"|"CHANGE_PRIVACY_PROTECTION"|"DOMAIN_LOCK"|"ENABLE_AUTORENEW"|"DISABLE_AUTORENEW"|"ADD_DNSSEC"|"REMOVE_DNSSEC"|"EXPIRE_DOMAIN"|"TRANSFER_OUT_DOMAIN"|"CHANGE_DOMAIN_OWNER"|"RENEW_DOMAIN"|"PUSH_DOMAIN"|"INTERNAL_TRANSFER_OUT_DOMAIN"|"INTERNAL_TRANSFER_IN_DOMAIN",
          SubmittedDate = as.POSIXct(
            "2015-01-01"
          ),
          DomainName = "string",
          Message = "string",
          StatusFlag = "PENDING_ACCEPTANCE"|"PENDING_CUSTOMER_ACTION"|"PENDING_AUTHORIZATION"|"PENDING_PAYMENT_VERIFICATION"|"PENDING_SUPPORT_CASE",
          LastUpdatedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextPageMarker = "string"
    )

### Request syntax

    svc$list_operations(
      SubmittedSince = as.POSIXct(
        "2015-01-01"
      ),
      Marker = "string",
      MaxItems = 123,
      Status = list(
        "SUBMITTED"|"IN_PROGRESS"|"ERROR"|"SUCCESSFUL"|"FAILED"
      ),
      Type = list(
        "REGISTER_DOMAIN"|"DELETE_DOMAIN"|"TRANSFER_IN_DOMAIN"|"UPDATE_DOMAIN_CONTACT"|"UPDATE_NAMESERVER"|"CHANGE_PRIVACY_PROTECTION"|"DOMAIN_LOCK"|"ENABLE_AUTORENEW"|"DISABLE_AUTORENEW"|"ADD_DNSSEC"|"REMOVE_DNSSEC"|"EXPIRE_DOMAIN"|"TRANSFER_OUT_DOMAIN"|"CHANGE_DOMAIN_OWNER"|"RENEW_DOMAIN"|"PUSH_DOMAIN"|"INTERNAL_TRANSFER_OUT_DOMAIN"|"INTERNAL_TRANSFER_IN_DOMAIN"
      ),
      SortBy = "SubmittedDate",
      SortOrder = "ASC"|"DESC"
    )
