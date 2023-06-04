<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_account_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the account alias associated with the Amazon Web Services account (Note: you can have only one)

### Description

Lists the account alias associated with the Amazon Web Services account
(Note: you can have only one). For information about using an Amazon Web
Services account alias, see Using an alias for your Amazon Web Services
account ID in the *IAM User Guide*.

### Usage

    iam_list_account_aliases(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_account_aliases_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_account_aliases_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccountAliases = list(
        "string"
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_account_aliases(
      Marker = "string",
      MaxItems = 123
    )

### Examples

    ## Not run: 
    # The following command lists the aliases for the current account.
    svc$list_account_aliases()

    ## End(Not run)
