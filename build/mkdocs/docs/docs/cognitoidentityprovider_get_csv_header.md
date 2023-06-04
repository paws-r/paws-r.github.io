<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_csv_header</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the header information for the comma-separated value (CSV) file to be used as input for the user import job

### Description

Gets the header information for the comma-separated value (CSV) file to
be used as input for the user import job.

### Usage

    cognitoidentityprovider_get_csv_header(UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_csv_header_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool that the users are
to be imported into.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPoolId = "string",
      CSVHeader = list(
        "string"
      )
    )

### Request syntax

    svc$get_csv_header(
      UserPoolId = "string"
    )
