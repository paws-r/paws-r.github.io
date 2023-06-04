<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_access_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of a specific Amazon EFS access point if the AccessPointId is provided

### Description

Returns the description of a specific Amazon EFS access point if the
`AccessPointId` is provided. If you provide an EFS `FileSystemId`, it
returns descriptions of all access points for that file system. You can
provide either an `AccessPointId` or a `FileSystemId` in the request,
but not both.

This operation requires permissions for the
`elasticfilesystem:DescribeAccessPoints` action.

### Usage

    efs_describe_access_points(MaxResults, NextToken, AccessPointId,
      FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_access_points_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) When retrieving all access points for a file system,
you can optionally specify the <code>MaxItems</code> parameter to limit
the number of objects returned in a response. The default value is
100.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_access_points_:_NextToken">NextToken</code></td>
<td><p><code>NextToken</code> is present if the response is paginated.
You can use <code>NextMarker</code> in the subsequent request to fetch
the next page of access point descriptions.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_describe_access_points_:_AccessPointId">AccessPointId</code></td>
<td><p>(Optional) Specifies an EFS access point to describe in the
response; mutually exclusive with <code>FileSystemId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_access_points_:_FileSystemId">FileSystemId</code></td>
<td><p>(Optional) If you provide a <code>FileSystemId</code>, EFS
returns all access points for that file system; mutually exclusive with
<code>AccessPointId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPoints = list(
        list(
          ClientToken = "string",
          Name = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          AccessPointId = "string",
          AccessPointArn = "string",
          FileSystemId = "string",
          PosixUser = list(
            Uid = 123,
            Gid = 123,
            SecondaryGids = list(
              123
            )
          ),
          RootDirectory = list(
            Path = "string",
            CreationInfo = list(
              OwnerUid = 123,
              OwnerGid = 123,
              Permissions = "string"
            )
          ),
          OwnerId = "string",
          LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_access_points(
      MaxResults = 123,
      NextToken = "string",
      AccessPointId = "string",
      FileSystemId = "string"
    )
