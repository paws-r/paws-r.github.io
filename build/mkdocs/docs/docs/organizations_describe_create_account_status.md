<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_create_account_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current status of an asynchronous request to create an account

### Description

Retrieves the current status of an asynchronous request to create an
account.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_create_account_status(CreateAccountRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_create_account_status_:_CreateAccountRequestId">CreateAccountRequestId</code></td>
<td><p>[required] Specifies the <code>Id</code> value that uniquely
identifies the <code>create_account</code> request. You can get the
value from the <code>CreateAccountStatus.Id</code> response in an
earlier <code>create_account</code> request, or from the
<code>list_create_account_status</code> operation.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a create account request ID string requires "car-" followed by from
8 to 32 lowercase letters or digits.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateAccountStatus = list(
        Id = "string",
        AccountName = "string",
        State = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        RequestedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        CompletedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        AccountId = "string",
        GovCloudAccountId = "string",
        FailureReason = "ACCOUNT_LIMIT_EXCEEDED"|"EMAIL_ALREADY_EXISTS"|"INVALID_ADDRESS"|"INVALID_EMAIL"|"CONCURRENT_ACCOUNT_MODIFICATION"|"INTERNAL_FAILURE"|"GOVCLOUD_ACCOUNT_ALREADY_EXISTS"|"MISSING_BUSINESS_VALIDATION"|"FAILED_BUSINESS_VALIDATION"|"PENDING_BUSINESS_VALIDATION"|"INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"|"UNKNOWN_BUSINESS_VALIDATION"|"MISSING_PAYMENT_INSTRUMENT"|"INVALID_PAYMENT_INSTRUMENT"|"UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED"
      )
    )

### Request syntax

    svc$describe_create_account_status(
      CreateAccountRequestId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to request the status about a previous
    # request to create an account in an organization. This operation can be
    # called only by a principal from the organization's master account. In
    # the example, the specified "createAccountRequestId" comes from the
    # response of the original call to "CreateAccount":
    svc$describe_create_account_status(
      CreateAccountRequestId = "car-exampleaccountcreationrequestid"
    )

    ## End(Not run)
