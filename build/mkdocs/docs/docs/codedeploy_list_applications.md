<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the applications registered with the IAM user or Amazon Web Services account

### Description

Lists the applications registered with the IAM user or Amazon Web
Services account.

### Usage

    codedeploy_list_applications(nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_applications_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous list applications call.
It can be used to return the next set of applications in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applications = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_applications(
      nextToken = "string"
    )
