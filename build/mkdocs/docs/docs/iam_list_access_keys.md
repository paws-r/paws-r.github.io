<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_access_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the access key IDs associated with the specified IAM user

### Description

Returns information about the access key IDs associated with the
specified IAM user. If there is none, the operation returns an empty
list.

Although each user is limited to a small number of keys, you can still
paginate the results using the `MaxItems` and `Marker` parameters.

If the `UserName` is not specified, the user name is determined
implicitly based on the Amazon Web Services access key ID used to sign
the request. If a temporary access key is used, then `UserName` is
required. If a long-term key is assigned to the user, then `UserName` is
not required. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated users.

To ensure the security of your Amazon Web Services account, the secret
access key is accessible only during key and user creation.

### Usage

    iam_list_access_keys(UserName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_access_keys_:_UserName">UserName</code></td>
<td><p>The name of the user.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_access_keys_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_access_keys_:_MaxItems">MaxItems</code></td>
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
      AccessKeyMetadata = list(
        list(
          UserName = "string",
          AccessKeyId = "string",
          Status = "Active"|"Inactive",
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_access_keys(
      UserName = "string",
      Marker = "string",
      MaxItems = 123
    )

### Examples

    ## Not run: 
    # The following command lists the access keys IDs for the IAM user named
    # Alice.
    svc$list_access_keys(
      UserName = "Alice"
    )

    ## End(Not run)
