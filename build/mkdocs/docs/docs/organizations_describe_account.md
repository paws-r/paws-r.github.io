<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves Organizations-related information about the specified account

### Description

Retrieves Organizations-related information about the specified account.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_account(AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_account_:_AccountId">AccountId</code></td>
<td><p>[required] The unique identifier (ID) of the Amazon Web Services
account that you want information about. You can get the ID from the
<code>list_accounts</code> or <code>list_accounts_for_parent</code>
operations.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for an account ID string requires exactly 12 digits.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Account = list(
        Id = "string",
        Arn = "string",
        Email = "string",
        Name = "string",
        Status = "ACTIVE"|"SUSPENDED"|"PENDING_CLOSURE",
        JoinedMethod = "INVITED"|"CREATED",
        JoinedTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_account(
      AccountId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows a user in the master account (111111111111)
    # asking for details about account 555555555555:
    svc$describe_account(
      AccountId = "555555555555"
    )

    ## End(Not run)
