<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_access_point_policy_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indicates whether the specified access point currently has a policy that allows public access

### Description

Indicates whether the specified access point currently has a policy that
allows public access. For more information about public access through
access points, see [Managing Data Access with Amazon S3 access
points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
in the *Amazon S3 User Guide*.

### Usage

    s3control_get_access_point_policy_status(AccountId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_access_point_policy_status_:_AccountId">AccountId</code></td>
<td><p>[required] The account ID for the account that owns the specified
access point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_access_point_policy_status_:_Name">Name</code></td>
<td><p>[required] The name of the access point whose policy status you
want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyStatus = list(
        IsPublic = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_access_point_policy_status(
      AccountId = "string",
      Name = "string"
    )
