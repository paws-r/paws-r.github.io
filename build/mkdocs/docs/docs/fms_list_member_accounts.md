<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_list_member_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a MemberAccounts object that lists the member accounts in the administrator's Amazon Web Services organization

### Description

Returns a `MemberAccounts` object that lists the member accounts in the
administrator's Amazon Web Services organization.

Either an Firewall Manager administrator or the organization's
management account can make this request.

### Usage

    fms_list_member_accounts(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fms_list_member_accounts_:_NextToken">NextToken</code></td>
<td><p>If you specify a value for <code>MaxResults</code> and you have
more account IDs than the number that you specify for
<code>MaxResults</code>, Firewall Manager returns a
<code>NextToken</code> value in the response that allows you to list
another group of IDs. For the second and subsequent
<code>ListMemberAccountsRequest</code> requests, specify the value of
<code>NextToken</code> from the previous response to get information
about another batch of member account IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="fms_list_member_accounts_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the number of member account IDs that you want Firewall
Manager to return for this request. If you have more IDs than the number
that you specify for <code>MaxResults</code>, the response includes a
<code>NextToken</code> value that you can use to get another batch of
member account IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MemberAccounts = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_member_accounts(
      NextToken = "string",
      MaxResults = 123
    )
