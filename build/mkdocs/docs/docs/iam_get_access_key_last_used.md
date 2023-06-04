<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_access_key_last_used</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about when the specified access key was last used

### Description

Retrieves information about when the specified access key was last used.
The information includes the date and time of last use, along with the
Amazon Web Services service and Region that were specified in the last
request made with that key.

### Usage

    iam_get_access_key_last_used(AccessKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_access_key_last_used_:_AccessKeyId">AccessKeyId</code></td>
<td><p>[required] The identifier of an access key.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserName = "string",
      AccessKeyLastUsed = list(
        LastUsedDate = as.POSIXct(
          "2015-01-01"
        ),
        ServiceName = "string",
        Region = "string"
      )
    )

### Request syntax

    svc$get_access_key_last_used(
      AccessKeyId = "string"
    )
