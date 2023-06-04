<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_account_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the account preferences settings for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region

### Description

Returns the account preferences settings for the Amazon Web Services
account associated with the user making the request, in the current
Amazon Web Services Region. For more information, see [Managing Amazon
EFS resource IDs](https://docs.aws.amazon.com/efs/latest/ug/).

### Usage

    efs_describe_account_preferences(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_account_preferences_:_NextToken">NextToken</code></td>
<td><p>(Optional) You can use <code>NextToken</code> in a subsequent
request to fetch the next page of Amazon Web Services account
preferences if the response payload was paginated.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_account_preferences_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) When retrieving account preferences, you can
optionally specify the <code>MaxItems</code> parameter to limit the
number of objects returned in a response. The default value is
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceIdPreference = list(
        ResourceIdType = "LONG_ID"|"SHORT_ID",
        Resources = list(
          "FILE_SYSTEM"|"MOUNT_TARGET"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_account_preferences(
      NextToken = "string",
      MaxResults = 123
    )
